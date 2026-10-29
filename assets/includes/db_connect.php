<?php
    $host = 'localhost';
    $dbname = 'platinum-drive';
    $username = 'root';
    $password = '';

    try {
        $conn = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8mb4", $username, $password);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        // echo "Database connection successful!";
    } catch(PDOException $e) {
        die("Database connection failed: " . $e->getMessage());
    }
?>
