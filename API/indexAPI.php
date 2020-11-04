<?php
require '../Database/Database.php';
$db = new Database('autocompletion', 'root');
$pdo = $db->getPDO();

if(isset($_GET['param']) && $_GET['param']=='getelement')
    {
        $id = $_GET['id'];
        $req = $pdo->prepare('SELECT * FROM jeux WHERE id=?');
        $req->execute([$id]);
        $element = $req->fetch();

        $json = json_encode($element);        
        echo $json;
    }