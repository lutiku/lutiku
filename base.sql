-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le :  ven. 20 sep. 2019 à 18:02
-- Version du serveur :  5.7.23
-- Version de PHP :  7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `Dev_Expert`
--

-- --------------------------------------------------------

--
-- Structure de la table `Client`
--

CREATE TABLE `Client` (
  `id_client` smallint(5) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `date_naissance` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Collaborateur`
--

CREATE TABLE `Collaborateur` (
  `id_collaborateur` smallint(5) UNSIGNED NOT NULL,
  `nom` varchar(40) NOT NULL,
  `prenom` varchar(40) NOT NULL,
  `departement` varchar(40) NOT NULL,
  `experience_annees` int(11) NOT NULL,
  `salaire` decimal(10,0) NOT NULL,
  `langue_p` varchar(40) NOT NULL,
  `langue_l` varchar(40) NOT NULL,
  `langue_e` varchar(40) NOT NULL,
  `login` varchar(40) NOT NULL,
  `mdp` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Collaborateur`
--

INSERT INTO `Collaborateur` (`id_collaborateur`, `nom`, `prenom`, `departement`, `experience_annees`, `salaire`, `langue_p`, `langue_l`, `langue_e`, `login`, `mdp`) VALUES
(1, 'Rébecca', 'Armand', 'Système d\'information', 3, '1465', 'Français, Anglais,Allemand, Italien', 'Français,Anglais,Allemand, Italien', 'Français, Anglais, Italien', '', ''),
(2, 'Aimée', 'Hebert', 'Web', 6, '4687', 'Français', 'Français', 'Français', '', ''),
(3, 'Marielle', 'Ribeiro', 'Maillères', 9, '5434', 'Anglais', 'Anglais, Français', 'Anglais', '', ''),
(4, 'Hilaire', 'Savary', 'Securite', 7, '2358', 'Italien, Espagnol', 'Italien, Espagnol', 'Italien, Espagnol', '', ''),
(5, 'De la haie', 'Nicolas', 'Web', 4, '2900', 'Français,Anglais,Chinois', 'Français,Anglais, Chinois', 'Français, Anglais, Chinois', '', ''),
(6, 'Thierry', 'Simon', 'Reseau', 12, '3768', 'Français', 'Français', 'Français', '', ''),
(7, 'Gras', 'Romane', 'Sustème d\'information', 6, '3546', 'Français, Anglais, Espagnol', 'Français, Anglais, Espagnol', 'Français, Anglais, Espagnol', '', ''),
(8, 'Denarpe', 'Thibault', 'Réalité virtuelle', 7, '3500', 'Français, Anglais', 'Français, Anglais', 'Fraçais, Angalis', '', ''),
(9, 'Cosic', 'Julia', 'Sécurité', 2, '5600', 'Français, Espagnol, Anglais', 'Français, Espagnol, Anglais', 'Français, Espagnol, Anglais', '', ''),
(10, 'Baya', 'Glory', 'Realite virtuelle', 4, '3900', 'Français, Anglais, Espagnol, Chinois', 'Français, Anglais, Espagnol, Chinois', 'Français, Anglais, Espagnol, Chinois', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `Mission`
--

CREATE TABLE `Mission` (
  `id_mission` smallint(5) UNSIGNED NOT NULL,
  `date_demande` datetime(1) NOT NULL,
  `date_debut` datetime NOT NULL,
  `client` datetime NOT NULL,
  `type_mission` varchar(255) NOT NULL,
  `budget` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Client`
--
ALTER TABLE `Client`
  ADD PRIMARY KEY (`id_client`);

--
-- Index pour la table `Collaborateur`
--
ALTER TABLE `Collaborateur`
  ADD PRIMARY KEY (`id_collaborateur`);

  --
  -- Index pour la table `Mission`
  --
  ALTER TABLE `Mission`
    ADD PRIMARY KEY (`id_mission`);

  --
  -- AUTO_INCREMENT pour les tables déchargées
  --

  --
  -- AUTO_INCREMENT pour la table `Client`
  --
  ALTER TABLE `Client`
    MODIFY `id_client` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

  --
  -- AUTO_INCREMENT pour la table `Collaborateur`
  --
  ALTER TABLE `Collaborateur`
    MODIFY `id_collaborateur` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

  --
  -- AUTO_INCREMENT pour la table `Mission`
  --
  ALTER TABLE `Mission`
    MODIFY `id_mission` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
