-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : lun. 22 avr. 2024 à 15:25
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `eleves`
--

-- --------------------------------------------------------

--
-- Structure de la table `eleve`
--

CREATE TABLE `eleve` (
  `id` int(11) NOT NULL,
  `nom` varchar(250) NOT NULL,
  `prenom` varchar(250) NOT NULL,
  `datenaissance` datetime DEFAULT NULL,
  `sexe` char(1) NOT NULL,
  `classe` varchar(30) DEFAULT NULL,
  `email` varchar(500) DEFAULT NULL,
  `ville` varchar(200) DEFAULT NULL,
  `telephone` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `eleve`
--

INSERT INTO `eleve` (`id`, `nom`, `prenom`, `datenaissance`, `sexe`, `classe`, `email`, `ville`, `telephone`) VALUES
(1, 'Bappon', 'Maurice', '2000-11-23 00:00:00', 'F', NULL, NULL, 'Paris', NULL),
(2, 'Rébecca', 'Armand', '2003-05-21 00:00:00', 'F', NULL, NULL, 'Saint-Didier-des-Bois', NULL),
(3, 'Johanna', 'Blitz', '2000-11-23 00:00:00', 'F', NULL, NULL, 'Paris', NULL),
(4, 'Johannaa', 'Blitzz', '2000-11-23 00:00:00', 'F', NULL, NULL, 'Paris', NULL),
(5, 'Jo\'annaa', 'Blitzz', '2000-11-23 00:00:00', 'F', NULL, NULL, 'Paris', NULL),
(6, 'Jiraya', 'Blitzz', '2000-11-23 00:00:00', 'F', NULL, NULL, NULL, NULL),
(7, 'Louro Gomes', 'Alexis', '2004-12-16 00:00:00', 'H', NULL, NULL, 'Paris', NULL),
(10, 'Louro Gomes', 'Alexis', '2024-04-19 00:00:00', 'F', 'fds', NULL, NULL, '06');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `eleve`
--
ALTER TABLE `eleve`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `eleve`
--
ALTER TABLE `eleve`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
