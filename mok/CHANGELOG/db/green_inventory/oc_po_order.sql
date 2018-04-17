-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2016 at 12:07 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `finalshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `oc_po_order`
--

CREATE TABLE `oc_po_order` (
  `id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `delete_bit` bit(1) NOT NULL DEFAULT b'1',
  `user_id` int(11) NOT NULL,
  `receive_date` date NOT NULL,
  `receive_bit` bit(1) NOT NULL DEFAULT b'0',
  `pending_bit` bit(1) NOT NULL DEFAULT b'1',
  `pre_supplier_bit` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oc_po_order`
--

INSERT INTO `oc_po_order` (`id`, `order_date`, `delete_bit`, `user_id`, `receive_date`, `receive_bit`, `pending_bit`, `pre_supplier_bit`) VALUES
(1, '2016-05-10', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(2, '2016-05-10', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(3, '2016-05-10', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(4, '2016-05-10', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(5, '2016-05-10', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(6, '2016-05-10', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(7, '2016-05-10', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(8, '2016-05-10', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(9, '2016-05-10', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(10, '2016-05-10', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(11, '2016-05-11', b'0', 1, '2016-05-26', b'1', b'0', b'0'),
(12, '2016-05-11', b'0', 1, '2016-05-18', b'1', b'0', b'0'),
(13, '2016-05-11', b'0', 1, '2016-05-11', b'1', b'0', b'0'),
(14, '2016-05-11', b'0', 1, '2016-05-19', b'1', b'0', b'0'),
(15, '2016-05-11', b'0', 1, '0000-00-00', b'1', b'0', b'0'),
(16, '2016-05-11', b'0', 1, '0000-00-00', b'1', b'0', b'0'),
(17, '2016-05-11', b'0', 1, '0000-00-00', b'1', b'0', b'0'),
(18, '2016-05-11', b'0', 1, '2016-05-26', b'1', b'0', b'0'),
(19, '2016-05-11', b'0', 1, '2016-05-26', b'1', b'0', b'0'),
(20, '2016-05-11', b'0', 1, '2016-05-26', b'1', b'0', b'0'),
(21, '2016-05-11', b'0', 1, '2016-05-19', b'1', b'0', b'0'),
(22, '2016-05-12', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(23, '2016-05-12', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(24, '2016-05-12', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(25, '2016-05-12', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(26, '2016-05-12', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(27, '2016-05-12', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(28, '2016-05-12', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(29, '2016-05-12', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(30, '2016-05-12', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(31, '2016-05-12', b'0', 2, '0000-00-00', b'0', b'1', b'0'),
(32, '2016-05-13', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(33, '2016-05-13', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(34, '2016-05-13', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(35, '2016-05-13', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(36, '2016-05-13', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(37, '2016-05-13', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(38, '2016-05-13', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(39, '2016-05-13', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(40, '2016-05-16', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(41, '2016-05-16', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(42, '2016-05-16', b'0', 1, '2016-05-12', b'1', b'0', b'0'),
(43, '2016-05-16', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(44, '2016-05-16', b'0', 1, '2016-05-27', b'1', b'0', b'0'),
(45, '2016-05-16', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(46, '2016-05-16', b'0', 1, '2016-05-27', b'1', b'0', b'0'),
(47, '2016-05-16', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(48, '2016-05-16', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(49, '2016-05-16', b'0', 1, '2016-05-26', b'1', b'0', b'0'),
(50, '2016-05-16', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(51, '2016-05-16', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(52, '2016-05-16', b'0', 1, '2016-05-18', b'1', b'0', b'0'),
(53, '2016-05-17', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(54, '2016-05-17', b'0', 2, '0000-00-00', b'0', b'1', b'0'),
(55, '2016-05-17', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(56, '2016-05-18', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(57, '2016-05-18', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(58, '2016-05-18', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(59, '2016-05-18', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(60, '2016-05-19', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(61, '2016-05-19', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(62, '2016-05-19', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(63, '2016-05-19', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(64, '2016-05-19', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(65, '2016-05-20', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(66, '2016-05-20', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(67, '2016-05-23', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(68, '2016-05-25', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(69, '2016-05-25', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(70, '2016-05-25', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(71, '2016-05-25', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(72, '2016-05-25', b'0', 1, '2016-05-25', b'1', b'0', b'0'),
(73, '2016-05-25', b'0', 1, '2016-05-25', b'1', b'0', b'0'),
(74, '2016-05-25', b'0', 1, '2016-05-25', b'1', b'0', b'0'),
(75, '2016-05-25', b'0', 1, '2016-05-25', b'1', b'0', b'0'),
(76, '2016-05-26', b'0', 1, '2016-05-26', b'1', b'0', b'0'),
(77, '2016-05-26', b'0', 1, '2016-05-27', b'1', b'0', b'0'),
(78, '2016-05-27', b'0', 1, '2016-05-28', b'1', b'0', b'0'),
(79, '2016-05-27', b'1', 1, '2016-05-28', b'1', b'0', b'0'),
(80, '2016-05-27', b'1', 1, '2016-05-28', b'1', b'0', b'0'),
(81, '2016-05-30', b'1', 1, '2016-05-30', b'1', b'0', b'0'),
(82, '2016-06-01', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(83, '2016-06-01', b'1', 1, '2016-06-07', b'1', b'0', b'0'),
(84, '2016-06-01', b'1', 1, '2016-06-09', b'1', b'0', b'0'),
(85, '2016-06-01', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(86, '2016-06-01', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(87, '2016-06-01', b'1', 1, '2016-06-15', b'1', b'0', b'0'),
(88, '2016-06-07', b'1', 1, '2016-06-08', b'1', b'0', b'0'),
(89, '2016-06-07', b'1', 1, '2016-06-08', b'1', b'0', b'0'),
(90, '2016-06-07', b'1', 1, '2016-06-07', b'1', b'0', b'0'),
(91, '2016-06-08', b'1', 1, '2016-06-16', b'1', b'0', b'0'),
(92, '2016-06-15', b'1', 1, '2016-06-16', b'1', b'0', b'0'),
(93, '2016-06-15', b'1', 1, '2016-06-16', b'1', b'0', b'0'),
(94, '2016-06-15', b'1', 1, '2016-06-16', b'1', b'0', b'0'),
(95, '2016-06-16', b'1', 1, '2016-06-18', b'1', b'0', b'0'),
(96, '2016-06-20', b'1', 1, '2016-06-23', b'1', b'0', b'0'),
(97, '2016-06-20', b'0', 1, '0000-00-00', b'1', b'0', b'0'),
(98, '2016-06-20', b'1', 1, '2016-07-28', b'1', b'0', b'0'),
(99, '2016-07-09', b'1', 1, '2016-07-27', b'1', b'0', b'0'),
(100, '2016-07-09', b'1', 1, '2016-07-27', b'1', b'0', b'0'),
(101, '2016-07-09', b'1', 1, '2016-07-27', b'1', b'0', b'0'),
(102, '2016-07-09', b'1', 1, '2016-07-27', b'1', b'0', b'0'),
(103, '2016-07-09', b'1', 1, '2016-07-27', b'1', b'0', b'0'),
(104, '2016-07-09', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(105, '2016-07-09', b'1', 1, '2016-08-29', b'1', b'0', b'0'),
(106, '2016-07-09', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(107, '2016-07-09', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(108, '2016-07-09', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(109, '2016-07-15', b'1', 1, '2016-07-15', b'1', b'0', b'0'),
(110, '2016-07-15', b'1', 1, '2016-07-15', b'1', b'0', b'0'),
(111, '2016-07-15', b'1', 1, '2016-07-15', b'1', b'0', b'0'),
(112, '2016-07-18', b'1', 1, '2016-07-19', b'1', b'0', b'0'),
(113, '2016-07-19', b'1', 1, '2016-07-20', b'1', b'0', b'0'),
(114, '2016-07-19', b'1', 1, '2016-07-19', b'1', b'0', b'0'),
(115, '2016-07-21', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(116, '2016-08-10', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(117, '2016-08-10', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(118, '2016-08-10', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(119, '2016-08-10', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(120, '2016-08-10', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(121, '2016-08-10', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(122, '2016-08-10', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(123, '2016-08-10', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(124, '2016-08-10', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(125, '2016-08-10', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(126, '2016-08-10', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(127, '2016-08-10', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(128, '2016-08-10', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(129, '2016-08-10', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(130, '2016-08-10', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(131, '2016-08-18', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(132, '2016-08-18', b'0', 1, '2016-08-18', b'1', b'0', b'0'),
(133, '2016-08-18', b'0', 1, '2016-08-18', b'1', b'0', b'0'),
(134, '2016-08-18', b'0', 1, '2016-08-18', b'1', b'0', b'0'),
(135, '2016-08-18', b'1', 1, '2016-08-18', b'1', b'0', b'0'),
(136, '2016-08-18', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(137, '2016-08-18', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(138, '2016-08-19', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(139, '2016-08-19', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(140, '2016-08-19', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(141, '2016-08-19', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(142, '2016-08-19', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(143, '2016-08-19', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(144, '2016-08-19', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(145, '2016-08-19', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(146, '2016-08-19', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(147, '2016-08-19', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(148, '2016-08-19', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(149, '2016-08-19', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(150, '2016-08-19', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(151, '2016-08-19', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(152, '2016-08-19', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(153, '2016-08-19', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(154, '2016-08-19', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(155, '2016-08-19', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(156, '2016-08-19', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(157, '2016-08-19', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(158, '2016-08-19', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(159, '2016-08-19', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(160, '2016-08-19', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(161, '2016-08-19', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(162, '2016-08-19', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(163, '2016-08-19', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(164, '2016-08-19', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(165, '2016-08-19', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(166, '2016-08-19', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(167, '2016-08-19', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(168, '2016-08-19', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(169, '2016-08-19', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(170, '2016-08-19', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(171, '2016-08-19', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(172, '2016-08-22', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(173, '2016-08-22', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(174, '2016-08-22', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(175, '2016-08-22', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(176, '2016-08-22', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(177, '2016-08-22', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(178, '2016-08-22', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(179, '2016-08-22', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(180, '2016-08-22', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(181, '2016-08-22', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(182, '2016-08-22', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(183, '2016-08-22', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(184, '2016-08-22', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(185, '2016-08-22', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(186, '2016-08-22', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(187, '2016-08-22', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(188, '2016-08-22', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(189, '2016-08-22', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(190, '2016-08-22', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(191, '2016-08-22', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(192, '2016-08-22', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(193, '2016-08-22', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(194, '2016-08-22', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(195, '2016-08-22', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(196, '2016-08-23', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(197, '2016-08-24', b'1', 1, '2016-08-24', b'1', b'0', b'0'),
(198, '2016-08-24', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(199, '2016-08-24', b'1', 1, '2016-08-25', b'1', b'0', b'0'),
(200, '2016-08-24', b'1', 1, '2016-08-24', b'1', b'0', b'0'),
(201, '2016-08-24', b'1', 1, '2016-08-24', b'1', b'0', b'0'),
(202, '2016-08-24', b'1', 1, '2016-08-24', b'1', b'0', b'0'),
(203, '2016-08-24', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(204, '2016-08-24', b'0', 1, '2016-08-24', b'1', b'0', b'0'),
(205, '2016-08-24', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(206, '2016-08-24', b'0', 1, '2016-08-24', b'1', b'0', b'0'),
(207, '2016-08-24', b'1', 1, '2016-08-24', b'1', b'0', b'0'),
(208, '2016-08-24', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(209, '2016-08-24', b'1', 1, '2016-08-24', b'1', b'0', b'0'),
(210, '2016-08-24', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(211, '2016-08-24', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(212, '2016-08-25', b'1', 1, '2016-08-27', b'1', b'0', b'0'),
(213, '2016-08-25', b'1', 1, '2016-08-27', b'1', b'0', b'0'),
(214, '2016-08-25', b'1', 1, '2016-08-26', b'1', b'0', b'0'),
(215, '2016-08-25', b'0', 1, '0000-00-00', b'0', b'1', b'0'),
(216, '2016-08-26', b'1', 1, '2016-08-26', b'1', b'0', b'0'),
(217, '2016-08-29', b'1', 1, '2016-08-29', b'1', b'0', b'0'),
(218, '2016-08-29', b'1', 1, '2016-08-29', b'1', b'0', b'0'),
(219, '2016-08-29', b'1', 1, '2016-08-29', b'1', b'0', b'0'),
(220, '2016-08-29', b'0', 1, '2016-08-29', b'1', b'0', b'0'),
(221, '2016-08-29', b'1', 1, '2016-08-29', b'1', b'0', b'0'),
(222, '2016-08-29', b'1', 1, '2016-08-29', b'1', b'0', b'0'),
(223, '2016-08-29', b'1', 1, '2016-08-29', b'1', b'0', b'0'),
(224, '2016-08-29', b'1', 1, '2016-08-29', b'1', b'0', b'0'),
(225, '2016-08-29', b'1', 1, '2016-08-29', b'1', b'0', b'0'),
(226, '2016-08-29', b'1', 1, '2016-08-29', b'1', b'0', b'0'),
(227, '2016-08-29', b'1', 1, '2016-08-29', b'1', b'0', b'0'),
(228, '2016-08-29', b'1', 1, '2016-08-29', b'1', b'0', b'0'),
(229, '2016-08-29', b'1', 1, '2016-08-29', b'1', b'0', b'0'),
(230, '2016-08-29', b'1', 1, '2016-08-29', b'1', b'0', b'0'),
(231, '2016-08-30', b'1', 1, '2016-08-30', b'1', b'0', b'0'),
(232, '2016-08-30', b'1', 1, '2016-08-30', b'1', b'0', b'0'),
(233, '2016-08-30', b'1', 1, '2016-08-30', b'1', b'0', b'0'),
(234, '2016-08-30', b'1', 1, '0000-00-00', b'0', b'1', b'1'),
(235, '2016-08-30', b'1', 1, '0000-00-00', b'0', b'1', b'1'),
(236, '2016-08-30', b'1', 1, '0000-00-00', b'0', b'1', b'1'),
(237, '2016-08-30', b'1', 1, '0000-00-00', b'0', b'1', b'1'),
(238, '2016-08-30', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(239, '2016-08-30', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(240, '2016-08-30', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(241, '2016-08-30', b'1', 1, '2016-08-30', b'1', b'0', b'0'),
(242, '2016-08-30', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(243, '2016-08-30', b'1', 1, '2016-08-30', b'1', b'0', b'0'),
(244, '2016-08-30', b'1', 1, '2016-08-30', b'1', b'0', b'1'),
(245, '2016-08-30', b'1', 1, '2016-09-01', b'1', b'0', b'1'),
(246, '2016-08-30', b'1', 1, '2016-08-16', b'1', b'0', b'0'),
(247, '2016-08-30', b'1', 1, '2016-08-09', b'1', b'0', b'0'),
(248, '2016-08-30', b'1', 1, '2016-08-16', b'1', b'0', b'1'),
(249, '2016-08-30', b'1', 1, '2016-08-15', b'1', b'0', b'0'),
(250, '2016-08-30', b'1', 1, '2016-08-10', b'1', b'0', b'1'),
(251, '2016-09-01', b'1', 1, '2016-08-31', b'1', b'0', b'1'),
(252, '2016-09-01', b'1', 1, '0000-00-00', b'0', b'1', b'0'),
(253, '2016-09-01', b'1', 1, '2016-09-03', b'1', b'0', b'0'),
(254, '2016-09-01', b'1', 1, '2016-09-01', b'1', b'0', b'1'),
(255, '2016-09-01', b'1', 1, '2016-09-02', b'1', b'0', b'0'),
(256, '2016-09-01', b'1', 1, '2016-09-02', b'1', b'0', b'0'),
(257, '2016-09-01', b'1', 1, '2016-09-05', b'1', b'0', b'0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `oc_po_order`
--
ALTER TABLE `oc_po_order`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `oc_po_order`
--
ALTER TABLE `oc_po_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
