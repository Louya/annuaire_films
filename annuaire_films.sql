-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Lun 03 Décembre 2018 à 09:21
-- Version du serveur :  10.3.11-MariaDB-1:10.3.11+maria~bionic-log
-- Version de PHP :  7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `annuaire_films`
--

-- --------------------------------------------------------

--
-- Structure de la table `films`
--

CREATE TABLE `films` (
  `id` int(4) NOT NULL,
  `titre` varchar(47) DEFAULT NULL,
  `synopsis` varchar(1042) DEFAULT NULL,
  `année` int(4) DEFAULT NULL,
  `jaquette` char(255) NOT NULL,
  `trailer` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Contenu de la table `films`
--

INSERT INTO `films` (`id`, `titre`, `synopsis`, `année`, `jaquette`, `trailer`) VALUES
(1, 'Pulp Fiction', 'L\'odyssée sanglante et burlesque de petits malfrats dans la jungle de Hollywood à travers trois histoires qui s\'entremêlent. Dans un restaurant, un couple de jeunes braqueurs, Pumpkin et Yolanda, discutent des risques que comporte leur activité. Deux truands, Jules Winnfield et son ami Vincent Vega, qui revient d\'Amsterdam, ont pour mission de récupérer une mallette au contenu mystérieux et de la rapporter à Marsellus Wallace.', 1994, 'media/pulp_fiction.jpg', 'https://www.youtube.com/embed/s7EdQ4FqbhY'),
(2, 'Le voyage de Chihiro', 'Chihiro, dix ans, a tout d\'une petite fille capricieuse. Elle s\'apprête à emménager avec ses parents dans une nouvelle demeure.\nSur la route, la petite famille se retrouve face à un immense bâtiment rouge au centre duquel s\'ouvre un long tunnel. De l\'autre côté du passage se dresse une ville fantôme. Les parents découvrent dans un restaurant désert de nombreux mets succulents et ne tardent pas à se jeter dessus. Ils se retrouvent alors transformés en cochons.\nPrise de panique, Chihiro s\'enfuit et se dématérialise progressivement. L\'énigmatique Haku se charge de lui expliquer le fonctionnement de l\'univers dans lequel elle vient de pénétrer. Pour sauver ses parents, la fillette va devoir faire face à la terrible sorcière Yubaba, qui arbore les traits d\'une harpie méphistophélique.', 2002, 'media/chihiro.jpg', 'https://www.youtube.com/embed/5-cro68n7CE'),
(3, 'Ghost in the Shell', 'Dans un futur proche, le Major est unique en son genre: humaine sauvée d’un terrible accident, son corps aux capacités cybernétiques lui permet de lutter contre les plus dangereux criminels. Face à une menace d’un nouveau genre qui permet de pirater et de contrôler les esprits, le Major est la seule à pouvoir la combattre. Alors qu’elle s’apprête à affronter ce nouvel ennemi, elle découvre qu’on lui a menti : sa vie n’a pas été sauvée, on la lui a volée. Rien ne l’arrêtera pour comprendre son passé, trouver les responsables et les empêcher de recommencer avec d’autres.', 2017, 'media/ghost.jpg', 'https://www.youtube.com/embed/G4VmJcZR0Yg'),
(4, 'Las Vegas Parano', 'A travers l\'épopée à la fois comique et horrible vers Las Vegas du journaliste Raoul Duke et de son énorme avocat, le Dr. Gonzo, évocation caustique et brillante de l\'année 1971 aux Etats-Unis, pendant laquelle les espoirs des années soixante et le fameux rêve américain furent balayés pour laisser la place à un cynisme plus politiquement correct.', 1998, 'media/las_vegas.jpg', 'https://www.youtube.com/embed/x99Un_7rFH8'),
(5, 'Léon', 'Un tueur à gages répondant au nom de Léon prend sous son aile Mathilda, une petite fille de 12 ans, seule rescapée du massacre de sa famille. Bientôt, Léon va faire de Mathilda une `nettoyeuse\', comme lui. La jeune fille pourra alors venger son petit frère.', 1994, 'media/leon.jpg', 'https://www.youtube.com/embed/KvORebZLsrI'),
(6, 'Fight Club', 'Le narrateur, sans identité précise, vit seul, travaille seul, dort seul, mange seul ses plateaux-repas pour une personne comme beaucoup d\'autres personnes seules qui connaissent la misère humaine, morale et sexuelle. C\'est pourquoi il va devenir membre du Fight club, un lieu clandestin ou il va pouvoir retrouver sa virilité, l\'échange et la communication. Ce club est dirigé par Tyler Durden, une sorte d\'anarchiste entre gourou et philosophe qui prêche l\'amour de son prochain. ', 1999, 'media/fight_club.jpg', 'https://www.youtube.com/embed/N9_xlIN80rM'),
(7, 'Cloud Atlas', 'À travers une histoire qui se déroule sur cinq siècles dans plusieurs espaces temps, des êtres se croisent et se retrouvent d’une vie à l’autre, naissant et renaissant successivement… Tandis que leurs décisions ont des conséquences sur leur parcours, dans le passé, le présent et l’avenir lointain, un tueur devient un héros et un seul acte de générosité suffit à entraîner des répercussions pendant plusieurs siècles et à provoquer une révolution. Tout, absolument tout, est lié.', 2012, 'media/cloud_atlas.jpg', 'https://www.youtube.com/embed/p-oTQ98YnMQ'),
(8, 'Star Wars : Episode V – l’empire contre-attaque', 'Malgré la destruction de l\'Etoile Noire, l\'Empire maintient son emprise sur la galaxie, et poursuit sans relâche sa lutte contre l\'Alliance rebelle. Basés sur la planète glacée de Hoth, les rebelles essuient un assaut des troupes impériales. Parvenus à s\'échapper, la princesse Leia, Han Solo, Chewbacca et C-3P0 se dirigent vers Bespin, la cité des nuages gouvernée par Lando Calrissian, ancien compagnon de Han. Suivant les instructions d\'Obi-Wan Kenobi, Luke Skywalker se rend quant à lui vers le système de Dagobah, planète marécageuse où il doit recevoir l\'enseignement du dernier maître Jedi, Yoda. Apprenant l\'arrestation de ses compagnons par les stormtroopers de Dark Vador après la trahison de Lando, Luke décide d\'interrompre son entraînement pour porter secours à ses amis et affronter le sombre seigneur Sith... ', 1980, 'media/star_wars.jpg', 'https://www.youtube.com/embed/Z7B0vfamFTE'),
(9, 'Sin city', 'Sin City est une ville infestée de criminels, de flics ripoux et de femmes fatales. Hartigan s\'est juré de protéger Nancy, une strip-teaseuse qui l\'a fait craquer. Marv, un marginal brutal mais philosophe, part en mission pour venger la mort de son unique véritable amour, Goldie. Dwight est l\'amant secret de Shellie. Il passe ses nuits à protéger Gail et les filles des bas quartiers de Jackie Boy, un flic pourri, violent et incontrôlable. Certains ont soif de vengeance, d\'autres recherchent leur salut. Bienvenue à Sin City, la ville du vice et du péché.', 2005, 'media/sin_city.jpg', 'https://www.youtube.com/embed/XnyehuI1vVw'),
(10, 'Avatar', 'Malgré sa paralysie, Jake Sully, un ancien marine immobilisé dans un fauteuil roulant, est resté un combattant au plus profond de son être. Il est recruté pour se rendre à des années-lumière de la Terre, sur Pandora, où de puissants groupes industriels exploitent un minerai rarissime destiné à résoudre la crise énergétique sur Terre. Parce que l\'atmosphère de Pandora est toxique pour les humains, ceux-ci ont créé le Programme Avatar, qui permet à des \" pilotes \" humains de lier leur esprit à un avatar, un corps biologique commandé à distance, capable de survivre dans cette atmosphère létale. Ces avatars sont des hybrides créés génétiquement en croisant l\'ADN humain avec celui des Na\'vi, les autochtones de Pandora.Sous sa forme d\'avatar, Jake peut de nouveau marcher. On lui confie une mission d\'infiltration auprès des Na\'vi, devenus un obstacle trop conséquent à l\'exploitation du précieux minerai. Mais tout va changer lorsque Neytiri, une très belle Na\'vi, sauve la vie de Jake…', 2009, 'media/avatar.jpg', 'https://www.youtube.com/embed/nXDa_CsZvQ0'),
(11, 'Inception', 'Dom Cobb est un voleur expérimenté – le meilleur qui soit dans l’art périlleux de l’extraction : sa spécialité consiste à s’approprier les secrets les plus précieux d’un individu, enfouis au plus profond de son subconscient, pendant qu’il rêve et que son esprit est particulièrement vulnérable. Très recherché pour ses talents dans l’univers trouble de l’espionnage industriel, Cobb est aussi devenu un fugitif traqué dans le monde entier qui a perdu tout ce qui lui est cher. Mais une ultime mission pourrait lui permettre de retrouver sa vie d’avant – à condition qu’il puisse accomplir l’impossible : l’inception. Au lieu de subtiliser un rêve, Cobb et son équipe doivent faire l’inverse : implanter une idée dans l’esprit d’un individu. S’ils y parviennent, il pourrait s’agir du crime parfait. Et pourtant, aussi méthodiques et doués soient-ils, rien n’aurait pu préparer Cobb et ses partenaires à un ennemi redoutable qui semble avoir systématiquement un coup d’avance sur eux. Un ennemi dont seul Cobb aurait pu soupçonner l’existence.', 2010, 'media/inception.jpg', 'https://www.youtube.com/embed/CPTIgILtna8');

-- --------------------------------------------------------

--
-- Structure de la table `films_genre`
--

CREATE TABLE `films_genre` (
  `film` int(4) NOT NULL,
  `genre` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `films_genre`
--

INSERT INTO `films_genre` (`film`, `genre`) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 7),
(4, 6),
(4, 4),
(5, 2),
(5, 1),
(6, 8),
(6, 1),
(7, 1),
(7, 7),
(7, 8),
(8, 7),
(8, 4),
(9, 1),
(9, 5),
(10, 4),
(10, 7),
(11, 8),
(11, 7);

-- --------------------------------------------------------

--
-- Structure de la table `films_realisateur`
--

CREATE TABLE `films_realisateur` (
  `film` int(4) NOT NULL,
  `realisateur` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `films_realisateur`
--

INSERT INTO `films_realisateur` (`film`, `realisateur`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(7, 8),
(8, 9),
(9, 10),
(10, 11),
(11, 12);

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `id` int(4) NOT NULL,
  `genre` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `genre`
--

INSERT INTO `genre` (`id`, `genre`) VALUES
(1, 'drame'),
(2, 'policier'),
(3, 'animation'),
(4, 'aventure'),
(5, 'action'),
(6, 'comedie'),
(7, 'science-fiction'),
(8, 'thriller');

-- --------------------------------------------------------

--
-- Structure de la table `realisateur`
--

CREATE TABLE `realisateur` (
  `id` int(4) NOT NULL,
  `prenom` varchar(50) CHARACTER SET utf8 NOT NULL,
  `nom` char(255) CHARACTER SET utf8 NOT NULL,
  `photo` char(255) CHARACTER SET utf8 NOT NULL,
  `bio` varchar(1000) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `realisateur`
--

INSERT INTO `realisateur` (`id`, `prenom`, `nom`, `photo`, `bio`) VALUES
(1, 'Quentin', 'Tarantino', 'media/real/quentin_tarantino.jpg', 'Quentin Tarantino, né le 27 mars 1963 à Knoxville dans le Tennessee, aux États-Unis, est un réalisateur, scénariste, producteur et acteur américain. Il acquiert une célébrité internationale dans les années 1990, en tant que réalisateur de films indépendants avec ses deux premiers longs métrages, Reservoir Dogs (1992) et Pulp Fiction (1994), et remporte pour ce dernier la Palme d\'or à Cannes. Après un troisième film en 1997 (Jackie Brown), il effectue son retour avec les deux volets de Kill Bill (2003 et 2004). Inglourious Basterds (2009) et Django Unchained (2012) sont ses plus grands succès commerciaux internationaux. '),
(2, 'Hayao', 'Miyazaki', 'media/real/hayao_miyazaki.jpg', 'Hayao Miyazaki (宮崎 駿, Miyazaki Hayao?), né le 5 janvier 1941 à Tokyo, est un dessinateur, réalisateur et producteur de films d\'animation japonais, cofondateur du Studio Ghibli avec Isao Takahata.\r\n\r\nPresque inconnu en Occident en dehors des cercles d’amateurs d’anime et de manga jusqu’à la sortie internationale de Princesse Mononoké en 1999, ses films rencontrent ensuite un grand succès partout dans le monde et surtout au Japon où certains ont battu des records d’affluence.\r\n\r\nIl explore souvent les mêmes thèmes centraux, la relation de l’humanité avec la nature, l’écologie et la technologie, ainsi que la difficulté de rester pacifiste dans un monde en guerre. Les protagonistes de ses films sont le plus souvent de jeunes filles ou femmes fortes et indépendantes, et les « méchants » ont des qualités qui les rendent moralement ambigus, comme les kamis de la religion shintoïste. '),
(3, 'Rupert', 'Sanders', 'media/real/rupert_sanders.jpg', 'Rupert Sanders est un réalisateur de publicités très prolifique. Il se fait connaître en 2012 quand il met en scène son premier long-métrage, Blanche-Neige et le chasseur, une relecture du célèbre conte avec Kristen Stewart et Chris Hemsworth.En 2017, le britannique se voit confier la réalisation de l\'adaptation live du manga culte Ghost In The Shell. Il dirige cette fois Scarlett Johansson, Michael Pitt et Takeshi Kitano.Vincent Formica '),
(4, 'Terry', 'Gilliam', 'media/real/terry_gilliam.jpg', 'Terry Gilliam, né le 22 novembre 1940 à Medicine Lake (Minnesota), est un réalisateur de cinéma, scénariste, acteur, et dessinateur. Révélé en tant que membre des Monty Python, il a ensuite poursuivi une carrière de cinéaste à part entière. Il a été naturalisé britannique en 1968, avant de renoncer à la nationalité américaine en janvier 2006. '),
(5, 'Luc', 'Besson', 'media/real/luc_besson.jpg', 'Luc Besson est un réalisateur, producteur et scénariste français, né le 18 mars 1959 dans le 15e arrondissement de Paris.\r\n\r\nEn tant que réalisateur, il s\'est démarqué avec les films Le Grand Bleu, Nikita, Léon, Le Cinquième Élément (qui lui a valu un César du meilleur réalisateur en 1995), Jeanne d\'Arc, Arthur et les Minimoys, The Lady, Lucy et Valérian et la Cité des mille planètes. En tant que producteur avec sa société de production Europa Corp, il est surtout connu pour les séries de films Taken, Taxi et Le Transporteur. Il est à l\'origine de la Cité du cinéma. '),
(6, 'David', 'Fincher', 'media/real/david_fincher.jpg', 'David Fincher, né le 28 août 1962 à Denver (Colorado), est un réalisateur et producteur américain.\r\n\r\nIl est principalement connu pour avoir réalisé les films Seven, Fight Club, L\'Étrange Histoire de Benjamin Button, The Social Network et Gone Girl qui lui ont valu diverses récompenses et nominations aux Oscars du cinéma ou aux Golden Globes. Réputé pour son perfectionnisme, il peut tourner un très grand nombre de prises de ses plans et séquences afin d\'obtenir le rendu visuel qu\'il désire. Il a également développé et produit les séries télévisées House of Cards (pour laquelle il remporte l\'Emmy Award de la meilleure réalisation pour une série dramatique en 2013) et Mindhunter, diffusées sur Netflix.\r\n\r\nDavid Fincher a également réalisé de nombreux vidéoclips pour des artistes tels que Madonna ou Michael Jackson. '),
(7, 'Lana', 'Wachowski', 'media/real/lana_wachowski.jpg', 'Lana Wachowski (née Laurence Wachowski le 21 juin 1965 à Chicago1) et Lilly Wachowski (née Andrew Wachowski le 29 décembre 1967 à Chicago2) sont deux sœurs réalisatrices américaines. Toutes deux femmes trans, elles ont d\'abord été connues sous les diminutifs de leurs anciens prénoms masculins : Larry Wachowski et Andy Wachowski. \r\n\r\nAprès avoir écrit le scénario du film Assassins, les Wachowski font leurs débuts à la réalisation en 1996 avec le film Bound, puis acquièrent leur notoriété avec leur projet suivant, Matrix (1999), qui rencontre un large succès au box-office et leur vaut le Saturn Award du meilleur réalisateur. \r\n\r\nAprès ce succès commercial, le duo écrit et produit en 2006 le film V pour Vendetta (adaptation du comic d\'Alan Moore), puis travaillent en 2008 sur une adaptation d\'une série animée japonaise, Speed Racer. Leur film Cloud Atlas, sorti en 2012, coréalisé avec Tom Tykwer et basé sur le roman de David Mitchell.'),
(8, 'Tom', 'Tykwer', 'media/real/tom_tykwer.jpg', 'Tom Tykwer (né le 23 mai 1965 à Wuppertal) est un réalisateur, scénariste, producteur et compositeur allemand.\r\n\r\nEn 1994, il a fondé avec Stefan Arndt, Dani Levy et Wolfgang Becker la maison de production X-Filme Creative Pool.\r\n\r\nIl est élu membre de l\'Académie des arts de Berlin en 20001. '),
(9, 'Irvin', 'Kershner', 'media/real/irvin_kershner.jpg', 'Irvin Kershner, né le 29 avril 1923 à Philadelphie (Pennsylvanie) et mort le 27 novembre 2010 à Los Angeles (Californie), est un cinéaste américain. Il est surtout connu pour avoir réalisé L\'Empire contre-attaque pour George Lucas. '),
(10, 'Frank', 'Miller', 'media/real/frank_miller.jpg', 'Frank Miller, né le 27 janvier 1957 à Olney dans le Maryland, est un auteur de bandes dessinées américain, également scénariste de films et réalisateur. Il a adapté certaines de ses œuvres pour le cinéma, comme Sin City en 2004.'),
(11, 'James', 'Cameron', 'media/real/james_cameron.jpg', 'James Francis Cameron est un réalisateur, scénariste, producteur et explorateur de fonds marins canadien, né le 16 août 1954 à Kapuskasing (Canada). Il a réalisé et écrit les films, Terminator (1984), Aliens, le retour (1986), Abyss (1989), Terminator 2 : Le Jugement dernier (1991), True Lies (1994), Titanic (1997) et Avatar (2009).\r\n\r\nEn 1997, il bat un record avec Titanic, film consacré au naufrage de 1912. Le film est resté pendant onze ans le plus gros succès du box-office mondial et reçoit en 1998 l\'Oscar du meilleur film et Cameron remporte la même année l\'Oscar du meilleur réalisateur. Le film remporte également neuf autres Oscars. Le budget du film est de quelque 200 millions de dollars.\r\n\r\nIl bat un nouveau record en 2009, avec Avatar, film de science-fiction, dont le budget est estimé à près de 400 millions de dollars. Le film bat également Titanic, en tant que plus grand succès du box-office mondial en 2010, et dégage en tout 2,78 milliards de dollars de recettes.'),
(12, 'Christopher', 'Nolan', 'media/real/christopher_nolan.jpg', 'Christopher Edward Nolan est un réalisateur, scénariste, monteur et producteur de cinéma britanno-américain, né le 30 juillet 1970 à Westminster (Londres).\r\n\r\nIl se fait connaître à la fin des années 1990 par un premier long métrage, Following (1998), tourné en noir et blanc. Son deuxième film, Memento (2000), lui apporte une renommée, qui lui permet d\'obtenir pour le troisième, Insomnia (2002), la collaboration d\'Al Pacino et Robin Williams. Il est choisi ensuite pour réaliser la trilogie des Batman : Batman Begins (2005), The Dark Knight : Le Chevalier noir (2008) et The Dark Knight Rises (2012). Tout en travaillant sur cette saga, il met en scène Le Prestige (2006), et deux films de science-fiction, Inception (2010) et Interstellar (2014).\r\n\r\nLa plupart de ses films ont été écrits avec son cadet, Jonathan Nolan. Ils ont obtenu un total de vingt-six nominations et sept récompenses aux Oscars du cinéma 1, et ont généré plus de 4,2 milliards de dollars de recettes à travers le monde. ');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `realisateur`
--
ALTER TABLE `realisateur`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `films`
--
ALTER TABLE `films`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `realisateur`
--
ALTER TABLE `realisateur`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
