<?php

switch ($action) {
    case 'display':
        require 'model/fiche_model.php';
    break;
    
    default:
        require 'model/fiche_model.php';
        break;
 }

 echo $twig->render('fiche.twig', array('list' => $list, 'baseUrl' => $baseUrl));
