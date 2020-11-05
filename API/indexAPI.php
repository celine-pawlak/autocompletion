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
}

// Gère l'envoie des données de l'élément séléctionner
if(isset($_GET['param']) && $_GET['param']=='getelement')
    {      
        $id = $_GET['id'];        
        $error = [];
        $set = [];
        $requete = $pdo->prepare('SELECT id FROM jeux WHERE id=?');
        $requete->execute([$id]);
        $isInBdd = $requete->fetch();        

        if(empty($isInBdd))
            {
                array_push($error, 'Pas la REF');               
            }
        if(!filter_var($id, FILTER_VALIDATE_INT))
            {
                array_push($error, 'La valeur n\'est pas correct');
            }
        if(empty($error))
            {                            
                $req = $pdo->prepare('SELECT * FROM jeux WHERE id=?');
                $req->execute([$id]);
                $element = $req->fetch();
                
                array_push($set, $element);
                array_push($set, true);

                $json = json_encode($set);        
                echo $json;
            }
        else
            {                
                $json = json_encode($error);
                echo $json;
            }                
    }
