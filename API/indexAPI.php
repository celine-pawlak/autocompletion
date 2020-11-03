<?php
require '../Database/Database.php';
$db = new Database('autocompletion', 'root');
$pdo = $db->getPDO();
