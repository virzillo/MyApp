-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Ago 29, 2019 alle 15:06
-- Versione del server: 10.1.37-MariaDB
-- Versione PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myapp`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `cards`
--

CREATE TABLE `cards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descrizione` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantita` int(11) NOT NULL,
  `costo` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `cards`
--

INSERT INTO `cards` (`id`, `nome`, `descrizione`, `quantita`, `costo`, `created_at`, `updated_at`) VALUES
(1, 'EICARD UNICA', NULL, 50, 45.00, '2019-08-28 22:00:00', '2019-08-29 08:01:26'),
(2, 'INGLESE CORSI ONLINE', NULL, 70, 45.00, '2019-08-28 22:00:00', '2019-08-29 08:06:53'),
(3, 'CORSI ONLINE EIPASS', NULL, 70, 200.00, '2019-08-28 22:00:00', '2019-08-29 08:09:49'),
(4, 'UPGRADE', NULL, 100, 50.00, '2019-08-28 22:00:00', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descrizione` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `costo` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `courses`
--

INSERT INTO `courses` (`id`, `nome`, `descrizione`, `image`, `costo`, `created_at`, `updated_at`) VALUES
(1, 'EIPASS 7 MODULI', 'eipass 7 moduli online', NULL, 65.00, '2019-08-28 10:15:30', '2019-08-28 12:31:13'),
(2, 'INGLESE B1', 'inglese b1 fase normale', NULL, 50.00, '2019-08-28 10:35:12', '2019-08-28 12:41:34'),
(3, 'EIPASS CAD', 'autocad online', NULL, 50.00, '2019-08-28 12:42:29', '2019-08-28 12:42:29'),
(4, 'INGLESE B2', 'inglese b2 online', NULL, 50.00, '2019-08-28 12:43:42', '2019-08-28 12:43:42');

-- --------------------------------------------------------

--
-- Struttura della tabella `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cognome` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sesso` enum('maschio','femmina') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `codfiscale` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cellulare` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `citta` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` date DEFAULT NULL,
  `provincia` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `indirizzo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cittadom` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provinciadom` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cap` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titolostudio` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupazione` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` enum('0','1') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('0','1') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `customers`
--

INSERT INTO `customers` (`id`, `nome`, `cognome`, `sesso`, `codfiscale`, `telefono`, `cellulare`, `email`, `password`, `citta`, `data`, `provincia`, `indirizzo`, `cittadom`, `provinciadom`, `cap`, `titolostudio`, `occupazione`, `active`, `type`, `creator`, `created_at`, `updated_at`) VALUES
(1, 'Luca', 'Egidio', 'maschio', 'bnpsnl86t27h501n', '3775347151', '3775347151', 'luca@egi.it', 'Vrz021281', 'Andria', '2019-08-06', 'ba', 'Viale Trentino, 47', 'Andria', 'bn', '76123', 'ballerina', 'grafico pubblicitario', '0', '1', '1', '2019-08-28 10:09:13', '2019-08-28 10:09:13'),
(2, 'Pasquale', 'Inchingolo', 'maschio', 'bnpsnl86t27h501n', '3339285000', '3775347151', 'pi@pa.it', 'asdqwe123', 'ANDRIA', '2019-08-16', 'ag', 'Via Giuseppe Verdi 55, 55', 'Andria', 'bz', '76123', 'ballerina', 'grafico pubblicitario', '1', '0', '1', '2019-08-28 20:14:04', '2019-08-28 20:14:04');

-- --------------------------------------------------------

--
-- Struttura della tabella `logcards`
--

CREATE TABLE `logcards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `card_id` bigint(20) UNSIGNED NOT NULL,
  `operatore` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantita` int(11) NOT NULL,
  `costo` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `logcards`
--

INSERT INTO `logcards` (`id`, `card_id`, `operatore`, `quantita`, `costo`, `created_at`, `updated_at`) VALUES
(10, 3, '1', 70, 200, '2019-08-29 08:15:22', '2019-08-29 08:15:22'),
(11, 3, '1', 70, 200, '2019-08-29 08:15:31', '2019-08-29 08:15:31');

-- --------------------------------------------------------

--
-- Struttura della tabella `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_03_141143_create_customers_table', 1),
(4, '2019_08_03_155612_laratrust_setup_tables', 1),
(5, '2019_08_03_164921_create_companies_table', 1),
(6, '2019_08_28_082618_create_courses_table', 1),
(7, '2019_08_28_123718_create_modules_table', 2),
(8, '2019_08_29_085509_create_cards_table', 3),
(9, '2019_08_29_094637_create_logcards_table', 4),
(10, '2019_08_29_104121_create_settings_table', 5);

-- --------------------------------------------------------

--
-- Struttura della tabella `modules`
--

CREATE TABLE `modules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descrizione` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `durata` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `costo` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `modules`
--

INSERT INTO `modules` (`id`, `course_id`, `nome`, `descrizione`, `durata`, `costo`, `created_at`, `updated_at`) VALUES
(1, 1, 'primo', 'lskdfhlsdf', '120', 200.00, '2019-08-28 11:12:10', '2019-08-28 11:12:10'),
(3, 2, 'b1 fase iniziale', 'fase iniziale linguaggio parlato', '60', 200.00, '2019-08-28 12:16:56', '2019-08-28 12:16:56'),
(4, 2, 'b2 orale', 'b2 fase avanzata', '100', 150.00, '2019-08-28 12:17:15', '2019-08-28 12:17:15'),
(6, 1, 'secondo', 'secondo esame', '125', 300.00, '2019-08-28 12:41:12', '2019-08-28 12:41:12');

-- --------------------------------------------------------

--
-- Struttura della tabella `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'create-users', 'Create Users', 'Create Users', '2019-08-28 10:09:04', '2019-08-28 10:09:04'),
(2, 'read-users', 'Read Users', 'Read Users', '2019-08-28 10:09:04', '2019-08-28 10:09:04'),
(3, 'update-users', 'Update Users', 'Update Users', '2019-08-28 10:09:04', '2019-08-28 10:09:04'),
(4, 'delete-users', 'Delete Users', 'Delete Users', '2019-08-28 10:09:04', '2019-08-28 10:09:04'),
(5, 'create-acl', 'Create Acl', 'Create Acl', '2019-08-28 10:09:04', '2019-08-28 10:09:04'),
(6, 'read-acl', 'Read Acl', 'Read Acl', '2019-08-28 10:09:04', '2019-08-28 10:09:04'),
(7, 'update-acl', 'Update Acl', 'Update Acl', '2019-08-28 10:09:04', '2019-08-28 10:09:04'),
(8, 'delete-acl', 'Delete Acl', 'Delete Acl', '2019-08-28 10:09:05', '2019-08-28 10:09:05'),
(9, 'read-profile', 'Read Profile', 'Read Profile', '2019-08-28 10:09:05', '2019-08-28 10:09:05'),
(10, 'update-profile', 'Update Profile', 'Update Profile', '2019-08-28 10:09:05', '2019-08-28 10:09:05'),
(11, 'create-profile', 'Create Profile', 'Create Profile', '2019-08-28 10:09:07', '2019-08-28 10:09:07');

-- --------------------------------------------------------

--
-- Struttura della tabella `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(9, 2),
(9, 3),
(10, 1),
(10, 2),
(10, 3);

-- --------------------------------------------------------

--
-- Struttura della tabella `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `permission_user`
--

INSERT INTO `permission_user` (`permission_id`, `user_id`, `user_type`) VALUES
(9, 4, 'App\\User'),
(10, 4, 'App\\User'),
(11, 4, 'App\\User');

-- --------------------------------------------------------

--
-- Struttura della tabella `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'Superadmin', 'Superadmin', '2019-08-28 10:09:04', '2019-08-28 10:09:04'),
(2, 'admin', 'Admin', 'Admin', '2019-08-28 10:09:05', '2019-08-28 10:09:05'),
(3, 'user', 'User', 'User', '2019-08-28 10:09:06', '2019-08-28 10:09:06');

-- --------------------------------------------------------

--
-- Struttura della tabella `role_user`
--

CREATE TABLE `role_user` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `user_type`) VALUES
(1, 1, 'App\\User'),
(2, 2, 'App\\User'),
(3, 3, 'App\\User'),
(2, 5, 'App\\User'),
(3, 6, 'App\\User'),
(3, 7, 'App\\User'),
(3, 8, 'App\\User'),
(3, 9, 'App\\User'),
(3, 10, 'App\\User'),
(3, 11, 'App\\User'),
(3, 12, 'App\\User'),
(3, 13, 'App\\User'),
(3, 14, 'App\\User'),
(3, 15, 'App\\User'),
(3, 16, 'App\\User'),
(3, 17, 'App\\User'),
(3, 18, 'App\\User'),
(3, 19, 'App\\User'),
(3, 20, 'App\\User'),
(3, 21, 'App\\User'),
(3, 22, 'App\\User'),
(3, 23, 'App\\User'),
(3, 24, 'App\\User'),
(3, 25, 'App\\User'),
(3, 26, 'App\\User'),
(3, 27, 'App\\User'),
(3, 28, 'App\\User'),
(3, 29, 'App\\User'),
(3, 30, 'App\\User'),
(3, 31, 'App\\User'),
(3, 32, 'App\\User'),
(3, 33, 'App\\User'),
(3, 34, 'App\\User'),
(3, 35, 'App\\User'),
(3, 36, 'App\\User'),
(3, 37, 'App\\User'),
(3, 38, 'App\\User'),
(3, 39, 'App\\User'),
(3, 40, 'App\\User'),
(3, 41, 'App\\User'),
(3, 42, 'App\\User'),
(3, 43, 'App\\User'),
(3, 44, 'App\\User'),
(3, 45, 'App\\User'),
(3, 46, 'App\\User'),
(3, 47, 'App\\User'),
(3, 48, 'App\\User'),
(3, 49, 'App\\User'),
(3, 50, 'App\\User'),
(3, 51, 'App\\User'),
(3, 52, 'App\\User'),
(3, 53, 'App\\User'),
(3, 54, 'App\\User'),
(2, 57, 'App\\User');

-- --------------------------------------------------------

--
-- Struttura della tabella `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titolo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `settings`
--

INSERT INTO `settings` (`id`, `titolo`, `email`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'Gestionale Study', 'info@pladgepeople.it', '/uploads/images/gestionale-study_1567083221.png', '2019-08-28 22:00:00', '2019-08-29 10:53:41'),
(2, 'Gestionale Study', 'info@pladgepeople.it', 'img.png', '2019-08-28 22:00:00', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Virgilio Riccardo', 'superadmin@app.com', NULL, '$2y$10$9wAEv.hdovmOD00WSmqr8OjkgGvDgOXLCl1B0JQmYvvQkNXUv0VDa', NULL, '2019-08-28 10:09:05', '2019-08-28 10:09:05'),
(2, 'Admin', 'admin@app.com', NULL, '$2y$10$JT8AVpmwXYmySnEuFxUJZuKn9xNzGrUM3eV43zNFUMxwlaVmSoi8u', NULL, '2019-08-28 10:09:06', '2019-08-28 10:09:06'),
(3, 'User', 'user@app.com', NULL, '$2y$10$nQQjgZG8Cq3F62hlugGpJ.y6bk1F8HeekQ2.D024GCKXTtt3Q4gsO', NULL, '2019-08-28 10:09:06', '2019-08-28 10:09:06'),
(4, 'Cru User', 'cru_user@app.com', NULL, '$2y$10$I/sTn9uI4MtJximn9itf2.2/IK3JgRWAoWGMWK.ayT3nkjnotO8QS', 'OiwZhFlAtf', '2019-08-28 10:09:07', '2019-08-28 10:09:07'),
(5, 'Riccardo Virgilio', 'riccardo.virgilio@gmail.com', '2019-08-28 10:09:07', '$2y$10$8ofUeGk420bMpgUabcvRRe.KmbyH7CWYi6uabU.GodTIQyxFvcn/W', 'KYtWtyCiwKIlp9WMpeYQbpJbZdyU5MRDmGIqTWnyvOYlTOEpTfRS2VmLqmWn', '2019-08-28 10:09:07', '2019-08-28 19:44:31'),
(6, 'Ramiro Pollich', 'crooks.miguel@example.net', '2019-08-28 10:09:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nbp0J0Kwvh', '2019-08-28 10:09:07', '2019-08-28 10:09:07'),
(7, 'Misael Bechtelar', 'irohan@example.org', '2019-08-28 10:09:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bmvP7Lb5xT', '2019-08-28 10:09:07', '2019-08-28 10:09:07'),
(8, 'Addie Hermann', 'zieme.grace@example.com', '2019-08-28 10:09:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GlW6ZBKwL8', '2019-08-28 10:09:07', '2019-08-28 10:09:07'),
(9, 'Bo Green DVM', 'rhowe@example.com', '2019-08-28 10:09:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uPQATi1SZN', '2019-08-28 10:09:07', '2019-08-28 10:09:07'),
(10, 'Cathryn Bashirian', 'kimberly.walter@example.net', '2019-08-28 10:09:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BZKwJDkup0', '2019-08-28 10:09:07', '2019-08-28 10:09:07'),
(11, 'Consuelo Walsh III', 'kspencer@example.org', '2019-08-28 10:09:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '44NkyTDF9N', '2019-08-28 10:09:07', '2019-08-28 10:09:07'),
(12, 'Emma Botsford', 'leila.price@example.com', '2019-08-28 10:09:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ic5vyOEDCd', '2019-08-28 10:09:07', '2019-08-28 10:09:07'),
(13, 'Willie Harvey', 'howe.lisandro@example.net', '2019-08-28 10:09:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ff5MqLZveg', '2019-08-28 10:09:07', '2019-08-28 10:09:07'),
(14, 'Jason Walsh', 'ullrich.ila@example.org', '2019-08-28 10:09:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sgPT0wHfRx', '2019-08-28 10:09:07', '2019-08-28 10:09:07'),
(15, 'Norris Gorczany', 'esta.grant@example.net', '2019-08-28 10:09:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cvRHnoCbN8', '2019-08-28 10:09:08', '2019-08-28 10:09:08'),
(16, 'Aniya Emmerich', 'owaelchi@example.com', '2019-08-28 10:09:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NI525YSpbi', '2019-08-28 10:09:08', '2019-08-28 10:09:08'),
(17, 'Felipe Turner', 'walter.daija@example.com', '2019-08-28 10:09:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6ENLuJyd2U', '2019-08-28 10:09:08', '2019-08-28 10:09:08'),
(18, 'Karlie Sauer', 'jayde.murphy@example.net', '2019-08-28 10:09:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AJLDi21kYu', '2019-08-28 10:09:08', '2019-08-28 10:09:08'),
(19, 'Mrs. Alexandrine Emmerich I', 'buckridge.jocelyn@example.org', '2019-08-28 10:09:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FTMSpXm1Hj', '2019-08-28 10:09:08', '2019-08-28 10:09:08'),
(20, 'Madie Lehner Sr.', 'polly.lebsack@example.net', '2019-08-28 10:09:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tSkceywYhf', '2019-08-28 10:09:08', '2019-08-28 10:09:08'),
(21, 'Mrs. Mozell Wiegand', 'wolff.martin@example.com', '2019-08-28 10:09:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hJjuyIRi5i', '2019-08-28 10:09:08', '2019-08-28 10:09:08'),
(22, 'Diamond Hahn', 'adaline73@example.net', '2019-08-28 10:09:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AMlnrWMByt', '2019-08-28 10:09:08', '2019-08-28 10:09:08'),
(23, 'Dr. Jeremy Adams', 'paula.schuster@example.org', '2019-08-28 10:09:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5s6O0HpeUu', '2019-08-28 10:09:08', '2019-08-28 10:09:08'),
(24, 'Mr. Clyde Kohler I', 'wilton.kling@example.net', '2019-08-28 10:09:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9Wnx6PU2Nw', '2019-08-28 10:09:08', '2019-08-28 10:09:08'),
(25, 'Tevin Ruecker', 'ferry.heather@example.org', '2019-08-28 10:09:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ixoD0FFcb6', '2019-08-28 10:09:08', '2019-08-28 10:09:08'),
(26, 'Breanna Rath', 'theresa.bosco@example.com', '2019-08-28 10:09:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6ffyryln0J', '2019-08-28 10:09:08', '2019-08-28 10:09:08'),
(27, 'Gudrun Schinner', 'melyna49@example.org', '2019-08-28 10:09:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'drD9jqQU5P', '2019-08-28 10:09:08', '2019-08-28 10:09:08'),
(28, 'Mr. Rollin Ziemann IV', 'russell01@example.net', '2019-08-28 10:09:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8wuaf272oD', '2019-08-28 10:09:08', '2019-08-28 10:09:08'),
(29, 'Minerva Heidenreich', 'hermann.elinore@example.net', '2019-08-28 10:09:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bQ3fObE2Jw', '2019-08-28 10:09:08', '2019-08-28 10:09:08'),
(30, 'Olen Pouros', 'harvey.andreane@example.org', '2019-08-28 10:09:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lqN9QXhc8j', '2019-08-28 10:09:08', '2019-08-28 10:09:08'),
(31, 'Mrs. Thalia Schaden I', 'winston.nolan@example.net', '2019-08-28 10:09:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GnCek5zEbH', '2019-08-28 10:09:08', '2019-08-28 10:09:08'),
(32, 'Breanne Trantow', 'metz.asha@example.net', '2019-08-28 10:09:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zZk7nBZHWF', '2019-08-28 10:09:08', '2019-08-28 10:09:08'),
(33, 'Lloyd Reilly', 'ccummerata@example.com', '2019-08-28 10:09:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xBxLgJ3zZY', '2019-08-28 10:09:08', '2019-08-28 10:09:08'),
(34, 'Kailee Douglas', 'ikiehn@example.net', '2019-08-28 10:09:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ir9m8Vc2WN', '2019-08-28 10:09:08', '2019-08-28 10:09:08'),
(35, 'Dr. Carrie Gusikowski', 'barbara33@example.com', '2019-08-28 10:09:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'clVdbyIukC', '2019-08-28 10:09:08', '2019-08-28 10:09:08'),
(36, 'Madilyn Parker Jr.', 'west.aiden@example.com', '2019-08-28 10:09:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FAylmOff8c', '2019-08-28 10:09:08', '2019-08-28 10:09:08'),
(37, 'Prof. Troy Brakus', 'hleuschke@example.org', '2019-08-28 10:09:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SpOY5J1GXg', '2019-08-28 10:09:09', '2019-08-28 10:09:09'),
(38, 'Horacio Emmerich', 'leanne66@example.com', '2019-08-28 10:09:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '53PmjxbbNb', '2019-08-28 10:09:09', '2019-08-28 10:09:09'),
(39, 'Prof. Enrique Runte', 'cfranecki@example.net', '2019-08-28 10:09:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dXUzkPJBCb', '2019-08-28 10:09:09', '2019-08-28 10:09:09'),
(40, 'Lindsey Lynch IV', 'fermin42@example.org', '2019-08-28 10:09:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Rb1q0UcrRX', '2019-08-28 10:09:09', '2019-08-28 10:09:09'),
(41, 'Miss Julia Rippin PhD', 'kwhite@example.com', '2019-08-28 10:09:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'P3Nnnd89vz', '2019-08-28 10:09:09', '2019-08-28 10:09:09'),
(42, 'Gudrun Abshire', 'theo.baumbach@example.net', '2019-08-28 10:09:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aHaAnOd3hZ', '2019-08-28 10:09:09', '2019-08-28 10:09:09'),
(43, 'Mellie Rosenbaum', 'citlalli73@example.org', '2019-08-28 10:09:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mPRvxQ4Nvb', '2019-08-28 10:09:09', '2019-08-28 10:09:09'),
(44, 'Ellie Green', 'jacky25@example.net', '2019-08-28 10:09:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'baSB0E2H0d', '2019-08-28 10:09:09', '2019-08-28 10:09:09'),
(45, 'Brady Trantow', 'terry.kadin@example.net', '2019-08-28 10:09:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PKaXCtlS63', '2019-08-28 10:09:09', '2019-08-28 10:09:09'),
(46, 'Sonny Adams', 'blick.dale@example.org', '2019-08-28 10:09:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hgrFSUXUdh', '2019-08-28 10:09:09', '2019-08-28 10:09:09'),
(47, 'Miss Gerry Koepp II', 'sam.veum@example.net', '2019-08-28 10:09:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GjdQpI2UHl', '2019-08-28 10:09:09', '2019-08-28 10:09:09'),
(48, 'Amara Kulas', 'clare.hirthe@example.com', '2019-08-28 10:09:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'obdr6cHOu5', '2019-08-28 10:09:09', '2019-08-28 10:09:09'),
(49, 'Justice Howe MD', 'hubert.howe@example.org', '2019-08-28 10:09:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pJJZnlRmip', '2019-08-28 10:09:09', '2019-08-28 10:09:09'),
(50, 'Zackary Jacobs', 'general88@example.org', '2019-08-28 10:09:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LUBjvQpeRC', '2019-08-28 10:09:09', '2019-08-28 10:09:09'),
(51, 'Clifford Upton', 'eheller@example.net', '2019-08-28 10:09:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gZZTKqrlw2', '2019-08-28 10:09:09', '2019-08-28 10:09:09'),
(52, 'Mariane Gibson', 'tpurdy@example.com', '2019-08-28 10:09:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'k3ff1c6cjq', '2019-08-28 10:09:09', '2019-08-28 10:09:09'),
(53, 'Paul Rohan', 'sauer.kaden@example.org', '2019-08-28 10:09:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wvdxSswNWY', '2019-08-28 10:09:09', '2019-08-28 10:09:09'),
(54, 'Jonathon Greenfelder', 'fstamm@example.net', '2019-08-28 10:09:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UPvrNfgluX', '2019-08-28 10:09:09', '2019-08-28 10:09:09'),
(57, 'Pasquale Inchingolo', 'a.inchingolo@metainfor.com', NULL, '$2y$10$3K6ftr8PqdWxpb3CQp4zOeZYAi0Kmq19gviMYqHK83idVqSseW/2.', NULL, '2019-08-28 19:44:03', '2019-08-28 19:44:03');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `logcards`
--
ALTER TABLE `logcards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `logcards_card_id_foreign` (`card_id`);

--
-- Indici per le tabelle `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `modules_course_id_foreign` (`course_id`);

--
-- Indici per le tabelle `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indici per le tabelle `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indici per le tabelle `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indici per le tabelle `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indici per le tabelle `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indici per le tabelle `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indici per le tabelle `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `cards`
--
ALTER TABLE `cards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT per la tabella `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT per la tabella `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la tabella `logcards`
--
ALTER TABLE `logcards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT per la tabella `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT per la tabella `modules`
--
ALTER TABLE `modules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT per la tabella `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT per la tabella `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la tabella `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `logcards`
--
ALTER TABLE `logcards`
  ADD CONSTRAINT `logcards_card_id_foreign` FOREIGN KEY (`card_id`) REFERENCES `cards` (`id`);

--
-- Limiti per la tabella `modules`
--
ALTER TABLE `modules`
  ADD CONSTRAINT `modules_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`);

--
-- Limiti per la tabella `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
