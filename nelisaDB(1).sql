-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 07, 2016 at 02:59 PM
-- Server version: 5.5.49-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `nelisaDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` char(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `category` (`category`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`) VALUES
(3, 'Baked Goods'),
(4, 'Canned Goods'),
(6, 'Cereal'),
(2, 'Dairy'),
(1, 'Fruit'),
(7, 'Hygiene'),
(8, 'Meat'),
(9, 'Other'),
(13, 'Pastas'),
(5, 'Sweets');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product` varchar(200) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product` (`product`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product`, `category_id`) VALUES
(1, 'Apples - loose', 1),
(2, 'Bananas - loose', 1),
(3, 'Imasi', 2),
(4, 'Bread', 3),
(5, 'Chakalaka Can', 4),
(6, 'Coke 500ml', 5),
(7, 'Cream Soda 500ml', 5),
(8, 'Fanta 500ml', 5),
(9, 'Gold Dish Vegetable Curry Can', 4),
(10, 'Iwisa Pap 5kg', 6),
(11, 'Milk 1l', 2),
(12, 'Mixed Sweets 5s', 5),
(13, 'Shampoo 1 litre', 7),
(14, 'Soap Bar', 7),
(15, 'Top Class Soy Mince', 8),
(16, 'Heart Chocolates', 5),
(17, 'Rose (plastic)', 9),
(18, 'Valentines Card', 9),
(23, 'BREADZ', 3);

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE IF NOT EXISTS `purchases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(200) NOT NULL,
  `StockItem` varchar(200) NOT NULL,
  `Quantity` float DEFAULT NULL,
  `Cost` float DEFAULT NULL,
  `Shop` varchar(40) DEFAULT NULL,
  `Date` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_2` (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=162 ;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `product_id`, `StockItem`, `Quantity`, `Cost`, `Shop`, `Date`) VALUES
(2, 6, 'Coke 500ml', 3, 3, 'Makro', '2016-01-23'),
(3, 7, 'Cream Soda 500ml', 4, 4, 'Makro', '2016-01-23'),
(4, 8, 'Fanta 500ml', 2, 4, 'Makro', '2016-01-23'),
(5, 9, 'Gold Dish Vegetable Curry Can', 2, 5, 'Makro', '2016-01-23'),
(6, 3, 'Imasi', 1, 17, 'Makro', '2016-01-23'),
(7, 10, 'Iwisa Pap 5kg', 3, 20, 'Makro', '2016-01-23'),
(8, 11, 'Milk 1l', 4, 7, 'Makro', '2016-01-23'),
(9, 15, 'Top Class Soy Mince', 5, 8, 'Makro', '2016-01-23'),
(10, 2, 'Bananas - loose', 4, 1, 'Epping Market', '2016-01-28'),
(11, 1, 'Apples - loose', 10, 1, 'Epping Market', '2016-01-28'),
(12, 12, 'Mixed Sweets 5s', 60, 3, 'Epping Market', '2016-01-28'),
(13, 13, 'Shampoo 1 litre', 1, 20, 'HomeMade', '2016-01-28'),
(14, 14, 'Soap Bar', 3, 3, 'HomeMade', '2016-01-28'),
(15, 4, 'Bread', 30, 9, 'Makro', '2016-01-28'),
(16, 5, 'Chakalaka Can', 15, 7, 'Makro', '2016-01-28'),
(17, 6, 'Coke 500ml', 36, 3, 'Makro', '2016-01-28'),
(18, 7, 'Cream Soda 500ml', 24, 4, 'Makro', '2016-01-28'),
(19, 8, 'Fanta 500ml', 24, 4, 'Makro', '2016-01-28'),
(20, 9, 'Gold Dish Vegetable Curry Can', 15, 5, 'Makro', '2016-01-28'),
(21, 3, 'Imasi', 15, 17, 'Makro', '2016-01-28'),
(22, 10, 'Iwisa Pap 5kg', 15, 20, 'Makro', '2016-01-28'),
(23, 11, 'Milk 1l', 25, 7, 'Makro', '2016-01-28'),
(24, 15, 'Top Class Soy Mince', 10, 8, 'Makro', '2016-01-28'),
(25, 13, 'Shampoo 1 litre', 1, 20, 'HomeMade', '2016-02-02'),
(26, 14, 'Soap Bar', 3, 3, 'HomeMade', '2016-02-02'),
(27, 2, 'Bananas - loose', 12, 1, 'Epping Market', '2016-02-03'),
(28, 1, 'Apples - loose', 100, 1, 'Epping Market', '2016-02-03'),
(29, 12, 'Mixed Sweets 5s', 240, 3, 'Epping Market', '2016-02-03'),
(30, 13, 'Shampoo 1 litre', 2, 20, 'HomeMade', '2016-02-04'),
(31, 14, 'Soap Bar', 5, 3, 'HomeMade', '2016-02-04'),
(32, 4, 'Bread', 4, 11, 'Joe Spaza Shop', '2016-02-04'),
(33, 3, 'Imasi', 4, 24, 'Joe Spaza Shop', '2016-02-04'),
(34, 2, 'Bananas - loose', 8, 1, 'Epping Market', '2016-02-06'),
(35, 1, 'Apples - loose', 100, 1, 'Epping Market', '2016-02-06'),
(36, 12, 'Mixed Sweets 5s', 150, 3, 'Epping Market', '2016-02-06'),
(37, 14, 'Soap Bar', 5, 3, 'HomeMade', '2016-02-06'),
(38, 4, 'Bread', 30, 9, 'Makro', '2016-02-06'),
(39, 5, 'Chakalaka Can', 15, 7, 'Makro', '2016-02-06'),
(40, 6, 'Coke 500ml', 36, 3, 'Makro', '2016-02-06'),
(41, 7, 'Cream Soda 500ml', 18, 4, 'Makro', '2016-02-06'),
(42, 8, 'Fanta 500ml', 24, 4, 'Makro', '2016-02-06'),
(43, 9, 'Gold Dish Vegetable Curry Can', 15, 5, 'Makro', '2016-02-06'),
(44, 3, 'Imasi', 25, 17, 'Makro', '2016-02-06'),
(45, 10, 'Iwisa Pap 5kg', 5, 20, 'Makro', '2016-02-06'),
(46, 11, 'Milk 1l', 10, 7, 'Makro', '2016-02-06'),
(47, 15, 'Top Class Soy Mince', 10, 8, 'Makro', '2016-02-06'),
(48, 0, 'ose (plastic)', 20, 10, 'ChinaTown', '2016-02-09'),
(49, 11, 'Milk 1l', 3, 9, 'Joe Spaza Shop', '2016-02-09'),
(50, 2, 'Bananas - loose', 4, 1, 'Epping Market', '2016-02-10'),
(51, 1, 'Apples - loose', 20, 1, 'Epping Market', '2016-02-10'),
(52, 12, 'Mixed Sweets 5s', 150, 3, 'Epping Market', '2016-02-10'),
(53, 4, 'Bread', 10, 9, 'Makro', '2016-02-10'),
(54, 5, 'Chakalaka Can', 15, 7, 'Makro', '2016-02-10'),
(55, 6, 'Coke 500ml', 18, 3, 'Makro', '2016-02-10'),
(56, 9, 'Gold Dish Vegetable Curry Can', 5, 5, 'Makro', '2016-02-10'),
(57, 16, 'Heart Chocolates', 20, 25, 'Makro', '2016-02-10'),
(58, 3, 'Imasi', 10, 17, 'Makro', '2016-02-10'),
(59, 10, 'Iwisa Pap 5kg', 5, 20, 'Makro', '2016-02-10'),
(60, 11, 'Milk 1l', 10, 7, 'Makro', '2016-02-10'),
(61, 15, 'Top Class Soy Mince', 15, 8, 'Makro', '2016-02-10'),
(62, 13, 'Shampoo 1 litre', 2, 20, 'HomeMade', '2016-02-11'),
(63, 0, 'Valentine Cards', 20, 2, 'HomeMade', '2016-02-11'),
(64, 11, 'Milk 1l', 3, 9, 'Joe Spaza Shop', '2016-02-12'),
(65, 2, 'Bananas - loose', 4, 1, 'Epping Market', '2016-02-13'),
(66, 12, 'Mixed Sweets 5s', 50, 3, 'Epping Market', '2016-02-13'),
(67, 13, 'Shampoo 1 litre', 3, 20, 'HomeMade', '2016-02-13'),
(68, 14, 'Soap Bar', 5, 3, 'HomeMade', '2016-02-13'),
(69, 9, 'Gold Dish Vegetable Curry Can', 5, 8, 'Joe Spaza Shop', '2016-02-13'),
(70, 4, 'Bread', 5, 9, 'Makro', '2016-02-13'),
(71, 6, 'Coke 500ml', 12, 3, 'Makro', '2016-02-13'),
(72, 8, 'Fanta 500ml', 12, 4, 'Makro', '2016-02-13'),
(73, 3, 'Imasi', 20, 17, 'Makro', '2016-02-13'),
(74, 11, 'Milk 1l', 15, 7, 'Makro', '2016-02-13'),
(75, 15, 'Top Class Soy Mince', 5, 8, 'Makro', '2016-02-13'),
(76, 13, 'Shampoo 1 litre', 1, 20, 'HomeMade', '2016-02-14'),
(77, 9, 'Gold Dish Vegetable Curry Can', 2, 8, 'Joe Spaza Shop', '2016-02-14'),
(78, 5, 'Chakalaka Can', 2, 8, 'Joe Spaza Shop', '2016-02-16'),
(79, 7, 'Cream Soda 500ml', 2, 7, 'Joe Spaza Shop', '2016-02-16'),
(80, 8, 'Fanta 500ml', 1, 6, 'Joe Spaza Shop', '2016-02-16'),
(81, 9, 'Gold Dish Vegetable Curry Can', 2, 8, 'Joe Spaza Shop', '2016-02-16'),
(82, 10, 'Iwisa Pap 5kg', 1, 30, 'Joe Spaza Shop', '2016-02-16'),
(83, 11, 'Milk 1l', 6, 9, 'Joe Spaza Shop', '2016-02-16'),
(84, 1, 'Apples - loose', 60, 1, 'Epping Market', '2016-02-17'),
(85, 12, 'Mixed Sweets 5s', 12, 3, 'Epping Market', '2016-02-17'),
(86, 4, 'Bread', 15, 9, 'Makro', '2016-02-17'),
(87, 5, 'Chakalaka Can', 10, 7, 'Makro', '2016-02-17'),
(88, 6, 'Coke 500ml', 24, 3, 'Makro', '2016-02-17'),
(89, 7, 'Cream Soda 500ml', 12, 4, 'Makro', '2016-02-17'),
(90, 8, 'Fanta 500ml', 12, 4, 'Makro', '2016-02-17'),
(91, 9, 'Gold Dish Vegetable Curry Can', 10, 5, 'Makro', '2016-02-17'),
(92, 3, 'Imasi', 15, 17, 'Makro', '2016-02-17'),
(93, 10, 'Iwisa Pap 5kg', 5, 20, 'Makro', '2016-02-17'),
(94, 11, 'Milk 1l', 15, 7, 'Makro', '2016-02-17'),
(95, 15, 'Top Class Soy Mince', 5, 8, 'Makro', '2016-02-17'),
(96, 13, 'Shampoo 1 litre', 1, 20, 'HomeMade', '2016-02-18'),
(97, 14, 'Soap Bar', 5, 3, 'HomeMade', '2016-02-18'),
(98, 13, 'Shampoo 1 litre', 2, 20, 'HomeMade', '2016-02-19'),
(99, 11, 'Milk 1l', 1, 9, 'Joe Spaza Shop', '2016-02-19'),
(100, 2, 'Bananas - loose', 20, 1, 'Epping Market', '2016-02-20'),
(101, 1, 'Apples - loose', 90, 1, 'Epping Market', '2016-02-20'),
(102, 12, 'Mixed Sweets 5s', 20, 3, 'Epping Market', '2016-02-20'),
(103, 13, 'Shampoo 1 litre', 2, 20, 'HomeMade', '2016-02-20'),
(104, 14, 'Soap Bar', 3, 3, 'HomeMade', '2016-02-20'),
(105, 4, 'Bread', 10, 9, 'Makro', '2016-02-20'),
(106, 3, 'Imasi', 10, 17, 'Makro', '2016-02-20'),
(107, 10, 'Iwisa Pap 5kg', 5, 20, 'Makro', '2016-02-20'),
(108, 11, 'Milk 1l', 15, 7, 'Makro', '2016-02-20'),
(109, 15, 'Top Class Soy Mince', 10, 8, 'Makro', '2016-02-20'),
(110, 5, 'Chakalaka Can', 3, 9, 'Joe Spaza Shop', '2016-02-23'),
(111, 2, 'Bananas - loose', 10, 1, 'Epping Market', '2016-02-24'),
(112, 1, 'Apples - loose', 90, 1, 'Epping Market', '2016-02-24'),
(113, 12, 'Mixed Sweets 5s', 8, 3, 'Epping Market', '2016-02-24'),
(114, 4, 'Bread', 15, 9, 'Makro', '2016-02-24'),
(115, 5, 'Chakalaka Can', 10, 7, 'Makro', '2016-02-24'),
(116, 6, 'Coke 500ml', 18, 3, 'Makro', '2016-02-24'),
(117, 7, 'Cream Soda 500ml', 6, 4, 'Makro', '2016-02-24'),
(118, 8, 'Fanta 500ml', 6, 4, 'Makro', '2016-02-24'),
(119, 9, 'Gold Dish Vegetable Curry Can', 10, 5, 'Makro', '2016-02-24'),
(120, 3, 'Imasi', 15, 17, 'Makro', '2016-02-24'),
(121, 11, 'Milk 1l', 20, 7, 'Makro', '2016-02-24'),
(122, 15, 'Top Class Soy Mince', 15, 8, 'Makro', '2016-02-24'),
(123, 14, 'Soap Bar', 5, 3, 'HomeMade', '2016-02-25'),
(124, 13, 'Shampoo 1 litre', 2, 20, 'HomeMade', '2016-02-26'),
(125, 14, 'Soap Bar', 5, 3, 'HomeMade', '2016-02-26'),
(126, 4, 'Bread', 1, 11, 'Joe Spaza Shop', '2016-02-26'),
(127, 8, 'Fanta 500ml', 2, 6, 'Joe Spaza Shop', '2016-02-26'),
(128, 9, 'Gold Dish Vegetable Curry Can', 1, 8, 'Joe Spaza Shop', '2016-02-26'),
(129, 10, 'Iwisa Pap 5kg', 1, 30, 'Joe Spaza Shop', '2016-02-26'),
(130, 2, 'Bananas - loose', 10, 1, 'Epping Market', '2016-02-27'),
(131, 1, 'Apples - loose', 60, 1, 'Epping Market', '2016-02-27'),
(132, 13, 'Shampoo 1 litre', 5, 20, 'HomeMade', '2016-02-27'),
(133, 14, 'Soap Bar', 5, 3, 'HomeMade', '2016-02-27'),
(134, 4, 'Bread', 20, 9, 'Makro', '2016-02-27'),
(135, 5, 'Chakalaka Can', 15, 7, 'Makro', '2016-02-27'),
(136, 6, 'Coke 500ml', 24, 3, 'Makro', '2016-02-27'),
(137, 7, 'Cream Soda 500ml', 12, 4, 'Makro', '2016-02-27'),
(138, 8, 'Fanta 500ml', 12, 4, 'Makro', '2016-02-27'),
(139, 9, 'Gold Dish Vegetable Curry Can', 15, 5, 'Makro', '2016-02-27'),
(140, 3, 'Imasi', 15, 17, 'Makro', '2016-02-27'),
(141, 10, 'Iwisa Pap 5kg', 10, 20, 'Makro', '2016-02-27'),
(142, 11, 'Milk 1l', 20, 7, 'Makro', '2016-02-27'),
(143, 15, 'Top Class Soy Mince', 15, 8, 'Makro', '2016-02-27'),
(144, 13, 'Shampoo 1 litre', 2, 20, 'HomeMade', '2016-02-28'),
(145, 14, 'Soap Bar', 3, 3, 'HomeMade', '2016-02-28'),
(146, 5, 'Chakalaka Can', 3, 8, 'Joe Spaza Shop', '2016-02-28'),
(147, 9, 'Gold Dish Vegetable Curry Can', 2, 8, 'Joe Spaza Shop', '2016-02-28'),
(148, 15, 'Top Class Soy Mince', 5, 11, 'Joe Spaza Shop', '2016-02-28'),
(149, 13, 'Shampoo 1 litre', 2, 20, 'HomeMade', '2016-03-01'),
(150, 14, 'Soap Bar', 5, 3, 'HomeMade', '2016-03-01'),
(151, 5, 'Chakalaka Can', 3, 8, 'Joe Spaza Shop', '2016-03-01'),
(152, 9, 'Gold Dish Vegetable Curry Can', 2, 8, 'Joe Spaza Shop', '2016-03-01'),
(153, 15, 'Top Class Soy Mince', 3, 11, 'Joe Spaza Shop', '2016-03-01'),
(161, 5, '', 3, 7, '', '2016-01-23');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE IF NOT EXISTS `sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `sold` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=445 ;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `date`, `product_id`, `sold`, `price`) VALUES
(1, '2016-02-01', 3, 1, 25.00),
(2, '2016-02-01', 4, 2, 12.00),
(3, '2016-02-01', 5, 3, 10.00),
(4, '2016-02-01', 9, 2, 9.00),
(5, '2016-02-01', 8, 3, 6.50),
(6, '2016-02-01', 6, 2, 6.50),
(7, '2016-02-01', 7, 2, 7.50),
(8, '2016-02-01', 10, 0, 30.00),
(9, '2016-02-01', 15, 2, 12.00),
(10, '2016-02-01', 13, 1, 30.00),
(11, '2016-02-01', 14, 0, 6.00),
(12, '2016-02-01', 2, 3, 2.00),
(13, '2016-02-01', 1, 5, 2.00),
(14, '2016-02-01', 12, 9, 3.00),
(15, '2016-02-02', 11, 4, 10.00),
(16, '2016-02-02', 3, 4, 25.00),
(17, '2016-02-02', 4, 5, 12.00),
(18, '2016-02-02', 5, 4, 10.00),
(19, '2016-02-02', 9, 5, 9.00),
(20, '2016-02-02', 8, 5, 6.50),
(21, '2016-02-02', 6, 8, 6.50),
(22, '2016-02-02', 7, 4, 7.50),
(23, '2016-02-02', 10, 5, 30.00),
(24, '2016-02-02', 15, 3, 12.00),
(25, '2016-02-02', 13, 0, 30.00),
(26, '2016-02-02', 14, 2, 6.00),
(27, '2016-02-02', 2, 0, 2.00),
(28, '2016-02-02', 1, 0, 2.00),
(29, '2016-02-02', 12, 0, 3.00),
(30, '2016-02-03', 11, 7, 10.00),
(31, '2016-02-03', 3, 4, 25.00),
(32, '2016-02-03', 4, 7, 12.00),
(33, '2016-02-03', 5, 4, 10.00),
(34, '2016-02-03', 9, 2, 9.00),
(35, '2016-02-03', 8, 5, 6.50),
(36, '2016-02-03', 6, 8, 6.50),
(37, '2016-02-03', 7, 3, 7.50),
(38, '2016-02-03', 10, 3, 30.00),
(39, '2016-02-03', 15, 3, 12.00),
(40, '2016-02-03', 13, 0, 30.00),
(41, '2016-02-03', 14, 2, 6.00),
(42, '2016-02-03', 2, 10, 2.00),
(43, '2016-02-03', 1, 8, 2.00),
(44, '2016-02-03', 12, 15, 2.00),
(45, '2016-02-04', 11, 5, 10.00),
(46, '2016-02-04', 3, 8, 25.00),
(47, '2016-02-04', 4, 8, 12.00),
(48, '2016-02-04', 5, 2, 10.00),
(49, '2016-02-04', 9, 0, 9.00),
(50, '2016-02-04', 8, 7, 6.50),
(51, '2016-02-04', 6, 12, 6.50),
(52, '2016-02-04', 7, 2, 7.50),
(53, '2016-02-04', 10, 1, 30.00),
(54, '2016-02-04', 15, 4, 12.00),
(55, '2016-02-04', 13, 1, 30.00),
(56, '2016-02-04', 14, 3, 6.00),
(57, '2016-02-04', 2, 16, 2.00),
(58, '2016-02-04', 1, 8, 2.00),
(59, '2016-02-04', 12, 12, 2.00),
(60, '2016-02-05', 11, 10, 10.00),
(61, '2016-02-05', 3, 3, 25.00),
(62, '2016-02-05', 4, 12, 12.00),
(63, '2016-02-05', 5, 3, 10.00),
(64, '2016-02-05', 9, 6, 9.00),
(65, '2016-02-05', 8, 3, 6.50),
(66, '2016-02-05', 6, 9, 6.50),
(67, '2016-02-05', 7, 8, 7.50),
(68, '2016-02-05', 10, 2, 30.00),
(69, '2016-02-05', 15, 1, 12.00),
(70, '2016-02-05', 13, 0, 30.00),
(71, '2016-02-05', 14, 1, 6.00),
(72, '2016-02-05', 2, 8, 2.00),
(73, '2016-02-05', 1, 12, 2.00),
(74, '2016-02-05', 12, 5, 3.00),
(75, '2016-02-06', 11, 6, 10.00),
(76, '2016-02-06', 3, 4, 25.00),
(77, '2016-02-06', 4, 7, 12.00),
(78, '2016-02-06', 5, 5, 10.00),
(79, '2016-02-06', 9, 2, 9.00),
(80, '2016-02-06', 8, 7, 6.50),
(81, '2016-02-06', 6, 8, 6.50),
(82, '2016-02-06', 7, 3, 7.50),
(83, '2016-02-06', 10, 6, 30.00),
(84, '2016-02-06', 15, 8, 12.00),
(85, '2016-02-06', 13, 1, 30.00),
(86, '2016-02-06', 14, 3, 6.00),
(87, '2016-02-06', 2, 2, 2.00),
(88, '2016-02-06', 1, 0, 2.00),
(89, '2016-02-06', 12, 5, 3.00),
(90, '2016-02-07', 11, 4, 10.00),
(91, '2016-02-07', 3, 6, 25.00),
(92, '2016-02-07', 4, 4, 12.00),
(93, '2016-02-07', 5, 2, 10.00),
(94, '2016-02-07', 9, 0, 9.00),
(95, '2016-02-07', 8, 3, 6.50),
(96, '2016-02-07', 6, 7, 6.50),
(97, '2016-02-07', 7, 0, 7.50),
(98, '2016-02-07', 10, 0, 30.00),
(99, '2016-02-07', 15, 1, 12.00),
(100, '2016-02-07', 13, 0, 30.00),
(101, '2016-02-07', 14, 1, 6.00),
(102, '2016-02-07', 2, 8, 2.00),
(103, '2016-02-07', 1, 3, 2.00),
(104, '2016-02-07', 12, 3, 3.00),
(105, '2016-02-08', 3, 2, 25.00),
(106, '2016-02-08', 4, 2, 12.00),
(107, '2016-02-08', 5, 1, 10.00),
(108, '2016-02-08', 9, 0, 9.00),
(109, '2016-02-08', 8, 4, 6.50),
(110, '2016-02-08', 6, 4, 6.50),
(111, '2016-02-08', 7, 1, 7.50),
(112, '2016-02-08', 10, 1, 30.00),
(113, '2016-02-08', 15, 2, 12.00),
(114, '2016-02-08', 13, 0, 30.00),
(115, '2016-02-08', 14, 1, 6.00),
(116, '2016-02-08', 2, 5, 2.00),
(117, '2016-02-08', 1, 2, 2.00),
(118, '2016-02-08', 12, 9, 3.00),
(119, '2016-02-09', 11, 3, 10.00),
(120, '2016-02-09', 3, 6, 25.00),
(121, '2016-02-09', 4, 7, 12.00),
(122, '2016-02-09', 5, 5, 10.00),
(123, '2016-02-09', 9, 6, 9.00),
(124, '2016-02-09', 8, 3, 6.50),
(125, '2016-02-09', 6, 8, 6.50),
(126, '2016-02-09', 7, 5, 7.50),
(127, '2016-02-09', 10, 2, 30.00),
(128, '2016-02-09', 15, 1, 12.00),
(129, '2016-02-09', 13, 0, 30.00),
(130, '2016-02-09', 14, 0, 6.00),
(131, '2016-02-09', 2, 5, 2.00),
(132, '2016-02-09', 1, 0, 2.00),
(133, '2016-02-09', 12, 3, 3.00),
(134, '2016-02-10', 11, 5, 10.00),
(135, '2016-02-10', 3, 4, 25.00),
(136, '2016-02-10', 4, 2, 12.00),
(137, '2016-02-10', 5, 0, 10.00),
(138, '2016-02-10', 9, 0, 9.00),
(139, '2016-02-10', 8, 1, 6.50),
(140, '2016-02-10', 6, 3, 6.50),
(141, '2016-02-10', 7, 2, 7.50),
(142, '2016-02-10', 10, 1, 30.00),
(143, '2016-02-10', 15, 3, 12.00),
(144, '2016-02-10', 13, 1, 30.00),
(145, '2016-02-10', 14, 0, 6.00),
(146, '2016-02-10', 2, 3, 2.00),
(147, '2016-02-10', 1, 2, 2.00),
(148, '2016-02-10', 12, 7, 2.00),
(149, '2016-02-10', 16, 3, 35.00),
(150, '2016-02-10', 17, 1, 15.00),
(151, '2016-02-11', 11, 5, 10.00),
(152, '2016-02-11', 3, 4, 25.00),
(153, '2016-02-11', 4, 3, 12.00),
(154, '2016-02-11', 5, 2, 10.00),
(155, '2016-02-11', 9, 1, 9.00),
(156, '2016-02-11', 8, 2, 6.50),
(157, '2016-02-11', 6, 3, 6.50),
(158, '2016-02-11', 7, 1, 7.50),
(159, '2016-02-11', 10, 0, 30.00),
(160, '2016-02-11', 15, 2, 12.00),
(161, '2016-02-11', 13, 1, 30.00),
(162, '2016-02-11', 14, 0, 6.00),
(163, '2016-02-11', 2, 4, 2.00),
(164, '2016-02-11', 1, 3, 2.00),
(165, '2016-02-11', 12, 8, 2.00),
(166, '2016-02-11', 16, 5, 35.00),
(167, '2016-02-11', 17, 3, 15.00),
(168, '2016-02-12', 11, 3, 10.00),
(169, '2016-02-12', 3, 9, 25.00),
(170, '2016-02-12', 4, 2, 12.00),
(171, '2016-02-12', 5, 3, 10.00),
(172, '2016-02-12', 9, 1, 9.00),
(173, '2016-02-12', 8, 0, 6.50),
(174, '2016-02-12', 6, 2, 6.50),
(175, '2016-02-12', 7, 1, 7.50),
(176, '2016-02-12', 10, 0, 30.00),
(177, '2016-02-12', 15, 2, 12.00),
(178, '2016-02-12', 13, 0, 30.00),
(179, '2016-02-12', 14, 2, 6.00),
(180, '2016-02-12', 2, 2, 2.00),
(181, '2016-02-12', 1, 3, 2.00),
(182, '2016-02-12', 12, 3, 3.00),
(183, '2016-02-12', 16, 2, 35.00),
(184, '2016-02-12', 18, 6, 4.00),
(185, '2016-02-12', 17, 2, 15.00),
(186, '2016-02-13', 11, 6, 10.00),
(187, '2016-02-13', 3, 6, 25.00),
(188, '2016-02-13', 4, 5, 12.00),
(189, '2016-02-13', 5, 7, 10.00),
(190, '2016-02-13', 9, 15, 9.00),
(191, '2016-02-13', 8, 6, 6.50),
(192, '2016-02-13', 6, 8, 6.50),
(193, '2016-02-13', 7, 4, 7.50),
(194, '2016-02-13', 10, 3, 30.00),
(195, '2016-02-13', 15, 4, 12.00),
(196, '2016-02-13', 13, 4, 30.00),
(197, '2016-02-13', 14, 2, 6.00),
(198, '2016-02-13', 2, 4, 2.00),
(199, '2016-02-13', 1, 2, 2.00),
(200, '2016-02-13', 12, 6, 3.00),
(201, '2016-02-13', 16, 10, 35.00),
(202, '2016-02-13', 18, 5, 4.00),
(203, '2016-02-13', 17, 7, 15.00),
(204, '2016-02-14', 11, 6, 10.00),
(205, '2016-02-14', 3, 5, 25.00),
(206, '2016-02-14', 4, 7, 12.00),
(207, '2016-02-14', 5, 3, 10.00),
(208, '2016-02-14', 9, 4, 9.00),
(209, '2016-02-14', 8, 7, 6.50),
(210, '2016-02-14', 6, 14, 6.50),
(211, '2016-02-14', 7, 8, 7.50),
(212, '2016-02-14', 10, 3, 30.00),
(213, '2016-02-14', 15, 7, 12.00),
(214, '2016-02-14', 13, 0, 30.00),
(215, '2016-02-14', 14, 0, 6.00),
(216, '2016-02-14', 2, 5, 2.00),
(217, '2016-02-14', 1, 9, 2.00),
(218, '2016-02-14', 12, 18, 3.00),
(219, '2016-02-14', 16, 0, 35.00),
(220, '2016-02-14', 18, 3, 4.00),
(221, '2016-02-14', 17, 1, 15.00),
(222, '2016-02-15', 3, 2, 25.00),
(223, '2016-02-15', 4, 1, 12.00),
(224, '2016-02-15', 5, 3, 10.00),
(225, '2016-02-15', 9, 0, 9.00),
(226, '2016-02-15', 8, 5, 6.50),
(227, '2016-02-15', 6, 4, 6.50),
(228, '2016-02-15', 7, 2, 7.50),
(229, '2016-02-15', 10, 0, 30.00),
(230, '2016-02-15', 15, 1, 12.00),
(231, '2016-02-15', 13, 0, 30.00),
(232, '2016-02-15', 14, 1, 6.00),
(233, '2016-02-15', 2, 1, 2.00),
(234, '2016-02-15', 1, 1, 2.00),
(235, '2016-02-15', 12, 3, 3.00),
(236, '2016-02-16', 11, 7, 10.00),
(237, '2016-02-16', 3, 6, 25.00),
(238, '2016-02-16', 4, 4, 12.00),
(239, '2016-02-16', 5, 3, 10.00),
(240, '2016-02-16', 9, 2, 9.00),
(241, '2016-02-16', 8, 2, 6.50),
(242, '2016-02-16', 6, 1, 6.50),
(243, '2016-02-16', 7, 2, 7.50),
(244, '2016-02-16', 10, 2, 30.00),
(245, '2016-02-16', 15, 1, 12.00),
(246, '2016-02-16', 13, 0, 30.00),
(247, '2016-02-16', 14, 2, 6.00),
(248, '2016-02-16', 2, 2, 2.00),
(249, '2016-02-16', 1, 3, 2.00),
(250, '2016-02-16', 12, 5, 3.00),
(251, '2016-02-17', 11, 8, 10.00),
(252, '2016-02-17', 3, 6, 25.00),
(253, '2016-02-17', 4, 3, 12.00),
(254, '2016-02-17', 5, 0, 10.00),
(255, '2016-02-17', 9, 0, 9.00),
(256, '2016-02-17', 8, 0, 6.50),
(257, '2016-02-17', 6, 2, 6.50),
(258, '2016-02-17', 7, 0, 7.50),
(259, '2016-02-17', 10, 1, 30.00),
(260, '2016-02-17', 15, 2, 12.00),
(261, '2016-02-17', 13, 0, 30.00),
(262, '2016-02-17', 14, 1, 6.00),
(263, '2016-02-17', 2, 2, 2.00),
(264, '2016-02-17', 1, 6, 2.00),
(265, '2016-02-17', 12, 5, 2.00),
(266, '2016-02-18', 11, 3, 10.00),
(267, '2016-02-18', 3, 5, 25.00),
(268, '2016-02-18', 4, 5, 12.00),
(269, '2016-02-18', 5, 1, 10.00),
(270, '2016-02-18', 9, 0, 9.00),
(271, '2016-02-18', 8, 0, 6.50),
(272, '2016-02-18', 6, 3, 6.50),
(273, '2016-02-18', 7, 2, 7.50),
(274, '2016-02-18', 10, 1, 30.00),
(275, '2016-02-18', 15, 1, 12.00),
(276, '2016-02-18', 13, 1, 30.00),
(277, '2016-02-18', 14, 1, 6.00),
(278, '2016-02-18', 2, 1, 2.00),
(279, '2016-02-18', 1, 3, 2.00),
(280, '2016-02-18', 12, 2, 2.00),
(281, '2016-02-19', 11, 5, 10.00),
(282, '2016-02-19', 3, 3, 25.00),
(283, '2016-02-19', 4, 5, 12.00),
(284, '2016-02-19', 5, 2, 10.00),
(285, '2016-02-19', 9, 1, 9.00),
(286, '2016-02-19', 8, 1, 6.50),
(287, '2016-02-19', 6, 1, 6.50),
(288, '2016-02-19', 7, 0, 7.50),
(289, '2016-02-19', 10, 0, 30.00),
(290, '2016-02-19', 15, 2, 12.00),
(291, '2016-02-19', 13, 2, 30.00),
(292, '2016-02-19', 14, 0, 6.00),
(293, '2016-02-19', 2, 3, 2.00),
(294, '2016-02-19', 1, 5, 2.00),
(295, '2016-02-19', 12, 4, 3.00),
(296, '2016-02-20', 11, 4, 10.00),
(297, '2016-02-20', 3, 2, 25.00),
(298, '2016-02-20', 4, 3, 12.00),
(299, '2016-02-20', 5, 5, 10.00),
(300, '2016-02-20', 9, 3, 9.00),
(301, '2016-02-20', 8, 3, 6.50),
(302, '2016-02-20', 6, 5, 6.50),
(303, '2016-02-20', 7, 6, 7.50),
(304, '2016-02-20', 10, 0, 30.00),
(305, '2016-02-20', 15, 3, 12.00),
(306, '2016-02-20', 13, 1, 30.00),
(307, '2016-02-20', 14, 3, 6.00),
(308, '2016-02-20', 2, 6, 2.00),
(309, '2016-02-20', 1, 4, 2.00),
(310, '2016-02-20', 12, 8, 3.00),
(311, '2016-02-21', 11, 1, 10.00),
(312, '2016-02-21', 3, 1, 25.00),
(313, '2016-02-21', 4, 3, 12.00),
(314, '2016-02-21', 5, 3, 10.00),
(315, '2016-02-21', 9, 2, 9.00),
(316, '2016-02-21', 8, 3, 6.50),
(317, '2016-02-21', 6, 2, 6.50),
(318, '2016-02-21', 7, 0, 7.50),
(319, '2016-02-21', 10, 0, 30.00),
(320, '2016-02-21', 15, 2, 12.00),
(321, '2016-02-21', 13, 0, 30.00),
(322, '2016-02-21', 14, 0, 6.00),
(323, '2016-02-21', 2, 2, 2.00),
(324, '2016-02-21', 1, 3, 2.00),
(325, '2016-02-21', 12, 2, 3.00),
(326, '2016-02-22', 3, 2, 25.00),
(327, '2016-02-22', 4, 3, 12.00),
(328, '2016-02-22', 5, 0, 10.00),
(329, '2016-02-22', 9, 1, 9.00),
(330, '2016-02-22', 8, 2, 6.50),
(331, '2016-02-22', 6, 0, 6.50),
(332, '2016-02-22', 7, 0, 7.50),
(333, '2016-02-22', 10, 0, 30.00),
(334, '2016-02-22', 15, 0, 12.00),
(335, '2016-02-22', 13, 0, 30.00),
(336, '2016-02-22', 14, 1, 6.00),
(337, '2016-02-22', 2, 0, 2.00),
(338, '2016-02-22', 1, 1, 2.00),
(339, '2016-02-22', 12, 3, 3.00),
(340, '2016-02-23', 11, 8, 10.00),
(341, '2016-02-23', 3, 6, 25.00),
(342, '2016-02-23', 4, 2, 12.00),
(343, '2016-02-23', 5, 2, 10.00),
(344, '2016-02-23', 9, 1, 9.00),
(345, '2016-02-23', 8, 1, 6.50),
(346, '2016-02-23', 6, 3, 6.50),
(347, '2016-02-23', 7, 0, 7.50),
(348, '2016-02-23', 10, 2, 30.00),
(349, '2016-02-23', 15, 1, 12.00),
(350, '2016-02-23', 13, 0, 30.00),
(351, '2016-02-23', 14, 0, 6.00),
(352, '2016-02-23', 2, 2, 2.00),
(353, '2016-02-23', 1, 1, 2.00),
(354, '2016-02-23', 12, 3, 3.00),
(355, '2016-02-24', 11, 4, 10.00),
(356, '2016-02-24', 3, 2, 25.00),
(357, '2016-02-24', 4, 6, 12.00),
(358, '2016-02-24', 5, 1, 10.00),
(359, '2016-02-24', 9, 2, 9.00),
(360, '2016-02-24', 8, 1, 6.50),
(361, '2016-02-24', 6, 2, 6.50),
(362, '2016-02-24', 7, 1, 7.50),
(363, '2016-02-24', 10, 1, 30.00),
(364, '2016-02-24', 15, 2, 12.00),
(365, '2016-02-24', 13, 0, 30.00),
(366, '2016-02-24', 14, 1, 6.00),
(367, '2016-02-24', 2, 5, 2.00),
(368, '2016-02-24', 1, 3, 2.00),
(369, '2016-02-24', 12, 7, 2.00),
(370, '2016-02-25', 11, 8, 10.00),
(371, '2016-02-25', 3, 6, 25.00),
(372, '2016-02-25', 4, 7, 12.00),
(373, '2016-02-25', 5, 5, 10.00),
(374, '2016-02-25', 9, 4, 9.00),
(375, '2016-02-25', 8, 6, 6.50),
(376, '2016-02-25', 6, 8, 6.50),
(377, '2016-02-25', 7, 5, 7.50),
(378, '2016-02-25', 10, 3, 30.00),
(379, '2016-02-25', 15, 7, 12.00),
(380, '2016-02-25', 13, 1, 30.00),
(381, '2016-02-25', 14, 4, 6.00),
(382, '2016-02-25', 2, 2, 2.00),
(383, '2016-02-25', 1, 8, 2.00),
(384, '2016-02-25', 12, 5, 2.00),
(385, '2016-02-26', 11, 8, 10.00),
(386, '2016-02-26', 3, 8, 25.00),
(387, '2016-02-26', 4, 5, 12.00),
(388, '2016-02-26', 5, 3, 10.00),
(389, '2016-02-26', 9, 7, 9.00),
(390, '2016-02-26', 8, 3, 6.50),
(391, '2016-02-26', 6, 7, 6.50),
(392, '2016-02-26', 7, 4, 7.50),
(393, '2016-02-26', 10, 3, 30.00),
(394, '2016-02-26', 15, 8, 12.00),
(395, '2016-02-26', 13, 0, 30.00),
(396, '2016-02-26', 14, 3, 6.00),
(397, '2016-02-26', 2, 2, 2.00),
(398, '2016-02-26', 1, 3, 2.00),
(399, '2016-02-26', 12, 1, 3.00),
(400, '2016-02-27', 11, 8, 10.00),
(401, '2016-02-27', 3, 5, 25.00),
(402, '2016-02-27', 4, 3, 12.00),
(403, '2016-02-27', 5, 12, 10.00),
(404, '2016-02-27', 9, 9, 9.00),
(405, '2016-02-27', 8, 6, 6.50),
(406, '2016-02-27', 6, 18, 6.50),
(407, '2016-02-27', 7, 3, 7.50),
(408, '2016-02-27', 10, 4, 30.00),
(409, '2016-02-27', 15, 12, 12.00),
(410, '2016-02-27', 13, 5, 30.00),
(411, '2016-02-27', 14, 3, 6.00),
(412, '2016-02-27', 2, 1, 2.00),
(413, '2016-02-27', 1, 3, 2.00),
(414, '2016-02-27', 12, 1, 3.00),
(415, '2016-02-28', 11, 3, 10.00),
(416, '2016-02-28', 3, 2, 25.00),
(417, '2016-02-28', 4, 4, 12.00),
(418, '2016-02-28', 5, 5, 10.00),
(419, '2016-02-28', 9, 6, 9.00),
(420, '2016-02-28', 8, 3, 6.50),
(421, '2016-02-28', 6, 4, 6.50),
(422, '2016-02-28', 7, 6, 7.50),
(423, '2016-02-28', 10, 2, 30.00),
(424, '2016-02-28', 15, 9, 12.00),
(425, '2016-02-28', 13, 4, 30.00),
(426, '2016-02-28', 14, 7, 6.00),
(427, '2016-02-28', 2, 6, 2.00),
(428, '2016-02-28', 1, 8, 2.00),
(429, '2016-02-28', 12, 8, 3.00),
(430, '2016-03-01', 11, 4, 10.00),
(431, '2016-03-01', 3, 3, 25.00),
(432, '2016-03-01', 4, 3, 12.00),
(433, '2016-03-01', 5, 5, 10.00),
(434, '2016-03-01', 9, 4, 9.00),
(435, '2016-03-01', 8, 2, 6.50),
(436, '2016-03-01', 6, 3, 6.50),
(437, '2016-03-01', 7, 0, 7.50),
(438, '2016-03-01', 10, 1, 30.00),
(439, '2016-03-01', 15, 4, 12.00),
(440, '2016-03-01', 13, 3, 30.00),
(441, '2016-03-01', 14, 6, 6.00),
(442, '2016-03-01', 2, 4, 2.00),
(443, '2016-03-01', 1, 5, 2.00),
(444, '2016-03-01', 12, 12, 3.00);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(150) NOT NULL,
  `admin` tinyint(1) NOT NULL,
  `locked` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `admin`, `locked`) VALUES
(16, 'Nelisa1', '$2a$10$TPsrpIVMs/homeT4GPs.6.7frk66mQSjFbnH/Te4D9RkhJI3rrMFi', 1, 0),
(19, 'Tyron', '$2a$10$Ouj9tU0js7tm.Rdk.qV0qepUZqaTj7h08TlGF2RIwFKC06oDMgmR6', 0, 0);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
