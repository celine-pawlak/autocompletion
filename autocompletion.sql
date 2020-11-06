-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 05 nov. 2020 à 14:52
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `autocompletion`
--

-- --------------------------------------------------------

--
-- Structure de la table `games`
--

DROP TABLE IF EXISTS `games`;
CREATE TABLE IF NOT EXISTS `games` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `games`
--

INSERT INTO `games` (`id`, `name`, `path`, `description`) VALUES
(1, 'Dead by daylight', 'dead-by-daylight-cover', 'Il y a à proprement parler deux façons de jouer : quatre joueurs en ligne joignent leurs forces contre un seul tueur, qui est aussi un joueur en ligne. Vous pouvez donc être désigné comme le tueur ou être parmi les 4 personnes chargées de le vaincre. Ce qui met rapidement la pression !'),
(2, 'GhostRunner', 'ghostrunner-cover', 'Enter an intense cyberpunk world and experience fierce, dynamic combat! Conquer your enemies in the physical world and in cyberspace. Hunt for answers in humanity’s last remaining shelter.'),
(3, 'Little Hope', 'the-dark-pictures-little-hope-cover', 'L\'Anthologie The Dark Pictures est une série de jeux d\'horreur cinématographiques à embranchements indépendants jouables seul ou à plusieurs.'),
(4, 'Age of empire 3', 'age-of-empires-iii-definitive-edition-cover', 'Avec Age of Empires III: Definitive Edition, redécouvrez l\'une des séries de jeux de stratégie en temps réel les plus célèbres de tous les temps dans sa forme définitive, avec des fonctionnalités optimisées et une jouabilité modernisée.'),
(5, 'Age of empire 2', 'age-of-empires-ii-definitive-edition-cover', 'Le principal tournant dans la conception se trouve dans un choix curieux que les joueurs doivent faire en début de partie : opter ou non pour l\'ancienne IA comme adversaire ou opter pour la nouvelle IA, une version mise à jour conçue spécialement pour la sortie de l\'édition définitive.'),
(6, 'Green hell', 'green-hell-cover', 'GREEN HELL est un simulateur de survie en monde ouvert vous plongeant dans un territoire inconnu de la forêt amazonienne.'),
(7, 'No man\'s sky', 'no-mans-sky-cover', 'No Man\'s Sky pour PC est un jeu d\'action-aventure de survie dans lequel le joueur prend la forme d\'un humanoïde extraterrestre qui s’est écrasé à l\'atterrissage et qui reçoit les bases de ce dont il ou elle a besoin pour survivre et même prospérer. Équipé d\'un multi-outils, le joueur peut suivre les conseils à l\'écran d\'une entité nommée Atlas.'),
(8, 'Football manager 2021', 'football-manager-2021-cover', 'Le manager est la force vitale d\'un club de football. Dans Football Manager 2021, des expériences aussi dynamiques qu\'authentiques et des détails inédits vous mettent plus que jamais en avant et vous donnent les outils pour rejoindre l\'élite. À vous de jouer, patron.'),
(9, 'Cruisader kings 3', 'crusader-kings-iii-cover', 'Paradox Development Studio vous propose la suite d\'un des jeux de stratégie les plus populaires de tous les temps. Issu d\'une longue lignée mêlant histoire et stratégie de grande envergure, Crusader Kings III se dote au passage de nombreux moyens inédits pour garantir la prospérité de votre maison.'),
(10, 'The elder scroll 5 Skyrim', 'the-elder-scrolls-v-skyrim-special-edition-cover', 'Alduin le dévoreur de mondes est l’antagoniste principal du jeu, un dragon énorme qui destiné à mettre fin au monde. L’action se déroule dans le monde de Skyrim, plus spécifiquement dans la province la plus au nord de Tamriel. Le joueur doit travailler afin d’augmenter les compétences et forces de son personnage, tout en explorant la map.'),
(11, 'Human fall flat', 'human-fall-flat-cover', 'Vous contrôlez une figure humanoïde informe appelée Bob - ils s\'appellent tous Bob c’est dingue ! – au fur et à mesure que vous vous frayez un chemin à travers le jeu. Chaque niveau consiste à amener Bob à la sortie où il entre dans le niveau suivant et recommence tout.'),
(12, 'Fall guys', 'fall-guys-ultimate-knockout-cover', 'Fall Guys: Ultimate Knockout réunit, pêle-mêle, des hordes de concurrents en ligne, et les précipite sans ménagement dans une compétition maboule composée de rounds de plus en plus anarchiques où les participants sont joyeusement dézingués jusqu\'à ce qu\'il n\'en reste plus qu\'un seul !'),
(13, 'Payday 2', 'payday-2-cover', 'Payday 2 reprend dans les grandes largeurs le concept de son aîné. On se trouve donc toujours devant un FPS coopératif jouable à quatre, qui nous met dans la peau d\'une violente bande de braqueurs. Cette fois, Dallas, Hoxton, Wolf et Chains ont décidé d\'exercer leur talent à Washington.'),
(14, 'Call of duty black ops 3', 'call-of-duty-black-ops-iii-cover', 'Le jeu est très fortement axé sur la mission, avec peu de possibilités d\'exploration du monde, mais il n\'y a aucun sens à se laisser entraîner et de ne pas pouvoir explorer : on peut profiter de temps en temps des paysages somptueux et bien conçus.'),
(15, 'Horizon zero dawn', 'horizon-zero-dawn-complete-edition-cover', 'Suivez la quête légendaire d\'Aloy et dévoilez les mystères d\'un monde dominé par de redoutables machines.'),
(16, 'Death stranding', 'death-stranding-cover', 'Sam Bridges affronte un monde totalement transformé par le Death Stranding. Transportant les vestiges dissociés de notre futur, il s\'embarque dans une aventure pour reconstruire un monde détruit.'),
(17, 'Tramsim', 'tramsim-cover', 'Experience with TramSim the most modern tram simulator, which impresses with photo-realistic graphics and as first location the Austrian capital Vienna in a virtual reality that has never been seen before.'),
(18, 'PES 2021', 'efootball-pes-2021-season-update-standard-edition-cover', 'Les dernières données de certains championnats et équipes sous licence seront uniquement disponibles grâce à une mise à jour après la publication. Vous aurez besoin d’une connexion à Internet pour télécharger cette mise à jour. Consultez le site Internet officiel pour plus de détails.'),
(19, 'Squad', 'squad-cover', 'Squad est un jeu de tir à la première personne qui vise à offrir une expérience de jeu réaliste en misant non seulement sur l’aspect jeu d’équipe mais aussi en mettant l\'accent sur les mécanismes de cohésion, la tactique et la stratégie.'),
(20, 'Total war warhammer 2', 'total-war-warhammer-ii-cover', 'Dans des versions imaginaires de l\'Afrique, de l\'Amérique et de la Grande-Bretagne, avec une île elfique mythique en forme de fer à cheval, en plein milieu de l\'Atlantique - bien placée pour faire éclater un paysage marin très monotone mais aussi un endroit utile pour que les lutins trouvent refuge loin des habitations traditionnelles humaines.'),
(21, 'Borderlands 3', 'borderlands-3-super-deluxe-edition-cover', 'Le shooter-looter original est de retour avec ses trilliards de flingues pour une aventure démente ! Affrontez de nouveaux mondes et ennemis avec l\'un des quatre Chasseurs de l\'Arche proposés, des héros en quête de trésors avec chacun leurs propres compétences et options de personnalisation.'),
(22, 'Monster hunter world', 'monster-hunter-world-cover', 'Le protagoniste, “the Hunter”, commence avec un approvisionnement limité et une panoplie d\'armes très basique. Il ou elle doit traquer les animaux ou les monstres et les tuer, en prenant leur trésor et des parties de leurs corps pour construire des armes plus élaborées et de meilleure qualité. Cela signifie qu\'ils peuvent s\'en prendre à des proies de plus en plus grosses et de plus en plus fortes, et c\'est ainsi que se déroule le jeu, les animaux les plus imposants permettent de produire des armes plus puissantes.'),
(23, 'Fallout 4', 'fallout-4-goty-edition-cover', 'Bethesda Game Studios, studio de développement maintes fois récompensé à l\'origine de Fallout 3 et de The Elder Scrolls V: Skyrim, vous invite à découvrir Fallout 4, leur titre le plus ambitieux à ce jour incarnant la nouvelle génération du jeu en monde ouvert.'),
(24, 'Civilisation 6', 'civilization-vi-cover', 'Construisez une civilisation à partir d\'un petit village ou d\'une colonie jusqu\'à l\'apogée politique - essentiellement un jeu de société numérique dans lequel vous devez faire de votre empire un leader sur la scène mondiale grâce au commerce, aux affaires, aux batailles et bien plus.'),
(25, 'dying light', 'dying-light-cover', 'Dying Light est un FPS survival dans un open world vaste et dangereux. Dans la journée, les joueurs traversent un environnement urbain riche et dense dépassé par une terrible pandémie. Ils doivent chercher des provisions et des objets pour fabriquer des armes leur permettant de se défendre contre la population d\'Infectés toujours plus nombreuse.'),
(26, 'doom', 'doom-cover', 'Le joueur prend le personnage d\'un Marine sans nom (appelé, de diverses façons : Doomguy, ou Marine, ou même Doom Slayer) qui est chargé de combattre les habitants de l\'enfer qui ont été lâchés sur Mars fraîchement colonisé par le mal antagoniste, employé de Union Aerospace Corporation, une Olivia Pierce qui a été promis par Satan à de belles choses.'),
(27, 'Medieval dynsaty', 'medieval-dynasty-early-access-cover', 'Europe in the Middle Ages -- Nobles and clergy rule over Europe. Trade between the nations brings not only prosperity but also envy, distrust, and greed.'),
(28, 'Conan exiles', 'conan-exiles-cover', 'Le personnage (le nôtre) a été jugé coupable d’un crime et crucifié au bord d’une route désertique abandonnée. Conan vous détachera et disparaitra ensuite, ayant joué son rôle dans votre vie !'),
(29, 'Ride 4', 'ride-4-cover', 'Êtes-vous prêt à vivre la meilleure expérience de pilotage qui soit ?'),
(30, 'F1 2019', 'f1-2019-cover', 'La couverture du jeu met en vedette les deux plus grands noms de la Formule 1 pour 2019, Lewis Hamilton et Sebastian Vettel, et, comme le jeu à l\'approbation officielle de la Formule 1, les voitures, les maillots et les vêtements sont fidèlement restitués.'),
(31, 'Destiny 2 beyond light', 'destiny-2-beyond-light-deluxe-edition-cover', 'Une nouvelle puissance est née dans le Vaisseau Pyramide au dessus d\'Europe, où un sombre empire s\'est éveillé et s\'est rallié sous la bannière de la Kall des Ténèbres déchue, Vigris.'),
(32, 'Euro truck simulator 2', 'euro-truck-simulator-2-cover', 'Couvrant une grande partie de l\'Europe et du Royaume-Uni, la carte s\'étend d\'Aberdeen à Milan, de Plymouth à Wrocraw, et c\'est à vous de découvrir le plus de villes possible afin d\'explorer à fond le mode bac à sable. La carte garde la trace de vos voyages et cela peut prendre jusqu\'à 160 heures pour explorer pleinement chaque recoin de la carte.'),
(33, 'Dark souls 3', 'dark-souls-3-cover', 'Le joueur prend le personnage à la troisième personne de Ashen One, qui est chargé de \" faire le lien \" avec la Première Flamme pour qu\'elle reste allumée. La flamme est alimentée par les sacrifices des héros et des champions, qui sacrifient volontiers leur âme à la flamme, devenant ainsi seigneurs de Cinder. Cela s\'est produit dans une ligne ininterrompue depuis des temps révolus jusqu\'à aujourd\'hui. Ashen One n\'a pas réussi à allumer la flamme et n\'est pas devenu un Seigneur de Cinder.'),
(34, 'Hell let loose ', 'hell-let-loose-early-access-cover', 'Vous n\'avez jamais participé à un jeu sur la Seconde Guerre mondiale aussi proche de la réalité... avec des tanks lourds dominant le champ de bataille, des chaînes logistiques décisives approvisionnant le front et en incarnant un rouage dans la machine du conflit armé à grande échelle.'),
(35, 'Assetto corsa', 'assetto-corsa-ultimate-edition-cover', 'Assetto Corsa is a next-generation driving simulator for Windows PC which reproduces real-world circuits, as well as road and racing cars. The game includes a single player career,special events and allows the player to create and customize offline competitions and multiplayer races to challenge other players.'),
(36, 'Detroit become human', 'detroit-become-human-cover', 'Détroit, 2038. L\'évolution de la technologie a créé un monde où les robots androïdes sont partout. Ils parlent, se déplacent et se comportent comme des humains, mais ce ne sont que des machines au service de ces derniers.'),
(37, 'Resident evil 7', 'resident-evil-7-cover', 'Le danger et l\'isolement menacent derrière les murs vétustes d\'une ferme abandonnée d\'Amérique du Sud... \"7\" marque le renouveau du jeu de survie et propose une perspective inédite pour le joueur avec la glaçante et captivante \"vue isolée\". Portée par l\'innovant moteur RE, l\'horreur atteint de nouveaux sommets de réalisme dont vous ne pourrez pas vous détourner. Entrez dans un monde terrifiant et restez en vie.'),
(38, 'Risk of rain 2', 'risk-of-rain-2-cover', 'Un à quatre joueurs se battent pour avancer d\'un niveau à l\'autre, combattant des vagues d\'aliens et de boss. L\'intrigue se base sur le fait que les joueurs doivent localiser et ensuite garder un téléporteur jusqu\'à ce qu\'il devienne actif. Plus il y a de morts, plus vous gagnez d\'expérience et d\'argent dans le jeu, ce dernier étant utilisé pour acheter des mises à niveau et des bonus. Certaines des mises à niveau sont \"empilables\", ce qui signifie que leurs avantages augmentent de façon exponentielle lorsque plus d\'une mise à niveau est utilisée à la fois.'),
(39, 'Dirt rally 20', 'dirt-rally-20-cover', 'DiRT Rally 2.0 vous invite à arpenter les circuits de rallye les plus emblématiques du globe, dans les véhicules tout-terrain les plus puissants jamais conçus. Mais n\'oubliez pas que la moindre erreur peut mettre fin à votre étape.'),
(40, 'Cities skylines', 'cities-skylines-cover', 'Cities: Skylines est un jeu de gestion très populaire. Construisez la cité de vos rêves : organisez le réseau routier, les lignes de bus et installez des parcs. Construisez une ville industrielle polluante ou un paradis touristique alimenté par des énergies renouvelables. Offrez à vos citoyens un accès à l\'éducation et aux soins, assurez leur sécurité...'),
(41, 'GTFO', 'gtfo-early-access-cover', 'GTFOest un jeu coopératif d\'action et d\'horreur pour 4 joueurs aimant les défis particulièrement relevés.'),
(42, '7 days to die', '7-days-to-die-early-access-cover', '7 Days to Die sur PC a commencé comme un jeu d\'horreur de survie financé par un early access qui a réussi à atteindre son objectif et a fait son chemin sur le marché comme un produit abouti. Dans le jeu, le joueur doit non seulement survivre aux ennemis et aux combats, mais aussi simplement vivre :'),
(43, 'F1 2020', 'f1-2020-deluxe-schumacher-edition-cover', 'The entire F1® 2020 game and the “Deluxe Schumacher Edition” DLC Content plus the “Seventy Edition” DLC Content and 3 days early access.'),
(44, 'The outer worlds', 'the-outer-worlds-cover', 'The Outer Worlds est un RPG primé de science-fiction en solo à la première personne d\'Obsidian Entertainment et de Private Division.'),
(45, 'Stellaris', 'stellaris-cover', 'Il y a huit espèces parmi lesquelles le joueur peut choisir, et la réflexion stratégique doit être menée dès le départ. Certaines espèces sont plus adaptées que d\'autres à certaines trajectoires : par exemple, les races guerrières sont peu susceptibles de faire de bons pacifistes spirituels tout comme les êtres éthérés sont peu susceptibles de pouvoir utiliser une arme lourde avec une grande autorité ! En savoir plus sur les courses ci-dessous.'),
(46, 'Dirt 4', 'dirt-4-cover', 'Le meilleur jeu de course tout-terrain est de retour ! Dans DiRT 4, mesurez-vous aux routes et circuits les plus rudes au volant de bolides en mode rallye, rallycross et landrush.'),
(47, 'Warhammer vermintide 2', 'warhammer-vermintide-2-collectors-edition-cover', 'Warhammer: Vermintide 2 est la suite de Vermintide, que la critique avait encensé. L\'heure est venue de revisiter la boucherie sanguinaire du traditionnel jeu d\'action coopératif à la première personne. Plongez dans l\'univers apocalyptique ravagé par la guerre de Warhammer Fantasy Battles avec ce jeu de mêlée révolutionnaire qui vous prendra aux tripes.'),
(48, 'Elite dangerous', 'elite-dangerous-cover', 'Elite Dangerous est la dernière épopée spatiale massivement multijoueur qui modernise l\'aventure originale en monde ouvert grâce à sa galaxie connectée, une narration évolutive et l\'intégralité de la voie lactée reproduite e conservant ses proportions.'),
(49, 'Farming simulator 19', 'farming-simulator-19-cover', 'Les joueurs exécutent des tâches qui simulent des activités agricoles réelles, qu\'il s\'agisse d\'élever le meilleur bétail ou de cultiver des terres pour de l\'argent, une bonne gestion agricole est essentielle pour aider le joueur à vendre ses biens.'),
(50, 'Witch it', 'witch-it-cover', 'Witch It est un jeu multijoueur de cache-cache, dans lequel de valeureux chasseurs pourchassent des sorcières qui se cachent dans un monde magique plein d\'humour.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
