<?php
   
  // Chargement de l'environnement PDO
  require_once 'set_PDO.php';
  
  $sql = "SELECT genre.genre, films.id, films.jaquette, films.titre
  FROM genre
  INNER JOIN films_genre ON genre.id = films_genre.genre
  INNER JOIN films ON films_genre.film = films.id
  WHERE genre.genre = :id
  ORDER BY films.titre";  // Requète SQL à envoyer
  $response = $bdd->prepare( $sql ); // Préparation de la requète
  $response->bindParam(':id', $id, PDO::PARAM_STR); // Passage du paramètre PHP $id dans SQL
  $response->execute(); // Exécution de la requềte

//  Stockage des données à renvoyer au controleur
  $listFilms = $response->fetchAll(PDO::FETCH_ASSOC);
  
  $sql = "SELECT genre.genre
  FROM genre
  WHERE genre.genre = :id";  // Requète SQL à envoyer
  $response = $bdd->prepare( $sql ); // Préparation de la requète
  $response->bindParam(':id', $id, PDO::PARAM_STR); // Passage du paramètre PHP $id dans SQL
  $response->execute(); // Exécution de la requềte

  //  Stockage des données à renvoyer au controleur
  $listGenre = $response->fetchAll(PDO::FETCH_ASSOC);
