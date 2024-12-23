-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Des 2024 pada 04.25
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sapi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikels`
--

CREATE TABLE `artikels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url_gambar` char(255) NOT NULL,
  `kode_depresi` char(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `artikels`
--

INSERT INTO `artikels` (`id`, `url_gambar`, `kode_depresi`, `judul`, `isi`, `created_at`, `updated_at`) VALUES
(1, 'https://plus.unsplash.com/premium_photo-1668062843172-0129f25a1276?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80', 'P001', 'Gangguan Mood', 'Ganggguan mood yang terjadi pada seseorang ini umumnya terjadi karena banyaknya tekanan yang menimpa dirinya dan cenderung terlarut dalam tekanan dapat meningkatkan resiko berkembangnya gangguan mood yang kemudian dapat berubah menjadi depresi terutama depresi mayor. Hal ini terbukti pada suatu penelitian yang menemukan bahwa dalam sekitar empat dari lima kasus, depresi mayor diawali oleh peristiwa kehidupan yang penuh tekanan.', NULL, NULL),
(2, 'https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2022/10/04084507/Ini-Ciri-Ciri-Depresi-Ringan-yang-Masih-Sering-Diabaikan.jpg', 'P002', 'Depresi Minor / Depresi Ringan', 'Depresi ringan ini di identikkan dengan depresi minor yang merupakan perasaan melankolis yang berlangsung sebentar dan disebabkan oleh sebuah kejadian yang tragis atau mengandung ancaman, atau kehilangan sesuatu yang penting dalam kehidupan si penderita (Meier, 2000: 20-21). Orang dengan depresi ringan ini setidaknya memiliki 2 dari gejala lainnya dan 2-3 dari gejala utama. (Maslim, 2003, 64).', NULL, NULL),
(3, 'https://soc-phoenix.s3-ap-southeast-1.amazonaws.com/wp-content/uploads/2017/09/22173906/mental-illness-and-disorders.jpg', 'P003', 'Depresi Sedang', 'Depresi sedang ini di alami oleh penderita selama kurang 2 minggu, dan orang dengan depresi sedang ini mengalami kesulitan nyata untuk meneruskan kegiatan social, pekerjaan dan urusan rumah tangga. Orang dengan depresi sedang ini setidaknya memiliki 2-3 dari gejala utama dan 3-4 dari gejala lainnya (Maslim,  2003: 64).', NULL, NULL),
(4, 'https://soc-phoenix.s3-ap-southeast-1.amazonaws.com/wp-content/uploads/2017/09/22173906/mental-illness-and-disorders.jpg', 'P004', 'Depresi mayor / Depresi Berat', 'Depresi mayor merupakan salah satu gangguan yang prevalensinya paling tinggi di antara berbagai gangguan (Davidson, 2006: 374). Depresi mayor adalah kemurungan yang dalam dan menyebar luas. Perasaan murung ini mampu menyedot semangat dan energy serta menyelubungi kehidupan si penderita seperti asap yang tebak dan menyesakkan dada. Depresi mayor ini dapat berlangsung cukup lama mulai dari empat belas hari sampai beberapa tahun. Hal ini menyebabkan penderita akan sangat sulit utnuk berfungsi dengan baik di lingkungannya. Orang dengan depresi mayor ini juga terkadang disertai dengan keinginan untuk bunuh diri atau bahkan keinginan untuk mati. Orang yang sangat tertekan, mereka akan mengalami dampak hal-hal yang mengganggu kejiwaan mereka seperti gila, paranoia atau halusinasi pendengaran (Meier, 2000: 25-26).', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `diagnosas`
--

CREATE TABLE `diagnosas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `diagnosa_id` char(255) NOT NULL,
  `data_diagnosa` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`data_diagnosa`)),
  `kondisi` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`kondisi`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `diagnosas`
--

INSERT INTO `diagnosas` (`id`, `diagnosa_id`, `data_diagnosa`, `kondisi`, `created_at`, `updated_at`) VALUES
(1, '67398952586a8', '[{\"value\":\"1\",\"kode_depresi\":\"P001\"},{\"value\":\"1\",\"kode_depresi\":\"P002\"},{\"value\":\"1\",\"kode_depresi\":\"P003\"},{\"value\":\"1\",\"kode_depresi\":\"P004\"}]', '[[\"G001\",\"0.8\"],[\"G002\",\"0.6\"],[\"G003\",\"0.8\"],[\"G004\",\"0.6\"],[\"G005\",\"0.6\"],[\"G006\",\"0.6\"],[\"G007\",\"0.6\"],[\"G008\",\"0.2\"],[\"G009\",\"0.4\"],[\"G010\",\"1\"],[\"G011\",\"1\"],[\"G012\",\"0.6\"],[\"G013\",\"0.6\"],[\"G014\",\"0.2\"],[\"G015\",\"0.2\"],[\"G016\",\"0.2\"]]', '2024-11-17 06:12:34', '2024-11-17 06:12:34'),
(2, '67398ef4e9de8', '[{\"value\":\"1\",\"kode_depresi\":\"P001\"},{\"value\":\"1\",\"kode_depresi\":\"P002\"},{\"value\":\"1\",\"kode_depresi\":\"P003\"},{\"value\":\"1\",\"kode_depresi\":\"P004\"}]', '[[\"G001\",\"0.6\"],[\"G002\",\"0.6\"],[\"G003\",\"0.6\"],[\"G004\",\"0.8\"],[\"G005\",\"0.8\"],[\"G006\",\"0.8\"],[\"G007\",\"0.6\"],[\"G008\",\"0.6\"],[\"G009\",\"0.6\"],[\"G010\",\"0.6\"],[\"G011\",\"0.6\"],[\"G012\",\"0.2\"],[\"G013\",\"0.2\"],[\"G014\",\"0.6\"]]', '2024-11-17 06:36:36', '2024-11-17 06:36:36'),
(3, '673990ad4a565', '[{\"value\":\"1\",\"kode_depresi\":\"P001\"},{\"value\":\"0.64\",\"kode_depresi\":\"P002\"},{\"value\":\"0.6\",\"kode_depresi\":\"P003\"},{\"value\":\"0.8\",\"kode_depresi\":\"P004\"}]', '[[\"G001\",\"0.6\"],[\"G002\",\"0.6\"],[\"G003\",\"0.8\"],[\"G005\",\"0.8\"]]', '2024-11-17 06:43:57', '2024-11-17 06:43:57'),
(4, '673993ee63ec1', '[{\"value\":\"1\",\"kode_depresi\":\"P001\"},{\"value\":\"1\",\"kode_depresi\":\"P002\"},{\"value\":\"1\",\"kode_depresi\":\"P003\"},{\"value\":\"1\",\"kode_depresi\":\"P004\"}]', '[[\"G002\",\"0.2\"],[\"G003\",\"0.2\"],[\"G004\",\"0.2\"],[\"G005\",\"0.2\"],[\"G006\",\"0.2\"],[\"G007\",\"0.2\"],[\"G008\",\"0.2\"],[\"G009\",\"0.2\"],[\"G010\",\"0.6\"],[\"G011\",\"0.6\"],[\"G012\",\"0.6\"],[\"G013\",\"0.6\"],[\"G014\",\"0.6\"]]', '2024-11-17 06:57:50', '2024-11-17 06:57:50'),
(5, '67399481e2f10', '[]', '[]', '2024-11-17 07:00:17', '2024-11-17 07:00:17'),
(6, '673994b8ad746', '[{\"value\":\"1\",\"kode_depresi\":\"P001\"},{\"value\":\"1\",\"kode_depresi\":\"P002\"},{\"value\":\"1\",\"kode_depresi\":\"P003\"},{\"value\":\"1\",\"kode_depresi\":\"P004\"}]', '[[\"G001\",\"0\"],[\"G002\",\"0\"],[\"G003\",\"0.6\"],[\"G004\",\"0.2\"],[\"G005\",\"0.2\"],[\"G006\",\"0.6\"],[\"G007\",\"0.6\"],[\"G008\",\"0.2\"],[\"G009\",\"0.2\"],[\"G010\",\"0.2\"],[\"G011\",\"1\"],[\"G012\",\"0.6\"],[\"G013\",\"0.2\"],[\"G014\",\"0.6\"],[\"G015\",\"0.6\"],[\"G016\",\"0.2\"]]', '2024-11-17 07:01:12', '2024-11-17 07:01:12'),
(7, '6739ff2a8b0f8', '[{\"value\":\"1\",\"kode_depresi\":\"P001\"},{\"value\":\"1\",\"kode_depresi\":\"P002\"},{\"value\":\"1\",\"kode_depresi\":\"P003\"},{\"value\":\"1\",\"kode_depresi\":\"P004\"}]', '[[\"G001\",\"0.6\"],[\"G002\",\"0.8\"],[\"G003\",\"0.4\"],[\"G004\",\"0.4\"],[\"G005\",\"0.6\"],[\"G006\",\"0.8\"],[\"G007\",\"0.4\"],[\"G008\",\"0.8\"],[\"G009\",\"0.4\"],[\"G010\",\"0.6\"],[\"G011\",\"0.6\"],[\"G012\",\"0.6\"],[\"G013\",\"0.6\"],[\"G014\",\"0.6\"],[\"G015\",\"0.4\"],[\"G016\",\"0.6\"]]', '2024-11-17 14:35:22', '2024-11-17 14:35:22'),
(8, '673c852242411', '[{\"value\":\"1\",\"kode_depresi\":\"P001\"},{\"value\":\"1\",\"kode_depresi\":\"P002\"},{\"value\":\"1\",\"kode_depresi\":\"P003\"},{\"value\":\"1\",\"kode_depresi\":\"P004\"}]', '[[\"G001\",\"0\"],[\"G002\",\"0\"],[\"G003\",\"0.6\"],[\"G004\",\"0.6\"],[\"G005\",\"0.6\"],[\"G006\",\"0.2\"],[\"G007\",\"0.2\"],[\"G008\",\"0.6\"],[\"G009\",\"0.6\"],[\"G010\",\"0.6\"],[\"G011\",\"0.6\"],[\"G012\",\"0.6\"],[\"G013\",\"0.4\"]]', '2024-11-19 12:31:30', '2024-11-19 12:31:30'),
(9, '673c8775bf1ec', '[{\"value\":\"1\",\"kode_depresi\":\"P001\"},{\"value\":\"0.64\",\"kode_depresi\":\"P002\"},{\"value\":\"0.6\",\"kode_depresi\":\"P003\"},{\"value\":\"0.8\",\"kode_depresi\":\"P004\"}]', '[[\"G001\",\"0.2\"],[\"G002\",\"0.4\"],[\"G003\",\"0.4\"]]', '2024-11-19 12:41:25', '2024-11-19 12:41:25'),
(10, '673c8c7f239df', '[]', '[]', '2024-11-19 13:02:55', '2024-11-19 13:02:55'),
(11, '673c8c959c0e6', '[{\"value\":\"0.9856\",\"kode_depresi\":\"P002\"},{\"value\":\"1\",\"kode_depresi\":\"P003\"},{\"value\":\"1\",\"kode_depresi\":\"P004\"}]', '[[\"G011\",\"0.6\"],[\"G012\",\"0.6\"],[\"G013\",\"0.6\"],[\"G014\",\"0.6\"],[\"G015\",\"0.6\"],[\"G016\",\"0.6\"]]', '2024-11-19 13:03:17', '2024-11-19 13:03:17'),
(12, '674e5bac987f8', '[{\"value\":\"1\",\"kode_depresi\":\"P001\"},{\"value\":\"1\",\"kode_depresi\":\"P002\"},{\"value\":\"1\",\"kode_depresi\":\"P003\"},{\"value\":\"1\",\"kode_depresi\":\"P004\"}]', '[[\"G001\",\"0.6\"],[\"G002\",\"0.6\"],[\"G003\",\"0.6\"],[\"G004\",\"0.6\"],[\"G005\",\"0\"],[\"G006\",\"0.8\"],[\"G007\",\"0.6\"],[\"G008\",\"0.4\"],[\"G009\",\"0.2\"],[\"G010\",\"0\"],[\"G011\",\"0.6\"],[\"G012\",\"0\"],[\"G013\",\"0\"],[\"G014\",\"0.2\"],[\"G015\",\"0\"],[\"G016\",\"0\"]]', '2024-12-03 01:15:24', '2024-12-03 01:15:24'),
(13, '67569d3aef091', '[]', '[]', '2024-12-09 07:33:14', '2024-12-09 07:33:14'),
(14, '67569d4757c43', '[]', '[]', '2024-12-09 07:33:27', '2024-12-09 07:33:27'),
(15, '6756a0a2c36b5', '[{\"value\":\"1\",\"kode_depresi\":\"P001\"},{\"value\":\"1\",\"kode_depresi\":\"P002\"},{\"value\":\"1\",\"kode_depresi\":\"P003\"},{\"value\":\"1\",\"kode_depresi\":\"P004\"}]', '[[\"G001\",\"0\"],[\"G002\",\"0.6\"],[\"G003\",\"0.6\"],[\"G004\",\"0\"],[\"G005\",\"0\"],[\"G006\",\"0\"],[\"G007\",\"0\"],[\"G008\",\"0.6\"],[\"G009\",\"0\"],[\"G010\",\"0.6\"],[\"G011\",\"0\"],[\"G012\",\"0\"],[\"G013\",\"0\"],[\"G014\",\"0.6\"],[\"G015\",\"0\"],[\"G016\",\"0\"]]', '2024-12-09 07:47:46', '2024-12-09 07:47:46'),
(16, '6756a0e9a303b', '[{\"value\":\"1\",\"kode_depresi\":\"P001\"},{\"value\":\"0.9568\",\"kode_depresi\":\"P002\"},{\"value\":\"0.6\",\"kode_depresi\":\"P003\"},{\"value\":\"0.8\",\"kode_depresi\":\"P004\"}]', '[[\"G002\",\"0.6\"],[\"G003\",\"0.6\"],[\"G008\",\"0.6\"],[\"G010\",\"0.6\"],[\"G014\",\"0.6\"]]', '2024-12-09 07:48:57', '2024-12-09 07:48:57'),
(17, '6756a11a2917e', '[{\"value\":\"0.52\",\"kode_depresi\":\"P001\"},{\"value\":\"1\",\"kode_depresi\":\"P002\"},{\"value\":\"0.904\",\"kode_depresi\":\"P003\"},{\"value\":\"1\",\"kode_depresi\":\"P004\"}]', '[[\"G001\",\"0.6\"],[\"G006\",\"0.6\"],[\"G007\",\"0.6\"],[\"G011\",\"0.6\"],[\"G012\",\"0.6\"]]', '2024-12-09 07:49:46', '2024-12-09 07:49:46'),
(18, '6756a13842711', '[{\"value\":\"1\",\"kode_depresi\":\"P001\"},{\"value\":\"1\",\"kode_depresi\":\"P002\"},{\"value\":\"1\",\"kode_depresi\":\"P003\"},{\"value\":\"1\",\"kode_depresi\":\"P004\"}]', '[[\"G001\",\"0.6\"],[\"G002\",\"0\"],[\"G003\",\"0\"],[\"G004\",\"0\"],[\"G005\",\"0\"],[\"G006\",\"0.6\"],[\"G007\",\"0.6\"],[\"G008\",\"0\"],[\"G009\",\"0\"],[\"G010\",\"0\"],[\"G011\",\"0.6\"],[\"G012\",\"0.6\"],[\"G013\",\"0\"],[\"G014\",\"0\"],[\"G015\",\"0\"],[\"G016\",\"0\"]]', '2024-12-09 07:50:16', '2024-12-09 07:50:16'),
(19, '6756a20f7d83e', '[{\"value\":\"0.4\",\"kode_depresi\":\"P001\"},{\"value\":\"0.784\",\"kode_depresi\":\"P002\"},{\"value\":\"0.76\",\"kode_depresi\":\"P003\"},{\"value\":\"0.8\",\"kode_depresi\":\"P004\"}]', '[[\"G001\",\"0.6\"],[\"G008\",\"0.6\"],[\"G011\",\"0.6\"]]', '2024-12-09 07:53:51', '2024-12-09 07:53:51'),
(20, '6756a2220e740', '[{\"value\":\"0.4\",\"kode_depresi\":\"P001\"},{\"value\":\"0.9568\",\"kode_depresi\":\"P002\"},{\"value\":\"0.904\",\"kode_depresi\":\"P003\"},{\"value\":\"1\",\"kode_depresi\":\"P004\"}]', '[[\"G001\",\"0.6\"],[\"G008\",\"0.6\"],[\"G011\",\"0.6\"],[\"G012\",\"0.6\"],[\"G014\",\"0.6\"]]', '2024-12-09 07:54:10', '2024-12-09 07:54:10'),
(21, '6756a2552920e', '[{\"value\":\"0.4\",\"kode_depresi\":\"P001\"},{\"value\":\"1\",\"kode_depresi\":\"P002\"},{\"value\":\"0.904\",\"kode_depresi\":\"P003\"},{\"value\":\"1\",\"kode_depresi\":\"P004\"}]', '[[\"G001\",\"0.6\"],[\"G006\",\"0.6\"],[\"G008\",\"0.6\"],[\"G011\",\"0.6\"],[\"G012\",\"0.6\"],[\"G014\",\"0.6\"]]', '2024-12-09 07:55:01', '2024-12-09 07:55:01'),
(22, '6756a2739cae3', '[{\"value\":\"0.4\",\"kode_depresi\":\"P001\"},{\"value\":\"0.4\",\"kode_depresi\":\"P002\"},{\"value\":\"0.6\",\"kode_depresi\":\"P003\"},{\"value\":\"0.8\",\"kode_depresi\":\"P004\"}]', '[[\"G001\",\"0.6\"]]', '2024-12-09 07:55:31', '2024-12-09 07:55:31'),
(23, '6756a29129c0e', '[{\"value\":\"1\",\"kode_depresi\":\"P001\"},{\"value\":\"0.88\",\"kode_depresi\":\"P002\"},{\"value\":\"1\",\"kode_depresi\":\"P003\"},{\"value\":\"1\",\"kode_depresi\":\"P004\"}]', '[[\"G003\",\"0.6\"],[\"G011\",\"0.6\"],[\"G013\",\"0.6\"],[\"G016\",\"0.6\"]]', '2024-12-09 07:56:01', '2024-12-09 07:56:01'),
(24, '6756a2abaadad', '[{\"value\":\"0.928\",\"kode_depresi\":\"P002\"},{\"value\":\"0.4\",\"kode_depresi\":\"P003\"}]', '[[\"G011\",\"0.6\"],[\"G014\",\"0.6\"],[\"G015\",\"0.6\"]]', '2024-12-09 07:56:27', '2024-12-09 07:56:27'),
(25, '6756a2c6b0a56', '[{\"value\":\"0.4\",\"kode_depresi\":\"P001\"},{\"value\":\"1\",\"kode_depresi\":\"P002\"},{\"value\":\"0.76\",\"kode_depresi\":\"P003\"},{\"value\":\"0.8\",\"kode_depresi\":\"P004\"}]', '[[\"G001\",\"1\"],[\"G006\",\"0.6\"],[\"G011\",\"1\"]]', '2024-12-09 07:56:54', '2024-12-09 07:56:54'),
(26, '6756a2d43bd3a', '[{\"value\":\"0.88\",\"kode_depresi\":\"P002\"}]', '[[\"G014\",\"0.8\"],[\"G015\",\"0.8\"]]', '2024-12-09 07:57:08', '2024-12-09 07:57:08'),
(27, '6756a2edc632a', '[{\"value\":\"0.4\",\"kode_depresi\":\"P001\"},{\"value\":\"0.9568\",\"kode_depresi\":\"P002\"},{\"value\":\"0.76\",\"kode_depresi\":\"P003\"},{\"value\":\"0.8\",\"kode_depresi\":\"P004\"}]', '[[\"G001\",\"0.6\"],[\"G008\",\"0.6\"],[\"G011\",\"0.6\"],[\"G014\",\"0.6\"]]', '2024-12-09 07:57:33', '2024-12-09 07:57:33'),
(28, '6756a3819ee59', '[{\"value\":\"0.88\",\"kode_depresi\":\"P002\"},{\"value\":\"1\",\"kode_depresi\":\"P003\"},{\"value\":\"1\",\"kode_depresi\":\"P004\"}]', '[[\"G011\",\"0.6\"],[\"G012\",\"0.6\"],[\"G013\",\"0.6\"],[\"G016\",\"0.6\"]]', '2024-12-09 08:00:01', '2024-12-09 08:00:01'),
(29, '6756a3cb7d257', '[{\"value\":\"0.4\",\"kode_depresi\":\"P001\"},{\"value\":\"0.64\",\"kode_depresi\":\"P002\"},{\"value\":\"0.84\",\"kode_depresi\":\"P003\"},{\"value\":\"1\",\"kode_depresi\":\"P004\"}]', '[[\"G001\",\"0.6\"],[\"G012\",\"0.6\"],[\"G015\",\"0.6\"]]', '2024-12-09 08:01:15', '2024-12-09 08:01:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala`
--

CREATE TABLE `gejala` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_gejala` char(255) NOT NULL,
  `gejala` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `gejala`
--

INSERT INTO `gejala` (`id`, `kode_gejala`, `gejala`, `created_at`, `updated_at`) VALUES
(1, 'G001', 'Sering ngorok', NULL, '2024-11-17 04:46:42'),
(2, 'G002', 'Demam tinggi hingga 41 derajat', NULL, '2024-11-17 05:33:17'),
(3, 'G003', 'Tidak nafsu makan', NULL, '2024-11-17 05:33:37'),
(4, 'G004', 'luka lepuh di lidah, bibir, mulut, gusi, langit-langit mulut, dan hidung', NULL, '2024-11-17 05:34:26'),
(5, 'G005', 'pincang', NULL, '2024-11-17 05:34:47'),
(6, 'G006', 'Penurunan berat badan', NULL, '2024-11-17 05:35:08'),
(7, 'G007', 'Penurunan produksi susu', NULL, '2024-11-17 05:35:29'),
(8, 'G008', 'Peradangan selaput lendir', NULL, '2024-11-17 05:35:49'),
(9, 'G009', 'pembesaran kelenjar pertahanan', NULL, '2024-11-17 05:36:13'),
(10, 'G010', 'Mencret (diare) yang sering bercampur dengan darah', NULL, '2024-11-17 05:36:44'),
(11, 'G011', 'Nafas pendek', NULL, '2024-11-17 05:37:07'),
(12, 'G012', 'Batuk dalam', NULL, '2024-11-17 05:37:23'),
(13, 'G013', 'Keluar cairan dari mata dan hidung', NULL, '2024-11-17 05:37:50'),
(14, 'G014', 'depresi', NULL, '2024-11-17 05:38:21'),
(15, 'G015', 'Paru-paru mengalami peradangan', NULL, '2024-11-17 05:39:48'),
(16, 'G016', 'Leher, anus, vulva membengkak', NULL, '2024-11-17 05:40:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keputusan`
--

CREATE TABLE `keputusan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_gejala` char(255) NOT NULL,
  `kode_depresi` char(255) NOT NULL,
  `mb` double(8,2) NOT NULL,
  `md` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `keputusan`
--

INSERT INTO `keputusan` (`id`, `kode_gejala`, `kode_depresi`, `mb`, `md`, `created_at`, `updated_at`) VALUES
(1, 'G001', 'P001', 0.60, 0.20, NULL, NULL),
(2, 'G002', 'P001', 0.40, 0.20, NULL, NULL),
(3, 'G003', 'P001', 1.00, 0.00, NULL, NULL),
(4, 'G004', 'P001', 0.40, 0.20, NULL, NULL),
(5, 'G005', 'P001', 0.80, 0.20, NULL, NULL),
(6, 'G007', 'P001', 0.40, 0.20, NULL, NULL),
(7, 'G001', 'P002', 0.60, 0.20, NULL, NULL),
(8, 'G002', 'P002', 0.60, 0.20, NULL, NULL),
(9, 'G006', 'P002', 1.00, 0.00, NULL, NULL),
(10, 'G008', 'P002', 0.60, 0.20, NULL, NULL),
(11, 'G010', 'P002', 0.60, 0.20, NULL, NULL),
(12, 'G011', 'P002', 0.60, 0.20, NULL, NULL),
(13, 'G014', 'P002', 0.80, 0.00, NULL, NULL),
(14, 'G015', 'P002', 0.60, 0.20, NULL, NULL),
(15, 'G016', 'P002', 0.80, 0.00, NULL, NULL),
(16, 'G022', 'P002', 0.60, 0.00, NULL, NULL),
(17, 'G001', 'P003', 0.80, 0.20, NULL, NULL),
(18, 'G009', 'P003', 0.80, 0.20, NULL, NULL),
(19, 'G010', 'P003', 0.80, 0.20, NULL, NULL),
(20, 'G011', 'P003', 0.60, 0.20, NULL, NULL),
(21, 'G012', 'P003', 0.80, 0.20, NULL, NULL),
(22, 'G013', 'P003', 1.00, 0.00, NULL, NULL),
(23, 'G016', 'P003', 1.00, 0.00, NULL, NULL),
(24, 'G017', 'P003', 0.80, 0.20, NULL, NULL),
(25, 'G020', 'P003', 0.60, 0.20, NULL, NULL),
(26, 'G022', 'P003', 1.00, 0.00, NULL, NULL),
(27, 'G023', 'P003', 0.80, 0.20, NULL, NULL),
(28, 'G027', 'P003', 0.60, 0.20, NULL, NULL),
(29, 'G001', 'P004', 0.80, 0.00, NULL, NULL),
(30, 'G009', 'P004', 1.00, 0.00, NULL, NULL),
(31, 'G010', 'P004', 0.80, 0.00, NULL, NULL),
(32, 'G012', 'P004', 1.00, 0.00, NULL, NULL),
(33, 'G013', 'P004', 0.20, 0.20, NULL, NULL),
(34, 'G016', 'P004', 1.00, 0.00, NULL, NULL),
(35, 'G018', 'P004', 0.60, 0.20, NULL, NULL),
(36, 'G019', 'P004', 0.80, 0.20, NULL, NULL),
(37, 'G020', 'P004', 0.80, 0.00, NULL, NULL),
(38, 'G021', 'P004', 0.40, 0.20, NULL, NULL),
(39, 'G024', 'P004', 0.60, 0.20, NULL, NULL),
(40, 'G025', 'P004', 0.80, 0.20, NULL, NULL),
(41, 'G026', 'P004', 0.40, 0.20, NULL, NULL),
(42, 'G027', 'P004', 0.60, 0.00, NULL, NULL),
(43, 'G028', 'P004', 1.00, 0.00, NULL, NULL),
(44, 'G029', 'P004', 0.80, 0.00, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kondisi_users`
--

CREATE TABLE `kondisi_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kondisi` varchar(255) NOT NULL,
  `nilai` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kondisi_users`
--

INSERT INTO `kondisi_users` (`id`, `kondisi`, `nilai`, `created_at`, `updated_at`) VALUES
(1, 'Tidak Tahu', 0.00, NULL, NULL),
(2, 'Tidak Yakin', 0.20, NULL, NULL),
(3, 'Mungkin', 0.40, NULL, NULL),
(4, 'Kemungkinan Besar', 0.60, NULL, NULL),
(5, 'Hampir Pasti', 0.80, NULL, NULL),
(6, 'Pasti', 1.00, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_12_19_072517_create_gejalas_table', 1),
(6, '2022_12_20_020104_create_keputusans_table', 1),
(7, '2022_12_20_023708_create_kondisi_users_table', 1),
(8, '2022_12_21_202642_create_diagnosas_table', 1),
(9, '2022_12_22_143013_create_tingkat_depresis_table', 1),
(10, '2022_12_28_103705_create_artikels_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tingkat_depresi`
--

CREATE TABLE `tingkat_depresi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_depresi` char(255) NOT NULL,
  `depresi` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tingkat_depresi`
--

INSERT INTO `tingkat_depresi` (`id`, `kode_depresi`, `depresi`, `created_at`, `updated_at`) VALUES
(1, 'P001', 'Penyakit mulut dan kuku (PMK)', NULL, '2024-11-17 04:48:29'),
(2, 'P002', 'Penyakit Jembrana', NULL, '2024-11-17 04:48:48'),
(3, 'P003', 'Penyakit ngorok', NULL, '2024-11-17 06:09:19'),
(4, 'P004', 'Cacingan', NULL, '2024-11-17 06:10:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'lanjar19@example.org', '2024-11-17 04:38:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'm2fWUyyZKb', '2024-11-17 04:38:37', '2024-11-17 04:38:37'),
(2, 'admin', 'prasetya56@example.net', '2024-11-17 04:38:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ximoYub25R', '2024-11-17 04:38:37', '2024-11-17 04:38:37'),
(3, 'admin', 'mahendra.aisyah@example.org', '2024-11-17 04:38:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aqfdrWIaD6', '2024-11-17 04:38:38', '2024-11-17 04:38:38'),
(4, 'admin', 'admin@example.com', '2024-11-17 04:38:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gOyt7rbYg2s4PUPJUEmvx8vgqFagFutdLqH5OfDVQYPi0xNcfWfGv7Wq7cO0', '2024-11-17 04:38:38', '2024-11-17 04:38:38');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `artikels`
--
ALTER TABLE `artikels`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `diagnosas`
--
ALTER TABLE `diagnosas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `keputusan`
--
ALTER TABLE `keputusan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kondisi_users`
--
ALTER TABLE `kondisi_users`
  ADD PRIMARY KEY (`id`);

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
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `tingkat_depresi`
--
ALTER TABLE `tingkat_depresi`
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
-- AUTO_INCREMENT untuk tabel `artikels`
--
ALTER TABLE `artikels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `diagnosas`
--
ALTER TABLE `diagnosas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `gejala`
--
ALTER TABLE `gejala`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `keputusan`
--
ALTER TABLE `keputusan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `kondisi_users`
--
ALTER TABLE `kondisi_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tingkat_depresi`
--
ALTER TABLE `tingkat_depresi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
