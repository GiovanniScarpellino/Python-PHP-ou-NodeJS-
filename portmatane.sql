-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Dim 01 Octobre 2017 à 03:15
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `portmatane`
--

-- --------------------------------------------------------

--
-- Structure de la table `armateur`
--

CREATE TABLE `armateur` (
  `idArmateur` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `armateur`
--

INSERT INTO `armateur` (`idArmateur`, `nom`) VALUES
(1, 'Boluda France'),
(2, 'Bourbon'),
(3, 'Comex'),
(4, 'CMA CGM'),
(5, 'Compagnie du Ponant'),
(6, 'Genavir'),
(7, 'Les Abeilles'),
(8, 'Marfret'),
(9, 'Orange Marine'),
(10, 'Socatra');

-- --------------------------------------------------------

--
-- Structure de la table `bateau`
--

CREATE TABLE `bateau` (
  `idBateau` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `marque` varchar(50) NOT NULL,
  `modele` varchar(50) NOT NULL,
  `annee` date NOT NULL,
  `longueur` int(11) NOT NULL,
  `largeur` int(11) NOT NULL,
  `hauteur` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `bouee`
--

CREATE TABLE `bouee` (
  `idBouee` int(11) NOT NULL,
  `latitude` int(11) NOT NULL,
  `longitude` int(11) NOT NULL,
  `temperatureEau` int(11) NOT NULL,
  `temperatureAir` int(11) NOT NULL,
  `salinite` double NOT NULL,
  `vitesseVent` double NOT NULL,
  `dimension` int(11) NOT NULL,
  `pressionAtmospherique` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `bouee`
--

INSERT INTO `bouee` (`idBouee`, `latitude`, `longitude`, `temperatureEau`, `temperatureAir`, `salinite`, `vitesseVent`, `dimension`, `pressionAtmospherique`) VALUES
(9, 5, 5, 5, 5, 5, 5, 5, 5),
(10, 1, 95, 47, 13, 709.3268210438509, 242.89655302311533, 5, 1758.4906085085527),
(11, 55, 5, 5, 5, 5, 5, 5, 55555),
(13, 5454, 5, 5, 5, 5, 5, 5, 4),
(15, 1, 2, 3, 4, 5, 6, 7, 8);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `armateur`
--
ALTER TABLE `armateur`
  ADD PRIMARY KEY (`idArmateur`);

--
-- Index pour la table `bateau`
--
ALTER TABLE `bateau`
  ADD PRIMARY KEY (`idBateau`);

--
-- Index pour la table `bouee`
--
ALTER TABLE `bouee`
  ADD PRIMARY KEY (`idBouee`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `bouee`
--
ALTER TABLE `bouee`
  MODIFY `idBouee` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
