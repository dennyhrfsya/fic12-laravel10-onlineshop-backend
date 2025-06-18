-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 18, 2025 at 04:20 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlineshop-db`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `roles` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `roles`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ms. Bettie Bayer', 'kuvalis.maci@example.org', '+17193197377', 'USER', '2025-06-13 11:33:07', '$2y$10$pkXIdi5xYqnJlTfOrttjl.cakvAheptiDAs6k.oeozMFf1SzKLgBS', NULL, NULL, NULL, 'pgo2x1XIOK', '2025-06-13 11:33:07', '2025-06-13 11:33:07'),
(2, 'Adella Crona V', 'littel.muriel@example.org', '351-669-7279', 'USER', '2025-06-13 11:33:07', '$2y$10$pkXIdi5xYqnJlTfOrttjl.cakvAheptiDAs6k.oeozMFf1SzKLgBS', NULL, NULL, NULL, 'LcjfUm4tZz', '2025-06-13 11:33:07', '2025-06-13 11:33:07'),
(3, 'Clifton Schuster', 'conn.rosamond@example.com', '539-345-9133', 'USER', '2025-06-13 11:33:07', '$2y$10$pkXIdi5xYqnJlTfOrttjl.cakvAheptiDAs6k.oeozMFf1SzKLgBS', NULL, NULL, NULL, 'b6PlBHHXhh', '2025-06-13 11:33:07', '2025-06-13 11:33:07'),
(4, 'Elijah Heaney', 'leffler.preston@example.com', '(681) 269-0549', 'USER', '2025-06-13 11:33:07', '$2y$10$pkXIdi5xYqnJlTfOrttjl.cakvAheptiDAs6k.oeozMFf1SzKLgBS', NULL, NULL, NULL, 'mRlFexL8Of', '2025-06-13 11:33:07', '2025-06-13 11:33:07'),
(5, 'Carolina Sauer III', 'esther.krajcik@example.org', '+1 (623) 576-1967', 'USER', '2025-06-13 11:33:07', '$2y$10$pkXIdi5xYqnJlTfOrttjl.cakvAheptiDAs6k.oeozMFf1SzKLgBS', NULL, NULL, NULL, 'wfAhvbpSte', '2025-06-13 11:33:07', '2025-06-13 11:33:07'),
(6, 'Federico Herman V', 'greta.erdman@example.net', '+18439989952', 'USER', '2025-06-13 11:33:07', '$2y$10$pkXIdi5xYqnJlTfOrttjl.cakvAheptiDAs6k.oeozMFf1SzKLgBS', NULL, NULL, NULL, 'nNdccziNTS', '2025-06-13 11:33:07', '2025-06-13 11:33:07'),
(7, 'Nya Schimmel', 'klein.lessie@example.com', '1-463-246-4611', 'USER', '2025-06-13 11:33:07', '$2y$10$pkXIdi5xYqnJlTfOrttjl.cakvAheptiDAs6k.oeozMFf1SzKLgBS', NULL, NULL, NULL, 'WdBm24e3Vl', '2025-06-13 11:33:07', '2025-06-13 11:33:07'),
(8, 'Prof. Gregorio Ward Jr.', 'kiara.marvin@example.net', '(480) 946-7677', 'USER', '2025-06-13 11:33:07', '$2y$10$pkXIdi5xYqnJlTfOrttjl.cakvAheptiDAs6k.oeozMFf1SzKLgBS', NULL, NULL, NULL, '6yFRCognKl', '2025-06-13 11:33:07', '2025-06-13 11:33:07'),
(9, 'Lauryn Olson', 'urban80@example.org', '+18598830438', 'USER', '2025-06-13 11:33:07', '$2y$10$pkXIdi5xYqnJlTfOrttjl.cakvAheptiDAs6k.oeozMFf1SzKLgBS', NULL, NULL, NULL, 'q9sND7rG5G', '2025-06-13 11:33:07', '2025-06-13 11:33:07'),
(10, 'Admin Dega', 'dedut@gmail.com', '08123456789', 'ADMIN', NULL, '$2y$10$tvgrK9iRDQjdeFxMkhZWhuvWjUEsBQXoxKVrpEykVk4BpK2Bp7iKy', NULL, NULL, NULL, NULL, '2025-06-13 11:33:07', '2025-06-13 11:33:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
