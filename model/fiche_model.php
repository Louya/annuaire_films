
<?php
  // Chargement de l'environnement PDO
    require_once 'set_PDO.php';

// Requète SQL à envoyer
    $sql = "SELECT films.titre, films.jaquette, films.trailer, films.synopsis, films.année,
    GROUP_CONCAT(DISTINCT genre.genre SEPARATOR ', ') AS genre, 
    GROUP_CONCAT(DISTINCT realisateur.nom SEPARATOR ', ') AS realisateur
    FROM films
      INNER JOIN films_genre ON films_genre.film = films.id 
      INNER JOIN genre ON films_genre.genre = genre.id
      INNER JOIN films_realisateur ON films_realisateur.film = films.id
      INNER JOIN realisateur ON films_realisateur.realisateur = realisateur.id
      WHERE films.id = :id
      GROUP BY films.titre";  
    $response = $bdd->prepare( $sql ); // Préparation de la requète
    $response->bindParam(':id', $id, PDO::PARAM_STR); // Passage du paramètre PHP $id dans SQL
    $response->execute(); // Exécution de la requềte

//  Stockage des données à renvoyer au controleur
    $list = $response->fetchAll(PDO::FETCH_ASSOC);

//  retour des données au contrôleur
    return $list;
    return $baseUrl;