<?php
   require_once 'set_PDO.php';

    $sql = "SELECT genre.genre, films.id, films.jaquette, films.titre
    FROM genre
    INNER JOIN films_genre ON genre.id = films_genre.genre
    INNER JOIN films ON films_genre.film = films.id
    ORDER BY genre.genre";  // Requète SQL à envoyer
    $response = $bdd->prepare( $sql ); // Préparation de la requète
    $response->execute(); // Exécution de la requềte

    //  Stockage des données à renvoyer au controleur
    $listFilms = $response->fetchAll(PDO::FETCH_ASSOC);

  
    $sql = "SELECT genre.genre
    FROM genre
    ORDER BY genre";  // Requète SQL à envoyer
    $response = $bdd->prepare( $sql ); // Préparation de la requète
    $response->execute(); // Exécution de la requềte

    //  Stockage des données à renvoyer au controleur
    $listGenre = $response->fetchAll(PDO::FETCH_ASSOC);
 

