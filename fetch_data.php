<?php
require_once 'connect.php';

$table = $_GET['table'];
$stmt = $conn->prepare("SELECT * FROM $table");
$stmt->execute();
$rows = $stmt->fetchAll(PDO::FETCH_NUM);
$columns = array_keys($conn->query("DESCRIBE $table")->fetch(PDO::FETCH_ASSOC));

echo json_encode(['columns' => $columns, 'rows' => $rows]);
?>