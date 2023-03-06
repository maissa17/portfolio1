-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Dim 05 Mars 2023 à 21:02
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `cycle_formation`
--

-- --------------------------------------------------------

--
-- Structure de la table `enseignant`
--

CREATE TABLE IF NOT EXISTS `enseignant` (
  `CodeEns` varchar(50) NOT NULL,
  `NomEns` text NOT NULL,
  `GradeEns` varchar(11) NOT NULL,
  `CodeMat` varchar(50) NOT NULL,
  PRIMARY KEY (`CodeEns`),
  KEY `CodeMat` (`CodeMat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `enseignant`
--

INSERT INTO `enseignant` (`CodeEns`, `NomEns`, `GradeEns`, `CodeMat`) VALUES
('500', 'neor', 'Grd3', '250'),
('720', 'yagi', '5', '2300'),
('845', 'gudric', '42', '691');

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE IF NOT EXISTS `etudiant` (
  `CodeEt` varchar(50) NOT NULL,
  `NomEt` text NOT NULL,
  `DatnEt` date NOT NULL,
  PRIMARY KEY (`CodeEt`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `etudiant`
--

INSERT INTO `etudiant` (`CodeEt`, `NomEt`, `DatnEt`) VALUES
('400', 'joestar', '1998-03-16'),
('560', 'zeppeli', '2001-06-18');

-- --------------------------------------------------------

--
-- Structure de la table `matiere`
--

CREATE TABLE IF NOT EXISTS `matiere` (
  `CodeMat` varchar(50) NOT NULL,
  `NomMat` text NOT NULL,
  `CoefMat` varchar(11) NOT NULL,
  PRIMARY KEY (`CodeMat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `matiere`
--

INSERT INTO `matiere` (`CodeMat`, `NomMat`, `CoefMat`) VALUES
('2300', 'histoire', '2'),
('250', 'informatique', '10'),
('691', 'BD', '5');

-- --------------------------------------------------------

--
-- Structure de la table `note`
--

CREATE TABLE IF NOT EXISTS `note` (
  `CodeEt` varchar(50) NOT NULL,
  `CodeMat` varchar(50) NOT NULL,
  `note` int(11) NOT NULL,
  KEY `CodeMat` (`CodeMat`),
  KEY `CodeEt` (`CodeEt`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `note`
--

INSERT INTO `note` (`CodeEt`, `CodeMat`, `note`) VALUES
('400', '2300', 12),
('560', '691', 17);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `matiere`
--
ALTER TABLE `matiere`
  ADD CONSTRAINT `matiere_ibfk_1` FOREIGN KEY (`CodeMat`) REFERENCES `enseignant` (`CodeMat`);

--
-- Contraintes pour la table `note`
--
ALTER TABLE `note`
  ADD CONSTRAINT `note_ibfk_2` FOREIGN KEY (`CodeMat`) REFERENCES `matiere` (`CodeMat`),
  ADD CONSTRAINT `note_ibfk_1` FOREIGN KEY (`CodeEt`) REFERENCES `etudiant` (`CodeEt`);
