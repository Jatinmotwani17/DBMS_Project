<?php
// Database configuration template
// Copy this file to connect.php and update with your actual database credentials

$host = "localhost";
$dbname = "streaming_platform";    // Replace with your database name
$username = "root";                // Replace with your MySQL username
$password = "";                    // Replace with your MySQL password (usually empty for XAMPP)

try {
    $conn = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
    exit();
}
?>