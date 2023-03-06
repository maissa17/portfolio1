-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Dim 05 Mars 2023 à 21:04
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `tour_france`
--

-- --------------------------------------------------------

--
-- Structure de la table `attribuer_bonification`
--

CREATE TABLE IF NOT EXISTS `attribuer_bonification` (
  `NumeroEtape` varchar(50) NOT NULL,
  `NumeroCoureur` varchar(50) NOT NULL,
  `km` varchar(10) NOT NULL,
  `rang` varchar(10) NOT NULL,
  `NbSecondes` varchar(10) NOT NULL,
  KEY `NumeroEtape` (`NumeroEtape`,`NumeroCoureur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `attribuer_bonification`
--


-- --------------------------------------------------------

--
-- Structure de la table `coureur`
--

CREATE TABLE IF NOT EXISTS `coureur` (
  `NumeroCoureur` varchar(50) NOT NULL,
  `NomCoureur` text NOT NULL,
  `CodeEquipe` varchar(50) NOT NULL,
  `CodePays` varchar(50) NOT NULL,
  PRIMARY KEY (`NumeroCoureur`),
  KEY `CodeEquipe` (`CodeEquipe`,`CodePays`),
  KEY `CodePays` (`CodePays`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `coureur`
--


-- --------------------------------------------------------

--
-- Structure de la table `equipe`
--

CREATE TABLE IF NOT EXISTS `equipe` (
  `CodeEquipe` varchar(50) NOT NULL,
  `NomEquipe` text NOT NULL,
  `DirecteurSportif` text NOT NULL,
  PRIMARY KEY (`CodeEquipe`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `equipe`
--


-- --------------------------------------------------------

--
-- Structure de la table `etape`
--

CREATE TABLE IF NOT EXISTS `etape` (
  `NumeroEtape` varchar(50) NOT NULL,
  `DateEtape` date NOT NULL,
  `villeDep` int(11) NOT NULL,
  `villeArr` int(11) NOT NULL,
  `NbKm` int(11) NOT NULL,
  `CodeType` varchar(50) NOT NULL,
  PRIMARY KEY (`NumeroEtape`),
  KEY `CodeType` (`CodeType`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `etape`
--


-- --------------------------------------------------------

--
-- Structure de la table `participer`
--

CREATE TABLE IF NOT EXISTS `participer` (
  `NumeroCoureur` varchar(50) NOT NULL,
  `NumeroEtape` varchar(50) NOT NULL,
  `TempsRealise` int(11) NOT NULL,
  KEY `NumeroCoureur` (`NumeroCoureur`),
  KEY `NumeroEtape` (`NumeroEtape`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `participer`
--


-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

CREATE TABLE IF NOT EXISTS `pays` (
  `CodePays` varchar(50) NOT NULL,
  `NomPays` int(11) NOT NULL,
  PRIMARY KEY (`CodePays`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `pays`
--


-- --------------------------------------------------------

--
-- Structure de la table `type_etape`
--

CREATE TABLE IF NOT EXISTS `type_etape` (
  `CodeType` varchar(50) NOT NULL,
  `LibelleType` int(11) NOT NULL,
  PRIMARY KEY (`CodeType`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `type_etape`
--


--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `attribuer_bonification`
--
ALTER TABLE `attribuer_bonification`
  ADD CONSTRAINT `attribuer_bonification_ibfk_1` FOREIGN KEY (`NumeroEtape`) REFERENCES `etape` (`NumeroEtape`);

--
-- Contraintes pour la table `coureur`
--
ALTER TABLE `coureur`
  ADD CONSTRAINT `coureur_ibfk_2` FOREIGN KEY (`CodePays`) REFERENCES `pays` (`CodePays`),
  ADD CONSTRAINT `coureur_ibfk_1` FOREIGN KEY (`CodeEquipe`) REFERENCES `equipe` (`CodeEquipe`);

--
-- Contraintes pour la table `etape`
--
ALTER TABLE `etape`
  ADD CONSTRAINT `etape_ibfk_1` FOREIGN KEY (`CodeType`) REFERENCES `type_etape` (`CodeType`);

--
-- Contraintes pour la table `participer`
--
ALTER TABLE `participer`
  ADD CONSTRAINT `participer_ibfk_2` FOREIGN KEY (`NumeroEtape`) REFERENCES `etape` (`NumeroEtape`),
  ADD CONSTRAINT `participer_ibfk_1` FOREIGN KEY (`NumeroCoureur`) REFERENCES `coureur` (`NumeroCoureur`);
