<?php
//Chargement de l'environement twig
require_once 'vendor/autoload.php';
//Chemin des fichiers twig
$loader = new Twig_Loader_Filesystem('view');
$twig = new Twig_Environment($loader, array());

//Récupération de la racine du site
$scriptUrl = $_SERVER['SCRIPT_NAME'];
$i = count(explode("/", trim($scriptUrl, '/')));
$typeHttp = 'http://';//(strstr($_SERVER["HTTP_HOST"],"https:")? "https://" : "http://";
$baseUrl = $typeHttp.$_SERVER['SERVER_NAME'].':'.$_SERVER['SERVER_PORT'].substr($scriptUrl, 0, -9);

//Récupération de l'url contenant le controleur et l'action
$url = $_SERVER['REQUEST_URI'];
$request = explode("/", trim($url, '/'));


//Test et récupération du contrôleur et de l'action
$controler = (count($request) === $i-1)? 'home': $request[$i-1];
$action = (count($request) < $i+1)? '': $request[$i];
$id = (count($request) < $i+2)? '': $request[$i+1];

//Routeur pour acces aux contrôleurs
switch ($controler) {
   case 'fiche': // Affichage de la fiche d'un film en particulier
      require_once 'controler/fiche_controler.php';
   break;

   case 'home': // Affichage de la page d'acceuil en cliquant sur le boutton home
      require_once 'controler/home_controler.php';
   break;

   case 'genre': // Affichage des genres et des films associés
      require_once 'controler/genre_controler.php';
   break;

   case 'list': // Affichage de la liste détaillé de tous les films
      require_once 'controler/list_controler.php';
   break;

   case 'realisateur': // Affichage des réalisateurs et de leurs films
      require_once 'controler/realisateur_controler.php';
   break;

   default: //Affichage de la page d'acceuil par défaut
      require_once 'controler/home_controler.php';
   break;
}