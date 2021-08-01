-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 29, 2021 at 12:58 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_movie`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `hall1`
--

DROP TABLE IF EXISTS `hall1`;
CREATE TABLE IF NOT EXISTS `hall1` (
  `seatnumber` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`seatnumber`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hall1`
--

INSERT INTO `hall1` (`seatnumber`, `name`, `email`, `date`) VALUES
('A1', 'user', 'santu@gmail.com', '2021/03/21'),
('A2', 'santosh', 'santu@gmail.com', '2021/03/20'),
('A3', 'santosh', 'santu@gmail.com', '2021/03/20'),
('A4', 'santosh', 'santu@gmail.com', '2021/03/20'),
('A5', 'santosh', 'santu@gmail.com', '2021/03/20'),
('A6', 'santosh', 'santu@gmail.com', '2021/03/20'),
('A7', 'santosh', 'santu@gmail.com', '2021/03/20'),
('A8', 'santosh', 'santu@gmail.com', '2021/03/20'),
('A9', 'mrsolo42', 'kojurohan42@gmail.com', '2021/03/22'),
('B1', 'user2', 'user2@gmail.com', '2021/03/28'),
('B2', 'santosh', 'santu@gmail.com', '2021/03/20'),
('B3', 'santosh', 'santu@gmail.com', '2021/03/20'),
('B4', 'santosh', 'santu@gmail.com', '2021/03/20'),
('B5', 'santosh', 'santu@gmail.com', '2021/03/20'),
('B6', 'santosh', 'santu@gmail.com', '2021/03/20'),
('B7', 'santosh', 'santu@gmail.com', '2021/03/20'),
('B8', 'santosh', 'santu@gmail.com', '2021/03/20'),
('B9', 'santosh', 'santu@gmail.com', '2021/03/20'),
('C1', 'santosh', 'santu@gmail.com', '2021/03/20'),
('C2', 'santosh', 'santu@gmail.com', '2021/03/20'),
('C3', 'user', 'kojurohan42@gmil.com', '2021/03/22'),
('C4', 'user', 'santu@gmail.com', '2021/03/20'),
('C5', 'notbooked', NULL, NULL),
('C6', 'notbooked', NULL, NULL),
('C7', 'notbooked', NULL, NULL),
('C8', 'notbooked', NULL, NULL),
('C9', 'notbooked', NULL, NULL),
('D1', 'notbooked', NULL, NULL),
('D2', 'notbooked', NULL, NULL),
('D3', 'notbooked', NULL, NULL),
('D4', 'notbooked', NULL, NULL),
('D5', 'notbooked', NULL, NULL),
('D6', 'notbooked', NULL, NULL),
('D7', 'user2', 'user2@gmail.com', '2021/03/28'),
('D8', 'notbooked', NULL, NULL),
('D9', 'notbooked', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hall2`
--

DROP TABLE IF EXISTS `hall2`;
CREATE TABLE IF NOT EXISTS `hall2` (
  `seatnumber` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`seatnumber`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hall2`
--

INSERT INTO `hall2` (`seatnumber`, `name`, `email`, `date`) VALUES
('A1', 'notbooked', '', ''),
('A2', 'user', 'kojurohan42@gmil.com', '2021/03/27'),
('A3', 'user', 'kojurohan42@gmil.com', '2021/03/26'),
('A4', 'user', 'kojurohan42@gmil.com', '2021/03/26'),
('A5', 'user', 'kojurohan42@gmil.com', '2021/03/27'),
('A6', 'user2', 'user2@gmail.com', '2021/03/28'),
('A7', 'notbooked', '', ''),
('A8', 'notbooked', '', ''),
('A9', 'notbooked', '', ''),
('B1', 'notbooked', '', ''),
('B2', 'notbooked', '', ''),
('B3', 'notbooked', '', ''),
('B4', 'notbooked', '', ''),
('B5', 'notbooked', '', ''),
('B6', 'notbooked', '', ''),
('B7', 'user2', 'user2@gmail.com', '2021/03/28'),
('B8', 'notbooked', '', ''),
('B9', 'notbooked', '', ''),
('C1', 'notbooked', '', ''),
('C2', 'notbooked', '', ''),
('C3', 'notbooked', '', ''),
('C4', 'notbooked', '', ''),
('C5', 'notbooked', '', ''),
('C6', 'notbooked', '', ''),
('C7', 'notbooked', '', ''),
('C8', 'notbooked', '', ''),
('C9', 'notbooked', '', ''),
('D1', 'notbooked', '', ''),
('D2', 'notbooked', '', ''),
('D3', 'notbooked', '', ''),
('D4', 'notbooked', '', ''),
('D5', 'notbooked', '', ''),
('D6', 'notbooked', '', ''),
('D7', 'notbooked', '', ''),
('D8', 'notbooked', '', ''),
('D9', 'notbooked', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `movielist`
--

DROP TABLE IF EXISTS `movielist`;
CREATE TABLE IF NOT EXISTS `movielist` (
  `movieId` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) NOT NULL,
  `Genre` varchar(100) NOT NULL,
  `Director` varchar(100) NOT NULL,
  `Description` varchar(500) NOT NULL,
  `image` varchar(200) NOT NULL,
  `imdb` varchar(100) NOT NULL,
  PRIMARY KEY (`movieId`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movielist`
--

INSERT INTO `movielist` (`movieId`, `Name`, `Genre`, `Director`, `Description`, `image`, `imdb`) VALUES
(14, 'Cherry', 'Action', 'Joe Russo, Anthony Russo', 'Cherry (Tom Holland) drifts from college dropout to army medic in Iraq-anchored only by his one true love, Emily (Ciara Bravo). But after returning from the war with PTSD, his life spirals into drugs.', 'cherry.jfif', '6.6'),
(13, 'Godzilla vs Kong', 'Action', 'Adam Wingard', 'Fearsome monsters Godzilla and King Kong square off in an epic battle for the ages, while humanity looks to wipe out both of the creatures and take back the planet once and for all.', 'godzilla vs. kong.jfif', '7.9'),
(15, 'The Old Guard', 'Action', 'Gina Prince-Bythewood', 'A group of mercenaries, all centuries-old immortals with the ablity to heal themselves, discover someone is onto their secret, and they must fight to protect their freedom.', 'oldguard.jfif', '6.6'),
(16, 'Free Guy', 'Comedy', 'Shawn Levy', 'A bank teller called Guy realizes he is a background character in an open world video game called Free City that will soon go offline.', 'freeguy.jfif', '7.5'),
(19, 'Venom 2', 'Action', 'Andy Serkis', 'Venom: Let There Be Carnage is an upcoming American superhero film based on the Marvel Comics character Venom, produced by Columbia Pictures in association with Marvel and Tencent Pictures', 'venom2.jfif', '7.5');

-- --------------------------------------------------------

--
-- Table structure for table `showorder`
--

DROP TABLE IF EXISTS `showorder`;
CREATE TABLE IF NOT EXISTS `showorder` (
  `showOrderId` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(255) NOT NULL,
  `timeslot` varchar(255) NOT NULL,
  `theater` varchar(255) NOT NULL,
  `movieName` varchar(255) NOT NULL,
  PRIMARY KEY (`showOrderId`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `showorder`
--

INSERT INTO `showorder` (`showOrderId`, `date`, `timeslot`, `theater`, `movieName`) VALUES
(10, '2021-03-24', '8:00am', 'hall1', 'Cherry'),
(11, '2021-03-29', '8:00am', 'hall1', 'Godzilla vs Kong'),
(12, '2021-03-29', '8:00am', 'hall2', 'The Old Guard'),
(13, '2021-03-29', '11:00am', 'hall1', 'The Old Guard'),
(14, '2021-03-30', '8:00am', 'hall1', 'Venom 2'),
(15, '2021-03-30', '8:00am', 'hall1', 'Free Guy'),
(16, '2021-03-30', '2:00pm', 'hall2', 'Godzilla vs Kong'),
(17, '2021-03-29', '2:00pm', 'hall2', 'Godzilla vs Kong'),
(18, '2021-03-29', '2:00pm', 'hall1', 'The Map of Tiny Perfect Things');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'mrsolo42', 'kojurohan42@gmail.com', '6dbb6190153131470d701c8c2fe19db7'),
(2, 'user', 'kojurohan42@gmil.com', 'ee11cbb19052e40b07aac0ca060c23ee'),
(3, 'user2', 'user2@gmail.com', '7e58d63b60197ceb55a1c487989a3720');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
