-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2015 at 07:54 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gianlucacosetta`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE IF NOT EXISTS `feedbacks` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `status` varchar(30) NOT NULL,
  `ts_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ts_edited` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `name`, `surname`, `message`, `status`, `ts_created`, `ts_edited`) VALUES
(1, 'Artur', 'Mamedov', 'Feedback1', 'INREVISION', '2015-05-12 16:56:08', '2015-05-12 16:56:08'),
(2, 'Artur', 'Mamedov', 'Feedback1', 'INREVISION', '2015-05-12 17:08:33', '2015-05-12 17:08:33'),
(3, 'Marco', 'Giocattoli', 'Feedback di prova per vedere in javascript le variabili dal db', 'INREVISION', '2015-05-12 17:09:49', '2015-05-12 17:09:49'),
(4, 'Giancluca', 'Cosetta', 'Feedback di prova per vedere in javascript le variabili dal db', 'LIVE', '2015-05-12 17:25:13', '2015-05-12 17:31:39'),
(5, 'Giancluca', 'Cosetta', 'Feedback di prova per vedere in javascript le variabili dal db', 'INREVISION', '2015-05-12 17:26:58', '2015-05-12 17:26:58'),
(6, 'withArtur', 'OBiV', 'L''implementazione Windows della funzione mail() differisce sotto molti aspetti dall''implementazione Unix. Primo, non usa una un programma in locale per comporre i messaggi, ma opera soltanto direttamente sui socket, il che significa che deve essere presente in ascolto un MTA su un socket di rete (che può essere su localhost o su una macchina remota). Secondo, gli header custom quali From:, Cc:, Bcc: e Date: non vengono interpretati subito dal MTA, ma ne viene fatto prima il parsing da parte di PHP. PHP < 4.3 supportava solo gli header Cc: (ed era case-sensitive). PHP >= 4.3 supporta tutti gli header e non è più case-sensitive. ', 'INREVISION', '2015-05-12 17:48:43', '2015-05-12 17:48:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
