-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Nov 2019 pada 14.42
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2019_09_17_140743_create_temperatures_table', 1),
(6, '2019_09_17_140936_create_humiditys_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `temperatures`
--

CREATE TABLE `temperatures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `suhu` float NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `temperatures`
--

INSERT INTO `temperatures` (`id`, `suhu`, `tanggal`, `waktu`, `created_at`, `updated_at`) VALUES
(189, 35, '2019-10-28', '13:30:00', NULL, NULL),
(196, 33, '2019-10-28', '14:01:05', NULL, NULL),
(197, 34, '2019-10-28', '15:01:05', NULL, NULL),
(198, 30, '2019-10-29', '14:51:00', NULL, NULL),
(199, 31, '2019-10-29', '14:52:00', NULL, NULL),
(200, 23, '2019-10-29', '15:41:03', NULL, NULL),
(201, 23, '2019-10-29', '15:41:26', NULL, NULL),
(202, 23, '2019-10-29', '15:49:50', NULL, NULL),
(203, 23, '2019-10-29', '15:50:12', NULL, NULL),
(204, 23, '2019-10-29', '15:50:34', NULL, NULL),
(205, 23, '2019-10-29', '15:50:56', NULL, NULL),
(206, 24, '2019-10-29', '15:51:19', NULL, NULL),
(207, 23, '2019-10-29', '15:51:41', NULL, NULL),
(208, 23, '2019-10-29', '15:52:03', NULL, NULL),
(209, 23, '2019-10-29', '15:55:17', NULL, NULL),
(210, 23, '2019-10-29', '15:55:40', NULL, NULL),
(211, 23, '2019-10-29', '15:56:02', NULL, NULL),
(212, 23, '2019-10-29', '15:56:24', NULL, NULL),
(213, 23, '2019-10-29', '15:56:46', NULL, NULL),
(214, 23, '2019-10-29', '15:57:09', NULL, NULL),
(215, 23, '2019-10-29', '15:57:31', NULL, NULL),
(216, 23, '2019-10-29', '15:57:53', NULL, NULL),
(217, 28, '2019-10-29', '16:06:15', NULL, NULL),
(218, 28, '2019-10-29', '16:06:43', NULL, NULL),
(219, 28, '2019-10-29', '16:07:10', NULL, NULL),
(220, 28, '2019-10-29', '16:07:38', NULL, NULL),
(221, 28, '2019-10-29', '16:08:05', NULL, NULL),
(222, 28, '2019-10-29', '16:08:32', NULL, NULL),
(223, 28, '2019-10-29', '16:08:59', NULL, NULL),
(224, 28, '2019-10-29', '16:09:27', NULL, NULL),
(225, 29, '2019-10-29', '16:09:55', NULL, NULL),
(226, 29, '2019-10-29', '16:10:23', NULL, NULL),
(227, 29, '2019-10-29', '16:10:51', NULL, NULL),
(228, 29, '2019-10-29', '16:11:18', NULL, NULL),
(229, 29, '2019-10-29', '16:11:45', NULL, NULL),
(230, 29, '2019-10-29', '16:12:13', NULL, NULL),
(231, 29, '2019-10-29', '16:12:40', NULL, NULL),
(232, 29, '2019-10-29', '16:13:07', NULL, NULL),
(233, 29, '2019-10-29', '16:13:34', NULL, NULL),
(234, 29, '2019-10-29', '16:14:05', NULL, NULL),
(235, 29, '2019-10-29', '16:14:34', NULL, NULL),
(236, 29, '2019-10-29', '16:15:05', NULL, NULL),
(237, 29, '2019-10-29', '16:15:32', NULL, NULL),
(238, 29, '2019-10-29', '16:15:59', NULL, NULL),
(239, 29, '2019-10-29', '16:16:26', NULL, NULL),
(240, 29, '2019-10-29', '16:16:54', NULL, NULL),
(241, 29, '2019-10-29', '16:17:21', NULL, NULL),
(242, 29, '2019-10-29', '16:17:48', NULL, NULL),
(243, 29, '2019-10-29', '16:18:16', NULL, NULL),
(244, 29, '2019-10-29', '16:18:44', NULL, NULL),
(245, 28, '2019-10-29', '16:19:11', NULL, NULL),
(246, 29, '2019-10-29', '16:19:39', NULL, NULL),
(247, 29, '2019-10-29', '16:20:06', NULL, NULL),
(248, 29, '2019-10-29', '16:20:34', NULL, NULL),
(249, 29, '2019-10-29', '16:21:01', NULL, NULL),
(250, 29, '2019-10-29', '16:21:32', NULL, NULL),
(251, 29, '2019-10-29', '16:21:59', NULL, NULL),
(252, 29, '2019-10-29', '16:22:27', NULL, NULL),
(253, 29, '2019-10-29', '16:22:54', NULL, NULL),
(254, 29, '2019-10-29', '16:23:21', NULL, NULL),
(255, 29, '2019-10-29', '16:23:49', NULL, NULL),
(256, 29, '2019-10-29', '16:24:16', NULL, NULL),
(257, 29, '2019-10-29', '16:24:47', NULL, NULL),
(258, 29, '2019-10-29', '16:25:37', NULL, NULL),
(259, 29, '2019-10-29', '16:29:45', NULL, NULL),
(260, 29, '2019-10-29', '16:30:13', NULL, NULL),
(261, 29, '2019-10-29', '16:30:43', NULL, NULL),
(262, 15, '2019-11-03', '14:51:19', NULL, NULL),
(263, 12, '2019-11-02', '14:41:19', NULL, NULL),
(264, 15, '2019-11-03', '14:51:19', NULL, NULL),
(265, 12, '2019-11-02', '14:41:19', NULL, NULL),
(266, 25, '2019-11-03', '14:51:19', NULL, NULL),
(267, 31, '2019-11-02', '15:01:05', NULL, NULL),
(268, 27, '2019-11-08', '10:51:30', NULL, NULL),
(269, 12, '2019-11-08', '15:01:05', NULL, NULL),
(270, 27, '2019-11-08', '10:51:30', NULL, NULL),
(271, 12, '2019-11-08', '15:01:05', NULL, NULL),
(272, 27, '2019-11-08', '10:51:30', NULL, NULL),
(273, 12, '2019-11-08', '15:01:05', NULL, NULL),
(274, 27, '2019-11-08', '10:51:30', NULL, NULL),
(275, 12, '2019-11-08', '15:01:05', NULL, NULL),
(276, 27, '2019-11-08', '10:51:30', NULL, NULL),
(277, 12, '2019-11-08', '15:01:05', NULL, NULL),
(278, 27, '2019-11-08', '10:51:30', NULL, NULL),
(279, 12, '2019-11-08', '15:01:05', NULL, NULL),
(280, 27, '2019-11-08', '10:51:30', NULL, NULL),
(281, 12, '2019-11-08', '15:01:05', NULL, NULL),
(282, 12, '2019-11-08', '15:01:05', NULL, NULL),
(283, 12, '2019-11-08', '15:01:05', NULL, NULL),
(284, 12, '2019-11-08', '15:01:05', NULL, NULL),
(285, 12, '2019-11-08', '15:01:05', NULL, NULL),
(286, 12, '2019-11-08', '15:01:05', NULL, NULL),
(287, 12, '2019-11-08', '15:01:05', NULL, NULL),
(288, 12, '2019-11-08', '15:01:05', NULL, NULL),
(289, 12, '2019-11-08', '15:01:05', NULL, NULL),
(290, 12, '2019-11-08', '15:01:05', NULL, NULL),
(291, 12, '2019-11-08', '15:01:05', NULL, NULL),
(292, 30, '2019-11-08', '14:51:19', NULL, NULL),
(293, 13, '2019-11-08', '14:52:00', NULL, NULL),
(294, 30, '2019-11-08', '14:51:19', NULL, NULL),
(295, 13, '2019-11-08', '14:52:00', NULL, NULL),
(296, 30, '2019-11-08', '14:51:19', NULL, NULL),
(297, 13, '2019-11-08', '14:52:00', NULL, NULL),
(298, 30, '2019-11-08', '14:51:19', NULL, NULL),
(299, 13, '2019-11-08', '14:52:00', NULL, NULL),
(300, 30, '2019-11-08', '14:51:19', NULL, NULL),
(301, 13, '2019-11-08', '14:52:00', NULL, NULL),
(302, 30, '2019-11-08', '14:51:19', NULL, NULL),
(303, 13, '2019-11-08', '14:52:00', NULL, NULL),
(304, 30, '2019-11-08', '14:51:19', NULL, NULL),
(305, 13, '2019-11-08', '14:52:00', NULL, NULL),
(306, 30, '2019-11-08', '14:51:19', NULL, NULL),
(307, 13, '2019-11-08', '14:52:00', NULL, NULL),
(308, 30, '2019-11-08', '14:51:19', NULL, NULL),
(309, 13, '2019-11-08', '14:52:00', NULL, NULL),
(310, 30, '2019-11-08', '14:51:19', NULL, NULL),
(311, 13, '2019-11-08', '14:52:00', NULL, NULL),
(312, 30, '2019-11-08', '14:51:19', NULL, NULL),
(313, 13, '2019-11-08', '14:52:00', NULL, NULL),
(314, 30, '2019-11-08', '14:51:19', NULL, NULL),
(315, 13, '2019-11-08', '14:52:00', NULL, NULL),
(316, 30, '2019-11-08', '14:51:19', NULL, NULL),
(317, 13, '2019-11-08', '14:52:00', NULL, NULL),
(318, 30, '2019-11-08', '14:51:19', NULL, NULL),
(319, 13, '2019-11-08', '14:52:00', NULL, NULL),
(320, 30, '2019-11-08', '14:51:19', NULL, NULL),
(321, 13, '2019-11-08', '14:52:00', NULL, NULL),
(322, 28, '2019-11-07', '07:07:12', NULL, NULL),
(323, 14, '2019-11-07', '06:15:05', NULL, NULL),
(324, 28, '2019-11-07', '07:07:12', NULL, NULL),
(325, 14, '2019-11-07', '06:15:05', NULL, NULL),
(326, 28, '2019-11-07', '07:07:12', NULL, NULL),
(327, 14, '2019-11-07', '06:15:05', NULL, NULL),
(328, 28, '2019-11-07', '07:07:12', NULL, NULL),
(329, 14, '2019-11-07', '06:15:05', NULL, NULL),
(330, 28, '2019-11-07', '07:07:12', NULL, NULL),
(331, 14, '2019-11-07', '06:15:05', NULL, NULL),
(332, 28, '2019-11-07', '07:07:12', NULL, NULL),
(333, 14, '2019-11-07', '06:15:05', NULL, NULL),
(334, 28, '2019-11-07', '07:07:12', NULL, NULL),
(335, 14, '2019-11-07', '06:15:05', NULL, NULL),
(336, 28, '2019-11-07', '07:07:12', NULL, NULL),
(337, 14, '2019-11-07', '06:15:05', NULL, NULL),
(338, 28, '2019-11-07', '07:07:12', NULL, NULL),
(339, 14, '2019-11-07', '06:15:05', NULL, NULL),
(340, 28, '2019-11-07', '07:07:12', NULL, NULL),
(341, 14, '2019-11-07', '06:15:05', NULL, NULL),
(342, 28, '2019-11-07', '07:07:12', NULL, NULL),
(343, 14, '2019-11-07', '06:15:05', NULL, NULL),
(344, 28, '2019-11-07', '07:07:12', NULL, NULL),
(345, 14, '2019-11-07', '06:15:05', NULL, NULL),
(346, 28, '2019-11-07', '07:07:12', NULL, NULL),
(347, 14, '2019-11-07', '06:15:05', NULL, NULL),
(348, 28, '2019-11-07', '07:07:12', NULL, NULL),
(349, 14, '2019-11-07', '06:15:05', NULL, NULL),
(350, 28, '2019-11-07', '07:07:12', NULL, NULL),
(351, 14, '2019-11-07', '06:15:05', NULL, NULL),
(352, 28, '2019-11-07', '07:07:12', NULL, NULL),
(353, 14, '2019-11-07', '06:15:05', NULL, NULL),
(354, 28, '2019-11-07', '07:07:12', NULL, NULL),
(355, 14, '2019-11-07', '06:15:05', NULL, NULL),
(356, 28, '2019-11-07', '07:07:12', NULL, NULL),
(357, 14, '2019-11-07', '06:15:05', NULL, NULL),
(358, 28, '2019-11-07', '07:07:12', NULL, NULL),
(359, 14, '2019-11-07', '06:15:05', NULL, NULL),
(360, 28, '2019-11-07', '07:07:12', NULL, NULL),
(361, 14, '2019-11-07', '06:15:05', NULL, NULL),
(362, 28, '2019-11-07', '07:07:12', NULL, NULL),
(363, 14, '2019-11-07', '06:15:05', NULL, NULL),
(364, 28, '2019-11-07', '07:07:12', NULL, NULL),
(365, 14, '2019-11-07', '06:15:05', NULL, NULL),
(366, 28, '2019-11-07', '07:07:12', NULL, NULL),
(367, 14, '2019-11-07', '06:15:05', NULL, NULL),
(368, 28, '2019-11-07', '07:07:12', NULL, NULL),
(369, 14, '2019-11-07', '06:15:05', NULL, NULL),
(370, 28, '2019-11-07', '07:07:12', NULL, NULL),
(371, 14, '2019-11-07', '06:15:05', NULL, NULL),
(372, 28, '2019-11-07', '07:07:12', NULL, NULL),
(373, 14, '2019-11-07', '06:15:05', NULL, NULL),
(374, 28, '2019-11-07', '07:07:12', NULL, NULL),
(375, 14, '2019-11-07', '06:15:05', NULL, NULL),
(376, 30, '2019-11-28', '14:51:00', NULL, NULL),
(377, 12, '2019-11-29', '14:52:00', NULL, NULL),
(378, 30, '2019-11-28', '14:51:00', NULL, NULL),
(379, 12, '2019-11-29', '14:52:00', NULL, NULL),
(380, 25, '2019-11-28', '07:07:12', NULL, NULL),
(381, 20, '2019-11-28', '15:01:05', NULL, NULL),
(382, 10, '2019-11-29', '10:51:30', NULL, NULL),
(383, 12, '2019-11-28', '14:51:19', NULL, NULL),
(384, 31, '2019-11-28', '14:51:19', NULL, NULL),
(385, 30, '2019-11-28', '14:51:00', NULL, NULL),
(386, 30, '2019-11-28', '14:51:00', NULL, NULL),
(387, 30, '2019-11-29', '07:07:12', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `temperatures`
--
ALTER TABLE `temperatures`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `temperatures`
--
ALTER TABLE `temperatures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=388;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
