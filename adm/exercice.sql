-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 27 sep. 2023 à 09:54
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
-- Base de données : `exercice`
--

-- --------------------------------------------------------

--
-- Structure de la table `eleve`
--

CREATE TABLE `eleve` (
  `ideleve` int(4) NOT NULL,
  `prenom` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `eleve`
--

INSERT INTO `eleve` (`ideleve`, `prenom`, `email`) VALUES
(1, 'Beatrice', 'ouembabeatrice7@gmail.com'),
(2, 'Beatrice', 'ouembabeatrice7@gmail.com'),
(3, 'Beatrice', 'ouembabeatrice7@gmail.com'),
(4, 'Beatrice', 'ouembabeatrice7@gmail.com'),
(5, 'Beatrice', 'ouembabeatrice7@gmail.com'),
(6, 'Beatrice', 'ouembabeatrice7@gmail.com'),
(7, 'Beatrice', 'ouembabeatrice7@gmail.com'),
(8, 'Beatrice', 'ouembabeatrice7@gmail.com'),
(9, 'Beatrice', 'ouembabeatrice7@gmail.com'),
(10, 'Beatrice', 'ouembabeatrice7@gmail.com'),
(11, 'Beatrice', 'ouembabeatrice7@gmail.com'),
(12, 'Beatrice', 'ouembabeatrice7@gmail.com'),
(13, 'Beatrice', 'ouembabeatrice7@gmail.com'),
(14, 'Beatrice', 'ouembabeatrice7@gmail.com'),
(15, 'Beatrice', 'ouembabeatrice7@gmail.com'),
(16, 'Beatrice', 'ouembabeatrice7@gmail.com'),
(17, 'Beatrice', 'ouembabeatrice7@gmail.com'),
(18, 'Beatrice', 'ouembabeatrice7@gmail.com'),
(19, 'Beatrice', 'ouembabeatrice7@gmail.com'),
(20, 'Beatrice', 'ouembabeatrice7@gmail.com'),
(26, '', ''),
(27, '', ''),
(28, '', ''),
(29, '', ''),
(30, '', ''),
(31, 'Beatrice', 'ouembabeatrice7@gmail.com'),
(32, '', ''),
(33, '', ''),
(34, '', ''),
(35, '', ''),
(36, '', ''),
(37, '', ''),
(38, '', ''),
(39, '', ''),
(40, '', ''),
(41, '', ''),
(42, '', ''),
(43, '', ''),
(44, '', ''),
(45, '', ''),
(46, '', ''),
(47, '', ''),
(48, '', ''),
(49, '', ''),
(50, 'Beatrice', 'ouemba@gmail.com'),
(51, 'miss', 'ouembabea7@gmail.com'),
(52, 'Beatrice', 'ouembabeatrice7@gmail.com'),
(53, 'rose', 'ouembabeatrice7@gmail.com'),
(54, 'Beatrice', 'ouembabeatrice7@gmail.com'),
(55, 'Beatrice', 'ouembabeatrice7@gmail.com'),
(56, 'Beatrice', 'ouembabeatrice7@gmail.com'),
(57, 'Beatrice', 'ouembabeatrice7@gmail.com'),
(58, 'Beatrice', 'ouembabeatrice7@gmail.com'),
(59, 'Beatrice', 'ouembabeatrice7@gmail.com'),
(60, 'Beatrice', 'ouembabeatrice7@gmail.com'),
(61, 'Beatrice', 'ouembabeatrice7@gmail.com'),
(62, 'Beatrice', 'ouembabeatrice7@gmail.com'),
(63, 'Beatrice', 'ouembabeatrice7@gmail.com'),
(64, 'Beatrice', 'ouembabeatrice7@gmail.com'),
(65, 'Beatrice', 'ouembabeatrice7@gmail.com'),
(66, 'Beatrice', 'ouembabeatrice7@gmail.com');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `eleve`
--
ALTER TABLE `eleve`
  ADD PRIMARY KEY (`ideleve`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `eleve`
--
ALTER TABLE `eleve`
  MODIFY `ideleve` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
