-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
-- Author: Frank Landry
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2015 at 02:27 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `deployauthentication`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `UID` int(11) NOT NULL AUTO_INCREMENT,
  `Fname` varchar(10) NOT NULL,
  `Lname` varchar(10) NOT NULL,
  `username` varchar(10) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `Group` tinyint(1) NOT NULL,
  `Date` date NOT NULL,
  PRIMARY KEY (`UID`),
  UNIQUE KEY `Fname` (`Fname`,`Lname`,`username`,`pass`,`Group`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Used for user authentication' AUTO_INCREMENT=45 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UID`, `Fname`, `Lname`, `username`, `pass`, `Group`, `Date`) VALUES
(23, 'Wellington', 'Newton', 'well', 'f9323f5b51fc23e30c10623bd38de6ff', 0, '2015-02-26'),
(42, 'fr', 'l', 'flandry', '86a8c2da8527a1c6978bdca6d7986fe14ae147fe', 0, '2015-03-10'),
(43, 'Cyrus', 'Fullam', 'cxf11111', 'de187642e6c75f60d10f29e52cab54cdf676870d', 0, '2015-03-10'),
(44, 'frank', 'landry', 'fnl03080', '403926033d001b5279df37cbbe5287b7c7c267fa', 0, '2015-03-11');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
