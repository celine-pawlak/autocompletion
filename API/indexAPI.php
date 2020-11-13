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
/**
 * Récupère $nombre d'élément dans une table sans prendre en compte $id
 * @param mixed $pdo connexion à la bdd 
 * @param number $id id que l'on ne veut pas dans le résultat
 * @param number $nombre de résultat souhaité
 * @param string $table table dans laquelle faire la requête
 * @return mixed un tableau avec toutes les infos des résultats
 */
function randomSuggest ($pdo, $id, $nombre, $table)
    {
        $req1 = $pdo->query("SELECT id FROM $table");
        $recupId = $req1->fetchAll(PDO::FETCH_ASSOC);
        $allId= [];
        $idSuggest = [];        
        foreach($recupId as $index => $idTable)
            {
                array_push($allId, $idTable['id']) ;
            }       
        unset($allId[array_search($id, $allId)]);
            
        $random = array_rand($allId, $nombre);

        foreach($random as $k => $v)
            {    
                array_push($idSuggest, $allId[$v]);          
            }

        $req2 = $pdo->prepare("SELECT * FROM $table WHERE id IN (?,?,?)");
        $req2->execute([$idSuggest[0], $idSuggest[1], $idSuggest[2]]);
        $suggestion = $req2->fetchAll(PDO::FETCH_ASSOC);
        return $suggestion;
    }

    
if (isset($_GET['param']) and ($_GET['param'] == 'searchbar' or $_GET['param'] == 'search')) {
    if (!isset($allgames)) {
        $allgames = $pdo->query("SELECT * FROM games")->fetchAll(PDO::FETCH_ASSOC);
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
        $requete = $pdo->prepare('SELECT id FROM games WHERE id=?');
        $requete->execute([$id]);
        $isInBdd = $requete->fetch();        

        if(empty($isInBdd))
            {
                array_push($error, 'Cette référence n\'existe pas dans notre base de données');               
            }
        if(!filter_var($id, FILTER_VALIDATE_INT))
            {
                array_push($error, 'La valeur n\'est pas correct');
            }
        if(empty($error))
            {                            
                $req = $pdo->prepare('SELECT * FROM games WHERE id=?');
                $req->execute([$id]);
                $element = $req->fetch();
        
                array_push($set, $element);
                array_push($set, true);
                array_push($set, randomSuggest($pdo, $id, 3, 'games'));                

                $json = json_encode($set);        
                echo $json;
            }
        else
            {                
                array_push($error, randomSuggest($pdo, $id, 3, 'games'));  
                $json = json_encode($error);
                echo $json;
            }                
    }
