-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Okt 2022 pada 18.11
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `auth_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `product`
--

INSERT INTO `product` (`id`, `uuid`, `name`, `price`, `userId`, `createdAt`, `updatedAt`) VALUES
(1, '928287a7-f25a-4f34-86c2-aab052a0d274', 'Product 1', 997, 3, '2022-10-16 12:31:59', '2022-10-16 12:31:59'),
(3, '553f9ccb-26e0-4d06-894e-da7cd69fa7bf', 'Product 2', 992, 3, '2022-10-16 12:32:57', '2022-10-16 12:32:57'),
(4, '972d9804-2f4f-4881-9baf-7338f727435a', 'Product 3', 993, 3, '2022-10-16 12:33:03', '2022-10-16 12:33:03'),
(6, '90d834db-9d0b-4ba7-aa20-6153e54e7602', 'Product 5', 995, 1, '2022-10-16 12:34:46', '2022-10-23 09:15:01'),
(9, '4c1c70be-6417-4820-865f-461aa45b059b', 'Product 6', 123, 1, '2022-10-23 09:14:43', '2022-10-23 09:15:31'),
(10, '2e3733ef-3257-47ee-9e58-b2e7d3e6a7da', 'Product Joko 1', 10, 6, '2022-10-23 15:59:12', '2022-10-23 15:59:41'),
(11, '638722ab-5882-4ec1-9702-e83594bc0148', 'Product Joko 2', 1000, 6, '2022-10-23 15:59:23', '2022-10-23 15:59:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `sid` varchar(36) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`) VALUES
('-By5J1iFrm_GLD3cxE-lFX7mSWzRIWHO', '2022-10-24 09:40:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-23 09:40:13', '2022-10-23 09:40:13'),
('-JCUcQXIjMspG9C0eIXqo13Up31VGnxF', '2022-10-23 18:24:32', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-22 18:24:32', '2022-10-22 18:24:32'),
('07-SYuWgzDkTxIaDtgbt7iPJvFf5nYzT', '2022-10-24 09:47:45', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-23 09:47:45', '2022-10-23 09:47:45'),
('1gxZlDJqVTTn2nyxoPszx3hRpAGvVNA5', '2022-10-24 09:15:01', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-23 09:15:01', '2022-10-23 09:15:01'),
('1oHHxpBSGBJ_IklYbCuy5CzRbeZbjjEV', '2022-10-23 17:58:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-22 17:58:04', '2022-10-22 17:58:04'),
('1XwDa-qirunTfv6rFsRInquLblwWkw1n', '2022-10-24 08:42:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-23 08:42:18', '2022-10-23 08:42:18'),
('2hqMmlADXhQDvwwqATE6lpvd1_E0bLPd', '2022-10-23 18:24:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-22 18:24:14', '2022-10-22 18:24:14'),
('3ITgPk1ZfjCxFlXiApAmF4LDwJbXpKYb', '2022-10-24 15:59:34', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-23 15:59:34', '2022-10-23 15:59:34'),
('5G1URNdyoWypDEcSA40O51mTu5beIdx2', '2022-10-24 09:15:26', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-23 09:15:26', '2022-10-23 09:15:26'),
('5i1-SfFT8JizqIz9UeVD7IhQ0cLBDIVK', '2022-10-24 09:41:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-23 09:41:24', '2022-10-23 09:41:24'),
('6cdZU56RzhxB0R3mGKl4GnmVxvTN411O', '2022-10-24 08:40:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-23 08:40:18', '2022-10-23 08:40:18'),
('6dG3JtluvDHCEQxArqYrB5vRROqlZyl-', '2022-10-24 09:41:38', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-23 09:41:38', '2022-10-23 09:41:38'),
('6eZG82cn_cLJFpr7eSLGpJWWBAF0MOm0', '2022-10-24 08:43:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-23 08:43:16', '2022-10-23 08:43:16'),
('7LSEK6CLpsNLB8Z4k1MzTY8bCllfRZK0', '2022-10-24 15:59:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-23 15:59:12', '2022-10-23 15:59:12'),
('7rJ7xAuxqM_DHiXLFqekxvQ8OdPfTIdi', '2022-10-24 15:57:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-23 15:57:49', '2022-10-23 15:57:49'),
('8GeJTaytIT0mcJHuUdN22tX7r445V1hA', '2022-10-23 18:19:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-22 18:19:04', '2022-10-22 18:19:04'),
('8yaQULiBWqIjTMngSBRZubpyk5aj1BzP', '2022-10-24 09:15:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-23 09:15:10', '2022-10-23 09:15:10'),
('8_xQWQ9tjPOwS31LtOySl9UXsY5SDcNO', '2022-10-23 18:00:41', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-22 18:00:41', '2022-10-22 18:00:41'),
('CGcgPmIIR_3mQ2mfbA5V3TZ10VSLPlTZ', '2022-10-24 08:58:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-23 08:58:24', '2022-10-23 08:58:24'),
('dc80vkW5XbHFWzHnpChIinKflxee5yxJ', '2022-10-24 15:49:31', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-23 15:49:31', '2022-10-23 15:49:31'),
('EbYmySzk4Gg0uWqNYwfxJ1VxhRXTSf0X', '2022-10-24 15:59:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-23 15:59:51', '2022-10-23 15:59:51'),
('epVekwp1eQh29dnu_9XlH4pxnBlcwSX7', '2022-10-24 16:00:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-23 16:00:39', '2022-10-23 16:00:39'),
('FJbO1vU9v-vEMcUaP7AVI-RqSv3GuZbM', '2022-10-24 16:00:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-23 16:00:39', '2022-10-23 16:00:39'),
('gjRTSPjgRNFtcqeUSqcgbowR4O-D6FmL', '2022-10-23 18:27:42', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-22 18:27:42', '2022-10-22 18:27:42'),
('gJT9OnarK8phCkXwWsSGbIAcLLkuU6dA', '2022-10-24 08:43:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-23 08:43:04', '2022-10-23 08:43:04'),
('Gn4WYEWN62Fo4SLgnFncBq2k5D25tsST', '2022-10-24 09:44:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-23 09:44:10', '2022-10-23 09:44:10'),
('hLBoZ-j-suLhMyOwvhwu3fpe0LuG-_uk', '2022-10-23 18:28:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"5b60ecf2-ab27-4062-b46d-4a7454a56b96\"}', '2022-10-22 18:27:54', '2022-10-22 18:28:05'),
('I8XQEIXHg8om8yDxyJyR-jTqqwwCqbVK', '2022-10-24 09:14:43', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-23 09:14:43', '2022-10-23 09:14:43'),
('IgSodvoT-XlIla1gUbeaDSglIMJBZIjn', '2022-10-23 17:58:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-22 17:58:12', '2022-10-22 17:58:12'),
('IHdFQvoFUg9QW_CNsTU2kVs4EhflQeiv', '2022-10-24 09:57:45', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-23 09:57:45', '2022-10-23 09:57:45'),
('Ka7TzUsRjQz4LaMIoJ-HqX3E5sLrkxhl', '2022-10-24 09:40:26', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-23 09:40:26', '2022-10-23 09:40:26'),
('kehWcSzH8lMJ7MBl-kxDpGkoupSH_-go', '2022-10-24 09:14:55', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-23 09:14:55', '2022-10-23 09:14:55'),
('kp5YTpKkP2roGHR_q5QyVYzAOZSdSaAw', '2022-10-24 15:58:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-23 15:58:03', '2022-10-23 15:58:03'),
('kvey9rJ6hLyS4I3UCjZ0HB2KzaD63rfp', '2022-10-24 08:56:35', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-23 08:56:35', '2022-10-23 08:56:35'),
('KXJtaYSbQjo6u5xm2YtW80YeXjznAP5-', '2022-10-24 09:15:31', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-23 09:15:31', '2022-10-23 09:15:31'),
('lHzYKM9A_24aARd_ALqxPcuJ6dhRZspZ', '2022-10-24 09:15:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-23 09:15:17', '2022-10-23 09:15:17'),
('mG2mtGbuNu4olB4oaeXd2rFe8ECZVtPt', '2022-10-24 08:56:45', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-23 08:56:45', '2022-10-23 08:56:45'),
('MHN9lMau_FusNB7CYRGC6HR9OP5S951a', '2022-10-24 08:43:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-23 08:43:04', '2022-10-23 08:43:04'),
('MiJ3D1DKzQsBdqW6a8C1MmwXulMdvjgb', '2022-10-24 15:58:33', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-23 15:58:33', '2022-10-23 15:58:33'),
('miZl9JyT1OOHwdVLmsdqj9ceWnfGZ8VV', '2022-10-24 16:00:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-23 16:00:39', '2022-10-23 16:00:39'),
('MSXY_pO_1SxGZgq9Y2E0G6Maq9DMvQ4G', '2022-10-24 08:43:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-23 08:43:04', '2022-10-23 08:43:04'),
('PaOp_jfJ5x65jwPcWOa7VVCHQh1wojMI', '2022-10-24 09:10:35', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-23 09:10:35', '2022-10-23 09:10:35'),
('PaRgj3x9PRL6aWyZhBn3YGquxSi_1XcF', '2022-10-23 18:23:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-22 18:23:16', '2022-10-22 18:23:16'),
('PHRBwV4nKuX_0EaRnkqiqoBYw2U3FTSH', '2022-10-24 15:58:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-23 15:58:49', '2022-10-23 15:58:49'),
('P_kZbFxD5Y2ucnD4yUiAZ8mr31sYRcli', '2022-10-23 18:27:54', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-22 18:27:54', '2022-10-22 18:27:54'),
('qHsW0wW_ZIE_NUEDZOd4XpvVHWDUmg2p', '2022-10-23 18:23:29', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-22 18:23:29', '2022-10-22 18:23:29'),
('RcU0BfCGw1IID-3gPgabtamH-qW6FrDZ', '2022-10-23 18:22:57', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-22 18:22:57', '2022-10-22 18:22:57'),
('Re1QCk5VveyF-6ry3kIPcc4biwzjmIX-', '2022-10-24 15:58:38', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-23 15:58:38', '2022-10-23 15:58:38'),
('rkzYEt66iUr3VzGMIfncI3uik6i3bykO', '2022-10-24 09:40:02', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-23 09:40:02', '2022-10-23 09:40:02'),
('UXr-3MUS1_kc3C161OzbiCrTJZ8LDCr3', '2022-10-24 09:57:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-23 09:57:36', '2022-10-23 09:57:36'),
('VhMLOGG3xrHfctvzkMxNvXLs1YCi6U3Y', '2022-10-24 09:10:00', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-23 09:10:00', '2022-10-23 09:10:00'),
('VxPoKyBA1mjWAjEM_KmMMsont1jU1QV5', '2022-10-24 09:57:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"5b60ecf2-ab27-4062-b46d-4a7454a56b96\"}', '2022-10-23 08:43:04', '2022-10-23 09:57:49'),
('Vy0RftfOgUm6DMtwsvQm93lLF3bOVM1a', '2022-10-24 08:42:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-23 08:42:59', '2022-10-23 08:42:59'),
('W3a9Mohe-fadAco16wnBLJonb71yP9jY', '2022-10-24 16:00:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-23 16:00:39', '2022-10-23 16:00:39'),
('W3rsaw_WJHZ5Evsb2huSf3RrLz46HtZx', '2022-10-24 15:59:23', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-23 15:59:23', '2022-10-23 15:59:23'),
('X9brPXs2j7UC-shU0iaTiaSVF7GT7IIr', '2022-10-23 18:17:21', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-22 18:17:21', '2022-10-22 18:17:21'),
('xIhpM5BTx6O6zQaYu5zyh9ewW1gLa27d', '2022-10-24 09:57:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-23 09:57:24', '2022-10-23 09:57:24'),
('xJwA7X7aAQHLwTU6pPSmJOJXMoz38VqD', '2022-10-24 15:59:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-23 15:59:47', '2022-10-23 15:59:47'),
('YwavgA_DlxrXt8yrgoAdD1dKJK3mqw64', '2022-10-23 18:17:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-22 18:17:44', '2022-10-22 18:17:44'),
('ZHrhqMr3mfBu0s4PpHIINfCYWGdypy46', '2022-10-24 15:59:41', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-23 15:59:41', '2022-10-23 15:59:41'),
('zmIGwQHF-8J3RmI4wAp8SlaXyN-48Fsh', '2022-10-23 18:23:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-22 18:23:53', '2022-10-22 18:23:53'),
('_5IXaFXeENbJlYqdXMMaOjTLlqyOt7EA', '2022-10-23 18:00:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-22 18:00:49', '2022-10-22 18:00:49'),
('_hd7K_VuYqgDXede28P-3qenJIKtn9h0', '2022-10-24 08:41:38', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-23 08:41:38', '2022-10-23 08:41:38'),
('_NFx8UhndDBeJ7Fu4koZhFNhBJOn99T_', '2022-10-24 08:41:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-10-23 08:41:51', '2022-10-23 08:41:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `uuid`, `name`, `email`, `password`, `role`, `createdAt`, `updatedAt`) VALUES
(1, '5b60ecf2-ab27-4062-b46d-4a7454a56b96', 'Renaldi', 'admin@gmail.com', '$argon2id$v=19$m=4096,t=3,p=1$geH1TIpmE3gZou0NJaTagw$Wcgd6CFaEjiy9undqGozKWuMFAdGtqTxOESigPKPooA', 'admin', '2022-09-27 11:32:18', '2022-09-27 11:32:18'),
(3, '77f8a781-6c49-43ed-b001-6eefc724928c', 'Pengkuh', 'pengkuh@gmail.com', '$argon2id$v=19$m=4096,t=3,p=1$psT9WhQ62o+9AUY73c5LWw$mqeUluGVIY8ecghueXglEI6h6LT0TNTHO7cxGJju8YE', 'user', '2022-09-27 12:00:56', '2022-09-27 12:00:56'),
(4, 'b642b463-4f13-484b-99d3-5f8c156c5aab', 'Pengkuh 2', 'pengkuh2@gmail.com', '$argon2id$v=19$m=4096,t=3,p=1$lL81RJu27YyrrMaICGHc/w$MrV0iEOpDQbg7wT3WXG4/bGOPuma0V6sCKRd01NY5r4', 'user', '2022-09-29 11:21:49', '2022-09-29 11:21:49'),
(6, '84acd782-2dfa-4911-b071-225e3d741e31', 'Joko', 'joko@gmail.com', '$argon2id$v=19$m=4096,t=3,p=1$9Gq/xinFZwWSY0bJkBlFlw$W43+H1/zHMOp+QMi/qwseYbiHESAr3Kr0i0QlzlHc28', 'user', '2022-10-23 15:58:33', '2022-10-23 15:58:33');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sid`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
