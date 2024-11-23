-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 22, 2024 at 05:19 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bkinventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `checkout_transactions`
--

CREATE TABLE `checkout_transactions` (
  `checkout_transactions_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payment_method` enum('cash','gcash') DEFAULT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `amount_paid` decimal(10,2) DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `total_invested_price` decimal(10,2) DEFAULT NULL,
  `transaction_date` datetime DEFAULT current_timestamp(),
  `change_amount` decimal(10,2) DEFAULT NULL,
  `size` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `checkout_transactions`
--

INSERT INTO `checkout_transactions` (`checkout_transactions_id`, `product_id`, `user_id`, `payment_method`, `product_name`, `quantity`, `amount_paid`, `total_amount`, `total_invested_price`, `transaction_date`, `change_amount`, `size`) VALUES
(207, 10, 1, 'cash', 'Cookies & Cream', 2, 400.00, 360.00, 180.00, '2024-11-17 03:56:41', 40.00, '22oz'),
(208, 11, 1, 'cash', 'Ube Macapuno', 2, 400.00, 360.00, 180.00, '2024-11-17 03:56:41', 40.00, '16oz'),
(209, 5, 1, 'cash', 'Buko Lyche', 1, 100.00, 85.00, 45.00, '2024-11-17 04:41:22', 15.00, '16oz'),
(210, 8, 1, 'cash', 'Vanilla', 2, 200.00, 190.00, 80.00, '2024-11-17 15:10:01', 10.00, '22oz'),
(211, 9, 5, 'cash', 'Ube Creamcheese', 2, 250.00, 220.00, 110.00, '2024-11-17 15:25:03', 30.00, '22oz'),
(212, 9, 1, 'cash', 'Ube Creamcheese', 1, 120.00, 110.00, 55.00, '2024-11-17 23:18:46', 10.00, '22oz'),
(213, 10, 1, 'cash', 'Cookies & Cream', 1, 100.00, 95.00, 45.00, '2024-11-18 01:07:14', 5.00, '22oz'),
(214, 18, 1, 'cash', 'Double Dutch', 1, 100.00, 95.00, 45.00, '2024-11-18 04:57:31', 5.00, '22oz'),
(215, 14, 1, 'cash', 'Buko Oreo', 1, 100.00, 85.00, 40.00, '2024-11-18 13:37:10', 15.00, '16oz'),
(216, 12, 1, 'cash', 'Strawberry', 1, 100.00, 95.00, 45.00, '2024-11-18 14:06:46', 5.00, '22oz'),
(217, 5, 1, 'cash', 'Buko Lyche', 2, 200.00, 170.00, 86.00, '2024-11-18 22:58:37', 30.00, '16oz'),
(218, 11, 10, 'cash', 'Ube Macapuno', 2, 200.00, 170.00, 90.00, '2024-11-19 10:35:55', 30.00, '16oz'),
(219, 5, 1, 'cash', 'Buko Lyche', 3, 300.00, 255.00, 129.00, '2024-11-19 13:22:19', 45.00, '16oz'),
(220, 5, 1, 'cash', 'Buko Lyche', 5, 500.00, 425.00, 215.00, '2024-11-19 13:24:40', 75.00, '16oz'),
(221, 5, 1, 'cash', 'Buko Lyche', 4, 350.00, 340.00, 172.00, '2024-11-19 13:36:52', 10.00, '16oz'),
(222, 5, 1, 'gcash', 'Buko Lyche', 2, 200.00, 170.00, 86.00, '2024-11-20 04:34:26', 30.00, '16oz'),
(223, 16, 1, 'cash', 'Capuccino', 1, 100.00, 95.00, 46.00, '2024-11-20 17:10:34', 5.00, '22oz'),
(224, 5, 1, 'cash', 'Buko Lyche', 1, 90.00, 85.00, 43.00, '2024-11-21 03:53:51', 5.00, '16oz'),
(225, 11, 1, 'cash', 'Ube Macapuno', 1, 100.00, 85.00, 45.00, '2024-11-21 04:27:15', 15.00, '16oz'),
(226, 10, 11, 'cash', 'Cookies & Cream', 4, 400.00, 380.00, 180.00, '2024-11-21 16:03:37', 20.00, '22oz'),
(227, 10, 1, 'cash', 'Cookies & Cream', 2, 200.00, 190.00, 90.00, '2024-11-22 15:05:43', 10.00, '22oz'),
(228, 8, 1, 'cash', 'Vanilla', 3, 475.00, 475.00, 210.00, '2024-11-22 15:36:45', 0.00, '22oz'),
(229, 18, 1, 'cash', 'Double Dutch', 2, 475.00, 475.00, 210.00, '2024-11-22 15:36:45', 0.00, '22oz'),
(230, 6, 1, 'cash', 'Buko Graham', 2, 600.00, 535.00, 233.65, '2024-11-22 15:42:13', 65.00, '22oz'),
(231, 17, 1, 'cash', 'Mango Graham', 3, 600.00, 535.00, 233.65, '2024-11-22 15:42:13', 65.00, '22oz'),
(232, 13, 1, 'cash', 'Buko Pandan', 1, 650.00, 625.00, 269.16, '2024-11-22 15:44:55', 25.00, '22oz'),
(233, 17, 1, 'cash', 'Mango Graham', 2, 650.00, 625.00, 269.16, '2024-11-22 15:44:55', 25.00, '22oz'),
(234, 19, 1, 'cash', 'Choco Hot Fudge', 3, 650.00, 625.00, 269.16, '2024-11-22 15:44:55', 25.00, '22oz'),
(235, 6, 1, 'gcash', 'Buko Graham', 1, 725.00, 725.00, 321.92, '2024-11-22 15:46:48', 0.00, '22oz'),
(236, 12, 1, 'gcash', 'Strawberry', 3, 725.00, 725.00, 321.92, '2024-11-22 15:46:48', 0.00, '22oz'),
(237, 17, 1, 'gcash', 'Mango Graham', 3, 725.00, 725.00, 321.92, '2024-11-22 15:46:48', 0.00, '22oz'),
(238, 8, 1, 'gcash', 'Vanilla', 1, 885.00, 885.00, 367.02, '2024-11-22 15:49:40', 0.00, '22oz'),
(239, 13, 1, 'gcash', 'Buko Pandan', 3, 885.00, 885.00, 367.02, '2024-11-22 15:49:40', 0.00, '22oz'),
(240, 17, 1, 'gcash', 'Mango Graham', 4, 885.00, 885.00, 367.02, '2024-11-22 15:49:40', 0.00, '22oz'),
(241, 6, 1, 'cash', 'Buko Graham', 1, 400.00, 380.00, 183.73, '2024-11-22 15:50:38', 20.00, '22oz'),
(242, 10, 1, 'cash', 'Cookies & Cream', 1, 400.00, 380.00, 183.73, '2024-11-22 15:50:38', 20.00, '22oz'),
(243, 16, 1, 'cash', 'Capuccino', 2, 400.00, 380.00, 183.73, '2024-11-22 15:50:38', 20.00, '22oz');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `product_category` varchar(50) DEFAULT NULL,
  `product_size` varchar(20) DEFAULT NULL,
  `product_selling_price` decimal(10,2) DEFAULT NULL,
  `invested_price` decimal(10,2) DEFAULT NULL,
  `product_stock_quantity` int(11) DEFAULT NULL,
  `product_cups` int(11) DEFAULT NULL,
  `product_status` enum('Available','Not Available') DEFAULT NULL,
  `product_edit_by` int(11) DEFAULT NULL,
  `product_last_edit_by` int(11) DEFAULT NULL,
  `product_last_edited` datetime DEFAULT current_timestamp(),
  `product_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_category`, `product_size`, `product_selling_price`, `invested_price`, `product_stock_quantity`, `product_cups`, `product_status`, `product_edit_by`, `product_last_edit_by`, `product_last_edited`, `product_image`) VALUES
(5, 'Buko Lyche', 'Slushie', '16oz', 85.00, 43.00, 12, 14, 'Available', 1, 1, '2024-11-21 17:47:17', 'uploads/bukolyche.png'),
(6, 'Buko Graham', 'Slushie', '22oz', 95.00, 46.73, 8, 20, 'Available', 5, 1, '2024-11-17 15:16:53', 'uploads/productimg.jpg'),
(8, 'Vanilla', 'Milk Shake', '22oz', 95.00, 40.00, 6, 16, 'Available', 5, 5, '2024-11-17 15:17:26', 'uploads/mangograhamOVERLOAD.png'),
(9, 'Ube Creamcheese', 'Cream Cheese', '22oz', 110.00, 55.00, 9, 12, 'Not Available', 1, 5, '2024-11-19 13:27:24', 'uploads/productimg.jpg'),
(10, 'Cookies & Cream', 'Frappe', '22oz', 95.00, 45.00, 6, 12, 'Available', 5, 1, '2024-11-17 15:24:00', 'uploads/productimg.jpg'),
(11, 'Ube Macapuno', 'Milk Shake', '16oz', 85.00, 45.00, 11, 22, 'Available', 1, 10, '2024-11-19 13:25:54', 'uploads/bukolyche.png'),
(12, 'Strawberry', 'Milk Shake', '22oz', 95.00, 45.00, 11, 26, 'Available', 5, 1, '2024-11-17 15:24:11', 'uploads/strawberry.png'),
(13, 'Buko Pandan', 'Cream Cheese', '22oz', 110.00, 46.70, 93, 93, 'Available', 1, 1, '2024-11-16 12:43:43', 'uploads/bukopandan.png'),
(14, 'Buko Oreo', 'Slushie', '16oz', 85.00, 45.00, 15, 19, 'Not Available', 1, 10, '2024-11-19 12:55:53', 'uploads/productimg.jpg'),
(16, 'Capuccino', 'Frappe', '22oz', 95.00, 46.00, 8, 9, 'Available', 5, 1, '2024-11-17 15:24:22', 'uploads/chocohotfudge.png'),
(17, 'Mango Graham', 'Cream Cheese', '22oz', 115.00, 46.73, 8, 28, 'Available', 5, 1, '2024-11-17 15:24:38', 'uploads/bukolyche.png'),
(18, 'Double Dutch', 'Frappe', '22oz', 95.00, 45.00, 11, 9, 'Available', 10, 1, '2024-11-18 23:07:55', 'uploads/chocohotfudge.png'),
(19, 'Choco Hot Fudge', 'Frappe', '22oz', 95.00, 43.00, 9, 10, 'Available', 1, 10, '2024-11-19 10:11:30', 'uploads/bgimage.png'),
(21, 'Buko Graham', 'Frappe', '16oz', 95.00, 45.00, 20, 20, 'Not Available', 1, 10, '2024-11-19 13:14:31', 'uploads/bukopandan.png');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `checkout_id` int(11) DEFAULT NULL,
  `sales_quantity_sold` int(11) DEFAULT NULL,
  `sales_cups_sold` int(11) DEFAULT NULL,
  `sales_total_amount` decimal(10,2) DEFAULT NULL,
  `sales_total_invested_price` decimal(10,2) DEFAULT NULL,
  `sales_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`sales_id`, `product_id`, `checkout_id`, `sales_quantity_sold`, `sales_cups_sold`, `sales_total_amount`, `sales_total_invested_price`, `sales_date`) VALUES
(48, 10, 207, 2, 2, 190.00, 90.00, '2024-11-17 03:56:41'),
(49, 11, 207, 2, 2, 170.00, 90.00, '2024-11-17 03:56:41'),
(50, 5, 209, 1, 1, 85.00, 45.00, '2024-11-17 04:41:22'),
(51, 8, 210, 2, 2, 190.00, 80.00, '2024-11-17 15:10:01'),
(52, 9, 211, 2, 2, 220.00, 110.00, '2024-11-17 15:25:03'),
(53, 9, 212, 1, 1, 110.00, 55.00, '2024-11-17 23:18:46'),
(54, 10, 213, 1, 1, 95.00, 45.00, '2024-11-18 01:07:14'),
(55, 18, 214, 1, 1, 95.00, 45.00, '2024-11-18 04:57:31'),
(56, 14, 215, 1, 1, 85.00, 40.00, '2024-11-18 13:37:10'),
(57, 12, 216, 1, 1, 95.00, 45.00, '2024-11-18 14:06:46'),
(58, 5, 217, 2, 2, 170.00, 86.00, '2024-11-18 22:58:37'),
(59, 11, 218, 2, 2, 170.00, 90.00, '2024-11-19 10:35:55'),
(60, 5, 219, 3, 3, 255.00, 129.00, '2024-11-19 13:22:19'),
(61, 5, 220, 5, 5, 425.00, 215.00, '2024-11-19 13:24:40'),
(62, 5, 221, 4, 4, 340.00, 172.00, '2024-11-19 13:36:52'),
(63, 5, 222, 2, 2, 170.00, 86.00, '2024-11-20 04:34:26'),
(64, 16, 223, 1, 1, 95.00, 46.00, '2024-11-20 17:10:34'),
(65, 5, 224, 1, 1, 85.00, 43.00, '2024-11-21 03:53:51'),
(66, 11, 225, 1, 1, 85.00, 45.00, '2024-11-21 04:27:15'),
(67, 10, 226, 4, 4, 380.00, 180.00, '2024-11-21 16:03:37'),
(68, 10, 227, 2, 2, 190.00, 90.00, '2024-11-22 15:05:43'),
(69, 8, 228, 3, 3, 285.00, 120.00, '2024-11-22 15:36:45'),
(70, 18, 228, 2, 2, 190.00, 90.00, '2024-11-22 15:36:45'),
(71, 6, 230, 2, 2, 190.00, 93.00, '2024-11-22 15:42:13'),
(72, 17, 230, 3, 3, 345.00, 140.00, '2024-11-22 15:42:13'),
(73, 13, 232, 1, 1, 110.00, 46.00, '2024-11-22 15:44:55'),
(74, 17, 232, 2, 2, 230.00, 93.00, '2024-11-22 15:44:55'),
(75, 19, 232, 3, 3, 285.00, 129.00, '2024-11-22 15:44:55'),
(76, 6, 235, 1, 1, 95.00, 46.00, '2024-11-22 15:46:48'),
(77, 12, 235, 3, 3, 285.00, 135.00, '2024-11-22 15:46:48'),
(78, 17, 235, 3, 3, 345.00, 140.00, '2024-11-22 15:46:48'),
(79, 8, 238, 1, 1, 95.00, 40.00, '2024-11-22 15:49:40'),
(80, 13, 238, 3, 3, 330.00, 140.00, '2024-11-22 15:49:40'),
(81, 17, 238, 4, 4, 460.00, 186.00, '2024-11-22 15:49:40'),
(82, 6, 241, 1, 1, 95.00, 46.00, '2024-11-22 15:50:38'),
(83, 10, 241, 1, 1, 95.00, 45.00, '2024-11-22 15:50:38'),
(84, 16, 241, 2, 2, 190.00, 92.00, '2024-11-22 15:50:38');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `transactions_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `checkout_id` int(11) DEFAULT NULL,
  `avail_product` varchar(255) DEFAULT NULL,
  `quantity_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`transactions_id`, `product_id`, `checkout_id`, `avail_product`, `quantity_count`) VALUES
(38, 10, 207, 'Cookies & Cream', 10),
(39, 11, 207, 'Ube Macapuno', 5),
(40, 5, 209, 'Buko Lyche', 18),
(41, 8, 210, 'Vanilla', 6),
(42, 9, 211, 'Ube Creamcheese', 3),
(43, 18, 214, 'Double Dutch', 3),
(44, 14, 215, 'Buko Oreo', 1),
(45, 12, 216, 'Strawberry', 4),
(46, 16, 223, 'Capuccino', 3),
(47, 6, 230, 'Buko Graham', 4),
(48, 17, 230, 'Mango Graham', 12),
(49, 13, 232, 'Buko Pandan', 4),
(50, 19, 232, 'Choco Hot Fudge', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `users_id` int(11) NOT NULL,
  `user_profile` varchar(255) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `contact_number` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `type` enum('cashier','admin') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`users_id`, `user_profile`, `first_name`, `last_name`, `contact_number`, `email`, `password`, `type`) VALUES
(1, 'uploads/diwata.jfif', 'Example', 'User', '09643692712', 'test_user@example.com', '$2y$10$xloBZuaFJ74uxKeHo7JKU.7fnGRgTxkzWE6WvEbhCglJjy0wlmTnO', 'admin'),
(5, 'uploads/images.jfif', 'Mark Lexter', 'Felicilda', '09317412612', 'mmfelicilda@gmail.com', '$2y$10$msEtTGyLVH7TbA8dKN5bnOswf/OdCjW9s6Gwm2DQ4B6XgkQT2TCDK', 'cashier'),
(9, 'uploads/kalbo.jpg', 'Bk', 'Cashier', '09317412614', 'bkcashier@gmail.com', '$2y$10$AuCFEmRzHHL.U6bGBw5Rauqxxxg1Y740dxqVCsN4IjETk26pFdSB2', 'cashier'),
(10, 'uploads/travis tagalog.webp', 'Travis', 'Scott', '09243712321', 'travis@gmail.com', '$2y$10$c9eJ6d06X4R/dV0.jZgyvug274FZy72mFLanEZ9/KCR3ks4YP0/ga', 'cashier'),
(11, 'uploads/bossing.jfif', 'Bossing', 'Malupiton', '09231345231', 'bossingmalupiton@gmail.com', '$2y$10$so8f1gSUYAA6eh6YlhzD.eiRsjo8me3lSQ87SVadoZV4ODRayksk.', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `user_activity`
--

CREATE TABLE `user_activity` (
  `users_activity_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `login_time` datetime DEFAULT current_timestamp(),
  `logout_time` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_activity`
--

INSERT INTO `user_activity` (`users_activity_id`, `user_id`, `login_time`, `logout_time`) VALUES
(1, 0, '2024-11-11 23:28:02', '2024-11-11 23:33:13'),
(2, 1, '2024-11-11 23:33:40', '2024-11-11 23:34:22'),
(3, 1, '2024-11-12 06:36:20', '2024-11-12 06:37:22'),
(4, 1, '2024-11-12 06:38:20', '2024-11-12 06:47:16'),
(5, 1, '2024-11-12 06:47:27', '2024-11-12 07:18:17'),
(6, 1, '2024-11-12 07:18:28', '2024-11-12 07:42:20'),
(7, 1, '2024-11-13 01:54:58', '2024-11-13 03:08:33'),
(8, 1, '2024-11-13 03:11:10', '2024-11-13 03:12:59'),
(9, 1, '2024-11-13 03:13:26', '2024-11-13 03:15:35'),
(10, 1, '2024-11-13 15:21:29', '2024-11-13 17:41:54'),
(11, 1, '2024-11-13 17:45:25', '2024-11-13 17:50:03'),
(12, 1, '2024-11-13 20:07:55', '2024-11-13 20:49:38'),
(13, 1, '2024-11-13 22:27:43', '2024-11-13 23:38:54'),
(14, 1, '2024-11-14 12:20:09', '2024-11-14 12:20:09'),
(15, 1, '2024-11-14 13:07:43', '2024-11-14 13:09:26'),
(16, 1, '2024-11-14 13:09:47', '2024-11-14 13:10:24'),
(17, 1, '2024-11-14 13:11:23', '2024-11-14 13:20:17'),
(18, 1, '2024-11-14 13:21:02', '2024-11-14 14:10:22'),
(19, 1, '2024-11-14 14:10:28', '2024-11-14 14:19:42'),
(20, 1, '2024-11-14 14:24:09', '2024-11-14 14:27:36'),
(21, 1, '2024-11-14 15:01:28', '2024-11-14 15:11:45'),
(22, 1, '2024-11-14 15:20:54', '2024-11-14 15:27:17'),
(23, 1, '2024-11-14 15:29:30', '2024-11-14 15:46:10'),
(24, 1, '2024-11-14 16:00:55', '2024-11-14 16:04:39'),
(25, 1, '2024-11-14 19:54:19', '2024-11-14 19:55:17'),
(26, 1, '2024-11-15 12:44:56', '2024-11-15 14:54:03'),
(27, 1, '2024-11-15 14:54:08', '2024-11-15 15:07:57'),
(28, 1, '2024-11-15 17:48:41', '2024-11-15 18:33:00'),
(29, 1, '2024-11-15 18:39:54', '2024-11-15 18:59:20'),
(30, 1, '2024-11-15 19:17:52', '2024-11-15 20:19:37'),
(31, 1, '2024-11-15 20:21:57', '2024-11-15 22:06:40'),
(32, 1, '2024-11-15 22:20:00', '2024-11-15 22:20:56'),
(33, 1, '2024-11-15 22:26:02', '2024-11-15 22:35:52'),
(34, 1, '2024-11-16 08:30:53', '2024-11-16 09:46:43'),
(35, 1, '2024-11-16 09:58:25', '2024-11-16 10:13:31'),
(36, 1, '2024-11-16 11:40:54', '2024-11-16 13:08:37'),
(37, 1, '2024-11-16 13:24:40', '2024-11-16 13:35:39'),
(38, 1, '2024-11-16 15:07:07', '2024-11-16 16:03:58'),
(40, 1, '2024-11-16 16:04:34', '2024-11-16 16:12:36'),
(41, 1, '2024-11-16 16:12:41', '2024-11-16 16:27:50'),
(42, 1, '2024-11-16 16:29:27', '2024-11-16 16:29:57'),
(43, 5, '2024-11-16 16:30:04', '2024-11-16 16:30:10'),
(44, 1, '2024-11-16 18:47:00', '2024-11-16 18:51:51'),
(45, 5, '2024-11-16 18:51:57', '2024-11-16 18:51:57'),
(46, 1, '2024-11-16 19:43:07', '2024-11-16 20:44:29'),
(47, 5, '2024-11-16 20:44:36', '2024-11-16 20:53:07'),
(48, 5, '2024-11-16 20:53:15', '2024-11-16 20:55:15'),
(49, 5, '2024-11-16 20:55:25', '2024-11-16 20:58:15'),
(50, 5, '2024-11-16 20:58:20', '2024-11-16 21:03:38'),
(51, 5, '2024-11-16 21:03:46', '2024-11-16 21:04:23'),
(52, 1, '2024-11-16 21:24:29', '2024-11-16 21:27:38'),
(53, 1, '2024-11-16 21:35:05', '2024-11-16 21:37:01'),
(54, 5, '2024-11-16 21:37:21', '2024-11-16 21:38:42'),
(55, 1, '2024-11-16 21:40:19', '2024-11-16 21:53:09'),
(56, 5, '2024-11-16 21:58:59', '2024-11-16 22:02:27'),
(57, 1, '2024-11-16 22:02:32', '2024-11-16 22:04:15'),
(58, 1, '2024-11-16 22:06:38', '2024-11-16 22:15:34'),
(59, 1, '2024-11-16 22:21:54', '2024-11-16 22:24:24'),
(60, 1, '2024-11-17 00:10:38', '2024-11-17 00:18:06'),
(61, 1, '2024-11-17 00:18:11', '2024-11-17 00:21:48'),
(62, 1, '2024-11-17 00:22:53', '2024-11-17 00:25:44'),
(63, 1, '2024-11-17 00:31:07', '2024-11-17 00:42:02'),
(64, 1, '2024-11-17 00:42:06', '2024-11-17 00:42:26'),
(65, 1, '2024-11-17 03:06:07', '2024-11-17 03:06:37'),
(66, 1, '2024-11-17 03:48:42', '2024-11-17 03:48:42'),
(67, 1, '2024-11-17 14:52:00', '2024-11-17 15:16:11'),
(68, 5, '2024-11-17 15:16:16', '2024-11-17 15:23:13'),
(69, 5, '2024-11-17 15:23:19', '2024-11-17 15:29:37'),
(70, 1, '2024-11-17 15:35:13', '2024-11-17 15:35:13'),
(71, 1, '2024-11-17 19:14:47', '2024-11-17 19:21:01'),
(72, 1, '2024-11-17 19:21:13', '2024-11-17 19:22:39'),
(73, 1, '2024-11-17 22:50:48', '2024-11-18 00:00:00'),
(74, 1, '2024-11-18 00:08:10', '2024-11-18 01:11:19'),
(75, 1, '2024-11-18 03:10:12', '2024-11-18 05:35:01'),
(76, 5, '2024-11-18 05:35:05', '2024-11-18 05:35:18'),
(77, 5, '2024-11-18 05:36:22', '2024-11-18 05:36:37'),
(78, 1, '2024-11-18 05:36:42', '2024-11-18 05:36:46'),
(79, 5, '2024-11-18 05:36:56', '2024-11-18 05:37:44'),
(80, 5, '2024-11-18 05:39:08', '2024-11-18 05:39:25'),
(81, 1, '2024-11-18 13:20:10', '2024-11-18 14:33:16'),
(82, 5, '2024-11-18 14:34:11', '2024-11-18 14:34:41'),
(83, 1, '2024-11-18 14:34:45', '2024-11-18 14:37:08'),
(84, 1, '2024-11-18 14:38:21', '2024-11-18 14:43:04'),
(85, 1, '2024-11-18 21:42:17', '2024-11-18 22:27:29'),
(86, 11, '2024-11-18 22:27:37', '2024-11-18 22:43:39'),
(87, 5, '2024-11-18 22:43:43', '2024-11-18 22:46:38'),
(88, 5, '2024-11-18 22:46:43', '2024-11-18 22:48:31'),
(89, 1, '2024-11-18 22:48:54', '2024-11-18 22:53:19'),
(90, 1, '2024-11-18 22:53:50', '2024-11-18 22:55:03'),
(91, 1, '2024-11-18 22:55:25', '2024-11-18 22:56:40'),
(92, 1, '2024-11-18 22:56:48', '2024-11-18 22:57:17'),
(93, 5, '2024-11-18 22:57:23', '2024-11-18 22:57:49'),
(94, 1, '2024-11-18 22:58:02', '2024-11-18 23:00:53'),
(95, 10, '2024-11-18 23:01:12', '2024-11-18 23:02:04'),
(96, 1, '2024-11-18 23:06:25', '2024-11-18 23:06:49'),
(97, 10, '2024-11-18 23:06:59', '2024-11-18 23:09:41'),
(98, 1, '2024-11-19 09:50:37', '2024-11-19 10:22:23'),
(99, 10, '2024-11-19 10:22:42', '2024-11-19 10:23:54'),
(100, 10, '2024-11-19 10:24:06', '2024-11-19 10:31:48'),
(101, 10, '2024-11-19 10:31:59', '2024-11-19 10:36:26'),
(102, 10, '2024-11-19 10:38:26', '2024-11-19 10:40:38'),
(103, 11, '2024-11-19 10:40:46', '2024-11-19 10:46:17'),
(104, 1, '2024-11-19 12:44:42', '2024-11-19 13:05:34'),
(105, 10, '2024-11-19 13:05:45', '2024-11-19 13:11:16'),
(106, 1, '2024-11-19 13:11:21', '2024-11-19 13:48:07'),
(107, 10, '2024-11-19 13:48:14', '2024-11-19 13:50:27'),
(108, 1, '2024-11-19 15:59:24', '2024-11-19 16:01:58'),
(109, 1, '2024-11-19 16:03:06', '2024-11-19 16:05:33'),
(110, 1, '2024-11-20 04:13:26', '2024-11-20 04:35:05'),
(111, 10, '2024-11-20 04:35:12', '2024-11-20 04:35:19'),
(112, 1, '2024-11-20 15:51:53', '2024-11-20 17:24:19'),
(113, 1, '2024-11-20 19:14:43', '2024-11-20 19:17:41'),
(114, 1, '2024-11-20 19:50:08', '2024-11-20 20:07:31'),
(115, 1, '2024-11-21 03:20:56', '2024-11-21 04:13:31'),
(116, 10, '2024-11-21 04:15:31', '2024-11-21 04:19:08'),
(117, 1, '2024-11-21 04:19:13', '2024-11-21 04:19:13'),
(118, 1, '2024-11-21 04:25:56', '2024-11-21 04:27:51'),
(119, 10, '2024-11-21 04:27:58', '2024-11-21 04:28:42'),
(120, 1, '2024-11-21 13:28:04', '2024-11-21 13:28:04'),
(121, 1, '2024-11-21 15:00:17', '2024-11-21 15:00:17'),
(122, 1, '2024-11-21 15:03:53', '2024-11-21 15:28:17'),
(123, 10, '2024-11-21 15:28:23', '2024-11-21 15:31:24'),
(124, 11, '2024-11-21 15:32:01', '2024-11-21 15:36:17'),
(125, 11, '2024-11-21 16:00:35', '2024-11-21 16:00:45'),
(126, 10, '2024-11-21 16:00:50', '2024-11-21 16:00:56'),
(127, 11, '2024-11-21 16:01:11', '2024-11-21 16:16:05'),
(128, 1, '2024-11-21 16:20:46', '2024-11-21 16:21:55'),
(129, 1, '2024-11-21 16:23:05', '2024-11-21 16:23:35'),
(130, 1, '2024-11-21 16:25:05', '2024-11-21 16:28:47'),
(131, 1, '2024-11-21 16:51:29', '2024-11-21 16:54:05'),
(132, 1, '2024-11-21 17:04:35', '2024-11-21 17:07:16'),
(133, 10, '2024-11-21 17:12:59', '2024-11-21 17:13:11'),
(134, 1, '2024-11-21 17:13:16', '2024-11-21 17:15:05'),
(135, 1, '2024-11-21 17:33:53', '2024-11-21 17:39:05'),
(136, 1, '2024-11-21 17:41:23', '2024-11-21 17:47:24'),
(137, 1, '2024-11-21 19:30:56', '2024-11-21 19:42:15'),
(138, 1, '2024-11-22 15:05:05', '2024-11-22 15:30:38'),
(139, 10, '2024-11-22 15:30:46', '2024-11-22 15:31:19'),
(140, 10, '2024-11-22 15:31:27', '2024-11-22 15:32:57'),
(141, 1, '2024-11-22 15:33:01', '2024-11-22 16:05:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `checkout_transactions`
--
ALTER TABLE `checkout_transactions`
  ADD PRIMARY KEY (`checkout_transactions_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `product_edit_by` (`product_edit_by`),
  ADD KEY `product_last_edit_by` (`product_last_edit_by`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sales_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `checkout_id` (`checkout_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transactions_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `checkout_id` (`checkout_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users_id`);

--
-- Indexes for table `user_activity`
--
ALTER TABLE `user_activity`
  ADD PRIMARY KEY (`users_activity_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `checkout_transactions`
--
ALTER TABLE `checkout_transactions`
  MODIFY `checkout_transactions_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sales_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transactions_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_activity`
--
ALTER TABLE `user_activity`
  MODIFY `users_activity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `checkout_transactions`
--
ALTER TABLE `checkout_transactions`
  ADD CONSTRAINT `checkout_transactions_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `checkout_transactions_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`users_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`product_edit_by`) REFERENCES `users` (`users_id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`product_last_edit_by`) REFERENCES `users` (`users_id`);

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`checkout_id`) REFERENCES `checkout_transactions` (`checkout_transactions_id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`checkout_id`) REFERENCES `checkout_transactions` (`checkout_transactions_id`);

--
-- Constraints for table `user_activity`
--
ALTER TABLE `user_activity`
  ADD CONSTRAINT `user_activity_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`users_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
