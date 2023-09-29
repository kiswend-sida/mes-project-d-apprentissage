-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 28 sep. 2023 à 14:43
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
-- Base de données : `formulaire`
--

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `iduser` int(4) NOT NULL,
  `nom` varchar(25) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `datedenaissance` date NOT NULL,
  `tel` varchar(15) NOT NULL,
  `genre` varchar(1) NOT NULL DEFAULT 'H',
  `email` varchar(50) NOT NULL,
  `pseudo` varchar(15) NOT NULL,
  `motpasse` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`iduser`, `nom`, `prenom`, `datedenaissance`, `tel`, `genre`, `email`, `pseudo`, `motpasse`) VALUES
(4, 'queen', 'kiswend-sida', '0000-00-00', '78905420', 'f', 'ouembabeatrice7@gmail.com', 'queen', 'o98665'),
(5, 'OUEMBA ', 'kiswend-sida', '2023-08-15', '56789089', 'm', 'ouembabeatrice7@gmail.com', 'miss', '6789'),
(6, 'kis', 'miss', '2002-10-30', '', 'F', 'ouembabeatrice7@gmail.com', 'queen', 'miss'),
(7, 'bea', 'miss', '2023-08-01', '66789056', 'F', 'ouembabeatrice7@gmail.com', 'queen', '5434'),
(8, 'OUEMBA ', 'Beatrice', '2023-08-02', '', '', '', '', ''),
(9, '', '', '0000-00-00', '', '', '', '', ''),
(10, '', '', '0000-00-00', '', '', '', '', ''),
(11, 'nio', 'rose', '2023-08-04', '67890876', 'F', 'ouembabeatrice7@gmail.com', 'reine', 'nuikn'),
(12, 'Dondassee', 'saidatou', '2023-02-12', '65632815', 'F', 'saida@gmail.com', 'saidatou', 'saidatou'),
(13, 'bea', 'kiswend-sida', '2023-08-12', '65632815', 'F', 'ouemba@gmail.com', 'miss', 'b1a2'),
(14, 'uojnnb', 'resx', '2023-09-23', '54322345', 'F', 'uou@gmail.com', 'bae', '5479'),
(15, 'uojnnb', 'resx', '2023-09-23', '54322345', 'F', 'uou@gmail.com', 'bae', '5479'),
(16, 'huio', 'asru', '2023-09-08', '98765432', 'H', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `idutilisateur` int(4) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `photo` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`iduser`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`idutilisateur`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `iduser` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `idutilisateur` int(4) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
