<?php

$host = "localhost:3307";
$user = "louis";
$password = '123456';
$db_name = "kbs";

try {
    $conn = new PDO("mysql:host=$host;dbname=$db_name;charset=UTF8", $user, $password);
    // $pdo->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}


?>