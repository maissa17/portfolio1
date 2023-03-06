-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Dim 05 Mars 2023 à 21:03
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `gestion_facturation`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `Numcli` varchar(50) NOT NULL,
  `Nomcli` text NOT NULL,
  `PrenomCli` text NOT NULL,
  `adressecli` text NOT NULL,
  `mailCli` text NOT NULL,
  PRIMARY KEY (`Numcli`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `client`
--


-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE IF NOT EXISTS `commande` (
  `Numcom` varchar(50) NOT NULL,
  `NumCli` varchar(50) NOT NULL,
  `idVendeur` varchar(50) NOT NULL,
  `NumProd` varchar(50) NOT NULL,
  `date_com` date NOT NULL,
  `qte_coù` int(11) NOT NULL,
  PRIMARY KEY (`Numcom`),
  KEY `NumCli` (`NumCli`,`idVendeur`,`NumProd`),
  KEY `NumProd` (`NumProd`),
  KEY `idVendeur` (`idVendeur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `commande`
--


-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE IF NOT EXISTS `produit` (
  `NumProd` varchar(50) NOT NULL,
  `designation` int(11) NOT NULL,
  `prix` varchar(50) NOT NULL,
  `qte_stock` varchar(10) NOT NULL,
  PRIMARY KEY (`NumProd`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `produit`
--


-- --------------------------------------------------------

--
-- Structure de la table `vendeur`
--

CREATE TABLE IF NOT EXISTS `vendeur` (
  `idVendeur` varchar(50) NOT NULL,
  `NomVendeur` text NOT NULL,
  `adresse_vend` text NOT NULL,
  PRIMARY KEY (`idVendeur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `vendeur`
--


--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `commande_ibfk_3` FOREIGN KEY (`NumCli`) REFERENCES `client` (`Numcli`),
  ADD CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`NumProd`) REFERENCES `produit` (`NumProd`),
  ADD CONSTRAINT `commande_ibfk_2` FOREIGN KEY (`idVendeur`) REFERENCES `vendeur` (`idVendeur`);
