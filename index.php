<?php
//Chargement de l'environement twig
require_once 'vendor/autoload.php';
//Chemin des fichiers twig
$loader = new Twig_Loader_Filesystem('view');
$twig = new Twig_Environment($loader, array());

//Récupération de la racine du site
$baseUrl1 = $_SERVER['SCRIPT_NAME'];
$i = count(explode("/", trim($baseUrl1, '/')));

//Récupération de l'url contenant le controleur et l'action
$url = $_SERVER['REQUEST_URI'];
<<<<<<< HEAD
$request = explode("/", trim($url, '/'));
=======
$request = explode("/", trim(($url), '/'));
>>>>>>> 3fec094ecbe82fd679e2c4a2be95c34bcc61e0cc

//Test et récupération du contrôleur et de l'action
$controler = (count($request) === $i-1)? 'home': $request[$i-1];
$action = (count($request) < $i+3)? '': $request[2];

//Routeur pour acces aux contrôleurs
switch ($controler) {
   case 'fiche': // Affichage de la fiche d'un film en particulier
       require_once 'controler/fiche_controler.php';
       break;

    case 'home': // Affichage de la page d'acceuil en cliquant sur le boutton home
       require_once 'controler/home_controler.php';
       break;

<<<<<<< HEAD
   default: //Affichage de la page d'acceuil par défaut
=======
       case 'gender':
       require_once 'controler/gender_controler.php';
       break;

   default:
>>>>>>> 3fec094ecbe82fd679e2c4a2be95c34bcc61e0cc
       require_once 'controler/home_controler.php';
       break;
}
