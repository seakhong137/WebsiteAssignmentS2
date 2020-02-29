-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 29, 2020 at 05:44 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Uncategorized', 'uncategorized', NULL, '2020-02-21 09:45:41'),
(2, 'Javascript', 'javascript', NULL, NULL),
(3, 'Asp.Net', 'asp.net', NULL, NULL),
(4, 'WebDesign', 'webdesign', NULL, '2020-02-21 09:46:02'),
(5, 'HTML', 'html', NULL, '2020-02-21 09:46:15');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `author_name`, `author_email`, `author_url`, `body`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 'Era Boehm', 'bogan.estell@gulgowski.com', 'dicki.org', 'Est quibusdam voluptatem deserunt voluptas et officiis beatae. Occaecati assumenda nemo aut et qui corrupti voluptatem. Exercitationem ducimus qui alias optio sunt accusantium sequi.\n\nAliquam deserunt ea quos ut et. Corrupti reiciendis accusamus quaerat minus omnis. Blanditiis temporibus blanditiis dolorem quaerat temporibus. Corrupti et distinctio nemo ad numquam.\n\nQuos facere sit sit qui praesentium explicabo. Qui qui animi velit laboriosam. Qui aut corporis eum eum odio officiis omnis distinctio.\n\nNon vel aut a. Sed magni doloremque quibusdam consectetur. Quo rerum corporis in harum dolores aut rerum.', 1, '2020-02-20 18:00:00', '2020-02-20 18:00:00'),
(2, 'Deangelo Barrows', 'harris.ricky@hotmail.com', 'hermann.com', 'Quam eligendi officiis asperiores. Voluptatibus ab commodi unde. Fuga maiores facere ex.', 1, '2020-02-20 19:00:00', '2020-02-20 19:00:00'),
(3, 'Miss Alysson Kerluke III', 'isaias.jacobson@kuhn.com', 'hirthe.biz', 'Voluptatem sed quae tempora sit non officiis. Natus eaque eos non ad consectetur ut voluptas. Qui reiciendis aliquid nulla dolorem quisquam ut. A et doloremque veniam sit est est earum.\n\nLaboriosam quaerat deleniti tempore et. Ullam consequatur repellendus molestiae et dolores ut enim quos. Nam quo hic eius illo suscipit. Aut perferendis illo qui rerum voluptatem fuga sapiente. Corporis eius quis non voluptatem reiciendis reprehenderit est.\n\nAtque eum voluptatem accusamus quas animi. Non nemo enim dolores unde voluptates.', 1, '2020-02-20 20:00:00', '2020-02-20 20:00:00'),
(4, 'Marcellus Christiansen', 'lizeth.bosco@prohaska.org', 'renner.biz', 'Praesentium minima sit et non. Eveniet distinctio nihil ut aut.\n\nIure nulla iure doloribus nostrum nihil pariatur et. Illo consectetur adipisci ut doloribus recusandae aspernatur. Repellendus aut perferendis perferendis quasi.\n\nSunt optio rem consequatur iure in. Ea tempore et et eum soluta.\n\nReprehenderit laudantium similique et ut optio repellendus quas. Recusandae delectus occaecati praesentium assumenda.\n\nQuam est esse est voluptate molestias eum id. Deserunt quas libero vitae rerum facere veritatis.', 1, '2020-02-20 21:00:00', '2020-02-20 21:00:00'),
(5, 'Edd O\'Conner', 'oborer@hotmail.com', 'white.info', 'Saepe rerum consequuntur incidunt qui ut voluptatem est. Est ipsum consequatur quia voluptatem nulla consequatur quidem. Sit nisi voluptatibus officia illum quia dolore. Illum sed omnis vel hic.\n\nTemporibus quia velit laudantium quia sunt. Perferendis aut earum et officia placeat cumque enim. Quia aut at quidem autem esse. Est sunt voluptatibus cupiditate quam consequatur aut.', 1, '2020-02-20 22:00:00', '2020-02-20 22:00:00'),
(6, 'Miss Rita Haag', 'blanda.dwight@gmail.com', 'crooks.com', 'Illo ipsum est voluptates. Et eligendi consectetur sed eos. Hic et non est. Velit officia laboriosam asperiores incidunt. Ut vero animi non quibusdam fugit et quis enim.\n\nNon ipsa minima impedit culpa. Porro quo aliquam aut qui omnis voluptatem. Magni dignissimos voluptate quidem adipisci voluptate provident sunt explicabo. Facere expedita omnis itaque atque occaecati.\n\nModi vero qui magni perspiciatis voluptatem aut natus. Id et quo perferendis doloremque enim ipsa. Debitis voluptas doloribus sunt earum velit et quam molestiae.', 2, '2020-02-20 18:00:00', '2020-02-20 18:00:00'),
(7, 'Tillman Huels MD', 'vandervort.dale@bogan.com', 'satterfield.com', 'Ipsum cumque fugiat aspernatur tenetur tempore consectetur. Sed similique aut voluptatem officiis rerum harum. Facilis quas facilis voluptatem consequatur.\n\nPariatur expedita inventore repellendus iste enim voluptas dolor. Quia libero et reprehenderit magni dicta eum sint. Alias nihil facilis voluptatem aut consequatur unde aut. Deserunt hic et consequatur repellendus in vitae.\n\nVoluptatum tempora qui odit ipsum. Dolorem fuga minima necessitatibus aspernatur fugiat et dolore. Officiis quis voluptatum et. Consectetur dolores autem vel non distinctio eum. Architecto fuga quia nulla dolor eveniet illo sed.\n\nMolestias quo beatae eligendi consequatur quo eaque. In quis ea ipsa consequatur molestias voluptatibus. Modi saepe labore accusantium possimus deleniti omnis architecto occaecati. Perspiciatis veniam sed deleniti ut sed numquam officia.\n\nPerferendis molestiae aut quisquam voluptatum et aut temporibus. Placeat sapiente velit optio aut. Aut qui et quos ipsam. Vel porro modi qui consequatur.', 2, '2020-02-20 19:00:00', '2020-02-20 19:00:00'),
(8, 'Mrs. Earnestine Steuber I', 'kerluke.courtney@yahoo.com', 'hoeger.com', 'Illum vero illum sed fugit. Sint quo perferendis cumque. Expedita dolore adipisci fugit veritatis nihil eos. Itaque id ipsum totam et et ut.\n\nEsse eum porro tempora omnis sapiente non et quod. Aut nihil nesciunt sunt omnis non itaque. Nihil sint modi ut consectetur debitis ullam eaque.', 2, '2020-02-20 20:00:00', '2020-02-20 20:00:00'),
(9, 'Nathaniel Fritsch', 'huel.hester@gusikowski.biz', 'rolfson.com', 'Asperiores commodi consequuntur eos dolore natus. Sit ut commodi iusto maiores. Deleniti reiciendis quas harum maxime et molestias repellat.\n\nVel nihil occaecati accusantium. Quaerat labore asperiores aperiam et rerum blanditiis. Rerum magnam est perspiciatis officiis voluptas. Rerum sunt commodi odio molestias.\n\nDolores iure nesciunt harum earum atque minus. Odit ut quisquam quae quam exercitationem qui et. Omnis quisquam maiores impedit minima officiis sint dolorem.\n\nIste quia odit dolorem deleniti. Deserunt quasi qui dolorem corrupti quod cum ea. Sequi deleniti et voluptatem quidem. Eligendi quo fugit aut similique similique nam minus.\n\nVitae rem velit dolores. In ipsum nemo officiis est reprehenderit optio rerum. Asperiores quia recusandae enim qui.', 2, '2020-02-20 21:00:00', '2020-02-20 21:00:00'),
(10, 'Eldred O\'Connell', 'veum.mattie@swaniawski.net', 'mayer.com', 'At ex ex expedita accusamus tenetur nesciunt. Amet placeat voluptatem tenetur molestiae occaecati qui. Temporibus ea et et ratione vel. Cupiditate inventore rem et.\n\nRatione aperiam quod quo sint quo saepe. Et esse facilis ad perspiciatis rerum. Est qui amet eligendi repudiandae repudiandae assumenda. Iure facilis consequuntur id est iure.\n\nDolores perspiciatis esse blanditiis incidunt perspiciatis facilis. Reiciendis consequuntur sed et distinctio. Sed et ea ullam veniam dolor quam.', 2, '2020-02-20 22:00:00', '2020-02-20 22:00:00'),
(11, 'Leda Dooley', 'ehowe@hotmail.com', 'runte.com', 'Nulla expedita quasi recusandae et dignissimos qui repellendus. Omnis rem non inventore magni nulla ut et. Necessitatibus deserunt animi praesentium voluptas officia.\n\nIste explicabo omnis consequatur quo est. Blanditiis ullam eum voluptas exercitationem eveniet. Voluptatum dolores quibusdam omnis exercitationem. Beatae reprehenderit sint maiores quia distinctio et amet.\n\nSunt eos alias sed corporis. Et reprehenderit nostrum voluptas ea. Sint consectetur maxime corrupti earum eius molestiae nam. Quasi rerum placeat odio est.\n\nError delectus nesciunt esse quis. Nam voluptatem incidunt dolorum odit repellendus eligendi. Aliquid laudantium temporibus ipsam.\n\nAliquam maxime perferendis voluptatem nesciunt autem numquam. Et earum facere molestias id ut voluptas molestiae. Nisi porro exercitationem odit in facere officiis. Aut ab ipsa molestiae quod est.', 2, '2020-02-20 23:00:00', '2020-02-20 23:00:00'),
(12, 'Dr. Norris Howe', 'murazik.demetris@gmail.com', 'ernser.com', 'Quisquam sed aspernatur molestias rerum. Inventore accusamus qui qui sed. Mollitia reprehenderit est at rerum dolorem sint similique. Nihil autem aliquid ut atque porro fugit. Quaerat aut officia aut est.\n\nInventore eos incidunt molestias. Sapiente non itaque iusto accusantium ipsa totam non. Qui quo pariatur est accusantium quam amet.\n\nCumque cupiditate eveniet unde maxime minus. Sed voluptatum provident temporibus nobis. Ea eum voluptatem harum omnis autem odio qui. Molestias voluptas quaerat quibusdam et illo.\n\nTenetur corporis sint doloribus totam. Cumque minus necessitatibus sit quisquam vero quisquam libero. Et necessitatibus laudantium impedit eos nihil est ipsum laboriosam.\n\nRatione commodi repellat consectetur sed quaerat cumque ipsum. Nihil beatae quia sequi nobis ipsam eos. Nostrum laborum cum nostrum aliquam esse.', 2, '2020-02-21 00:00:00', '2020-02-21 00:00:00'),
(13, 'Mr. Arjun McKenzie I', 'ischiller@gmail.com', 'barton.com', 'Asperiores et dolorem voluptatum minus explicabo. Inventore nobis distinctio accusamus voluptates. Earum illo optio autem itaque aperiam cumque ab velit.\n\nEsse est ad nulla accusantium. Autem explicabo saepe consequatur asperiores et provident. Sunt quisquam ut necessitatibus perferendis amet aspernatur qui odio. Nihil velit repudiandae eligendi.', 3, '2020-02-20 18:00:00', '2020-02-20 18:00:00'),
(14, 'Luther Schuppe', 'alvera49@cartwright.org', 'hamill.com', 'Molestiae vel quae vel rerum error ab. Qui nihil molestiae id labore. Molestiae tempora quo eligendi aut et fugit. Itaque possimus nihil dolore vitae magni.\n\nMinus quam et necessitatibus in. Quisquam nam sed eum illum consequatur nostrum. Eum quod sed dolorem illo et. Ut qui accusamus quo et.\n\nDelectus ut reprehenderit nulla. Expedita officia molestiae unde modi. Et odit sint id possimus. Quia dolorum adipisci fugit quisquam.\n\nOfficia aut quam adipisci quaerat est. Et aspernatur vel voluptas. Omnis labore repudiandae ut assumenda. Voluptas perspiciatis tempora reiciendis dolores nemo sint quia et.', 3, '2020-02-20 19:00:00', '2020-02-20 19:00:00'),
(15, 'Margret Rau', 'hoconner@hotmail.com', 'mitchell.biz', 'Nulla in blanditiis iste id natus dolores ducimus. Labore et qui sequi. Rerum non dignissimos omnis laboriosam fugiat. Et officia occaecati nisi fugit omnis qui.\n\nAliquam assumenda veniam dolores voluptatem asperiores. Ea enim sit iste sequi soluta dolores in laboriosam. Quasi delectus autem tempore quia nobis. Facilis enim mollitia molestiae quaerat aut voluptates ut ut.\n\nHarum quod quis corrupti ipsum aut atque et ea. Harum est aut non nihil labore soluta adipisci. Minus impedit eum accusamus voluptas voluptas quis. Consequuntur ducimus aliquid velit dignissimos inventore.\n\nVoluptatibus quo qui qui ut a voluptates. Iste quia quod et ab aliquam quod rerum. Consectetur nam ipsam quidem velit repellat.\n\nAut tempora sunt vitae recusandae est error. Velit reiciendis eveniet iusto inventore et quidem. Eos eaque officiis consequatur modi. Neque necessitatibus sint vero minima mollitia ullam. Accusantium maiores ut accusamus maxime.', 3, '2020-02-20 20:00:00', '2020-02-20 20:00:00'),
(16, 'Prof. Jewell Wisozk', 'jwelch@yahoo.com', 'mante.info', 'Sequi voluptatum sed laudantium magnam est autem dolor. Nostrum error mollitia nulla perferendis consequatur eos.\n\nDeleniti veniam voluptatibus quia ipsa nisi modi. Minima recusandae autem architecto quis qui. Reprehenderit vitae praesentium commodi et consequatur.\n\nOmnis debitis voluptatibus accusantium dolore voluptates sint et quisquam. Ut ut illo consequatur quas error et est.\n\nItaque corporis accusantium quia deserunt. Eligendi quia vero quia expedita qui. Eaque deleniti sed sapiente nulla tenetur.', 3, '2020-02-20 21:00:00', '2020-02-20 21:00:00'),
(17, 'Mrs. Dorothy Rolfson II', 'noble42@hotmail.com', 'jacobi.com', 'Qui doloremque rerum quis velit odit. Neque repellat cupiditate eius voluptates unde. Voluptas nesciunt modi ex totam pariatur.\n\nQuisquam veritatis beatae animi aspernatur molestiae ut. At quae non unde voluptates et est. Dolor ab deleniti possimus accusamus quia. Et ut quos quia velit nisi praesentium qui. Distinctio provident earum est.', 3, '2020-02-20 22:00:00', '2020-02-20 22:00:00'),
(18, 'Geoffrey Schaefer', 'sheila72@franecki.com', 'krajcik.net', 'Quis illo mollitia laudantium inventore ipsum ut amet. Est molestias deleniti magnam ut velit alias. Doloremque ducimus qui perferendis placeat. Possimus eligendi nulla odio dolorem.', 4, '2020-02-20 18:00:00', '2020-02-20 18:00:00'),
(19, 'Adolphus White', 'jean.schmeler@yahoo.com', 'hudson.com', 'Ut rerum aut est soluta repellat. Facilis vel ea consequuntur magnam quaerat. Voluptatem necessitatibus tempore cumque dolor. Eaque quo aut distinctio qui iure. Sunt aut sit sit est maxime.', 4, '2020-02-20 19:00:00', '2020-02-20 19:00:00'),
(20, 'Melany Buckridge', 'daniela83@hotmail.com', 'boyer.com', 'Ea consequatur tempore iure sed quisquam. Quas laborum voluptatem sit quia sed dolore porro. Necessitatibus ducimus nesciunt cumque velit quas ut incidunt.\n\nReiciendis occaecati provident blanditiis ea. Illo delectus quia pariatur ipsam. Dolores eaque veritatis error soluta maiores vitae at ea. Eum blanditiis repellendus sequi neque qui. Quo sit nam molestiae et recusandae.\n\nNumquam assumenda repellendus autem. Voluptatibus architecto aliquam distinctio dolorem aliquam assumenda. Est voluptas quia minus sed dolores.', 4, '2020-02-20 20:00:00', '2020-02-20 20:00:00'),
(21, 'Phyllis Hills', 'lukas.stanton@heaney.org', 'kunze.com', 'Et illo expedita nulla dolor. Numquam adipisci qui non qui delectus ipsam. Consequuntur voluptas rerum earum soluta vitae sit. Accusantium consequatur at ut sunt dicta.\n\nNon et quam est unde. Ipsum est odit optio voluptatem. Consequuntur nihil sit voluptatem officia expedita quas sed adipisci. Aperiam commodi perspiciatis ut vel nam delectus.\n\nError vel velit necessitatibus labore explicabo. In veritatis perspiciatis nostrum debitis repellendus delectus. Asperiores consequatur doloribus debitis.\n\nOdit fugiat enim maxime qui et. Eos similique vitae et incidunt.', 4, '2020-02-20 21:00:00', '2020-02-20 21:00:00'),
(22, 'Skyla Davis', 'lindgren.demarco@gmail.com', 'quitzon.org', 'Numquam suscipit veniam vitae. Et ad totam omnis cum autem sapiente laudantium laudantium. Voluptas quibusdam ut ullam fugit dolorum dicta.\n\nQuia et harum consequuntur sit quia maiores dolores. Ut sed qui aut. Repudiandae occaecati ullam qui. Dolorem esse cum dolor aut.', 4, '2020-02-20 22:00:00', '2020-02-20 22:00:00'),
(23, 'Itzel Flatley', 'rkihn@hotmail.com', 'dietrich.net', 'Hic optio odio facilis consequuntur. Quaerat est rem est vero. Dignissimos aliquam voluptatem qui sit et quibusdam. Delectus neque voluptatem ipsam quidem dicta molestiae.\n\nConsequatur non doloremque porro. At voluptas repudiandae enim quia. Similique sequi ea quo perspiciatis in. Earum adipisci culpa enim voluptatum odit assumenda.', 4, '2020-02-20 23:00:00', '2020-02-20 23:00:00'),
(24, 'Wade Bechtelar', 'brice.bosco@koch.com', 'nikolaus.com', 'Suscipit autem qui et quas consequatur. Voluptas occaecati sint in et. Ea voluptas est sit quibusdam autem nulla. Delectus sint explicabo a eveniet.\n\nDolor excepturi assumenda qui ipsa velit sunt. Velit facere sapiente veniam iure. Asperiores aut ad est repellat et ullam. Occaecati fugiat et nam asperiores sit.\n\nVeritatis delectus modi rem suscipit est doloribus. Animi rerum illo enim autem ex earum quis aspernatur. Quia mollitia cumque odit.\n\nAutem alias quaerat voluptatem animi iure perspiciatis quia. Ut possimus ad enim enim praesentium quia. Officiis repellendus quia officiis corporis autem quo excepturi.\n\nQuia id et laborum alias praesentium. Dignissimos dolorem placeat nemo iure. Temporibus nesciunt et consequatur qui ratione sunt sed autem. Eius enim consectetur laboriosam deleniti rem aliquid velit.', 4, '2020-02-21 00:00:00', '2020-02-21 00:00:00'),
(25, 'Mrs. Veronica Ritchie III', 'stuart.rath@hotmail.com', 'harber.info', 'Ut praesentium sunt doloremque. Quia assumenda autem magni ducimus voluptatem. Fugiat voluptatem omnis odit. Ipsum qui voluptas sed quisquam libero ipsum iste.\n\nDucimus omnis doloribus quae cumque libero iusto. Sunt autem enim laborum quo asperiores omnis. Praesentium at tempore sint corrupti nemo porro consequuntur. Nihil magnam deserunt ullam et excepturi ut culpa.', 5, '2020-02-20 18:00:00', '2020-02-20 18:00:00'),
(27, 'fsadf', 'seakhongheang93@gmail.com', 'sfd', 'sdfs', 4, '2020-02-29 09:18:53', '2020-02-29 09:18:53');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_01_18_112924_create_posts_table', 1),
(5, '2020_01_18_153247_alter_posts_add_published_at_column', 1),
(6, '2020_01_19_083626_create_categories_table', 1),
(7, '2020_01_19_083903_add_category_id_column', 1),
(8, '2020_01_19_152138_alter_users_add_slug_colum', 2),
(9, '2020_01_20_131706_add_users_bio_column', 3),
(10, '2020_01_20_132055_add_users_bio_column', 4),
(11, '2020_01_20_144554_alter_colum_add_users_add_viewcount', 5),
(12, '2020_01_20_145014_alter_colum_add_posts_add_viewcount', 6),
(13, '2020_02_03_153349_laratrust_setup_tables', 7),
(14, '2020_02_07_152528_create_comments_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('seakhongheang94@gmail.com', '$2y$10$da47OVWs8OTAeu8QIqd.WuNbxwg53b4dKxLA/3sAMRkFcrabUhhPq', '2020-02-02 08:36:33');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'crud-post', NULL, NULL, '2020-02-21 08:39:56', '2020-02-21 08:39:56'),
(2, 'update-others-post', NULL, NULL, '2020-02-21 08:39:57', '2020-02-21 08:39:57'),
(3, 'delete-others-post', NULL, NULL, '2020-02-21 08:39:57', '2020-02-21 08:39:57'),
(4, 'crud-category', NULL, NULL, '2020-02-21 08:39:57', '2020-02-21 08:39:57'),
(5, 'crud-user', NULL, NULL, '2020-02-21 08:39:57', '2020-02-21 08:39:57');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` varchar(5000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `view_count` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `title`, `slug`, `excerpt`, `body`, `img`, `created_at`, `updated_at`, `published_at`, `category_id`, `view_count`) VALUES
(1, 1, 'Sed officia tempore ipsam omnis explicabo incidunt possimus.', 'tempora-aliquid-quam-qui-officiis', 'Aut eligendi a debitis magnam voluptas distinctio velit. Sint soluta qui consequatur ratione. Quo velit quia magni praesentium facere.', 'Quis dolor accusamus error dolorem autem natus. Iure itaque rerum quos aliquid. Perspiciatis blanditiis doloribus temporibus eius labore. Officiis cupiditate earum quis voluptatem illum quia ab.\n\nAut non optio sunt. Autem in asperiores tempora sint.\n\nLaborum dignissimos quae quia tempora officiis quia voluptas adipisci. Cumque odit eveniet praesentium vero in consequatur praesentium. At et ut omnis ea inventore. Quidem neque quibusdam et ut sint non culpa.\n\nPariatur ex aliquid eaque dolor ut. Hic eum voluptatum officiis sed esse. Omnis sit natus est praesentium magnam.\n\nRepudiandae eligendi et et. Itaque rerum rerum est modi ex deserunt iure. Similique qui et atque aut magnam neque. Doloremque et similique perspiciatis.', 'Post_Image_3.jpg', '2020-02-20 17:00:00', '2020-02-21 09:56:41', '2020-02-20 17:00:00', 4, 13),
(2, 2, 'Occaecati maiores distinctio eius dicta quisquam est vero voluptatum accusamus explicabo.', 'deserunt-aut-asperiores-quod-commodi', 'Sed asperiores blanditiis quas sapiente aut ducimus. Hic repellendus recusandae sint modi culpa. Ut voluptatibus dicta et tempore minima qui ut. Natus sunt sit sit pariatur.', 'Facere et aut esse voluptas. Suscipit iste suscipit excepturi enim. Aperiam expedita explicabo sit officia atque. Illum minima nihil voluptate vero laudantium eveniet.\n\nSed et provident totam voluptas ut dolorum voluptatem. Provident ipsam sit officiis dolor sunt laborum. Sed eos quia nesciunt necessitatibus culpa possimus et animi. Libero qui aut tempora rem et et tempora.\n\nOmnis aut ab dolorem impedit ut sit et. Ex possimus repellat a aut sint. Nisi at inventore aspernatur perspiciatis. Sed ducimus omnis voluptatibus.\n\nEst eum aut consequatur et ut natus. Reprehenderit qui aliquid iste exercitationem beatae eius inventore. Rerum quis dolorem nulla.\n\nNobis et temporibus eveniet deserunt quidem ut voluptatem qui. Sit deserunt aut optio quia qui amet qui quia. Modi aliquid odit asperiores.\n\nSequi natus qui eius quas voluptates. Dolor est aperiam aliquam expedita saepe sunt quos libero. Vitae doloribus aut omnis dolores voluptatem necessitatibus.', 'Post_Image_3.jpg', '2020-02-20 17:00:00', '2020-02-22 00:36:44', '2020-02-20 17:00:00', 5, 4),
(3, 3, 'Repudiandae aut sapiente accusamus voluptatum occaecati aut ad incidunt omnis ad dolores quis vero dignissimos at animi et tenetur aut.', 'optio-ut-aut-aliquid-nesciunt-aperiam-dolor-occaecati', 'Dolorem dolore consequuntur et et. Sunt ut sunt id illo. Aut non et ut consequuntur aliquid.', 'Aut in nesciunt minima rerum accusamus qui sunt. Facilis laboriosam ipsam omnis enim molestiae exercitationem.\n\nQui quam est quo iste omnis praesentium unde. Nesciunt et eos velit recusandae animi accusantium quia. Officia nulla doloribus soluta occaecati non. Maxime molestiae illum officia asperiores recusandae maxime.\n\nCommodi reiciendis ut autem natus molestias ullam consequuntur quasi. Dolor sunt aut itaque ea molestias aut. Iure eum tenetur molestiae qui. Sit quis aliquam veniam et et autem.\n\nQuae atque tenetur quisquam omnis voluptas qui est. Sit non mollitia delectus rem tempora quia. Quaerat ab nihil accusamus aspernatur molestiae recusandae.\n\nTempore ipsa consequatur sed beatae. Aut blanditiis vitae accusantium earum quae. Excepturi fuga nesciunt laudantium iusto excepturi voluptates similique. Veniam expedita nulla itaque praesentium dolores corrupti.', 'Post_Image_5.jpg', '2020-02-20 17:00:00', '2020-02-20 17:00:00', '2020-02-20 17:00:00', 2, 13),
(4, 2, 'Doloremque atque nihil et.', 'qui-nesciunt-dolores-quis-aliquid', 'Rerum consequatur amet porro et adipisci quia voluptas. Voluptatem exercitationem fugiat corrupti laudantium est sunt dolores qui. Autem autem eius ducimus. Minus ipsum dolorum necessitatibus sed sit quisquam.', 'Quo sapiente fugiat et nihil fugiat. Blanditiis laborum id mollitia fugit dolor vel. Laboriosam porro asperiores et nihil deserunt omnis. Fugiat quidem cupiditate et optio voluptas eos.\r\n\r\nEt consequatur ut rerum repellat cumque id. Ad vitae at ratione ullam eos. Quidem perspiciatis quia hic omnis.\r\n\r\nPerspiciatis dolores quidem ducimus quia eius vero autem aut. Quos nulla blanditiis quas cupiditate ut rem. Sint laborum et deleniti vitae aspernatur nam excepturi. Autem qui labore omnis eum at.\r\n\r\nHic molestias qui rem ducimus numquam error et. Rerum incidunt quam magni dolor quaerat placeat dicta. Facilis sunt ut consequuntur voluptatem excepturi magni. Odit ipsam et ipsum exercitationem ea autem qui.\r\n\r\nDeserunt soluta esse atque rerum. Asperiores eos eos et quia voluptatum. Sapiente eum sapiente reiciendis enim ducimus magnam saepe. Corrupti est sed iure architecto.\r\n\r\nDistinctio in nobis qui optio quod. Ab ea at porro aut atque tenetur exercitationem minus. Quos delectus cupiditate tempora molestiae. Repudiandae qui ipsa facilis neque dicta nobis. Blanditiis vel nulla porro distinctio omnis aut assumenda nesciunt.', 'Post_Image_1.jpg', '2020-02-20 17:00:00', '2020-02-29 09:18:57', '2020-02-20 17:00:00', 1, 23),
(5, 3, 'Ducimus minus corporis distinctio fugiat molestiae voluptatem tempore.', 'maxime-dolor-iste-qui-qui-impedit-quasi-quibusdam', 'Quis quae dolorem quod consectetur qui quis quia. Ipsa delectus dicta molestiae cum. Qui veniam error unde. Iste sed quod omnis voluptates architecto voluptates.', 'Omnis aperiam quaerat reprehenderit magni id sunt et. Possimus vel quia excepturi harum. Optio non quo consectetur minus quis.\n\nSit nesciunt et sint suscipit esse reprehenderit ipsam. Rerum corporis dolorem et voluptatem fuga corporis. Voluptate omnis molestias consequuntur laborum rem earum ipsam.\n\nInventore ex a debitis totam. Commodi sequi ut iusto error. Perspiciatis voluptas quae maiores ut quia illo.\n\nPariatur ipsa et nesciunt. Quae harum voluptatem porro ullam laudantium. Quas ullam nobis quod sunt facere iste et. Officiis sunt nesciunt soluta et et velit.\n\nNecessitatibus occaecati dolores magni et dolorum. Et provident ipsam delectus fugit consectetur officia. Aut iste numquam sit quae exercitationem animi. Magnam provident est impedit nihil reiciendis numquam. Atque hic deserunt dolor eum voluptas aut.\n\nSint modi corrupti at qui explicabo at. Doloribus fuga rerum autem quasi rem. Voluptatem quia quia ab est ipsam qui. Iste maiores beatae iusto alias.\n\nSunt vitae porro est. Nesciunt saepe qui animi eum. Velit omnis aut repellendus sint ratione eum. Inventore fugiat doloribus ex iusto dolor voluptates earum.', 'Post_Image_3.jpg', '2020-02-20 17:00:00', '2020-02-29 05:01:36', '2020-02-20 17:00:00', 3, 22),
(6, 3, 'Ut maiores officiis est veritatis aut assumenda cum consequatur quasi.', 'dolor-incidunt-accusamus-qui-aliquid', 'Libero cumque et corporis reprehenderit qui adipisci adipisci. Occaecati rerum at officiis et ab. Sunt debitis corporis corrupti in.', 'Eligendi sed ut vel nostrum deserunt. Eius similique dicta minus quae. Minus nobis voluptas inventore aut.\n\nDignissimos eum dolor minus nesciunt necessitatibus et aut. Nam id perferendis in. Ea quaerat praesentium voluptas repellat.\n\nVoluptates a quo quis voluptatem exercitationem sed. Mollitia deleniti earum est consequatur voluptatum aut nobis dolorem. Ut enim labore optio nisi.\n\nDignissimos tempora incidunt et eius veniam consequuntur amet. Ut saepe facere a dicta alias dolorem tempora. Praesentium est et libero corporis eaque aperiam architecto.\n\nA quia illo est error temporibus. Omnis omnis omnis ab quod. Dolorem sapiente ducimus eaque. Reprehenderit officiis corrupti soluta qui velit cum nesciunt.\n\nAutem exercitationem suscipit at velit sit omnis porro est. Officia et ipsum recusandae totam eveniet blanditiis amet. Molestiae reiciendis autem modi ea. Consequatur natus deleniti natus perferendis et et et voluptates.', 'Post_Image_4.jpg', '2020-02-20 17:00:00', '2020-02-20 17:00:00', '2020-02-20 17:00:00', 1, 2),
(7, 1, 'Quae consequatur.', 'neque-qui-id-eos-nemo-odio-alias-omnis', 'Nisi tempore dicta optio est rerum. Placeat expedita magnam qui dolorem reprehenderit consequuntur. Iste voluptas porro amet ipsum.', 'Temporibus velit hic qui labore. Vel perferendis quos at. Non nostrum aliquid quasi cum architecto totam rem. Pariatur quia provident provident soluta vel eaque.\n\nSed maiores voluptates iure maiores incidunt autem doloribus perferendis. Nihil et repudiandae omnis nihil magnam. Fuga aliquid rerum exercitationem et ut laborum. Quaerat quasi iste eligendi pariatur perspiciatis voluptatem dolorum velit.\n\nDeserunt occaecati accusamus occaecati voluptates ipsa aut quas. Nihil minima impedit ut debitis. Alias recusandae non maiores qui eum veniam. Ut in et cum iure asperiores ut eligendi.\n\nQui autem omnis saepe. Magni aut vitae non similique numquam ex. Facilis facere voluptatibus suscipit nihil error.\n\nOmnis omnis in consequatur quia velit. Aperiam enim repellendus vero reprehenderit fugit exercitationem. Nihil est velit natus quia.', 'Post_Image_4.jpg', '2020-02-20 17:00:00', '2020-02-20 17:00:00', '2020-02-20 17:00:00', 2, 15),
(8, 3, 'Repellat sint.', 'ex-ipsum-sit-iure-ducimus-est', 'Id veritatis quia inventore aut accusantium quo exercitationem. Dolorum maiores dicta quae iste consequatur totam asperiores. Corrupti aut quo rerum non aspernatur et quaerat. Aut natus accusamus quos in ut necessitatibus.', 'Laudantium ipsa et ipsum quia quod. Dolorum dignissimos quo a cupiditate earum aut asperiores.\n\nVel quo doloribus ullam soluta. Aut sed ut quia porro. Cum et enim facilis magni pariatur numquam rem. Assumenda cumque nobis sunt quos tempore temporibus.\n\nPerspiciatis quis ut repudiandae suscipit quia. Veritatis reprehenderit maxime deserunt aut et veritatis. Dolores tenetur sapiente suscipit impedit animi. Omnis et similique soluta ab unde quaerat et.\n\nAccusamus explicabo sit libero. Aut recusandae eaque vel itaque omnis. Voluptas sed et necessitatibus quas consequatur aut earum ut.\n\nAd maxime velit natus placeat pariatur. Aspernatur eligendi laborum accusantium cumque qui natus est. Suscipit ut expedita placeat ipsam eos harum asperiores perspiciatis.\n\nPerferendis accusamus et vel. Aut enim qui sed in. Doloribus similique voluptates hic omnis modi aut vel.', 'Post_Image_1.jpg', '2020-02-20 17:00:00', '2020-02-20 17:00:00', '2020-02-20 17:00:00', 1, 16),
(9, 3, 'Eos quis.', 'quo-a-inventore-quia-excepturi-consequatur-quae', 'Qui occaecati sit perspiciatis architecto quidem hic eius. Laboriosam odio placeat reiciendis fugiat vel. Iste iure sunt quia dolores veniam nemo sunt voluptate. Aspernatur excepturi ipsam ipsum asperiores qui laudantium consequatur.', 'Accusantium expedita at unde facere dolorum quaerat quaerat. Eius quia est at sit explicabo aut. Sed dolores velit voluptate incidunt nobis. Aut et voluptatum iste.\n\nEx voluptatem velit enim dignissimos molestiae consequatur architecto. Odio nihil vitae facere qui similique quia ut tempore. Qui distinctio nihil blanditiis quia voluptatem non voluptatem. Nesciunt a fugit fuga repellat. Enim facere rerum qui nulla blanditiis laudantium.\n\nSimilique aut aperiam dolorem in aut maxime. Accusamus tenetur ipsa quod et. Quis nisi accusantium eligendi beatae voluptatem molestiae. Ut repudiandae in veniam quasi id.\n\nExpedita beatae aspernatur est in asperiores labore. Eaque quisquam cumque odit. Voluptas est ipsum debitis labore illum error.\n\nCommodi ex sint nostrum eveniet. Quibusdam corporis tempore sunt ex et. Molestiae sit labore illo. Doloribus deleniti sit numquam perferendis illum cum eos.\n\nOfficiis a iusto perferendis repellat neque quo. Autem esse autem eius vel. Iure veniam sit aliquam qui sint tempora et.\n\nReprehenderit consequatur magni velit voluptas molestiae omnis provident. Corrupti molestiae optio laudantium ut cum. Cupiditate quod corporis sunt nisi.', 'Post_Image_5.jpg', '2020-02-20 17:00:00', '2020-02-20 17:00:00', '2020-02-20 17:00:00', 5, 20),
(10, 3, 'Rem laborum sit a.', 'ipsa-voluptatem-aliquam-distinctio-est-ipsam', 'Necessitatibus maxime beatae velit. Occaecati doloribus maiores repellat tempore aut. Autem illo beatae odit et. Aliquid assumenda amet fugiat ab ut saepe.', 'Et ratione dignissimos aliquid ut mollitia aliquid. Maiores sunt natus culpa. Maxime dolores natus magnam suscipit. Eos rem rem ducimus quia ut et.\n\nQui illum rerum expedita distinctio. Ducimus consequuntur cumque et nesciunt fugiat. Quas reprehenderit consequatur et voluptatibus voluptatem.\n\nLaboriosam dicta fugiat sapiente amet enim et nobis. Minima blanditiis sint odio excepturi voluptatem. Illum facere error facilis accusantium quis eum quis.\n\nMinus qui est eveniet odio sed nihil. Eum exercitationem assumenda possimus non quae officiis. Delectus consequatur culpa ex veritatis cupiditate. Ullam eaque consectetur suscipit facere officiis.\n\nUnde voluptatem quia ipsum. Omnis et eum eaque quam. Hic eos iusto et eius aspernatur.', 'Post_Image_1.jpg', '2020-02-20 17:00:00', '2020-02-20 17:00:00', '2020-02-20 17:00:00', 1, 12),
(11, 2, 'Vitae harum beatae assumenda perspiciatis commodi in qui.', 'optio-neque-odio-omnis-quibusdam-eum', 'Natus velit sed ea architecto quod. Omnis minus dolorem possimus voluptates aspernatur adipisci mollitia. Architecto totam velit minima praesentium. Fuga quia facere error est qui qui sit.', 'Eligendi ad animi consequatur. Quasi odit deserunt vitae. Vel maiores error nisi ipsam non consequuntur et consequatur. Sit sapiente aperiam quam sunt et amet commodi aut. Dolore in commodi explicabo accusantium.\n\nQuas animi dolorum rerum aut consequatur. Aut et accusantium voluptatem molestiae vel dolorem. Consequatur repellat dolorem expedita velit ea esse magni. Veritatis consequuntur iusto et soluta ipsa voluptatem fuga.\n\nEt consequuntur labore magnam ab. Hic reprehenderit maxime dolore at. Voluptates sint error delectus ipsum provident sequi eum.\n\nCommodi eos expedita saepe sit et voluptatem inventore. Ea iure tempora cum sed nobis unde dolor.\n\nEt officiis incidunt quo sint harum maiores. Dicta autem placeat molestiae dolore cumque. Sunt tempora et sed blanditiis nostrum ut sed possimus.', 'Post_Image_1.jpg', '2020-02-20 17:00:00', '2020-02-20 17:00:00', '2020-02-20 17:00:00', 1, 20),
(12, 2, 'Et ea officia ipsam maxime.', 'tempore-et-ut-vel', 'Amet est sit natus illum quidem ratione ratione. Ipsa facere aut explicabo voluptatum laborum autem. Et sit accusamus corporis et. Odit dolor ut autem sint ducimus et.', 'Vero est exercitationem sunt iste. Qui est commodi quo quia consequatur dignissimos. Hic voluptatem quia quas doloremque voluptatum. A sed minima rerum voluptatem necessitatibus enim animi.\n\nUt error velit voluptatem voluptatem. Blanditiis voluptatem voluptatem reprehenderit. Accusamus dolorem sapiente voluptas quia omnis quo. Magni tempora perspiciatis et vel.\n\nQui voluptas eos autem. Minima tenetur magnam tempora alias. Id minima error ut ab consequatur voluptates aut. Rerum non et voluptatem voluptatem nobis minus. Hic omnis quia fugit deserunt harum.\n\nReiciendis rem praesentium odit est voluptatibus. Aut et error perferendis soluta. Recusandae eum harum explicabo est. Nobis et impedit non asperiores voluptas eligendi.\n\nSit odit maxime et adipisci ex. Nulla quia fugit quas eaque quia blanditiis. Odio iste repellat nisi assumenda deserunt nihil. Ab illo omnis cupiditate.\n\nSint labore iste eius perferendis enim aliquid natus. Aut in voluptas possimus reprehenderit vero. Et consectetur et modi. Voluptate fugit incidunt unde blanditiis magni maxime.', 'Post_Image_1.jpg', '2020-02-20 17:00:00', '2020-02-20 17:00:00', '2020-02-20 17:00:00', 1, 8),
(13, 1, 'Dolor voluptate quo et dignissimos et rerum eveniet repellendus et expedita laboriosam dolore quia fugiat qui rerum eaque.', 'totam-deleniti-aspernatur-veniam-amet', 'Assumenda reprehenderit at sit voluptatem quod. Praesentium omnis consequuntur veritatis animi et. Odit id illo maiores nostrum sed. Modi dolor ipsam et doloribus et error sapiente aut. Sit aut qui sequi sit et reprehenderit.', 'Ut commodi in sit blanditiis vel aut dolorum. Voluptatibus est dignissimos maiores consequatur ut itaque. Ea aut sed et et temporibus optio.\n\nEsse qui qui nostrum velit. Sit consectetur rerum deserunt voluptatibus nam voluptate esse. Voluptatibus excepturi consequuntur rerum sunt doloremque molestiae. Magnam corporis vel suscipit non voluptas officiis et. Et ab consequatur unde.\n\nNihil eligendi saepe saepe. Iusto est quisquam vero ratione aperiam suscipit qui molestias. Nam quidem dignissimos adipisci vero labore.\n\nReprehenderit modi et ut ut sed temporibus voluptas qui. Tempora nobis blanditiis omnis ad. Excepturi expedita possimus esse consequatur.\n\nDignissimos quis perspiciatis ut debitis nostrum. Qui sed qui accusamus nihil culpa. Cumque exercitationem est recusandae atque. Soluta quia libero maiores deleniti nihil quasi.\n\nAlias sed mollitia laudantium vel provident nobis ipsam quam. Qui ut totam laborum odio. Nihil odit sapiente natus possimus. Est quo eaque rerum nemo molestiae eos. Rerum qui natus veritatis optio dolores nisi non.', 'Post_Image_4.jpg', '2020-02-20 17:00:00', '2020-02-20 17:00:00', '2020-02-20 17:00:00', 1, 9),
(14, 3, 'Odio incidunt voluptas porro qui reiciendis saepe voluptates fugiat cupiditate.', 'facilis-sed-dolores-et-sed', 'Deserunt velit in fugit sit incidunt. Nemo vel ea omnis rerum culpa atque. Labore nemo necessitatibus vel distinctio impedit. Tenetur corporis in consectetur doloribus consequuntur ab et.', 'Odio consequuntur dolorum soluta quisquam aliquam dolorem. Dignissimos et aperiam eveniet. Sit provident ducimus enim dicta est. Cum quaerat id rerum fuga.\n\nMolestiae autem nihil quam eum saepe. Fugit quae et et vero odio. Aut ipsam velit nobis explicabo dignissimos. Temporibus aspernatur nulla rem ut ducimus.\n\nConsequuntur cumque voluptas tenetur. Enim explicabo sed sunt consectetur eos enim aut. Natus suscipit sed fugiat possimus ducimus ipsum pariatur. Voluptatem quia tempore iste ipsa.\n\nQuia odio aspernatur sed quis. Omnis debitis id reprehenderit sit. Rerum eligendi qui impedit harum.\n\nExcepturi cum inventore eum rerum. Ut molestias est minus officia ipsum neque fugit. Quibusdam vitae cumque velit harum.', 'Post_Image_3.jpg', '2020-02-20 17:00:00', '2020-02-20 17:00:00', '2020-02-20 17:00:00', 1, 3),
(15, 2, 'Maiores quia cum asperiores minus laudantium earum cupiditate.', 'laudantium-qui-tenetur-ducimus-eos-blanditiis', 'Harum est blanditiis laborum dolorem aspernatur. Recusandae quod sit rerum harum.', 'Vel ullam accusantium quae nostrum quae temporibus. Ullam accusantium id hic facilis. Itaque quia voluptates et ullam. Illo nam repellendus voluptas alias.\n\nDolores et ut provident eligendi similique dolore delectus. Sint delectus quia ullam aut quidem quibusdam. Voluptatem aut quo earum occaecati quia doloribus. Natus aut porro ad harum pariatur necessitatibus voluptatum.\n\nOdio quaerat magnam voluptas aliquid sunt. Numquam impedit est illo.\n\nEligendi odit aut consequatur dolorum omnis. Excepturi qui unde ut. Excepturi ipsa amet voluptatibus quasi voluptas sequi. Deserunt molestias neque et saepe aut aut.\n\nQui delectus quae et vel. Numquam sed aut eaque consectetur nam cum. Eius quae magnam ad dolorem saepe officiis sint.\n\nPraesentium consequatur suscipit enim aut error asperiores. Voluptas saepe animi optio quia. Voluptas non voluptatem quae asperiores.', 'Post_Image_5.jpg', '2020-02-20 17:00:00', '2020-02-20 17:00:00', '2020-02-20 17:00:00', 2, 1),
(16, 2, 'Vero delectus eum earum dolor ex est molestiae ducimus commodi sit necessitatibus autem.', 'maxime-dolorum-qui-minus-doloremque-et-quas-ut', 'Temporibus sed voluptatibus suscipit quo quidem cupiditate. Commodi dolorem qui eum et et aut. Ipsum iure sit sunt non nostrum labore incidunt. Veritatis officia officiis suscipit tenetur.', 'Explicabo sint eum maiores facilis voluptatem tenetur omnis. Sequi voluptatem ab cumque suscipit harum eum et. Architecto consequatur commodi assumenda sed. Rerum praesentium ea omnis corporis.\n\nIste eaque dignissimos consequatur voluptatem voluptatem quos. Sint aut beatae sint dolore assumenda autem et. Et ut doloribus minus ipsa voluptas. Beatae tempore doloribus quia maiores.\n\nLaudantium aut iusto non. Libero ad sit accusamus earum aut dicta. Doloribus nisi velit dolorem iste a nemo cupiditate. Soluta iure asperiores ut itaque officiis hic.\n\nNihil vero doloribus sint dolorum. Alias id aspernatur autem voluptate sit natus. Provident odio tenetur placeat omnis molestias ad.\n\nNihil aut consequatur enim in perferendis maiores dolore voluptas. Mollitia est ducimus nesciunt expedita aperiam libero. Iste dicta est ut. Et nihil deserunt fugit laborum voluptatibus corrupti.\n\nAspernatur non sapiente pariatur molestiae. Impedit molestias culpa qui et neque. Dolorem expedita ipsa corrupti libero nam. Illum nesciunt ipsum ex vitae similique repellat qui eum.', 'Post_Image_3.jpg', '2020-02-20 17:00:00', '2020-02-20 17:00:00', '2020-02-20 17:00:00', 1, 15),
(17, 1, 'Soluta in consequatur doloribus voluptatem ut incidunt molestiae praesentium.', 'suscipit-voluptate-a-soluta-quos-sit-qui-corporis', 'Non eos ducimus dolores odio optio ab omnis. Nemo fugiat recusandae laudantium ut aut quaerat vel nisi. Laudantium officia officiis in accusamus. Commodi quas ad et et dolore cumque.', 'At dolor ducimus voluptas sit et in. Laboriosam sequi eum tenetur magnam qui quibusdam. Aperiam dolores sunt voluptatem. Voluptate nostrum vel libero consequatur.\n\nBeatae earum sunt fuga natus. Officia dicta accusamus error occaecati sit enim. Et voluptatibus accusamus itaque illum qui.\n\nEos in sit non quisquam exercitationem nostrum quaerat. Quasi quos sed quia autem modi iure. Dolores voluptatum ad rerum nobis consequuntur itaque ipsam sed. Et et facere aut in ipsum iure et.\n\nVoluptatibus minima nulla ducimus tenetur. Vel necessitatibus ea in. Illo assumenda qui cum hic iusto quis officia. Repellat atque dolorem distinctio dolorum pariatur.\n\nExercitationem laboriosam assumenda ratione sit ut rerum optio quo. Consequatur sed dolores laborum. Corrupti molestiae dolor tenetur et nostrum.\n\nPorro rem officiis est expedita amet et consequatur. Excepturi sunt voluptas quibusdam ad. Impedit saepe sit minus et recusandae placeat adipisci. Autem dicta voluptas rerum necessitatibus enim.', 'Post_Image_1.jpg', '2020-02-20 17:00:00', '2020-02-20 17:00:00', '2020-02-20 17:00:00', 2, 8),
(18, 3, 'Veritatis eos debitis incidunt nesciunt cum eum quasi totam voluptates corrupti dolore impedit voluptatibus.', 'quidem-neque-rerum-debitis-voluptatem-laudantium-voluptas-ad', 'Doloribus ratione iure officia sit iste animi tenetur. Quia architecto veniam necessitatibus facere natus autem aut. Consequatur voluptatem consequatur voluptas vero id itaque. Quaerat esse est voluptatem exercitationem qui quia minima soluta.', 'Quaerat soluta beatae rerum est esse beatae et. Temporibus et cupiditate est ipsa nobis. Ullam quaerat quia perspiciatis sit eum. Officia ullam expedita iure et.\n\nQui qui quibusdam eius modi temporibus. Aspernatur eaque perspiciatis ratione harum temporibus.\n\nFacilis assumenda minus reprehenderit nihil quo numquam enim vero. Dolorem recusandae et architecto nihil molestias animi est. Natus ut laborum voluptatum itaque facilis molestiae et.\n\nEius minus qui consequatur repellendus. Odit voluptas dolorem necessitatibus dolore sed earum ut distinctio. Nihil ratione provident corrupti ipsa.\n\nEx ratione perspiciatis similique ut dolor vel illo laborum. Quibusdam ab vero maxime nihil illo voluptatum. Fugit et voluptatem eum tenetur nulla eum quis.', 'Post_Image_3.jpg', '2020-02-20 17:00:00', '2020-02-20 17:00:00', '2020-02-20 17:00:00', 2, 4),
(19, 1, 'Iusto aut rerum aut quo nam omnis maiores.', 'reprehenderit-accusantium-est-nostrum', 'Autem qui dignissimos aliquid in ducimus quia. Aut omnis itaque qui id est alias. Voluptas eaque dolorum dolores asperiores.', 'Est illo quia consequatur sunt. Iusto optio velit consequuntur eius doloremque. Non itaque qui occaecati quo voluptatem est dolore. Qui nihil voluptatem est hic enim.\n\nUt similique voluptatem nesciunt. Ducimus eveniet qui voluptates delectus voluptas nostrum. Inventore aut in dolores quibusdam qui delectus culpa.\n\nEt omnis dolores sint temporibus aut aut. Repellat eum dolor debitis eum quia est. Atque ut explicabo soluta laborum. Aspernatur aut quia atque sint harum sed minima nihil.\n\nRerum aut totam laudantium. Ipsam nobis quisquam esse quas ab velit qui. Doloremque ut quas recusandae voluptatum aut. Sequi laborum veritatis doloremque nihil sed inventore.\n\nSed earum distinctio aperiam qui iure repellat. Aliquid expedita quidem saepe est eaque sequi. Ipsa ut velit voluptatem error rerum odio quasi asperiores.\n\nEt dolores blanditiis molestiae minus sed enim asperiores. Perferendis cupiditate ab at cumque aperiam. Rerum animi qui architecto perferendis sunt quod. Rem sunt dicta reiciendis autem sequi reiciendis.', 'Post_Image_5.jpg', '2020-02-20 17:00:00', '2020-02-20 17:00:00', '2020-02-20 17:00:00', 1, 1),
(20, 3, 'Voluptas ea facere autem.', 'aspernatur-aut-perspiciatis-perferendis-commodi-voluptatem', 'Nisi dolore facere aut incidunt ut similique. Voluptas recusandae facilis non. Consequatur nihil animi sunt. Maxime labore nam dolor qui nulla aut beatae minus.', 'Minus ut aspernatur mollitia voluptatem quasi eius autem et. Expedita aut sunt earum animi reprehenderit velit. Aut officia saepe aut rerum temporibus laborum numquam.\n\nTempora voluptate et enim iusto commodi itaque. Porro qui commodi ea maiores est quia corporis. Et rerum quidem rem sit ea. Magnam et hic architecto consectetur suscipit.\n\nQuidem assumenda dolores nam. Architecto nisi in est qui dolores nam enim nostrum. Sit mollitia quos at sint cumque cum. Labore occaecati aut ad qui autem laudantium.\n\nUt impedit fugit deserunt nesciunt nobis debitis. Sit voluptatum alias est eligendi praesentium officiis neque. Aut sed ut cupiditate suscipit nemo impedit minima.\n\nAsperiores aut suscipit quae quasi amet repellat. Corporis eveniet modi impedit explicabo possimus harum. Et ullam incidunt et. Quam corrupti necessitatibus laborum enim dolore delectus nihil.', 'Post_Image_1.jpg', '2020-02-20 17:00:00', '2020-02-20 17:00:00', '2020-02-20 17:00:00', 1, 17),
(22, 1, 'my tesing', 'my-tesing', 'this is testing', '# 1. * > kjjhkjhkjh\r\ndsfsafasdfasdf\r\n# sdfsdafsdfsdfs\r\n\r\nsdfdsaf\r\n\r\nsdafsdfsd', 'car.jpeg', '2020-02-29 05:18:21', '2020-02-29 09:17:43', '2020-02-28 17:00:00', 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', NULL, '2020-02-21 08:39:55', '2020-02-21 08:39:55'),
(2, 'editor', 'Editor', NULL, '2020-02-21 08:39:55', '2020-02-21 08:39:55'),
(3, 'author', 'Author', NULL, '2020-02-21 08:39:55', '2020-02-21 08:39:55');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `user_type`) VALUES
(1, 1, 'App\\User'),
(3, 1, 'App\\User'),
(2, 2, 'App\\User'),
(3, 3, 'App\\User'),
(3, 4, 'App\\User'),
(1, 5, 'App\\User');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bio` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `slug`, `bio`) VALUES
(1, 'Seakhong Heang', 'seakhong.heang@gmail.com', NULL, '$2y$10$RSZpL3QQ8x6BY0UzRxNfWeYXy.kCNqL8y8NPzXlJOhFdus1CEEmum', NULL, NULL, '2020-02-29 05:16:19', 'seakhong-heang', 'Ea ad suscipit placeat deserunt. Aut autem eum temporibus et adipisci ad. In sed earum neque et occaecati modi nobis. Qui a consequatur labore.\r\nsdas\r\nEt voluptatum dolorem voluptatem. Et tempore similique perspiciatis ab illum temporibus natus. Autem ut ut quaerat.'),
(2, 'Sok San', 'soksan@gmail.com', NULL, '$2y$10$iBrAv4Jf0wdHBqU0X.by9.cSPkewlD/jp.lSp3foruQvUmAaM7iGS', NULL, NULL, NULL, 'sok-san', 'Perferendis consequuntur quo incidunt. Ullam quis reprehenderit sint nihil est. Fugiat sit distinctio maxime illum molestiae delectus.\n\nTemporibus impedit quo et aut officiis sed. Dolor voluptatem ex repudiandae iure laudantium accusantium et. Magnam praesentium porro ad sit et ea. Et repellendus qui minima rerum facere eligendi quisquam.\n\nNon reiciendis voluptas commodi qui. Praesentium quo debitis et ut repellendus molestiae. Qui ex est consectetur earum consequatur molestiae voluptas.'),
(3, 'Dara Kok', 'DaraKok@gmail.com', NULL, '$2y$10$K2mjw9Ji/1gZL29qS4Yx..VXnurogJiNy2qlGLN2c84wO5RHzxd4q', NULL, NULL, NULL, 'dara-kok', 'A quis corrupti ipsam quia delectus. Cumque praesentium minima amet sunt doloribus. Perspiciatis hic quibusdam et delectus. Magnam a molestias harum maxime sed sit et.\n\nIncidunt eum expedita molestias quibusdam minus ad atque. Aut omnis nemo ab necessitatibus. Ipsum vero quo repellendus perferendis.\n\nCulpa pariatur corporis et qui ea qui. Repellat nostrum nostrum iusto aut. Molestiae nisi saepe eos corrupti natus.'),
(4, 'Huot', 'seakhongheang94@gmail.com', NULL, '$2y$10$QNpzPhD39jwZiP8LPDWcfu00u.32H1jzMqd.0JV0fXbiUCV4ozp96', NULL, '2020-02-21 21:32:26', '2020-02-29 05:16:42', 'huot', 'slasad'),
(5, 'AdminTest', 'testing@gmail.com', NULL, '$2y$10$z//n7hx7PTv778bKzsvWluh.wADsxoPSdVKZt3C5O1OEmcfEnRBLC', NULL, '2020-02-29 08:40:38', '2020-02-29 08:40:38', 'admintest', 'this is testing');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_author_id_foreign` (`author_id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
