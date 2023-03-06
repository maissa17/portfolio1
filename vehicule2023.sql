-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Mar 14 Février 2023 à 16:57
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `vehicule2023`
--

-- --------------------------------------------------------

--
-- Structure de la table `agence`
--

CREATE TABLE IF NOT EXISTS `agence` (
  `id_agence` varchar(50) NOT NULL,
  `nom` int(11) NOT NULL,
  `nb_employes` varchar(50) NOT NULL,
  PRIMARY KEY (`id_agence`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `agence`
--


-- --------------------------------------------------------

--
-- Structure de la table `a_loue`
--

CREATE TABLE IF NOT EXISTS `a_loue` (
  `id_client` varchar(50) NOT NULL,
  `id_vehicule` varchar(50) NOT NULL,
  `date_de_retrait` date NOT NULL,
  `date_de_retour` date NOT NULL,
  PRIMARY KEY (`id_client`,`id_vehicule`),
  KEY `a_loue_vehicule0_FK` (`id_vehicule`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `a_loue`
--


-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE IF NOT EXISTS `categorie` (
  `id_categorie` varchar(50) NOT NULL,
  `libelle` int(11) NOT NULL,
  PRIMARY KEY (`id_categorie`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `categorie`
--


-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `id_client` varchar(50) NOT NULL,
  `nom` text NOT NULL,
  `adresse` text NOT NULL,
  `code_postal` varchar(50) NOT NULL,
  `ville` text NOT NULL,
  PRIMARY KEY (`id_client`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`id_client`, `nom`, `adresse`, `code_postal`, `ville`) VALUES
('122', 'A', '102', '6589', 'nice'),
('300', 'B', '100', '3200', 'morioh');

-- --------------------------------------------------------

--
-- Structure de la table `est_defini_par_un`
--

CREATE TABLE IF NOT EXISTS `est_defini_par_un` (
  `id_type` varchar(50) NOT NULL,
  `id_vehicule` varchar(50) NOT NULL,
  PRIMARY KEY (`id_type`,`id_vehicule`),
  KEY `est_defini_par_un_vehicule0_FK` (`id_vehicule`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `est_defini_par_un`
--


-- --------------------------------------------------------

--
-- Structure de la table `est_situee_dans`
--

CREATE TABLE IF NOT EXISTS `est_situee_dans` (
  `id_agence` varchar(50) NOT NULL,
  `id_pays` varchar(50) NOT NULL,
  PRIMARY KEY (`id_agence`,`id_pays`),
  KEY `est_situee_dans_pays0_FK` (`id_pays`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `est_situee_dans`
--


-- --------------------------------------------------------

--
-- Structure de la table `est_un`
--

CREATE TABLE IF NOT EXISTS `est_un` (
  `id_modele` varchar(50) NOT NULL,
  `id_vehicule` varchar(50) NOT NULL,
  PRIMARY KEY (`id_modele`,`id_vehicule`),
  KEY `est_un_vehicule0_FK` (`id_vehicule`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `est_un`
--


-- --------------------------------------------------------

--
-- Structure de la table `marque`
--

CREATE TABLE IF NOT EXISTS `marque` (
  `id_marque` varchar(50) NOT NULL,
  `nom` int(11) NOT NULL,
  PRIMARY KEY (`id_marque`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `marque`
--


-- --------------------------------------------------------

--
-- Structure de la table `modele`
--

CREATE TABLE IF NOT EXISTS `modele` (
  `id_modele` varchar(50) NOT NULL,
  `denomination` int(11) NOT NULL,
  `puissance` int(11) NOT NULL,
  PRIMARY KEY (`id_modele`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `modele`
--


-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

CREATE TABLE IF NOT EXISTS `pays` (
  `id_pays` varchar(50) NOT NULL,
  `nom` int(11) NOT NULL,
  `nombre_habitant` varchar(50) NOT NULL,
  `superficie` varchar(50) NOT NULL,
  PRIMARY KEY (`id_pays`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `pays`
--


-- --------------------------------------------------------

--
-- Structure de la table `type`
--

CREATE TABLE IF NOT EXISTS `type` (
  `id_type` varchar(50) NOT NULL,
  `libelle` int(11) NOT NULL,
  PRIMARY KEY (`id_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `type`
--


-- --------------------------------------------------------

--
-- Structure de la table `vehicule`
--

CREATE TABLE IF NOT EXISTS `vehicule` (
  `id_vehicule` varchar(50) NOT NULL,
  `immatriculation` text NOT NULL,
  `age` date NOT NULL,
  `etat` text NOT NULL,
  `kilometrage` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_vehicule`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `vehicule`
--

INSERT INTO `vehicule` (`id_vehicule`, `immatriculation`, `age`, `etat`, `kilometrage`) VALUES
('t122', 'AT235', '2023-01-09', 'neuf', 6000),
('W520', 'EW25EW', '2023-12-05', 'neuf', 7000);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `a_loue`
--
ALTER TABLE `a_loue`
  ADD CONSTRAINT `a_loue_client_FK` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`),
  ADD CONSTRAINT `a_loue_vehicule0_FK` FOREIGN KEY (`id_vehicule`) REFERENCES `vehicule` (`id_vehicule`);

--
-- Contraintes pour la table `est_defini_par_un`
--
ALTER TABLE `est_defini_par_un`
  ADD CONSTRAINT `est_defini_par_un_type_FK` FOREIGN KEY (`id_type`) REFERENCES `type` (`id_type`),
  ADD CONSTRAINT `est_defini_par_un_vehicule0_FK` FOREIGN KEY (`id_vehicule`) REFERENCES `vehicule` (`id_vehicule`);

--
-- Contraintes pour la table `est_situee_dans`
--
ALTER TABLE `est_situee_dans`
  ADD CONSTRAINT `est_situee_dans_agence_FK` FOREIGN KEY (`id_agence`) REFERENCES `agence` (`id_agence`),
  ADD CONSTRAINT `est_situee_dans_pays0_FK` FOREIGN KEY (`id_pays`) REFERENCES `pays` (`id_pays`);

--
-- Contraintes pour la table `est_un`
--
ALTER TABLE `est_un`
  ADD CONSTRAINT `est_un_modele_FK` FOREIGN KEY (`id_modele`) REFERENCES `modele` (`id_modele`),
  ADD CONSTRAINT `est_un_vehicule0_FK` FOREIGN KEY (`id_vehicule`) REFERENCES `vehicule` (`id_vehicule`);
