-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 23, 2025 at 07:43 PM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vmywebsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `comment` text COLLATE utf8mb4_general_ci,
  `star_rate` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `comment`, `star_rate`, `created_at`) VALUES
(1, 2, 'ff', 1, '2025-04-22 21:52:26'),
(2, 2, 'good', 5, '2025-04-22 21:54:17'),
(3, 3, '  ssdwfw', 3, '2025-04-22 21:57:30'),
(4, 4, 'dfbf', 3, '2025-04-22 22:08:41'),
(5, 5, 'fsfgd', 3, '2025-04-22 22:11:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`) VALUES
(1, 'N', '$2y$10$MgN.rFcgEkJAjpDfcgYreOWEV/AKRoMMsBx26p5XWUpwR46UMl3BK', 'binurayanage@gmail.com'),
(2, 'Nmm', '$2y$10$Ky9JFtH4BKrZSpginUbfB.2O9a00fAhw6r8NGqQNnnSOeb8BMRzfe', 'binurayanage@gmail.com'),
(3, 'sk', '$2y$10$JmaM5ZiKVV.OT.4yDZD60.WYywL7C7AnY7aLOZkJZ6rciwSVBof8a', 'mihirannilaksha@gmail.com'),
(4, 'pk', '$2y$10$ultcc0e3oYzeyKzxcW/TbORVuGyVIUlKt0oTLdJAwxS7ORob9HFxK', 'hpprt@gmail.com'),
(5, 'w', '$2y$10$R1LWRGN2b3LEpWXsR.sCtOTOtrab7k4z4XY/XQ14eIM9ZpX0/x2J.', 'hpprt@gmail.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
