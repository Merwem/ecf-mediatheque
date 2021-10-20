-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mer. 20 oct. 2021 à 17:32
-- Version du serveur :  8.0.20
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ecf2`
--

-- --------------------------------------------------------

--
-- Structure de la table `books`
--

CREATE TABLE `books` (
  `id` int NOT NULL,
  `fk_genre_id_id` int NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parution` date NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auteur` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `books`
--

INSERT INTO `books` (`id`, `fk_genre_id_id`, `title`, `image`, `parution`, `description`, `auteur`) VALUES
(1, 12, 'voluptatem', 'http://lorempixel.com/640/480/?83548', '2002-03-25', 'Enimautemimpeditfacilisrepellattemporibusipsum.Natusestquiadictaeligendiesttenetur.Nesciuntfugainciduntsequivoluptatem.', 'Aimé'),
(2, 12, 'maiores', 'http://lorempixel.com/640/480/?16587', '2006-02-12', 'Autautlaborumquibusdamnumquam.Natusnobisdoloribusnonetquodconsequunturfacilis.Temporeestperferendisquiquisquosautem.', 'Étienne'),
(3, 12, 'voluptas', 'http://lorempixel.com/640/480/?81392', '2012-07-05', 'Reiciendisquissuntrepellatanimiutculpaofficiis.Rerumsitestcorruptiomnisautemdignissimosomnis.Deseruntvelquiaporro.Cumquodametetvoluptasmolestiassed.Pariaturconsecteturdoloresassumendavoluptas.', 'Juliette'),
(4, 12, 'dolores', 'http://lorempixel.com/640/480/?12989', '2021-09-18', 'Autconsequaturinautemipsamquisrerum.Optiosedfugiatconsequaturreiciendishic.Minusfacilisautquasiadvoluptate.Nonerrorearumconsequaturestmodi.Nammolestiaeeapossimusdoloribusnemoalias.', 'Timothée'),
(5, 12, 'laboriosam', 'http://lorempixel.com/640/480/?82153', '1988-05-06', 'Quisquamnonaliquidetest.Eaautautnobiseos.Sednamillosuscipitquia.\nUndeutmaximeipsaeligendirationeea.Eligendiquasvoluptatequiexcepturi.', 'Susanne'),
(6, 12, 'atque', 'http://lorempixel.com/640/480/?14344', '2004-10-08', 'Odioinatquosnequerationequiipsarepellat.Quasivoluptatibussuntsolutadoloresdoloremqueutreprehenderit.Verosedreiciendissintut.', 'Pierre'),
(7, 13, 'non', 'http://lorempixel.com/640/480/?62469', '1974-07-19', 'Corruptietitaquemagnamamet.Utessequovoluptatemconsequaturrationeiure.Reiciendisaliquamnequesaepeiuredelectusvelnequeaut.Inventorepariaturaliquidnullavelvoluptatibuset.', 'Amélie'),
(8, 13, 'rerum', 'http://lorempixel.com/640/480/?28317', '2007-11-12', 'Quiaetetcumquehicin.Quiarerumpossimusrationeundenumquamtemporeullamsequi.Reiciendisquomolestiasodiovoluptas.Estpariaturvelitducimuscumiureillo.', 'Joséphine'),
(9, 13, 'omnis', 'http://lorempixel.com/640/480/?73383', '1998-04-13', 'Estesseutaliasrepellatutvoluptasdolorem.Delenitinobissuntconsecteturquisquamamet.Corporisadipisciquiasperioresrem.Doloreenimcumqueeumeum.', 'Emmanuel'),
(10, 13, 'dolor', 'http://lorempixel.com/640/480/?86423', '1990-07-02', 'Corporisadveniamducimusipsaquaerat.Porroquiaestofficiaquouttemporibus.Undemaioresvelarchitectodeseruntetrerumrationeest.', 'Camille'),
(11, 13, 'et', 'http://lorempixel.com/640/480/?44950', '2013-09-12', 'Ipsummolestiasrationeanimidistinctio.Estiustoautemquoet.Estearumminusperspiciatisipsamillum.Deseruntimpeditnumquamutperferendisquieosunde.', 'Yves'),
(12, 13, 'officiis', 'http://lorempixel.com/640/480/?50932', '2006-09-12', 'Debitisautliberoimpeditquis.Autemhicminimaautemcupiditatevoluptas.Beataemaximeutquiseumculpadoloromnis.Totamnonnequesolutaharumvelitipsumveroquo.Pariaturipsamculpasitnullaeumincidunteaest.', 'Xavier'),
(13, 14, 'quia', 'http://lorempixel.com/640/480/?12817', '1989-03-30', 'Praesentiumessevitaealiquidconsequuntureius.Utnobisquiculpabeataeenim.Inmaximeporroaccusantiumremfugadoloremincidunt.', 'Arthur'),
(14, 14, 'cum', 'http://lorempixel.com/640/480/?22098', '2011-09-18', 'Voluptasutseddoloresaut.Cumqueiuresinteligendieavero.Pariaturipsumoccaecativeldolormagnameligendivoluptatum.', 'Élisabeth'),
(15, 14, 'aut', 'http://lorempixel.com/640/480/?49127', '1983-02-08', 'Voluptateoccaecativoluptatevelittemporeaspernatursed.Remametporroeumatquenonquoenim.Liberoiustoistedelectuset.', 'Victoire'),
(16, 14, 'nihil', 'http://lorempixel.com/640/480/?12646', '2020-12-24', 'Eteosvitaeautexercitationem.Oditfugiatofficiautconsecteturetmaioresetvoluptas.Doloremqueaccusantiumautempossimussequi.', 'Alexandre'),
(17, 14, 'tempore', 'http://lorempixel.com/640/480/?28953', '1990-10-25', 'Etsapienteautquis.Molestiaedelectusetsedestvoluptas.\nAmetautametquiet.Quisreprehenderitiurenostrumprovident.Minimanesciuntrecusandaevelitoccaecati.', 'Thibaut'),
(18, 14, 'inventore', 'http://lorempixel.com/640/480/?91812', '2006-01-14', 'Nonvoluptatesquibusdamiddolorautdictaautem.Rerumquoquisquamtemporeatquesedsolutaearepellendus.Deseruntnonminimaquisestinventoresimiliquedoloremque.', 'Patrick'),
(19, 15, 'reprehenderit', 'http://lorempixel.com/640/480/?90806', '2018-12-23', 'Animiminimaetmollitiaexercitationemseduteum.Nullacommodieiusbeataeprovidentreprehenderitet.Ipsaestevenietbeataenobiseaque.', 'Auguste'),
(20, 15, 'unde', 'http://lorempixel.com/640/480/?12440', '2014-11-05', 'Nobisutveroab.Doloribusquibusdamminusofficiaet.Sequinisidelectusvoluptatem.\nAdipiscidoloribusestaccusantiumautemvoluptatibusrecusandaequidem.Natusanimirationetemporequiutquisminus.', 'Cécile'),
(21, 15, 'labore', 'http://lorempixel.com/640/480/?25329', '2019-07-17', 'Adipisciquidemquiaeligendiuteumestquo.Etidrationequisquamestperspiciatisatquevoluptatem.Voluptasdolordoloresquasbeataeestipsadoloredeserunt.', 'Monique'),
(22, 15, 'molestiae', 'http://lorempixel.com/640/480/?98339', '2004-03-07', 'Illumvoluptatumeligendiquaeratnecessitatibusnihil.Autemexexcepturisapientequibusdam.Eumeoscorporisexcepturieteaqueaut.', 'Margaud'),
(23, 15, 'commodi', 'http://lorempixel.com/640/480/?56178', '2017-07-23', 'Iurecumvelfugiateaquecorruptiest.Modiodiodeseruntlaboriosamiustoet.Voluptatemquaeetrerumaliquamlabore.Corporisabeaquelaborequaesintautemnulla.', 'Luce'),
(24, 15, 'explicabo', 'http://lorempixel.com/640/480/?90433', '1993-05-09', 'Ipsamcommodimagniinventorequis.Nonquiavelitautesse.Corruptibeataecommodieiusauttotamadipisci.Doloresaliquamsunttotamnisiamet.', 'Théophile'),
(25, 16, 'et', 'http://lorempixel.com/640/480/?71716', '2009-10-04', 'Oditdolorveronisiblanditiisblanditiiscorporiset.Etvitaevoluptasnumquamamet.Quianonenimreprehenderit.', 'Alphonse'),
(26, 16, 'ut', 'http://lorempixel.com/640/480/?78904', '2021-01-09', 'Utetinsequiquia.Sedplaceaterrorrerumaperiamametexcepturiquam.Explicabonisilaudantiumvoluptatesetexercitationemnullaevenietut.Deleniticumfugaprovidentdoloresdoloreet.Asperioresdolorumfugitsoluta.', 'Olivier'),
(27, 16, 'reprehenderit', 'http://lorempixel.com/640/480/?73739', '2006-05-09', 'Iustosuntcorporisharumitaquecupiditate.Reprehenderitconsequaturdignissimosautaut.Molestiaemolestiaerationecupiditateadipisciipsasednemo.Remeosdistinctioasperioresinciduntquiaeveniet.', 'Émile'),
(28, 16, 'est', 'http://lorempixel.com/640/480/?89327', '1993-05-24', 'Undepraesentiumquaeratvoluptate.Molestiasoccaecativelitreruminciduntrepudiandaehic.Nesciuntomnisautnonassumendainventoredelectusmagnamquasi.Deseruntexpeditanecessitatibusaperiamatquepraesentium.', 'Laurence'),
(29, 16, 'doloremque', 'http://lorempixel.com/640/480/?81491', '1971-11-10', 'Quiaestquooditdoloresvoluptasvoluptates.Enimtemporaoptioautqui.Dolordoloresutrepudiandaeipsa.Remquivoluptatemeadolorumharumvoluptatem.', 'Robert'),
(30, 16, 'consequatur', 'http://lorempixel.com/640/480/?23820', '2020-06-30', 'Nullasitoccaecativoluptatesmagnamarchitectonesciuntmolestiae.Etquisaepeinventorequia.', 'Léon');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20211016163727', '2021-10-16 18:37:43', 48),
('DoctrineMigrations\\Version20211016170549', '2021-10-16 19:05:59', 131),
('DoctrineMigrations\\Version20211017074310', '2021-10-17 09:43:20', 192),
('DoctrineMigrations\\Version20211017074546', '2021-10-17 09:45:53', 34),
('DoctrineMigrations\\Version20211017091334', '2021-10-17 11:13:44', 69),
('DoctrineMigrations\\Version20211017092244', '2021-10-17 11:22:56', 72),
('DoctrineMigrations\\Version20211017093758', '2021-10-17 11:38:08', 37),
('DoctrineMigrations\\Version20211017110634', '2021-10-17 13:06:42', 124),
('DoctrineMigrations\\Version20211019145614', '2021-10-19 16:56:23', 337),
('DoctrineMigrations\\Version20211019150301', '2021-10-19 17:03:07', 112),
('DoctrineMigrations\\Version20211020081053', '2021-10-20 10:11:05', 635),
('DoctrineMigrations\\Version20211020090052', '2021-10-20 11:00:59', 41),
('DoctrineMigrations\\Version20211020091745', '2021-10-20 11:17:50', 44);

-- --------------------------------------------------------

--
-- Structure de la table `emprunt`
--

CREATE TABLE `emprunt` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `book_id` int DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `date_fin` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `emprunt`
--

INSERT INTO `emprunt` (`id`, `user_id`, `book_id`, `created_at`, `date_fin`) VALUES
(12, 8, 9, '2021-10-20 12:42:14', '2021-10-23 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `emprunt_accord`
--

CREATE TABLE `emprunt_accord` (
  `id` int NOT NULL,
  `emprunt_id` int NOT NULL,
  `valid` tinyint(1) NOT NULL,
  `date_recup` datetime DEFAULT NULL,
  `date_rendu` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `emprunt_accord`
--

INSERT INTO `emprunt_accord` (`id`, `emprunt_id`, `valid`, `date_recup`, `date_rendu`) VALUES
(11, 12, 1, '2021-10-20 12:43:30', '2021-10-20 12:43:56');

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `genre`
--

INSERT INTO `genre` (`id`, `name`) VALUES
(12, 'voluptas'),
(13, 'consectetur'),
(14, 'magni'),
(15, 'similique'),
(16, 'deleniti');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cp` int NOT NULL,
  `role` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `username`, `prenom`, `adresse`, `cp`, `role`) VALUES
(8, 'admin@gmail.com', '$argon2id$v=19$m=65536,t=4,p=1$bm4yL2U4Mi5iWTl3UHZ6WQ$AkjDYAk5k5PZX/JZ61biz76nmxwcLDFc6uaywEmUNDU', 'admin', 'admin', '10 rue Jean Macé', 42400, 1),
(9, 'calotte@gmail.com', '$argon2id$v=19$m=65536,t=4,p=1$SDE5MWo3WnpBTk9jSXljLw$XB7UPieKBcVi3AO5B3Bkm77GBfe5zB4vA5uCqwV1vRY', 'lecalotteur', 'calotte', '10 rue Jean Macé', 42400, 0);

-- --------------------------------------------------------

--
-- Structure de la table `user_accord`
--

CREATE TABLE `user_accord` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `accord` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `user_accord`
--

INSERT INTO `user_accord` (`id`, `user_id`, `accord`) VALUES
(6, 8, 1),
(7, 9, 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4A1B2A92ABB42DA6` (`fk_genre_id_id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `emprunt`
--
ALTER TABLE `emprunt`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_364071D716A2B381` (`book_id`),
  ADD KEY `IDX_364071D7A76ED395` (`user_id`);

--
-- Index pour la table `emprunt_accord`
--
ALTER TABLE `emprunt_accord`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_4BACE11CAE7FEF94` (`emprunt_id`);

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_accord`
--
ALTER TABLE `user_accord`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_F4640139A76ED395` (`user_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `books`
--
ALTER TABLE `books`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `emprunt`
--
ALTER TABLE `emprunt`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `emprunt_accord`
--
ALTER TABLE `emprunt_accord`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `user_accord`
--
ALTER TABLE `user_accord`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `FK_4A1B2A92ABB42DA6` FOREIGN KEY (`fk_genre_id_id`) REFERENCES `genre` (`id`);

--
-- Contraintes pour la table `emprunt`
--
ALTER TABLE `emprunt`
  ADD CONSTRAINT `FK_364071D716A2B381` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `FK_364071D7A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `emprunt_accord`
--
ALTER TABLE `emprunt_accord`
  ADD CONSTRAINT `FK_4BACE11CAE7FEF94` FOREIGN KEY (`emprunt_id`) REFERENCES `emprunt` (`id`);

--
-- Contraintes pour la table `user_accord`
--
ALTER TABLE `user_accord`
  ADD CONSTRAINT `FK_F4640139A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
