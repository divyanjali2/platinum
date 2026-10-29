<?php
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Save form values to session
    $_SESSION['booking'] = [
        'pickup_location' => $_POST['pickup_location'] ?? '',
        'dropoff_location' => $_POST['dropoff_location'] ?? '',
        'pickup_date' => $_POST['pickup_date'] ?? $_POST['pickup_date'] ?? '',
        'pickup_time' => $_POST['pickup_time'] ?? $_POST['time_pick'] ?? '',
        'dropoff_date' => $_POST['book_off_date'] ?? $_POST['book_off_date'] ?? '',
        'dropoff_time' => $_POST['time_drop'] ?? $_POST['time_drop'] ?? '',
    ];

    // Optional: Redirect to car listing page (ID 2 in your case)
    $url = $modx->makeUrl(2); // Replace 2 with your "Choose Your Car" page ID
    $modx->sendRedirect($url);
}
return '';
return;
