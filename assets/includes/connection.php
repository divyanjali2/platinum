<?php
session_start();
header('Content-Type: application/json; charset=utf-8');
include_once __DIR__ . '/db_connect.php';

$debugFile = __DIR__ . '/../../debug.txt';

file_put_contents($debugFile, "\n==== connection.php ====\n", FILE_APPEND);
file_put_contents($debugFile, "REQUEST METHOD: " . $_SERVER['REQUEST_METHOD'] . "\n", FILE_APPEND);

if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    file_put_contents($debugFile, "Invalid request method\n", FILE_APPEND);
    echo json_encode([
        'status' => 'error',
        'message' => 'Invalid request'
    ]);
    exit;
}

$car_category     = $_POST['car_category'] ?? '';
$vehicle_id       = intval($_POST['car_id'] ?? 0);
$pickup_location  = trim($_POST['pickup_location'] ?? '');
$dropoff_location = trim($_POST['dropoff_location'] ?? '');
$pickup_date      = $_POST['pickup_date'] ?? '';
$dropoff_date     = $_POST['dropoff_date'] ?? '';
$pickup_time      = $_POST['pickup_time'] ?? '';
$dropoff_time     = $_POST['dropoff_time'] ?? '';
$mileage          = $_POST['mileage'] ?? '';
$name             = trim($_POST['passenger_name'] ?? '');
$email            = trim($_POST['passenger_email'] ?? '');
$phone            = trim($_POST['passenger_phone'] ?? '');
$flight           = trim($_POST['flight_number'] ?? '');
$passengers       = intval($_POST['num_passengers'] ?? 1);
$luggages         = intval($_POST['num_luggages'] ?? 1);
$need_driver      = $_POST['need_driver'] ?? 'no';
$need_license     = $_POST['need_license'] ?? 'no';
$other_info       = trim($_POST['other_info'] ?? '');
$total_price      = floatval($_POST['total_price'] ?? 0);
$addons           = $_POST['addons'] ?? [];
$addon_qty        = $_POST['addon_qty'] ?? [];

file_put_contents($debugFile, "POST passenger_name: {$name}\n", FILE_APPEND);
file_put_contents($debugFile, "POST total_price: {$total_price}\n", FILE_APPEND);

$addons_data = [];
if (!empty($addons)) {
    foreach ($addons as $addon_id) {
        $addons_data[$addon_id] = intval($addon_qty[$addon_id] ?? 1);
    }
}
$addons_json = json_encode($addons_data);

$pickup  = strtotime($pickup_date);
$dropoff = strtotime($dropoff_date);
$trip_days = ($pickup && $dropoff && $dropoff >= $pickup)
    ? ceil(($dropoff - $pickup) / (60 * 60 * 24))
    : 1;

function ensure_dir($dir) {
    if (!is_dir($dir)) {
        mkdir($dir, 0777, true);
    }
}

function get_upload_dir($subfolder) {
    $dir = realpath(__DIR__ . '/../../');
    if ($dir === false) {
        $dir = __DIR__ . '/../../';
    }

    $upload_dir = rtrim($dir, DIRECTORY_SEPARATOR)
        . DIRECTORY_SEPARATOR . 'uploads'
        . DIRECTORY_SEPARATOR . trim($subfolder, '/\\')
        . DIRECTORY_SEPARATOR;

    ensure_dir($upload_dir);

    return $upload_dir;
}

function file_path_to_url($absolute_path) {
    $absolute_path = str_replace('\\', '/', realpath($absolute_path) ?: $absolute_path);
    $document_root = str_replace('\\', '/', realpath($_SERVER['DOCUMENT_ROOT']) ?: $_SERVER['DOCUMENT_ROOT']);

    if (strpos($absolute_path, $document_root) !== 0) {
        return null;
    }

    $relative_path = substr($absolute_path, strlen($document_root));
    $protocol = (!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] !== 'off') ? 'https://' : 'http://';

    return $protocol . $_SERVER['HTTP_HOST'] . $relative_path;
}

function save_uploaded_file($input_name, $subfolder, $prefix = 'file_') {
    global $debugFile;

    if (!isset($_FILES[$input_name]) || $_FILES[$input_name]['error'] !== UPLOAD_ERR_OK) {
        file_put_contents($debugFile, "No upload for {$input_name}\n", FILE_APPEND);
        return null;
    }

    $upload_dir = get_upload_dir($subfolder);

    $ext = strtolower(pathinfo($_FILES[$input_name]['name'], PATHINFO_EXTENSION));
    $ext = preg_replace('/[^a-zA-Z0-9]/', '', $ext);
    $new_name = uniqid($prefix, true) . ($ext ? '.' . $ext : '');
    $destination = $upload_dir . $new_name;

    file_put_contents($debugFile, "Saving {$input_name} to {$destination}\n", FILE_APPEND);

    if (move_uploaded_file($_FILES[$input_name]['tmp_name'], $destination)) {
        $url = file_path_to_url($destination);
        file_put_contents($debugFile, "{$input_name} saved OK: {$url}\n", FILE_APPEND);
        return $url;
    }

    file_put_contents($debugFile, "{$input_name} save FAILED\n", FILE_APPEND);
    return null;
}

$passport_path  = save_uploaded_file('passport_image', 'licenses', 'license_');
$passport2_path = save_uploaded_file('passport_image2', 'licenses', 'license_');
$idp_path       = save_uploaded_file('idp_image', 'licenses', 'license_');

try {
    $today = date('Ymd');
    $stmt = $conn->prepare("SELECT booking_number FROM bookings WHERE booking_number LIKE :pattern ORDER BY id DESC LIMIT 1");
    $stmt->execute([':pattern' => "PD-{$today}-%"]);
    $last = $stmt->fetch(PDO::FETCH_ASSOC);
    $next_seq = $last ? intval(substr($last['booking_number'], -3)) + 1 : 1;
    $booking_number = 'PD-' . $today . '-' . str_pad($next_seq, 3, '0', STR_PAD_LEFT);

    $_SESSION['last_booking_number'] = $booking_number;

    file_put_contents($debugFile, "Generated booking number: {$booking_number}\n", FILE_APPEND);
    file_put_contents($debugFile, "Session last_booking_number set: {$_SESSION['last_booking_number']}\n", FILE_APPEND);

    $stmt = $conn->prepare("
        INSERT INTO bookings 
        (
            vehicle_id, car_category, pickup_location, dropoff_location, pickup_date, dropoff_date,
            pickup_time, dropoff_time, trip_days, mileage,
            passenger_name, passenger_email, passenger_phone, flight_number, passengers, luggages,
            need_driver, need_license, passport_image, passport_image2, idp_image, total_price,
            addons, addon_quantities, booking_number, invoice_path, created_at
        )
        VALUES
        (
            :vehicle_id, :car_category, :pickup_location, :dropoff_location, :pickup_date, :dropoff_date,
            :pickup_time, :dropoff_time, :trip_days, :mileage,
            :passenger_name, :passenger_email, :passenger_phone, :flight_number, :passengers, :luggages,
            :need_driver, :need_license, :passport_image, :passport_image2, :idp_image, :total_price,
            :addons, :addon_quantities, :booking_number, :invoice_path, NOW()
        )
    ");

    $stmt->execute([
        ':vehicle_id'        => $vehicle_id,
        ':car_category'      => $car_category,
        ':pickup_location'   => $pickup_location,
        ':dropoff_location'  => $dropoff_location,
        ':pickup_date'       => $pickup_date,
        ':dropoff_date'      => $dropoff_date,
        ':pickup_time'       => $pickup_time,
        ':dropoff_time'      => $dropoff_time,
        ':trip_days'         => $trip_days,
        ':mileage'           => $mileage,
        ':passenger_name'    => $name,
        ':passenger_email'   => $email,
        ':passenger_phone'   => $phone,
        ':flight_number'     => $flight,
        ':passengers'        => $passengers,
        ':luggages'          => $luggages,
        ':need_driver'       => $need_driver,
        ':need_license'      => $need_license,
        ':passport_image'    => $passport_path,
        ':passport_image2'   => $passport2_path,
        ':idp_image'         => $idp_path,
        ':total_price'       => $total_price,
        ':addons'            => json_encode(array_keys($addons_data)),
        ':addon_quantities'  => $addons_json,
        ':booking_number'    => $booking_number,
        ':invoice_path'      => null,
    ]);

    $response = [
        'status' => 'success',
        'message' => 'Booking submitted successfully',
        'booking_number' => $booking_number,
        'customer_name' => $name
    ];

    file_put_contents($debugFile, "Response: " . json_encode($response) . "\n", FILE_APPEND);

    echo json_encode($response);
    exit;

} catch (PDOException $e) {
    file_put_contents($debugFile, "DB ERROR: " . $e->getMessage() . "\n", FILE_APPEND);

    echo json_encode([
        'status' => 'error',
        'message' => $e->getMessage()
    ]);
    exit;
}
?>