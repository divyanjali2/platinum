<?php
session_start();
header('Content-Type: application/json');
include_once __DIR__ . '/db_connect.php';

$debugFile = __DIR__ . '/../../debug.txt';
file_put_contents($debugFile, "\n==== upload_invoice.php ====\n", FILE_APPEND);
file_put_contents($debugFile, "REQUEST METHOD: " . $_SERVER['REQUEST_METHOD'] . "\n", FILE_APPEND);
file_put_contents($debugFile, "POST: " . json_encode($_POST) . "\n", FILE_APPEND);
file_put_contents($debugFile, "FILES KEYS: " . json_encode(array_keys($_FILES)) . "\n", FILE_APPEND);

function ensure_dir($dir) {
    if (!is_dir($dir)) {
        if (!mkdir($dir, 0777, true)) {
            return false;
        }
    }
    return true;
}

function get_upload_dir($subfolder) {
    $base = realpath(__DIR__ . '/../../');
    if ($base === false) {
        $base = __DIR__ . '/../../';
    }

    $upload_dir = rtrim($base, DIRECTORY_SEPARATOR)
                . DIRECTORY_SEPARATOR . 'uploads'
                . DIRECTORY_SEPARATOR . trim($subfolder, '/\\')
                . DIRECTORY_SEPARATOR;

    if (!ensure_dir($upload_dir)) {
        return false;
    }

    return $upload_dir;
}

if (!isset($_FILES['invoice'])) {
    file_put_contents($debugFile, "No invoice in \$_FILES\n", FILE_APPEND);
    echo json_encode([
        'status' => 'error',
        'message' => 'Invoice file field not found',
        'files' => array_keys($_FILES)
    ]);
    exit;
}

if ($_FILES['invoice']['error'] !== UPLOAD_ERR_OK) {
    file_put_contents($debugFile, "Upload error code: " . $_FILES['invoice']['error'] . "\n", FILE_APPEND);
    echo json_encode([
        'status' => 'error',
        'message' => 'Upload error',
        'upload_error_code' => $_FILES['invoice']['error']
    ]);
    exit;
}

$raw_booking_number = trim($_POST['booking_number'] ?? '');
file_put_contents($debugFile, "Raw booking_number from POST: {$raw_booking_number}\n", FILE_APPEND);

$booking_number = $raw_booking_number ?: trim($_SESSION['last_booking_number'] ?? '');
file_put_contents($debugFile, "Final booking_number: {$booking_number}\n", FILE_APPEND);

if ($booking_number === '') {
    echo json_encode([
        'status' => 'error',
        'message' => 'Invalid booking number',
    ]);
    exit;
}

$target_dir = get_upload_dir('invoices');
file_put_contents($debugFile, "Target dir: {$target_dir}\n", FILE_APPEND);

if ($target_dir === false) {
    echo json_encode([
        'status' => 'error',
        'message' => 'Failed to create upload directory'
    ]);
    exit;
}

$ext = strtolower(pathinfo($_FILES['invoice']['name'], PATHINFO_EXTENSION));
$ext = preg_replace('/[^a-zA-Z0-9]/', '', $ext);
$ext = $ext ?: 'pdf';

$invoice_filename = 'invoice_' . $booking_number . '.' . $ext;
$target_file = $target_dir . $invoice_filename;
$invoice_relative_path = 'uploads/invoices/' . $invoice_filename;

file_put_contents($debugFile, "Saving file as: {$target_file}\n", FILE_APPEND);

if (!move_uploaded_file($_FILES['invoice']['tmp_name'], $target_file)) {
    file_put_contents($debugFile, "move_uploaded_file FAILED\n", FILE_APPEND);
    echo json_encode([
        'status' => 'error',
        'message' => 'Failed to move uploaded file'
    ]);
    exit;
}

file_put_contents($debugFile, "File moved successfully\n", FILE_APPEND);

$stmt = $conn->prepare("
    UPDATE bookings
    SET invoice_path = :invoice_path
    WHERE booking_number = :booking_number
");

$stmt->execute([
    ':invoice_path' => $invoice_relative_path,
    ':booking_number' => $booking_number
]);

file_put_contents($debugFile, "DB updated rows: " . $stmt->rowCount() . "\n", FILE_APPEND);

unset($_SESSION['last_booking_number']);

echo json_encode([
    'status' => 'success',
    'file' => $invoice_relative_path,
    'saved_as' => $invoice_filename,
    'booking_number' => $booking_number,
    'updated_rows' => $stmt->rowCount()
]);