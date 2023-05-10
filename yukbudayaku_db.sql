-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3308
-- Waktu pembuatan: 10 Bulan Mei 2023 pada 15.07
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yukbudayaku_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `course_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `published` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `courses`
--

INSERT INTO `courses` (`id`, `title`, `slug`, `description`, `price`, `course_image`, `start_date`, `published`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Belajar Dasar Batik', 'batik', 'Batik merupakan bagian dari budaya Indonesia dan memiliki nilai historis yang tinggi. Motif-motif batik sering kali memiliki makna filosofis, religius, dan mitologis. Selain itu, batik juga memiliki peran penting dalam ekonomi dan industri Indonesia, karena banyak dihasilkan oleh para pengrajin dan dijual ke berbagai pasar domestik maupun internasional.', 50000, 'images/courses/l8SPZmRDZAWX5bQVaDlCaNoA4SRoA3UeXHNE1Ysb.jpg', '2023-05-09', 1, '2023-05-09 07:45:36', '2023-05-09 07:45:36', NULL),
(2, 'Kesenian Wayang', 'wayang', 'Wayang adalah seni teater bayangan yang berasal dari Indonesia. Dalam pertunjukannya, para pengrawit (dalang) memainkan boneka dari kulit yang dipasang di layar putih sehingga menimbulkan bayangan di dinding belakang panggung. Dalang juga bertindak sebagai pengisi suara dan menceritakan cerita dengan menggunakan bahasa Jawa, Bali, atau bahasa daerah lainnya.', 30000, 'images/courses/pe5Z4xdLIhQNwtsoxACGGFlJlzg1cAfBnPMIQlp7.jpg', '2023-05-01', 1, '2023-05-09 07:50:01', '2023-05-09 07:50:01', NULL),
(3, 'Belajar Tari Saman', 'saman', 'Tari Saman memiliki nilai sejarah, budaya, dan religius yang sangat tinggi bagi masyarakat Aceh. Tarian ini memiliki latar belakang keagamaan Islam dan dipercayai memiliki kekuatan magis serta dapat mengusir roh jahat dan memberikan keberuntungan. Selain itu, tarian ini juga melambangkan persatuan, kebersamaan, dan semangat gotong royon', 50000, 'images/courses/P14TC7h6044z5vKI3aM2PTXfXafNIqER0IkzKmgJ.jpg', '2023-05-10', 1, '2023-05-09 07:55:37', '2023-05-09 07:55:37', NULL),
(4, 'Bahasa Bugis : Magguru Ogi', 'bugis', 'Bahasa Bugis adalah bahasa yang digunakan oleh suku Bugis yang berasal dari Sulawesi Selatan, Indonesia. Bahasa ini juga dipakai oleh suku-suku di sekitarnya seperti suku Makassar, Mandar, dan Toraja. Bahasa Bugis termasuk dalam kelompok bahasa Austronesia dan memiliki banyak dialek tergantung pada wilayahnya.', 30000, 'images/courses/pu3dUb9bwflkSEKpEZoWgaHWFPiwFPxOc7DUntmw.jpg', '2023-05-09', 1, '2023-05-09 07:59:46', '2023-05-09 07:59:46', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `course_student`
--

CREATE TABLE `course_student` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `rating` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `course_student`
--

INSERT INTO `course_student` (`id`, `course_id`, `user_id`, `rating`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 4, '2023-05-09 08:19:01', '2023-05-09 08:19:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `course_user`
--

CREATE TABLE `course_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `course_user`
--

INSERT INTO `course_user` (`id`, `course_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, NULL),
(2, 2, 2, NULL, NULL),
(3, 3, 2, NULL, NULL),
(4, 4, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lessons`
--

CREATE TABLE `lessons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `embed_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(10) UNSIGNED DEFAULT NULL,
  `free_lesson` tinyint(4) DEFAULT 0,
  `published` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lessons`
--

INSERT INTO `lessons` (`id`, `course_id`, `title`, `slug`, `embed_id`, `short_text`, `full_text`, `position`, `free_lesson`, `published`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Sejarah Batik', 'Sejarah Batik', 's94JDFvxSsQ', 'Batik adalah seni tekstil yang telah berkembang di Indonesia selama berabad-abad. Seni batik melibatkan proses melukis atau menerapkan pola pada kain dengan malam lilin atau pasta lilin, kemudian pewarnaan kain tersebut dengan warna-warna alami atau pewarna kimia.', 'Batik adalah seni tekstil yang telah berkembang di Indonesia selama berabad-abad. Seni batik melibatkan proses melukis atau menerapkan pola pada kain dengan malam lilin atau pasta lilin, kemudian pewarnaan kain tersebut dengan warna-warna alami atau pewarna kimia.\r\n\r\nSejarah batik dapat ditelusuri kembali hingga masa kejayaan kerajaan-kerajaan Hindu-Buddha di Indonesia, khususnya di Jawa dan Sumatera. Pada masa itu, batik digunakan sebagai lambang status sosial dan hanya dikenakan oleh golongan bangsawan dan keluarga kerajaan.\r\n\r\nPada abad ke-17, batik mulai dikenal secara internasional setelah VOC (Vereenigde Oost-Indische Compagnie) membawa batik ke Eropa dan menjadikannya sebagai produk ekspor. Karena tuntutan pasar, batik mulai dihasilkan secara massal dan mulai diproduksi di berbagai daerah di Indonesia.\r\n\r\nSelama masa penjajahan Belanda, batik menjadi simbol nasionalisme dan perjuangan kemerdekaan Indonesia. Pada tahun 2009, UNESCO secara resmi mengakui batik sebagai warisan budaya tak benda Indonesia. Hari Batik Nasional juga diperingati setiap tanggal 2 Oktober sebagai bentuk penghormatan terhadap keberagaman budaya dan kekayaan seni rupa Indonesia.', 1, 1, 1, '2023-05-09 08:08:28', '2023-05-09 08:09:33', NULL),
(2, 1, 'Dasar Membatik', 'Dasar Membatik', 'cQ23gLNBVRs', 'Belajar Batik Lewat Video', 'Belajar Batik Lewat Video', 2, 0, 1, '2023-05-09 08:11:56', '2023-05-09 08:11:56', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `lesson_student`
--

CREATE TABLE `lesson_student` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lesson_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lesson_student`
--

INSERT INTO `lesson_student` (`id`, `lesson_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 3, '2023-05-09 08:18:51', '2023-05-09 08:18:51'),
(2, 2, 3, '2023-05-09 08:19:06', '2023-05-09 08:19:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(5, '2021_12_13_150421_create_courses_table', 1),
(6, '2021_12_13_150921_create_lessons_table', 1),
(7, '2021_12_14_003913_create_course_user_table', 1),
(8, '2022_01_19_052015_create_permissions_table', 1),
(9, '2022_01_19_052129_create_roles_table', 1),
(10, '2022_01_19_052257_create_permission_role_table', 1),
(11, '2022_01_19_052421_create_role_user_table', 1),
(12, '2022_01_20_103259_create_questions_table', 1),
(13, '2022_01_20_103626_create_question_options_table', 1),
(14, '2022_01_20_105431_create_tests_table', 1),
(15, '2022_01_21_055517_create_question_test_table', 1),
(16, '2022_01_22_061749_create_course_student_table', 1),
(17, '2022_01_22_070420_add_rating_to_course_student_table', 1),
(18, '2022_01_22_094153_create_lesson_student_table', 1),
(19, '2022_01_23_140035_create_test_results_table', 1),
(20, '2022_01_23_140224_create_test_result_answers_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('aebil@yubu.com', '$2y$10$lPHFnsN2FDh/S31.W5CQuO5naSMw7qW0rsLu/XoiGfZfAVn.cGTwC', '2023-05-09 09:16:41'),
('aebiltaskari@gmail.com', '$2y$10$dxtgjWh8RAC3V1xX8di5kecTMNOscmtePHn8jTvfm0EnRGyJQfH.y', '2023-05-09 09:24:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permissions`
--

INSERT INTO `permissions` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'user_management_access', '2023-05-09 07:41:12', '2023-05-09 07:41:12'),
(2, 'user_management_create', '2023-05-09 07:41:12', '2023-05-09 07:41:12'),
(3, 'user_management_edit', '2023-05-09 07:41:12', '2023-05-09 07:41:12'),
(4, 'user_management_view', '2023-05-09 07:41:12', '2023-05-09 07:41:12'),
(5, 'user_management_delete', '2023-05-09 07:41:12', '2023-05-09 07:41:12'),
(6, 'permission_access', '2023-05-09 07:41:12', '2023-05-09 07:41:12'),
(7, 'permission_create', '2023-05-09 07:41:12', '2023-05-09 07:41:12'),
(8, 'permission_edit', '2023-05-09 07:41:12', '2023-05-09 07:41:12'),
(9, 'permission_view', '2023-05-09 07:41:12', '2023-05-09 07:41:12'),
(10, 'permission_delete', '2023-05-09 07:41:12', '2023-05-09 07:41:12'),
(11, 'role_access', '2023-05-09 07:41:12', '2023-05-09 07:41:12'),
(12, 'role_create', '2023-05-09 07:41:12', '2023-05-09 07:41:12'),
(13, 'role_edit', '2023-05-09 07:41:12', '2023-05-09 07:41:12'),
(14, 'role_view', '2023-05-09 07:41:12', '2023-05-09 07:41:12'),
(15, 'role_delete', '2023-05-09 07:41:12', '2023-05-09 07:41:12'),
(16, 'user_access', '2023-05-09 07:41:12', '2023-05-09 07:41:12'),
(17, 'user_create', '2023-05-09 07:41:12', '2023-05-09 07:41:12'),
(18, 'user_edit', '2023-05-09 07:41:12', '2023-05-09 07:41:12'),
(19, 'user_view', '2023-05-09 07:41:12', '2023-05-09 07:41:12'),
(20, 'user_delete', '2023-05-09 07:41:12', '2023-05-09 07:41:12'),
(21, 'course_access', '2023-05-09 07:41:12', '2023-05-09 07:41:12'),
(22, 'course_create', '2023-05-09 07:41:12', '2023-05-09 07:41:12'),
(23, 'course_edit', '2023-05-09 07:41:12', '2023-05-09 07:41:12'),
(24, 'course_view', '2023-05-09 07:41:12', '2023-05-09 07:41:12'),
(25, 'course_delete', '2023-05-09 07:41:12', '2023-05-09 07:41:12'),
(26, 'lesson_access', '2023-05-09 07:41:12', '2023-05-09 07:41:12'),
(27, 'lesson_create', '2023-05-09 07:41:12', '2023-05-09 07:41:12'),
(28, 'lesson_edit', '2023-05-09 07:41:12', '2023-05-09 07:41:12'),
(29, 'lesson_view', '2023-05-09 07:41:12', '2023-05-09 07:41:12'),
(30, 'lesson_delete', '2023-05-09 07:41:12', '2023-05-09 07:41:12'),
(31, 'question_access', '2023-05-09 07:41:12', '2023-05-09 07:41:12'),
(32, 'question_create', '2023-05-09 07:41:12', '2023-05-09 07:41:12'),
(33, 'question_edit', '2023-05-09 07:41:12', '2023-05-09 07:41:12'),
(34, 'question_view', '2023-05-09 07:41:12', '2023-05-09 07:41:12'),
(35, 'question_delete', '2023-05-09 07:41:12', '2023-05-09 07:41:12'),
(36, 'questions_option_access', '2023-05-09 07:41:12', '2023-05-09 07:41:12'),
(37, 'questions_option_create', '2023-05-09 07:41:12', '2023-05-09 07:41:12'),
(38, 'questions_option_edit', '2023-05-09 07:41:12', '2023-05-09 07:41:12'),
(39, 'questions_option_view', '2023-05-09 07:41:12', '2023-05-09 07:41:12'),
(40, 'questions_option_delete', '2023-05-09 07:41:12', '2023-05-09 07:41:12'),
(41, 'test_access', '2023-05-09 07:41:12', '2023-05-09 07:41:12'),
(42, 'test_create', '2023-05-09 07:41:12', '2023-05-09 07:41:12'),
(43, 'test_edit', '2023-05-09 07:41:12', '2023-05-09 07:41:12'),
(44, 'test_view', '2023-05-09 07:41:12', '2023-05-09 07:41:12'),
(45, 'test_delete', '2023-05-09 07:41:12', '2023-05-09 07:41:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permission_role`
--

CREATE TABLE `permission_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 3, 1, NULL, NULL),
(4, 4, 1, NULL, NULL),
(5, 5, 1, NULL, NULL),
(6, 6, 1, NULL, NULL),
(7, 7, 1, NULL, NULL),
(8, 8, 1, NULL, NULL),
(9, 9, 1, NULL, NULL),
(10, 10, 1, NULL, NULL),
(11, 11, 1, NULL, NULL),
(12, 12, 1, NULL, NULL),
(13, 13, 1, NULL, NULL),
(14, 14, 1, NULL, NULL),
(15, 15, 1, NULL, NULL),
(16, 16, 1, NULL, NULL),
(17, 17, 1, NULL, NULL),
(18, 18, 1, NULL, NULL),
(19, 19, 1, NULL, NULL),
(20, 20, 1, NULL, NULL),
(21, 21, 1, NULL, NULL),
(22, 22, 1, NULL, NULL),
(23, 23, 1, NULL, NULL),
(24, 24, 1, NULL, NULL),
(25, 25, 1, NULL, NULL),
(26, 26, 1, NULL, NULL),
(27, 27, 1, NULL, NULL),
(28, 28, 1, NULL, NULL),
(29, 29, 1, NULL, NULL),
(30, 30, 1, NULL, NULL),
(31, 31, 1, NULL, NULL),
(32, 32, 1, NULL, NULL),
(33, 33, 1, NULL, NULL),
(34, 34, 1, NULL, NULL),
(35, 35, 1, NULL, NULL),
(36, 36, 1, NULL, NULL),
(37, 37, 1, NULL, NULL),
(38, 38, 1, NULL, NULL),
(39, 39, 1, NULL, NULL),
(40, 40, 1, NULL, NULL),
(41, 41, 1, NULL, NULL),
(42, 42, 1, NULL, NULL),
(43, 43, 1, NULL, NULL),
(44, 44, 1, NULL, NULL),
(45, 45, 1, NULL, NULL),
(46, 1, 2, NULL, NULL),
(47, 21, 2, NULL, NULL),
(48, 22, 2, NULL, NULL),
(49, 23, 2, NULL, NULL),
(50, 24, 2, NULL, NULL),
(51, 26, 2, NULL, NULL),
(52, 27, 2, NULL, NULL),
(53, 28, 2, NULL, NULL),
(54, 29, 2, NULL, NULL),
(55, 31, 2, NULL, NULL),
(56, 32, 2, NULL, NULL),
(57, 33, 2, NULL, NULL),
(58, 34, 2, NULL, NULL),
(59, 36, 2, NULL, NULL),
(60, 37, 2, NULL, NULL),
(61, 38, 2, NULL, NULL),
(62, 39, 2, NULL, NULL),
(63, 40, 2, NULL, NULL),
(64, 41, 2, NULL, NULL),
(65, 42, 2, NULL, NULL),
(66, 43, 2, NULL, NULL),
(67, 44, 2, NULL, NULL),
(68, 45, 2, NULL, NULL),
(69, 1, 3, NULL, NULL),
(70, 21, 3, NULL, NULL),
(71, 24, 3, NULL, NULL),
(72, 26, 3, NULL, NULL),
(73, 29, 3, NULL, NULL),
(74, 31, 3, NULL, NULL),
(75, 34, 3, NULL, NULL),
(76, 36, 3, NULL, NULL),
(77, 37, 3, NULL, NULL),
(78, 38, 3, NULL, NULL),
(79, 39, 3, NULL, NULL),
(80, 40, 3, NULL, NULL),
(81, 41, 3, NULL, NULL),
(82, 44, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `questions`
--

INSERT INTO `questions` (`id`, `question`, `question_image`, `score`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Pada abad ke berapa batik dikenal secara internasional?', NULL, 50, '2023-05-09 08:16:46', '2023-05-09 08:16:46', NULL),
(2, 'Tahun berapa UNESCO meresmikan batik sebagai warisan budaya Indonesia?', NULL, 50, '2023-05-09 08:18:13', '2023-05-09 08:18:13', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `question_options`
--

CREATE TABLE `question_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED DEFAULT NULL,
  `option_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `correct` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `question_options`
--

INSERT INTO `question_options` (`id`, `question_id`, `option_text`, `correct`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'abad ke-17', 1, '2023-05-09 08:16:46', '2023-05-09 08:16:46', NULL),
(2, 1, 'abad ke-18', 0, '2023-05-09 08:16:46', '2023-05-09 08:16:46', NULL),
(3, 1, 'abad ke-19', 0, '2023-05-09 08:16:46', '2023-05-09 08:16:46', NULL),
(4, 1, 'abad ke-20', 0, '2023-05-09 08:16:46', '2023-05-09 08:16:46', NULL),
(5, 2, '2011', 0, '2023-05-09 08:18:13', '2023-05-09 08:18:13', NULL),
(6, 2, '2012', 0, '2023-05-09 08:18:13', '2023-05-09 08:18:13', NULL),
(7, 2, '2009', 1, '2023-05-09 08:18:13', '2023-05-09 08:18:13', NULL),
(8, 2, '2007', 0, '2023-05-09 08:18:13', '2023-05-09 08:18:13', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `question_test`
--

CREATE TABLE `question_test` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED DEFAULT NULL,
  `test_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `question_test`
--

INSERT INTO `question_test` (`id`, `question_id`, `test_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Administrator (can create other users)', '2023-05-09 07:41:12', '2023-05-09 07:41:12'),
(2, 'Teacher', '2023-05-09 07:41:12', '2023-05-09 07:41:12'),
(3, 'Student', '2023-05-09 07:41:12', '2023-05-09 07:41:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 2, NULL, NULL),
(3, 3, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tests`
--

CREATE TABLE `tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `lesson_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tests`
--

INSERT INTO `tests` (`id`, `course_id`, `lesson_id`, `title`, `description`, `published`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'Quiz', 'Quiz', 1, '2023-05-09 08:14:56', '2023-05-09 08:14:56', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `test_results`
--

CREATE TABLE `test_results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `test_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `test_result` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `test_results`
--

INSERT INTO `test_results` (`id`, `test_id`, `user_id`, `test_result`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 100, '2023-05-09 08:19:43', '2023-05-09 08:19:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `test_result_answers`
--

CREATE TABLE `test_result_answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `test_result_id` bigint(20) UNSIGNED DEFAULT NULL,
  `question_id` bigint(20) UNSIGNED DEFAULT NULL,
  `question_option_id` bigint(20) UNSIGNED DEFAULT NULL,
  `correct` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `test_result_answers`
--

INSERT INTO `test_result_answers` (`id`, `test_result_id`, `question_id`, `question_option_id`, `correct`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, '2023-05-09 08:19:43', '2023-05-09 08:19:43'),
(2, 1, 2, 7, 1, '2023-05-09 08:19:43', '2023-05-09 08:19:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@example.com', NULL, '$2y$10$JKbZ2jx.DzUTBrVoyk2HK.WfSi5lnDXP4cou62DRStHr9MvFaUQUO', '', '2023-05-09 07:41:12', '2023-05-09 07:41:12'),
(2, 'Muhammad Anton', 'anton@yubu.com', NULL, '$2y$10$Wp3TeeFLYJO9FYQhdZj3ZOitEphksOOe2U0JdvWb/NyP7sf.ngIK6', NULL, '2023-05-09 07:42:34', '2023-05-09 07:42:34'),
(3, 'Aebil', 'aebiltaskari@gmail.com', NULL, '$2y$10$VbYd05j7K/d2Xwg6kBgEwOZ6.WIWIJ4KQ2283RbdK0oLvsIOm.jTq', NULL, '2023-05-09 08:02:00', '2023-05-09 08:02:00');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `course_student`
--
ALTER TABLE `course_student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_student_course_id_foreign` (`course_id`),
  ADD KEY `course_student_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `course_user`
--
ALTER TABLE `course_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_user_course_id_foreign` (`course_id`),
  ADD KEY `course_user_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lessons_course_id_foreign` (`course_id`);

--
-- Indeks untuk tabel `lesson_student`
--
ALTER TABLE `lesson_student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lesson_student_lesson_id_foreign` (`lesson_id`),
  ADD KEY `lesson_student_user_id_foreign` (`user_id`);

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
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_deleted_at_index` (`deleted_at`);

--
-- Indeks untuk tabel `question_options`
--
ALTER TABLE `question_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_options_question_id_foreign` (`question_id`),
  ADD KEY `question_options_deleted_at_index` (`deleted_at`);

--
-- Indeks untuk tabel `question_test`
--
ALTER TABLE `question_test`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_test_question_id_foreign` (`question_id`),
  ADD KEY `question_test_test_id_foreign` (`test_id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tests_course_id_foreign` (`course_id`),
  ADD KEY `tests_lesson_id_foreign` (`lesson_id`),
  ADD KEY `tests_deleted_at_index` (`deleted_at`);

--
-- Indeks untuk tabel `test_results`
--
ALTER TABLE `test_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `test_results_test_id_foreign` (`test_id`),
  ADD KEY `test_results_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `test_result_answers`
--
ALTER TABLE `test_result_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `test_result_answers_test_result_id_foreign` (`test_result_id`),
  ADD KEY `test_result_answers_question_id_foreign` (`question_id`),
  ADD KEY `test_result_answers_question_option_id_foreign` (`question_option_id`);

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
-- AUTO_INCREMENT untuk tabel `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `course_student`
--
ALTER TABLE `course_student`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `course_user`
--
ALTER TABLE `course_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `lesson_student`
--
ALTER TABLE `lesson_student`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT untuk tabel `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `question_options`
--
ALTER TABLE `question_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `question_test`
--
ALTER TABLE `question_test`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tests`
--
ALTER TABLE `tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `test_results`
--
ALTER TABLE `test_results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `test_result_answers`
--
ALTER TABLE `test_result_answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `course_student`
--
ALTER TABLE `course_student`
  ADD CONSTRAINT `course_student_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_student_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `course_user`
--
ALTER TABLE `course_user`
  ADD CONSTRAINT `course_user_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `lessons`
--
ALTER TABLE `lessons`
  ADD CONSTRAINT `lessons_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `lesson_student`
--
ALTER TABLE `lesson_student`
  ADD CONSTRAINT `lesson_student_lesson_id_foreign` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lesson_student_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `question_options`
--
ALTER TABLE `question_options`
  ADD CONSTRAINT `question_options_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `question_test`
--
ALTER TABLE `question_test`
  ADD CONSTRAINT `question_test_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `question_test_test_id_foreign` FOREIGN KEY (`test_id`) REFERENCES `tests` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tests`
--
ALTER TABLE `tests`
  ADD CONSTRAINT `tests_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tests_lesson_id_foreign` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `test_results`
--
ALTER TABLE `test_results`
  ADD CONSTRAINT `test_results_test_id_foreign` FOREIGN KEY (`test_id`) REFERENCES `tests` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `test_results_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `test_result_answers`
--
ALTER TABLE `test_result_answers`
  ADD CONSTRAINT `test_result_answers_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `test_result_answers_question_option_id_foreign` FOREIGN KEY (`question_option_id`) REFERENCES `question_options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `test_result_answers_test_result_id_foreign` FOREIGN KEY (`test_result_id`) REFERENCES `test_results` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
