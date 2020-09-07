-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 06 sep. 2020 à 09:28
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.4.10-dev

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `nouveautest_dev`
--

-- --------------------------------------------------------

--
-- Structure de la table `celebrities`
--

DROP TABLE IF EXISTS `celebrities`;
CREATE TABLE IF NOT EXISTS `celebrities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sexe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reward` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `celebrities`
--

INSERT INTO `celebrities` (`id`, `name`, `description`, `image`, `sexe`, `reward`) VALUES
(1, 'Un gars', 'Ils à gagné plein de petites statut!', 'https://ichef.bbci.co.uk/news/624/cpsprodpb/5507/production/_105776712_romaget.jpg', 'homme', NULL),
(2, 'Brad Pitt', 'William Bradley Pitt, dit Brad Pitt (prononcé en français [bʁad pit]1 ; en anglais [bɹæd pɪt]2), est un acteur et producteur de cinéma américain, né le 18 décembre 1963 à Shawnee (Oklahoma). ', 'https://img.huffingtonpost.com/asset/5e40e6c72100002e0083820c.jpeg?cache=nJj3HGJL7h&ops=crop_178_267_2815_1541,scalefit_630_noupscale', 'homme', 'oscar'),
(3, 'Rami Malek', 'Rami Said Malek /ˈrɑːmi saɪd ˈmælɪk/1 est un acteur et producteur américain, né le 12 mai 1981 à Los Angeles. \r\nhihi\r\n\r\nihih', 'https://thegeek.site/wp-content/uploads/sites/3/2019/02/thegeek-oscars-rami-malek-bohemian-rhapsody-2.jpg', 'homme', 'oscar'),
(4, 'Melissa McCarthy', 'Melissa Ann McCarthy est une actrice, scénariste et productrice américaine née le 26 août 1970 à Plainfield (Illinois),\r\nElle commence à apparaître à la télévision et au cinéma, à la fin des années 1990. ', 'https://noovo.ca/medias/_articles/Melissa-McCarthy.jpg', 'femme', NULL),
(5, 'Olivia Colman', 'Olivia Colman, née le 30 janvier 1974 à Norwich, est une actrice britannique.\r\n\r\nD\'abord cantonnée à des rôles secondaires, elle est révélée dans le film Tyrannosaur. ', 'http://ecrannoir.fr/blog/files/2015/05/olivia-colman.jpg', 'femme', 'oscar'),
(6, 'Glenn Close', 'Glenn Close [ɡlɛn kloʊz]1, née le 19 mars 1947 à Greenwich2, est une actrice, scénariste et productrice américaine. ', 'https://www.goldderby.com/wp-content/uploads/2018/08/Glenn-Close-Movies-Ranked.jpg?w=620&h=360&crop=1', 'femme', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20200904103025', '2020-09-04 10:31:13', 519);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
