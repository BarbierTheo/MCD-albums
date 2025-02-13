-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mer. 12 fév. 2025 à 10:52
-- Version du serveur : 8.4.3
-- Version de PHP : 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `photos-albums`
--

-- --------------------------------------------------------

--
-- Structure de la table `album`
--

CREATE TABLE `album` (
  `album_id` int NOT NULL,
  `album_title` varchar(50) NOT NULL,
  `album_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `album`
--

INSERT INTO `album` (`album_id`, `album_title`, `album_date`) VALUES
(1, 'La mort de Fanucci', '2025-01-01'),
(2, 'Le parrain et le Sénat', '2025-02-01');

-- --------------------------------------------------------

--
-- Structure de la table `belong`
--

CREATE TABLE `belong` (
  `user_id` int NOT NULL,
  `album_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `belong`
--

INSERT INTO `belong` (`user_id`, `album_id`) VALUES
(1, 1),
(3, 2);

-- --------------------------------------------------------

--
-- Structure de la table `pics`
--

CREATE TABLE `pics` (
  `pic_id` int NOT NULL,
  `pic_url` varchar(100) NOT NULL,
  `pic_description` varchar(100) DEFAULT NULL,
  `pic_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `pics`
--

INSERT INTO `pics` (`pic_id`, `pic_url`, `pic_description`, `pic_date`) VALUES
(1, 'https://picsum.photos/200/300', 'Coucher de soleil magnifique sur la mer ! #vibes #vacances #relax', '2025-01-01'),
(2, 'https://picsum.photos/200/300', 'Un petit café pour commencer la journée #goodmorning #coffee', '2025-01-02'),
(3, 'https://picsum.photos/200/300', 'Le meilleur burger en ville #foodie #delicious', '2025-01-03'),
(4, 'https://picsum.photos/200/300', 'Lumières de la ville la nuit #nightlife #cityvibes', '2025-01-04'),
(5, 'https://picsum.photos/200/300', 'Un paysage de montagne à couper le souffle #nature #aerialview', '2025-01-05'),
(6, 'https://picsum.photos/200/300', 'Lundi matin en mode zen #relax #meditation', '2025-01-06'),
(7, 'https://picsum.photos/200/300', 'Plage déserte, personne autour #peaceful #paradise', '2025-01-07'),
(8, 'https://picsum.photos/200/300', 'L’art de la photo noire et blanche #art #bwphotography', '2025-01-08'),
(9, 'https://picsum.photos/200/300', 'Street style casual pour la journée #ootd #fashion', '2025-01-09'),
(10, 'https://picsum.photos/200/300', 'Le reflet de l’architecture moderne #urban #buildings', '2025-01-10'),
(11, 'https://picsum.photos/200/300', 'Détente au bord de la piscine #poolside #summer', '2025-01-11'),
(12, 'https://picsum.photos/200/300', 'Premiers rayons de soleil sur la mer #morning #nature', '2025-01-12'),
(13, 'https://picsum.photos/200/300', 'Journée aventure en montagne #outdoor #exploration', '2025-01-13'),
(14, 'https://picsum.photos/200/300', 'Coucher de soleil au bord du lac #sunset #naturelovers', '2025-01-14'),
(15, 'https://picsum.photos/200/300', 'Détente avec un bon livre #reading #relaxation', '2025-01-15'),
(16, 'https://picsum.photos/200/300', 'Une photo de paysage au coucher du soleil', '2025-02-10'),
(17, 'https://picsum.photos/200/300', 'Portrait d’un chat dans un jardin', '2025-02-09'),
(18, 'https://picsum.photos/200/300', 'Un groupe d’amis lors d’une fête', '2025-02-08');

-- --------------------------------------------------------

--
-- Structure de la table `pics_album`
--

CREATE TABLE `pics_album` (
  `pic_id` int NOT NULL,
  `album_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `pics_album`
--

INSERT INTO `pics_album` (`pic_id`, `album_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2);

-- --------------------------------------------------------

--
-- Structure de la table `share`
--

CREATE TABLE `share` (
  `user_id` int NOT NULL,
  `album_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `share`
--

INSERT INTO `share` (`user_id`, `album_id`) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 2);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_mail` varchar(50) NOT NULL,
  `user_password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_mail`, `user_password`) VALUES
(1, 'Michael Corleone', 'michael@corleone.com', 'password123'),
(2, 'Tom Hagen', 'tom@hagen.com', 'password123'),
(3, 'Fredo Corleone', 'fredo@corleone.com', 'password123'),
(4, 'Kay Adams', 'kay@adams.com', 'password123'),
(5, 'Johnny Ola', 'johnny@ola.com', 'password123');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`album_id`);

--
-- Index pour la table `belong`
--
ALTER TABLE `belong`
  ADD PRIMARY KEY (`user_id`,`album_id`),
  ADD KEY `album_id` (`album_id`);

--
-- Index pour la table `pics`
--
ALTER TABLE `pics`
  ADD PRIMARY KEY (`pic_id`);

--
-- Index pour la table `pics_album`
--
ALTER TABLE `pics_album`
  ADD PRIMARY KEY (`pic_id`,`album_id`),
  ADD KEY `album_id` (`album_id`);

--
-- Index pour la table `share`
--
ALTER TABLE `share`
  ADD PRIMARY KEY (`user_id`,`album_id`),
  ADD KEY `album_id` (`album_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `album`
--
ALTER TABLE `album`
  MODIFY `album_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `pics`
--
ALTER TABLE `pics`
  MODIFY `pic_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `belong`
--
ALTER TABLE `belong`
  ADD CONSTRAINT `belong_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `belong_ibfk_2` FOREIGN KEY (`album_id`) REFERENCES `album` (`album_id`);

--
-- Contraintes pour la table `pics_album`
--
ALTER TABLE `pics_album`
  ADD CONSTRAINT `pics_album_ibfk_1` FOREIGN KEY (`pic_id`) REFERENCES `pics` (`pic_id`),
  ADD CONSTRAINT `pics_album_ibfk_2` FOREIGN KEY (`album_id`) REFERENCES `album` (`album_id`);

--
-- Contraintes pour la table `share`
--
ALTER TABLE `share`
  ADD CONSTRAINT `share_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `share_ibfk_2` FOREIGN KEY (`album_id`) REFERENCES `album` (`album_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
