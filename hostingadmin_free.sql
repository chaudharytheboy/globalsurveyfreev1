-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 04, 2019 at 06:25 AM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostingadmin_free`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `description` longtext DEFAULT NULL,
  `product_price` varchar(100) DEFAULT NULL,
  `regular_price` varchar(100) DEFAULT NULL,
  `shipping` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `review_users` int(11) DEFAULT NULL,
  `reviews` varchar(255) DEFAULT NULL,
  `url_1` varchar(255) DEFAULT NULL,
  `url_2` varchar(255) DEFAULT NULL,
  `ct_dt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `sort_order` int(11) NOT NULL,
  `img_popular` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `description`, `product_price`, `regular_price`, `shipping`, `quantity`, `images`, `review_users`, `reviews`, `url_1`, `url_2`, `ct_dt`, `sort_order`, `img_popular`) VALUES
(1, 'Obtenez votre Samsung S9Â©', 'Exclusif aux participants l\'enqute seulement!', '969.00', '1.00', '0.00', 3, 'images/products_image/samsungS9.png', 413, 'images/4-half-star.png', 'https://cyberblueberry.com/?a=100309&c=102675&s1={affiliate_id}&s2={transaction_id}', '', '2019-05-29 03:59:12', 2, ''),
(2, 'Offre spÃ©ciale un nouvel Samsung Galaxy S10Â©', 'Nouvelle offre!', '869.00', '1.00', '0.00', 3, 'images/products_image/samsung10freefr.png', 614, 'images/5-star.png', 'https://gadstrax.com/?a=37837&c=22931&s1={affiliate_id}&s2={transaction_id}', '', '2019-05-29 03:57:36', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `ct_dt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `ct_dt`) VALUES
(1, 'freeus@crm.com', 'Admin@5', '2019-04-19 05:22:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
