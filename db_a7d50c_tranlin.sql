-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: mysql5039.site4now.net
-- Generation Time: Dec 16, 2021 at 02:16 AM
-- Server version: 5.6.26-log
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_a7d50c_tranlin`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'CNTT', 'Information technology', '2021-12-02 02:24:46', '2021-12-02 02:24:46'),
(2, 'Businessmen', 'something', '2021-12-03 22:29:35', '2021-12-03 22:29:35'),
(3, 'Start-up', 'It helps for everyone who want to start a business', '2021-12-08 21:04:11', '2021-12-08 21:12:04');

-- --------------------------------------------------------

--
-- Table structure for table `category_course`
--

CREATE TABLE `category_course` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_course`
--

INSERT INTO `category_course` (`id`, `category_id`, `course_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 2, NULL, NULL),
(6, 2, 6, NULL, NULL),
(7, 1, 7, NULL, NULL),
(8, 1, 8, NULL, NULL),
(9, 2, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'not',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Java development', 'need to learn', '/storage/course/32z9U57epfUGJJdra03P.jpg', '2021-12-02 02:25:33', '2021-12-16 12:39:37'),
(2, 'How to start up?', 'It helps for everyone who want to start a business', '/storage/course/TkVGn51NogRoIQSNn54i.jpg', '2021-12-03 22:32:48', '2021-12-16 12:39:59'),
(3, 'Business Analysis', 'It helps for everyone who want to start a business', '/storage/course/6pBz8SDOT14Z6gpPutcs.jpg', '2021-12-03 22:33:54', '2021-12-16 12:40:28'),
(6, 'Start-up', 'Importance', '/storage/course/RgnQ48BgaHsQSPTuPjsT.jpg', '2021-12-03 22:37:03', '2021-12-16 12:41:03'),
(7, 'IoT', 'Internet of Things', '/storage/course/8lZu0jekH58u34etDHxX.png', '2021-12-03 22:38:39', '2021-12-16 12:41:29'),
(8, 'Java for life', 'Java is to easy to learn', '/storage/course/rUOPtp8bDNkBb8KvMnGl.jpg', '2021-12-08 22:33:26', '2021-12-16 12:41:59');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2021_11_30_032050_create_trainees_table', 1),
(3, '2021_11_30_033923_create_trainers_table', 1),
(4, '2021_11_30_105345_create_categories_table', 1),
(5, '2021_11_30_115102_create_courses_table', 1),
(6, '2021_11_30_115954_create_topics_table', 1),
(7, '2021_11_30_132257_add_table_cource_and_category', 1),
(8, '2021_11_30_134524_add_table_cource_and_trainer', 1),
(9, '2021_11_30_140613_add_table_cource_and_trainee', 2);

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `course_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `name`, `description`, `course_id`, `created_at`, `updated_at`) VALUES
(2, 'Lession 1: What is Java web?', '<p>In&nbsp;<a href=\"https://en.wikipedia.org/wiki/Computing\" title=\"Computing\">computing</a>,&nbsp;<strong>Java Web Start</strong>&nbsp;(also known as&nbsp;<strong>JavaWS</strong>,&nbsp;<strong>javaws</strong>&nbsp;or&nbsp;<strong>JAWS</strong>) was a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Software_framework\" title=\"Software framework\">framework</a>&nbsp;developed by&nbsp;<a href=\"https://en.wikipedia.org/wiki/Sun_Microsystems\" title=\"Sun Microsystems\">Sun Microsystems</a>&nbsp;(now&nbsp;<a href=\"https://en.wikipedia.org/wiki/Oracle_Corporation\" title=\"Oracle Corporation\">Oracle</a>) that allows users to start&nbsp;<a href=\"https://en.wikipedia.org/wiki/Application_software\" title=\"Application software\">application software</a>&nbsp;for the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Java_Platform\" title=\"Java Platform\">Java Platform</a>&nbsp;directly from the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Internet\" title=\"Internet\">Internet</a>&nbsp;using a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Web_browser\" title=\"Web browser\">web browser</a>. Some key benefits of this technology included seamless version updating for globally distributed applications and greater control of memory allocation to the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Java_virtual_machine\" title=\"Java virtual machine\">Java virtual machine</a>.</p>\r\n\r\n<p>Java Web Start was distributed as part of the Java Platform, and included in downloads of the JRE and JDK. It was deprecated by Oracle in Java SE 9 and removed in Java SE 11. The code for Java Web Start was not released by Oracle as part of&nbsp;<a href=\"https://en.wikipedia.org/wiki/OpenJDK\" title=\"OpenJDK\">OpenJDK</a>, and thus OpenJDK originally did not support it.&nbsp;<a href=\"https://en.wikipedia.org/wiki/IcedTea#IcedTea-Web\" title=\"IcedTea\">IcedTea-Web</a>&nbsp;provides an independent open source implementation of Java Web Start that is currently developed by the&nbsp;<a href=\"https://en.wikipedia.org/wiki/AdoptOpenJDK\" title=\"AdoptOpenJDK\">AdoptOpenJDK</a>&nbsp;community,&nbsp;<a href=\"https://en.wikipedia.org/wiki/RedHat\" title=\"RedHat\">RedHat</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/w/index.php?title=Karakun_AG&amp;action=edit&amp;redlink=1\" title=\"Karakun AG (page does not exist)\">Karakun AG</a>, and which is bundled in the official OpenJDK installer.<sup><a href=\"https://en.wikipedia.org/wiki/Java_Web_Start#cite_note-1\">[1]</a></sup>&nbsp;Next to this OpenWebStart provides an&nbsp;<a href=\"https://en.wikipedia.org/wiki/Open_source\" title=\"Open source\">open source</a>&nbsp;based implementation that is based on IcedTea-Web but offers more features and commercial support options.</p>', 1, '2021-12-03 21:24:54', '2021-12-03 22:31:05'),
(3, 'Java first web application', '<p>java is easy to learn and you need to learn it</p>', 1, '2021-12-08 22:42:46', '2021-12-08 22:42:46'),
(4, '$%^&*', '<p>Display the information of the Category that the user had selected</p>', 1, '2021-12-08 22:43:20', '2021-12-08 22:43:20'),
(5, 'HOANG MINH DANG', NULL, 1, '2021-12-08 22:50:30', '2021-12-08 22:50:30');

-- --------------------------------------------------------

--
-- Table structure for table `trainees`
--

CREATE TABLE `trainees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'not',
  `dateOfBirth` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `education` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `programingLanguages` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `toeicScore` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `experienceDetails` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trainees`
--

INSERT INTO `trainees` (`id`, `name`, `image`, `dateOfBirth`, `education`, `programingLanguages`, `toeicScore`, `experienceDetails`, `department`, `location`, `user_id`, `created_at`, `updated_at`) VALUES
(99, 'admin', '/storage/trainee/Z3XJMNDmsAVjtxuFg3I5.png', '', '', '', '', '', '', '', 99, '2021-12-02 02:14:52', '2021-12-16 12:37:21'),
(110, 'DO THI THANH HUONG', '/storage/trainee/A7s61QNqkMkiu3ew3yGT.png', '2000-11-01', 'University', 'PHP', '990', 'Fresher', 'IT', 'Cau Giay-Ha Noi', 0, '2021-12-16 12:38:28', '2021-12-16 12:38:28');

-- --------------------------------------------------------

--
-- Table structure for table `trainee_course`
--

CREATE TABLE `trainee_course` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trainee_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trainee_course`
--

INSERT INTO `trainee_course` (`id`, `trainee_id`, `course_id`, `created_at`, `updated_at`) VALUES
(14, 110, 1, NULL, NULL),
(15, 110, 3, NULL, NULL),
(16, 110, 6, NULL, NULL),
(17, 110, 7, NULL, NULL),
(18, 110, 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `trainers`
--

CREATE TABLE `trainers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'not',
  `education` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `typeWork` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `workingPlace` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emailAddress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trainers`
--

INSERT INTO `trainers` (`id`, `name`, `image`, `education`, `typeWork`, `workingPlace`, `telephone`, `emailAddress`, `user_id`, `created_at`, `updated_at`) VALUES
(7, 'Nguyễn Mai', '/storage/trainer/IkZrisokb7C3RUheWi2a.png', 'University', 'Full time', 'FPT software', '15486588', 'hoa9399@gmail.com', 0, '2021-12-08 17:44:35', '2021-12-16 12:39:05');

-- --------------------------------------------------------

--
-- Table structure for table `trainer_course`
--

CREATE TABLE `trainer_course` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trainer_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trainer_course`
--

INSERT INTO `trainer_course` (`id`, `trainer_id`, `course_id`, `created_at`, `updated_at`) VALUES
(10, 7, 8, NULL, NULL),
(11, 7, 2, NULL, NULL),
(12, 7, 3, NULL, NULL),
(13, 7, 1, NULL, NULL),
(14, 7, 6, NULL, NULL),
(15, 7, 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` int(11) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(99, 'admin', '$2y$10$C8LRUeLxN5EXJUry.I.BbewAV1SSTi1BP6yfCaquwpBVEqy6z.VbK', 1, NULL, '2021-12-02 02:14:52', '2021-12-02 02:14:52'),
(102, 'admin1', '123456789', 1, NULL, NULL, NULL),
(105, 'linhlinh', '$2y$10$iLAQxwIgiY6nSqkNbT2e9uU5e.gO8Dv9Wg/WpeWob8g9iDIyPlV2m', 0, NULL, '2021-12-02 02:30:09', '2021-12-02 02:30:09'),
(0, 'huong123', '$2y$10$uF0CyOrO3zV/5c0GYb2dZOj.5XPEB07Y43e32DiwviUJzM1aVYq46', 0, NULL, '2021-12-16 12:38:28', '2021-12-16 12:38:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_course`
--
ALTER TABLE `category_course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainees`
--
ALTER TABLE `trainees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainee_course`
--
ALTER TABLE `trainee_course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainers`
--
ALTER TABLE `trainers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainer_course`
--
ALTER TABLE `trainer_course`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category_course`
--
ALTER TABLE `category_course`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `trainees`
--
ALTER TABLE `trainees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `trainee_course`
--
ALTER TABLE `trainee_course`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `trainers`
--
ALTER TABLE `trainers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `trainer_course`
--
ALTER TABLE `trainer_course`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
