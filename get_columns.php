<?php
require_once 'connect.php';

$table = $_GET['table'];
$columns = array_keys($conn->query("DESCRIBE $table")->fetch(PDO::FETCH_ASSOC));
echo json_encode($columns);
?>