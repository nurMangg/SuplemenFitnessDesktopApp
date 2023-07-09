-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 09, 2023 at 05:00 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fitness`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_info`
--

CREATE TABLE `account_info` (
  `id` int(11) NOT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nohp` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_info`
--

INSERT INTO `account_info` (`id`, `alamat`, `email`, `nohp`, `created_at`, `updated_at`) VALUES
(0, 'Desa Pesarean rt.05 rw.04 no.51 Kecamatan Pagerbarang Kabupaten Tegal - Jawa Tengah', 'rohmanuyeoke@gmail.com', '085713050749', NULL, '2023-05-20 10:44:45');

-- --------------------------------------------------------

--
-- Table structure for table `contact_message`
--

CREATE TABLE `contact_message` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(200) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pesan` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_message`
--

INSERT INTO `contact_message` (`id`, `nama`, `email`, `pesan`, `created_at`, `updated_at`) VALUES
(1, 'komet', 'bosku0417@gmail.com', 'saya mau komplain', '2023-05-20 02:40:25', '2023-05-20 02:40:25'),
(2, 'nurmangg', 'bosku0417@gmail.com', 'saya mau komplain nihh', '2023-05-20 02:41:20', '2023-05-20 02:41:20'),
(3, 'mangg', 'rohmanuyeoke@gmail.com', 'saya mau kasih saran', '2023-05-20 02:52:45', '2023-05-20 02:52:45'),
(4, 'Riza', 'riza@gmail.com', 'saya mau memberikan saran tentang website ini', '2023-05-20 03:30:59', '2023-05-20 03:30:59'),
(5, 'studywithmang', 'rohmannaxpesarean@yahoo.com', 'saya ingin memberikan saran, saya ingin memberikan saran, saya ingin memberikan saran, saya ingin memberikan saran, saya ingin memberikan saran, saya ingin memberikan saran, saya ingin memberikan saran, saya ingin memberikan saran, saya ingin memberikan saran, saya ingin memberikan saran, saya ingin memberikan saran, saya ingin memberikan saran, saya ingin memberikan saran, saya ingin memberikan saran, saya ingin memberikan saran, saya ingin memberikan saran, saya ingin memberikan saran, saya ingin memberikan saran, saya ingin memberikan saran,saya ingin memberikan saran.', '2023-05-20 09:21:21', '2023-05-20 09:21:21'),
(6, 'mamangg', 'mamang@gmail.com', 'saya mau memberikan saran pada website ini', '2023-05-20 09:36:54', '2023-05-20 09:36:54');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `fitness`
--

CREATE TABLE `fitness` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_suplemen` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL,
  `isi` int(11) NOT NULL,
  `protein` int(11) NOT NULL,
  `gula` int(11) NOT NULL,
  `kalori` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `info` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fitness`
--

INSERT INTO `fitness` (`id`, `nama_suplemen`, `harga`, `isi`, `protein`, `gula`, `kalori`, `image`, `info`, `created_at`, `updated_at`) VALUES
(10, 'Evomass Coklat 5 LBS', 500000, 2260, 52, 300, 932, '1683794777.png', 'Evomass adalah minuman Gainer dengan kandungan tinggi protein, tinggi karbohidrat berkualitas yang merupakan solusi Anda untuk mendapatkan meningkatkan berat badan dan massa otot yang Anda inginkan dengan mempermudah SURPLUS KALORI tapi tidak membuat perut buncit!.', '2023-05-11 01:46:17', '2023-05-20 08:43:01'),
(12, 'R3ACT Mass Gainer 2 LBS', 245000, 907, 57, 17, 853, '1684596005.png', 'R3ACT Mass Gainer menggunakan 100% Whey sebagai sumber protein kami tanpa ada bahan inferior lainnya, ini menjadikan R3ACT Mass Gainer tinggi dalam BCAA dan Asam amino penting lainnya. Selain itu karena memakai bahan baku superior, R3ACT Mass Gainer memiliki kandungan yang rendah akan lemak, gula dan kolesterol. Ditambah dengan Creatine yang akan memenuhi kebutuhan harian tubuh Anda, Mass Gainer R3ACT akan memaksimalkan pertumbuhan otot dan peningkatan berat badan Anda.', '2023-05-20 08:20:05', '2023-05-20 08:20:05'),
(13, 'WHEYPRO Isolate 300 gr', 180000, 300, 25, 1, 120, '1684597091.png', 'WPRO Isolate tidak mengandung gula, sehingga membuat WPRO Isolate memiliki kadar kalori dan kadar karbohidrat yang rendah dan aman untuk dikonsumsi oleh konsumen yang menderita diabetes.\r\n\r\nMenjadikan WPRO Isolate sebagai \"The Best Value Whey in Indonesia\".', '2023-05-20 08:38:11', '2023-05-20 08:38:11'),
(14, 'Muscle First Pro Whey 100 2 Lbs', 285000, 907, 24, 1, 140, '1684598064.png', 'Inovasi baru dari Muscle First untuk mencukupi kebutuhan protein harian dengan harga ekonomis dan kualitas terbaik! Mengandung 24g protein dan hanya 140 kalori\r\n\r\nKeunggulan:\r\n*mengandung protein tinggi murni yang membantu kinerja tubuh secara maksimal\r\n*menggunakan pemanis alami daun stevia\r\n*rasa coklat alami dari cocoa powder yang lezat sehingga cocok untuk guilt-free chocolate drink!\r\n*Harga ekonomis hanya 12 ribuan per saji, jadi semua orang sekarang bisa mencukupi kebutuhan protein!', '2023-05-20 08:54:24', '2023-05-20 08:54:24'),
(16, 'Elite Labs Mass Muscle Gainer 2 lbs', 190000, 907, 60, 8, 1000, '1684599051.png', 'Elite Labs Mass Muscle Gainer diformulasikan untuk hardgainers yang kesulitan mendapatkan kalori harian yang cukup dan mendapatkan ukuran tubuh yang diinginkan. Mass Muscle Gainer merupakan gainer kualitas terbaik untuk mendapatkan kalori tinggi dengan protein tinggi dan rendah gula dan lemak. Yang diinginkan adalah size besar dan padat, bukan sajian Mass muscle gainer mengandung 1000+ kalori, 60gr time releaased protein, lebih dari 44gr asam amino dan 5gr creatine monohydrate, dan platinum carbo clean carbs, akan sulit mendapatkan gainer yang lebih baik dari ini.\r\n\r\nFeatures:\r\nApprox 60g Protein\r\nCarbo clean (clean carbs)\r\nAdded BCAAs & Over 44g Aminos\r\nOver 5g Creatine Monohydrate\r\nEFAs, CLA & MCT (healthy fats)\r\n18 Key Vitamins & Minerals\r\nGlutamine added for Recovery', '2023-05-20 09:10:51', '2023-05-20 09:10:51');

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `kode` char(2) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `bobot` double NOT NULL,
  `label` enum('cost','benefit') DEFAULT 'benefit'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `kode`, `nama`, `bobot`, `label`) VALUES
(1, 'C1', 'harga', 0.25, 'cost'),
(2, 'C2', 'isi', 0.2, 'benefit'),
(3, 'C3', 'protein', 0.2, 'benefit'),
(4, 'C4', 'gula', 0.25, 'cost'),
(5, 'C5', 'kalori', 0.1, 'benefit');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(11, '2014_10_12_000000_create_users_table', 1),
(12, '2014_10_12_100000_create_password_resets_table', 1),
(13, '2019_08_19_000000_create_failed_jobs_table', 1),
(14, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(16, '2023_04_26_113918_create_roles_table', 2),
(17, '2023_04_26_120530_add_role_id_column_to_users_table', 3),
(18, '2023_04_16_135450_create_fitnesses_table', 4),
(19, '2023_05_20_093743_create_contact_message_table', 5),
(20, '2023_05_20_170010_create_account_info_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pemilihan`
--

CREATE TABLE `pemilihan` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `hasil` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pemilihan`
--

INSERT INTO `pemilihan` (`id`, `nama`, `date`, `hasil`) VALUES
(1, 'Evomass Coklat 5 LBS', '2023-07-09 09:27:37', 0.5573666666666668),
(2, 'R3ACT Mass Gainer 2 LBS', '2023-07-09 09:27:37', 0.55394483846636),
(3, 'WHEYPRO Isolate 300 gr', '2023-07-09 09:27:37', 0.621882005899705),
(4, 'Muscle First Pro Whey 100 2 Lbs', '2023-07-09 09:27:37', 0.582160223567769),
(5, 'Elite Labs Mass Muscle Gainer 2 lbs', '2023-07-09 09:27:37', 0.6483575919888216);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2023-04-26 05:00:26', '2023-04-26 05:00:26'),
(2, 'User', '2023-04-26 05:00:26', '2023-04-26 05:00:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@suplemenfitness.store', 1, NULL, '$2y$10$wbcOg/ZhnOEOZrRedaSpq.VFRfO3YbV47lj5VEMlV6oycMDcQWXoy', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_message`
--
ALTER TABLE `contact_message`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contact_message_id_unique` (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fitness`
--
ALTER TABLE `fitness`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fitness_id_unique` (`id`),
  ADD UNIQUE KEY `nama` (`nama_suplemen`);

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pemilihan`
--
ALTER TABLE `pemilihan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_message`
--
ALTER TABLE `contact_message`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fitness`
--
ALTER TABLE `fitness`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `pemilihan`
--
ALTER TABLE `pemilihan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
