-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 13.02.2024 klo 13:13
-- Palvelimen versio: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel_management`
--

-- --------------------------------------------------------

--
-- Rakenne taululle `asiakkaat`
--

CREATE TABLE `asiakkaat` (
  `ktunnus` varchar(25) NOT NULL,
  `Etunimi` varchar(20) NOT NULL,
  `Sukunimi` varchar(45) NOT NULL,
  `Lahiosoite` varchar(50) NOT NULL,
  `Postinumero` varchar(10) NOT NULL,
  `Postitoimipaikka` varchar(25) NOT NULL,
  `Salasana` int(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vedos taulusta `asiakkaat`
--

INSERT INTO `asiakkaat` (`ktunnus`, `Etunimi`, `Sukunimi`, `Lahiosoite`, `Postinumero`, `Postitoimipaikka`, `Salasana`) VALUES
('kekkurtt', 'Keke', 'Kurttila', 'helsingintie 15', '06541', 'Mäntsälä', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
