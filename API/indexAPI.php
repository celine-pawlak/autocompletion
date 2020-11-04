<?php

require '../Database/Database.php';
$db = new Database('autocompletion', 'root');
$pdo = $db->getPDO();

function nestedLowercase($value)
{
    if (is_array($value)) {
        return array_map('nestedLowercase', $value);
    }
    return utf8_encode(strtolower(utf8_decode($value)));
}

if (isset($_GET['param']) and $_GET['param'] == 'searchbar') {
}
if (!isset($allgames)) {
    $allgames = $pdo->query("SELECT * FROM test")->fetchAll(PDO::FETCH_ASSOC);
    $search = strtolower($_POST['search']);
    $matches = [];
    $allgameslower = array_map('nestedLowercase', $allgames);
    for ($i = 0; $i < count($allgames); $i++) {
        if (!empty($search) && preg_match('/' . $search . '/', $allgameslower[$i]['name'])) {
            $matches[] = $allgames[$i];
        }
    }
    echo json_encode($matches);
}
