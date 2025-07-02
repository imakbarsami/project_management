-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 02, 2025 at 09:09 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel_cache_1b6453892473a467d07372d45eb05abc2031647a', 'i:2;', 1751375110),
('laravel_cache_1b6453892473a467d07372d45eb05abc2031647a:timer', 'i:1751375110;', 1751375110),
('laravel_cache_356a192b7913b04c54574d18c28d46e6395428ab', 'i:1;', 1751374626),
('laravel_cache_356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1751374626;', 1751374626),
('laravel_cache_77de68daecd823babbb58edb1c8e14d7106e83bb', 'i:1;', 1751374946),
('laravel_cache_77de68daecd823babbb58edb1c8e14d7106e83bb:timer', 'i:1751374946;', 1751374946),
('laravel_cache_902ba3cda1883801594b6e1b452790cc53948fda', 'i:2;', 1751375350),
('laravel_cache_902ba3cda1883801594b6e1b452790cc53948fda:timer', 'i:1751375350;', 1751375350),
('laravel_cache_ac3478d69a3c81fa62e60f5c3696165a4e5e6ac4', 'i:1;', 1751375170),
('laravel_cache_ac3478d69a3c81fa62e60f5c3696165a4e5e6ac4:timer', 'i:1751375170;', 1751375170),
('laravel_cache_afifa@gmail.com|127.0.0.1', 'i:1;', 1751388123),
('laravel_cache_afifa@gmail.com|127.0.0.1:timer', 'i:1751388123;', 1751388123),
('laravel_cache_afifa2237@gmail.com|127.0.0.1', 'i:1;', 1751388113),
('laravel_cache_afifa2237@gmail.com|127.0.0.1:timer', 'i:1751388113;', 1751388113),
('laravel_cache_c1dfd96eea8cc2b62785275bca38ac261256e278', 'i:1;', 1751375257),
('laravel_cache_c1dfd96eea8cc2b62785275bca38ac261256e278:timer', 'i:1751375257;', 1751375257),
('laravel_cache_da4b9237bacccdf19c0760cab7aec4a8359010b0', 'i:1;', 1751374801),
('laravel_cache_da4b9237bacccdf19c0760cab7aec4a8359010b0:timer', 'i:1751374801;', 1751374801),
('laravel_cache_habibulsaikat@gmail.com|127.0.0.1', 'i:1;', 1751388179),
('laravel_cache_habibulsaikat@gmail.com|127.0.0.1:timer', 'i:1751388179;', 1751388179);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `task_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `content`, `user_id`, `task_id`, `created_at`, `updated_at`) VALUES
(1, 'I really like the direction here. Can we also include examples of incorrect logo usage? That often gets overlooked by partners.', 2, 1, '2025-07-01 10:40:38', '2025-07-01 10:40:38'),
(2, 'Let’s not forget to define usage for dark mode interfaces – especially for apps and embedded widgets.', 5, 1, '2025-07-01 10:41:44', '2025-07-01 10:41:44'),
(3, 'Suggest adding voice and tone examples for different scenarios, like error messages vs. marketing emails.', 3, 1, '2025-07-01 10:42:49', '2025-07-01 10:42:49'),
(4, 'We should review this with the legal team once finalized, especially around trademark usage and attribution guidelines.', 1, 1, '2025-07-01 10:43:17', '2025-07-01 10:43:17');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_05_22_102440_create_projects_table', 1),
(5, '2025_05_22_102458_create_tasks_table', 1),
(6, '2025_06_22_151559_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `due_date` timestamp NULL DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `description`, `due_date`, `status`, `image_path`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Website Redesign and Development', 'This project involves a complete overhaul of the company’s existing website to improve user experience, modernize the interface, and ensure mobile responsiveness. The scope includes UX/UI research, wireframing, development of front-end and back-end features, integration with our CMS, and testing. Key deliverables include a redesigned homepage, improved navigation structure, updated content for key pages, a blog section, and optimized performance across all devices and browsers. The project also includes the migration of existing content and SEO optimization to maintain search engine rankings. Collaboration between design, development, and content teams is essential throughout the project lifecycle.', '2025-09-29 18:00:00', 'in_progress', 'project/9F6ROQ65r8NRRdZ3/UTEK8J64wYK1d9wYwJw0T80lfR569rJeM52ly8dp.jpg', 1, 1, '2025-07-01 07:50:14', '2025-07-01 08:28:01'),
(2, 'Website Redesign and Development', 'This project focuses on a full-scale redesign of the corporate website to improve user experience, enhance performance, and ensure accessibility compliance. Key milestones include stakeholder interviews, design prototyping, responsive front-end development, CMS integration, and user testing. The redesigned website will align with the company’s branding strategy and support future scalability.', '2025-09-29 18:00:00', 'in_progress', 'project/Xu0fVwk8pWCOeGhX/dknyTHsHepddQsWz8fjN74QpoRTuMAGfftHeiTJy.jpg', 7, 1, '2025-07-01 04:22:45', '2025-07-01 08:18:10'),
(3, 'Mobile App Launch Coordination', 'This project oversees the coordination of the mobile app launch across iOS and Android platforms. Tasks include QA testing, store listing optimization, marketing asset creation, and scheduling the public release. The team will ensure compliance with app store policies, manage user feedback post-launch, and deploy hotfixes as necessary.', '2025-08-14 18:00:00', 'pending', 'project/Xu0fVwk8pWCOeGhX/dknyTHsHepddQsWz8fjN74QpoRTuMAGfftHeiTJy.jpg', 3, 3, '2025-07-01 03:05:11', '2025-07-01 03:05:11'),
(4, 'Client Onboarding Automation', 'The goal of this project is to automate the client onboarding workflow using CRM integration, email sequencing, and digital form collection. It includes designing custom intake forms, building automated email flows, setting role-based permissions, and creating dashboards for sales and support teams. Successful implementation will reduce manual tasks and improve client satisfaction.', '2025-09-30 18:00:00', 'completed', 'project/CycrTZFFpcj8zTUq/tJgVO4SplYoV29rHnpssRbImJ7ktUN3XNs4QB1xm.jpg', 12, 1, '2025-07-01 07:50:14', '2025-07-01 08:32:49'),
(5, 'Internal Knowledge Base Setup', 'This project aims to build an internal knowledge base for team members. It will feature categorized documentation, search functionality, permissions-based access, and markdown support. The platform will integrate with Slack and Google Workspace and serve as the single source of truth for internal processes, policies, and onboarding guides.', '2025-08-04 18:00:00', 'in_progress', 'project/2ucAWihZ03IhGHOo/WeN4kGdd0CU6Tnc10CGoztTtvdgSGK9jRW1zaokW.png', 10, 1, '2025-07-01 05:37:02', '2025-07-01 08:48:10'),
(6, 'Marketing Campaign for Q4', 'This project covers strategy, asset creation, and campaign execution for the Q4 marketing initiatives. It includes planning email sequences, paid media buys, landing page development, and performance analytics. Coordination with external agencies and internal teams is vital. The campaign’s goal is to increase qualified leads and brand engagement.', '2025-10-14 18:00:00', 'pending', 'project/Xu0fVwk8pWCOeGhX/dknyTHsHepddQsWz8fjN74QpoRTuMAGfftHeiTJy.jpg', 5, 5, '2025-07-01 02:44:30', '2025-07-01 02:44:30'),
(7, 'Data Migration to Cloud', 'This project manages the migration of on-premise databases to a secure cloud environment. It includes auditing current infrastructure, setting up the cloud architecture, validating data integrity, and creating rollback plans. Ensuring minimal downtime and compliance with data security standards is a top priority.', '2025-08-31 18:00:00', 'in_progress', 'project/Xu0fVwk8pWCOeGhX/dknyTHsHepddQsWz8fjN74QpoRTuMAGfftHeiTJy.jpg', 6, 6, '2025-07-01 01:59:29', '2025-07-01 01:59:29'),
(8, 'SEO Optimization Sprint', 'The SEO Optimization Sprint is aimed at improving organic traffic by refining content, fixing technical issues, and improving site speed. The tasks include a full SEO audit, implementation of schema markup, keyword updates, and backlink outreach efforts.', '2025-08-09 18:00:00', 'completed', 'project/JdZb4ymxbAtQVOHB/YHVFy8euDniNjotgmIXrHfQBXgc5YoCGS2WBQce4.jpg', 2, 1, '2025-07-01 08:05:21', '2025-07-01 08:23:29'),
(9, 'Customer Feedback System Upgrade', 'This project upgrades our current customer feedback system by integrating real-time surveys and analytics dashboards. The new system will capture NPS and CSAT scores and allow tagging of qualitative responses for product insights.', '2025-09-17 18:00:00', 'pending', 'project/qxuh0KY6PotksMii/T1m3w0Lr6bs14TSfPhNGCJR8GGwzhVu0XqQuyjUp.png', 11, 1, '2025-07-01 06:18:33', '2025-07-01 08:43:14'),
(10, 'E-commerce Platform Upgrade', 'Upgrade the existing e-commerce backend and frontend stack. Includes transitioning to a microservice architecture, improving page load speed, and implementing enhanced payment security protocols.', '2025-10-09 18:00:00', 'in_progress', 'project/Xu0fVwk8pWCOeGhX/dknyTHsHepddQsWz8fjN74QpoRTuMAGfftHeiTJy.jpg', 4, 4, '2025-07-01 03:49:00', '2025-07-01 03:49:00'),
(11, 'Team OKR Planning Tool', 'Develop a custom web-based tool to help teams define, track, and review OKRs. It will include user role management, quarterly reporting dashboards, and Slack notifications.', '2025-07-29 18:00:00', 'completed', 'project/2KKxTv9R5oFY7R8S/60tPTEQNoqRZs1ThBB1H62T6alTrte4fgKTl16Rf.png', 8, 1, '2025-07-01 07:12:17', '2025-07-01 08:37:02'),
(12, 'Social Media Analytics Dashboard', 'Build an internal analytics tool that aggregates performance metrics from Twitter, LinkedIn, and Facebook. Visualizations will include growth trends, engagement rates, and content reach.', '2025-08-19 18:00:00', 'pending', 'project/Xu0fVwk8pWCOeGhX/dknyTHsHepddQsWz8fjN74QpoRTuMAGfftHeiTJy.jpg', 14, 14, '2025-07-01 02:08:08', '2025-07-01 02:08:08'),
(13, 'Sales CRM Cleanup', 'This project will clean and validate the existing CRM data. Tasks include duplicate detection, standardizing contact formats, and removing stale leads. Final output is a streamlined CRM for improved sales performance.', '2025-08-24 18:00:00', 'in_progress', 'project/Xu0fVwk8pWCOeGhX/dknyTHsHepddQsWz8fjN74QpoRTuMAGfftHeiTJy.jpg', 13, 13, '2025-07-01 05:11:11', '2025-07-01 05:11:11'),
(14, 'Product Roadmap Review', 'Conducting a cross-departmental review of the product roadmap. Includes collecting feedback, aligning feature priorities, and setting quarterly milestones.', '2025-07-24 18:00:00', 'completed', 'project/mUBKzsgnLti7mh8p/eAIJU3KeRAPBQfWpwP1F1yhi500XSEgc7nxevrVx.png', 1, 1, '2025-07-01 06:30:00', '2025-07-01 08:41:35'),
(15, 'Employee Wellness Program', 'Launch an employee wellness initiative including mental health resources, fitness reimbursements, and monthly wellness check-ins.', '2025-09-04 18:00:00', 'pending', 'project/Xu0fVwk8pWCOeGhX/dknyTHsHepddQsWz8fjN74QpoRTuMAGfftHeiTJy.jpg', 15, 15, '2025-07-01 01:15:00', '2025-07-01 01:15:00'),
(16, 'Customer Referral System', 'Design and implement a customer referral system. Users can refer friends via a unique link and receive credits. The system will include fraud detection and analytics.', '2025-08-11 18:00:00', 'in_progress', 'project/7adSNcTHaj3bQb8M/Ig67JCtTJwrMiqZO33iUlpPDBXCbCFTFm7AKqKOZ.png', 9, 1, '2025-07-01 07:40:45', '2025-07-01 08:35:53'),
(17, 'Security Penetration Testing', 'Engage with a third-party vendor to conduct in-depth penetration testing on internal and external systems. Deliverables include a risk report, recommendations, and patching vulnerabilities.', '2025-10-19 18:00:00', 'pending', 'project/Xu0fVwk8pWCOeGhX/dknyTHsHepddQsWz8fjN74QpoRTuMAGfftHeiTJy.jpg', 2, 2, '2025-07-01 04:10:10', '2025-07-01 04:10:10'),
(18, 'Rebranding Initiative', 'Complete rebranding across all platforms including logo redesign, brand guide development, social media updates, and marketing material overhaul.', '2025-09-19 18:00:00', 'in_progress', 'project/g6gDJbcaktVSwRhK/WatuGrw2J1kZzL4qqZy9Q1HjjdjZ7psSwe73VE3C.jpg', 6, 1, '2025-07-01 08:44:14', '2025-07-01 08:16:55'),
(19, 'Employee Training Portal', 'Develop a portal for internal employee training that supports video, quizzes, progress tracking, and certification. Content will be authored by department leads.', '2025-07-31 18:00:00', 'completed', 'project/eOoh58rmQ1XdOPIL/JSZx8EUIjGxezGJ0u4EgblqThoa4Xqls8f6iVwCt.png', 5, 1, '2025-07-01 06:00:00', '2025-07-01 08:47:19'),
(20, 'Customer Loyalty Program', 'Design and launch a loyalty program for repeat customers. Includes point accrual, tiered rewards, and exclusive offers. The program will be integrated into the existing checkout flow.', '2025-09-30 18:00:00', 'pending', 'project/Xu0fVwk8pWCOeGhX/dknyTHsHepddQsWz8fjN74QpoRTuMAGfftHeiTJy.jpg', 7, 7, '2025-07-01 02:30:30', '2025-07-01 02:30:30');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('eqiE49PAMvhqDjCScPoJzaNqx8lFjg8iMNak8vjL', 1, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:128.0) Gecko/20100101 Firefox/128.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoicDdjRG03REpUa09ONXY0QUhjUlBMSWtkbHdUTkszN3M1OGdFVUYwQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1751438836),
('rprtJvxdjV0Y7aH0cttFeld2MWclBOhACJxTDUyn', 1, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiSjVRNlZZbXk3ZTZHRHdKYTRsVkRmNlBWY2pjcnRjVEs5bnlNNFN3SiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC90YXNrIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1751439824),
('v4e6CbTg7OqMeTFSx9lBJDbY33JhB3uqb4qZ6tMa', 1, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiY1l2Z0hrdlpsWjV3T0Y2UnEzR0YwSUZwcFNEd0FaNFQ0SUM4RmpldyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9qZWN0LzE4L2VkaXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1751438459);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `priority` varchar(255) NOT NULL,
  `due_date` timestamp NULL DEFAULT NULL,
  `assigned_user_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `name`, `description`, `image_path`, `status`, `priority`, `due_date`, `assigned_user_id`, `created_by`, `updated_by`, `project_id`, `created_at`, `updated_at`) VALUES
(1, 'Brand Guidelines Document', 'Develop a detailed brand guidelines document that defines the visual identity and tone of voice for the organization. This should include color palettes, typography rules, logo variations and usage rules, photography guidelines, iconography styles, and example applications across digital and print. The tone of voice section should cover brand persona, preferred language style, grammar rules, and common dos/don\'ts in copywriting. This document will serve as the foundational asset for all internal and external branding efforts and will be shared with all departments and external vendors.', 'tasks/o8NK0yhNpruUqECs/JLyTCtF4GV1YaioVM5UR4rOk8FYLQNgO1i7yaCo4.png', 'in_progress', 'high', '2025-07-31 18:00:00', 3, 8, 2, 18, '2025-07-01 04:14:00', '2025-07-01 10:31:22'),
(2, 'Brand Asset Library Setup', 'Organize and upload all approved brand assets into a centralized digital asset management (DAM) tool. Assets include logo files (SVG, PNG, JPG in multiple sizes), corporate fonts with licenses, official PowerPoint templates, email signatures, and business card templates. The library must be categorized, searchable, and access-controlled by team. The aim is to ensure consistency across departments and reduce repetitive asset requests to the design team.', 'tasks/vntmPR8sQYmEmhin/06cAX5k9L1pARxv8xzUGnOiSjPzzR4dtGeWH35Vh.png', 'pending', 'medium', '2025-08-04 18:00:00', 1, 7, 1, 18, '2025-07-01 05:20:45', '2025-07-01 12:02:30'),
(3, 'On-Page SEO Overhaul', 'Review and optimize all top 50 landing pages for proper on-page SEO. This includes updating meta titles and descriptions, fixing header tag structure, incorporating target keywords without stuffing, compressing and tagging images properly, and checking for internal linking opportunities. Each page must score at least 85+ in Lighthouse SEO audits post-update. Coordination with the content team is required to ensure no key messaging is altered in the process.', 'tasks/pU2pw8gU8ykDvSXu/2KcK5N28IPqT6y5zDwExe4Eb2HVbwQqkabS2Hno9.png', 'in_progress', 'high', '2025-08-09 18:00:00', 6, 6, 2, 8, '2025-07-01 06:30:15', '2025-07-01 10:26:10'),
(4, 'Competitor Keyword Gap Analysis', 'Use tools like Ahrefs and SEMrush to identify high-opportunity keywords our competitors are ranking for, but we are not. Prepare a gap analysis report highlighting keywords, search volume, competition score, and suggested target pages. This analysis should be prioritized based on business relevance and ease of ranking. It will inform the next phase of our content creation strategy for SEO.', 'tasks/ZfRLqjPxClLLQ8m1/UFp67hDvIG9BP1sMUcKXCEzo81eodI9H2Vu18s6e.png', 'pending', 'medium', '2025-08-14 18:00:00', 2, 4, 2, 8, '2025-07-01 03:44:11', '2025-07-01 10:35:57'),
(5, 'Responsive Layout Development', 'Develop responsive layouts using Tailwind CSS or a suitable framework to ensure the new website design adapts fluidly across all screen sizes. Breakpoints should be optimized for mobile, tablet, and desktop, ensuring core CTAs remain prominent. Use flex and grid systems for layout control and avoid pixel-based fixed widths. Special attention should be given to mobile usability and accessibility, including touch targets and font sizes.', 'tasks/mqwNGelcngCZ1cEv/SBzMx3k4XZcV1eE6NMzyABAuDjJaj5axBl0csCwz.png', 'in_progress', 'high', '2025-08-31 18:00:00', 1, 2, 2, 1, '2025-07-01 07:44:30', '2025-07-01 10:22:43'),
(6, 'Content Migration Plan', 'Audit existing website content and prepare a migration plan to move it to the new CMS structure. This includes blog posts, landing pages, legal documents, and media files. Establish mapping rules between old and new URL paths, 301 redirect requirements, and ownership of each content block. The plan should minimize SEO loss and maintain user experience consistency post-launch.', 'tasks/a1Bd5NZLpTc0LXoU/IDPKEpdDvsCKGPoXOiTkJzMe85oDLiZLfW8PToWW.png', 'pending', 'medium', '2025-09-04 18:00:00', 4, 9, 2, 1, '2025-07-01 04:15:10', '2025-07-01 10:30:00'),
(7, 'Automated Welcome Email Sequence', 'Design and implement a 3-step email onboarding sequence using our email automation platform (e.g., Mailchimp or SendGrid). Emails should be spaced over the first 10 days after sign-up and contain personalized tips, tutorial links, and a success checklist. Include A/B tests for subject lines and CTA wording. Measure open and conversion rates to refine messaging.', 'tasks/2JuDdhsStHhbnKqW/Lw9MvFT3WISpa5at6VzPOddldkbca96LEM5YLWS6.png', 'completed', 'medium', '2025-07-31 18:00:00', 3, 5, 2, 4, '2025-07-01 02:15:45', '2025-07-01 10:38:14'),
(8, 'User Segmentation Setup', 'Build logic within the onboarding automation system to segment new users based on industry, company size, and role. Segments will receive customized onboarding steps and dashboard configurations. Segmentation data will be derived from sign-up forms and IP enrichment tools like Clearbit. Ensure this setup integrates with our CRM for lifecycle tracking.', 'tasks/aEgk4DaQOCKhxuNz/GQeKw8W7qRLCpBJUlHUtgv5x50jYwsf6VzQvU32K.png', 'in_progress', 'high', '2025-08-01 18:00:00', 5, 13, 2, 4, '2025-07-01 07:25:00', '2025-07-01 10:24:41'),
(9, 'Reward Automation Workflow', 'Create backend logic and database triggers that automatically apply reward points to users who successfully refer new customers. The system must validate referral codes, check for fraud (same IP/device), and apply multi-level rules (e.g., both users get reward only if the new user completes onboarding). The implementation should be scalable and auditable for disputes or manual overrides.', 'tasks/Smy5FPvFiEhqJE1Y/wC8uBPApyEeW0dsFNOKOxucui6hPUVcJ1pw4ZObn.png', 'pending', 'high', '2025-08-24 18:00:00', 6, 1, 2, 16, '2025-07-01 03:18:09', '2025-07-01 10:37:01'),
(10, 'Dashboard with OKR Progress', 'Design and develop an interactive dashboard where teams can view OKR progress in real time. This includes graphical visualizations (bar charts, heat maps) of key results, percent completion indicators, overdue objectives, and drill-down views by user/team. The dashboard must support role-based visibility so that managers can see broader data while individuals only see their own goals.', 'tasks/S7RJjedgQFJZtKms/my1bzgs6ZcqAHJjIvVJl0iDjE0mTd2xv2jgPEhfM.png', 'completed', 'high', '2025-07-29 18:00:00', 1, 10, 1, 11, '2025-07-01 01:55:00', '2025-07-01 12:03:04'),
(11, 'Cross-Team Feedback Collection', 'Facilitate structured feedback collection sessions with Engineering, Sales, Marketing, and Customer Success teams to validate proposed features on the roadmap. Prepare standardized forms to ensure consistent feedback across teams. Collate responses, tag by theme (e.g., UI/UX, scalability, integrations), and present a summarized report to the leadership team.', 'tasks/jCmGAPp0UW4VVtZA/8Bt33CRX534fMAtZ591pqKnuaJGnyEXkgEtTiSq4.png', 'in_progress', 'medium', '2025-08-19 18:00:00', 2, 11, 2, 14, '2025-07-01 04:59:59', '2025-07-01 10:28:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Akbar Sami', 'mdsamipuc@gmail.com', '2025-07-01 06:56:06', '$2y$12$ihSf0u5zaUyrYrzIKAKNVOdZl.QJFd0uuWFZPV9p0ZMpGqQXSF2.e', NULL, '2025-07-01 06:55:01', '2025-07-01 06:56:06'),
(2, 'Sakib Chowdhury', 'sakib2241@gmail.com', '2025-07-01 06:59:01', '$2y$12$muZe7lOK5zXqZXJFZO0IcurdOTzvttgF3tUQFbLO5GE/zlli6PxDy', NULL, '2025-07-01 06:58:49', '2025-07-01 06:59:01'),
(3, 'Habibul Saikat', 'habibulsaikat2254@gmail.com', '2025-07-01 07:01:26', '$2y$12$Dm1gdHC1JkApJlOEXaMRfO8z2zrwfBXTKA78ajZ6Z4LmukDQ5uZ82', NULL, '2025-07-01 07:01:11', '2025-07-01 07:01:26'),
(4, 'Ibrahim Masud', 'ibrahimmasud@gmail.com', '2025-07-01 07:04:10', '$2y$12$eDegAR46eXyIfro9HRBiNeadqNL5kxd8MSGoSeeeJZeaRDvCFRBgO', NULL, '2025-07-01 07:03:59', '2025-07-01 07:04:10'),
(5, 'Afifa Hoque', 'afifahoque2237@gmail.com', '2025-07-01 07:05:10', '$2y$12$l8.HFgOBGOUPDUbGM3BrZ.35jCUUjUWxCVmnqqkX/OjZ/ePuGYjhq', NULL, '2025-07-01 07:04:58', '2025-07-01 07:05:10'),
(6, 'Aktul Keli', 'aktulkeli@gmail.com', '2025-07-01 07:06:37', '$2y$12$QJmlSMZdy4fMLIt9tOgrGujp3tGQ06H2P.tFjfiPYnUjRg08DZBPK', 'FN5WhTOmEyv1vJnKsWxhvLDJrGrQ1fuwHXeVpGt3u2880RPxQHv0vCCgF9uj', '2025-07-01 07:06:11', '2025-07-01 11:21:48'),
(7, 'Ali Mortuja', 'alimortuja@gmail.com', '2025-07-01 07:08:26', '$2y$12$G7UGXMSZ6BdtDlV2G4c9Ju1KQRIepaKsR0AfosaGyLEjGva5/dQke', NULL, '2025-07-01 07:07:54', '2025-07-01 07:08:26'),
(8, 'Alice Johnson', 'alice.johnson@example.com', '2025-07-01 13:13:07', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', NULL, '2025-07-01 13:13:07', '2025-07-01 13:13:07'),
(9, 'Bob Smith', 'bob.smith@example.com', '2025-07-01 13:13:07', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', NULL, '2025-07-01 13:13:07', '2025-07-01 13:13:07'),
(10, 'Carol Martinez', 'carol.martinez@example.com', '2025-07-01 13:13:07', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', NULL, '2025-07-01 13:13:07', '2025-07-01 13:13:07'),
(11, 'David Lee', 'david.lee@example.com', '2025-07-01 13:13:07', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', NULL, '2025-07-01 13:13:07', '2025-07-01 13:13:07'),
(12, 'Emma Davis', 'emma.davis@example.com', '2025-07-01 13:13:07', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', NULL, '2025-07-01 13:13:07', '2025-07-01 13:13:07'),
(13, 'Frank Wilson', 'frank.wilson@example.com', '2025-07-01 13:13:07', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', NULL, '2025-07-01 13:13:07', '2025-07-01 13:13:07'),
(14, 'Grace Kim', 'grace.kim@example.com', '2025-07-01 13:13:07', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', NULL, '2025-07-01 13:13:07', '2025-07-01 13:13:07'),
(15, 'Henry Clark', 'henry.clark@example.com', '2025-07-01 13:13:07', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', NULL, '2025-07-01 13:13:07', '2025-07-01 13:13:07'),
(16, 'Isabella Lewis', 'isabella.lewis@example.com', '2025-07-01 13:13:07', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', NULL, '2025-07-01 13:13:07', '2025-07-01 13:13:07'),
(17, 'Jack Walker', 'jack.walker@example.com', '2025-07-01 13:13:07', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', NULL, '2025-07-01 13:13:07', '2025-07-01 13:13:07'),
(18, 'Karen Young', 'karen.young@example.com', '2025-07-01 13:13:07', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', NULL, '2025-07-01 13:13:07', '2025-07-01 13:13:07'),
(19, 'Liam Hall', 'liam.hall@example.com', '2025-07-01 13:13:07', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', NULL, '2025-07-01 13:13:07', '2025-07-01 13:13:07'),
(20, 'Mia Allen', 'mia.allen@example.com', '2025-07-01 13:13:07', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', NULL, '2025-07-01 13:13:07', '2025-07-01 13:13:07'),
(21, 'Noah Wright', 'noah.wright@example.com', '2025-07-01 13:13:07', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', NULL, '2025-07-01 13:13:07', '2025-07-01 13:13:07'),
(22, 'Olivia Scott', 'olivia.scott@example.com', '2025-07-01 13:13:07', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', NULL, '2025-07-01 13:13:07', '2025-07-01 13:13:07'),
(23, 'Paul Green', 'paul.green@example.com', '2025-07-01 13:13:07', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', NULL, '2025-07-01 13:13:07', '2025-07-01 13:13:07'),
(24, 'Quinn Adams', 'quinn.adams@example.com', '2025-07-01 13:13:07', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', NULL, '2025-07-01 13:13:07', '2025-07-01 13:13:07'),
(25, 'Ruby Baker', 'ruby.baker@example.com', '2025-07-01 13:13:07', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', NULL, '2025-07-01 13:13:07', '2025-07-01 13:13:07'),
(26, 'Samuel Nelson', 'samuel.nelson@example.com', '2025-07-01 13:13:07', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', NULL, '2025-07-01 13:13:07', '2025-07-01 13:13:07'),
(27, 'Tina Perez', 'tina.perez@example.com', '2025-07-01 13:13:07', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', NULL, '2025-07-01 13:13:07', '2025-07-01 13:13:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_task_id_foreign` (`task_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_created_by_foreign` (`created_by`),
  ADD KEY `projects_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_assigned_user_id_foreign` (`assigned_user_id`),
  ADD KEY `tasks_created_by_foreign` (`created_by`),
  ADD KEY `tasks_updated_by_foreign` (`updated_by`),
  ADD KEY `tasks_project_id_foreign` (`project_id`);

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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `projects_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_assigned_user_id_foreign` FOREIGN KEY (`assigned_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tasks_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tasks_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tasks_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
