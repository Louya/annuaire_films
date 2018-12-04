<?php
 
//routeur pour l'action à effectuer
switch ($action) {
    case 'display': // action d'affichage des films

        // routeur pour l'identification de la recherche par nom
        switch ($id){
            case 'Action'or'Animation'or'Aventure'or'Comédie'or'Drame'or'Policier'or'Science Fiction'or'Thriller':
            require 'model/genre_X_model.php';
            break;

            default:
            require 'model/genre_model.php';
            break;
        }
    break;

    default: //action par défaut : affichage des films (display)
        require 'model/genre_model.php';
    break;
 }

 //génération du block twig genre avec la liste du ou des genres à afficher
echo $twig->render('genre.twig', array('listFilms' => $listFilms, 'listGenre' => $listGenre, 'baseUrl' => $baseUrl));