-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 09 2022 г., 20:25
-- Версия сервера: 8.0.24
-- Версия PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `vacancy`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cities`
--

CREATE TABLE `cities` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cities`
--

INSERT INTO `cities` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Ашхабад', '2022-01-04 21:00:00', '2022-01-04 21:00:00'),
(2, 'Мары', '2022-01-04 21:00:00', '2022-01-04 21:00:00'),
(3, 'Дашогуз', '2022-01-04 21:00:00', '2022-01-04 21:00:00'),
(4, 'Туркменабад', '2022-01-04 21:00:00', '2022-01-04 21:00:00'),
(5, 'Туркменбаши', '2022-01-04 21:00:00', '2022-01-04 21:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `education`
--

CREATE TABLE `education` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `education`
--

INSERT INTO `education` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Не имеет значение', '2022-01-05 01:05:39', '2022-01-05 01:05:43'),
(2, 'Средняя', '2022-01-05 01:05:46', '2022-01-05 01:05:48'),
(3, 'Высшая-средняя', '2022-01-05 01:05:51', '2022-01-05 01:05:54'),
(4, 'Высшая', '2022-01-05 01:05:58', '2022-01-05 01:06:00');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `languages`
--

CREATE TABLE `languages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `languages`
--

INSERT INTO `languages` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'уточнить не требуется', '2022-01-04 21:00:00', '2022-01-04 21:00:00'),
(2, 'Туркмениский', '2022-01-04 21:00:00', '2022-01-04 21:00:00'),
(3, 'Русский', '2022-01-04 21:00:00', '2022-01-04 21:00:00'),
(4, 'Английский', '2022-01-04 21:00:00', '2022-01-04 21:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `language_posts`
--

CREATE TABLE `language_posts` (
  `id` bigint UNSIGNED NOT NULL,
  `langauge_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `language_posts`
--

INSERT INTO `language_posts` (`id`, `langauge_id`, `post_id`, `created_at`, `updated_at`) VALUES
(109, 4, 329, NULL, NULL),
(110, 3, 330, NULL, NULL),
(111, 1, 331, NULL, NULL),
(112, 3, 332, NULL, NULL),
(113, 3, 333, NULL, NULL),
(114, 3, 334, NULL, NULL),
(115, 4, 335, NULL, NULL),
(116, 3, 336, NULL, NULL),
(117, 2, 337, NULL, NULL),
(118, 2, 338, NULL, NULL),
(119, 2, 339, NULL, NULL),
(120, 4, 340, NULL, NULL),
(121, 2, 341, NULL, NULL),
(122, 3, 342, NULL, NULL),
(123, 4, 343, NULL, NULL),
(124, 1, 344, NULL, NULL),
(125, 3, 345, NULL, NULL),
(126, 3, 346, NULL, NULL),
(127, 4, 347, NULL, NULL),
(128, 2, 348, NULL, NULL),
(129, 1, 349, NULL, NULL),
(130, 3, 350, NULL, NULL),
(131, 4, 351, NULL, NULL),
(132, 2, 352, NULL, NULL),
(133, 1, 353, NULL, NULL),
(134, 4, 354, NULL, NULL),
(135, 2, 355, NULL, NULL),
(136, 3, 356, NULL, NULL),
(137, 2, 357, NULL, NULL),
(138, 4, 358, NULL, NULL),
(139, 2, 359, NULL, NULL),
(140, 1, 360, NULL, NULL),
(141, 3, 361, NULL, NULL),
(142, 2, 362, NULL, NULL),
(143, 3, 363, NULL, NULL),
(144, 4, 364, NULL, NULL),
(145, 2, 365, NULL, NULL),
(146, 1, 366, NULL, NULL),
(147, 1, 367, NULL, NULL),
(148, 3, 368, NULL, NULL),
(149, 3, 369, NULL, NULL),
(150, 3, 370, NULL, NULL),
(151, 1, 371, NULL, NULL),
(152, 4, 372, NULL, NULL),
(153, 1, 373, NULL, NULL),
(154, 3, 374, NULL, NULL),
(155, 4, 375, NULL, NULL),
(156, 1, 376, NULL, NULL),
(157, 3, 377, NULL, NULL),
(158, 3, 378, NULL, NULL),
(159, 1, 379, NULL, NULL),
(160, 4, 380, NULL, NULL),
(161, 2, 381, NULL, NULL),
(162, 2, 382, NULL, NULL),
(163, 1, 383, NULL, NULL),
(164, 3, 384, NULL, NULL),
(165, 1, 385, NULL, NULL),
(166, 4, 386, NULL, NULL),
(167, 4, 387, NULL, NULL),
(168, 2, 388, NULL, NULL),
(169, 4, 389, NULL, NULL),
(170, 2, 390, NULL, NULL),
(171, 1, 391, NULL, NULL),
(172, 4, 392, NULL, NULL),
(173, 1, 393, NULL, NULL),
(174, 1, 394, NULL, NULL),
(175, 3, 395, NULL, NULL),
(176, 4, 396, NULL, NULL),
(177, 1, 397, NULL, NULL),
(178, 3, 398, NULL, NULL),
(179, 4, 399, NULL, NULL),
(180, 3, 400, NULL, NULL),
(181, 1, 401, NULL, NULL),
(182, 4, 402, NULL, NULL),
(183, 2, 403, NULL, NULL),
(184, 2, 404, NULL, NULL),
(185, 2, 405, NULL, NULL),
(186, 2, 406, NULL, NULL),
(187, 3, 407, NULL, NULL),
(188, 1, 408, NULL, NULL),
(189, 3, 409, NULL, NULL),
(190, 1, 410, NULL, NULL),
(191, 1, 411, NULL, NULL),
(192, 3, 412, NULL, NULL),
(193, 2, 413, NULL, NULL),
(194, 3, 414, NULL, NULL),
(195, 4, 415, NULL, NULL),
(196, 3, 416, NULL, NULL),
(197, 2, 417, NULL, NULL),
(198, 3, 418, NULL, NULL),
(199, 4, 419, NULL, NULL),
(200, 4, 420, NULL, NULL),
(201, 3, 421, NULL, NULL),
(202, 1, 422, NULL, NULL),
(203, 3, 423, NULL, NULL),
(204, 4, 424, NULL, NULL),
(205, 1, 425, NULL, NULL),
(206, 1, 426, NULL, NULL),
(207, 4, 427, NULL, NULL),
(208, 4, 428, NULL, NULL),
(209, 1, 429, NULL, NULL),
(210, 2, 430, NULL, NULL),
(211, 3, 430, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_01_05_001723_create_cities_table', 1),
(7, '2022_01_05_003009_create_professions_table', 2),
(9, '2022_01_05_004819_create_stages_table', 3),
(11, '2022_01_05_010254_create_education_table', 4),
(13, '2022_01_05_011035_create_languages_table', 5),
(15, '2022_01_05_011927_create_schedules_table', 6),
(17, '2022_01_05_013502_create_salaries_table', 7),
(41, '2022_01_05_033152_create_posts_table', 8),
(42, '2022_01_05_033153_create_language_posts_table', 8),
(44, '2022_01_08_174123_add_column_to_users_table', 9);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` bigint UNSIGNED NOT NULL,
  `profession_id` bigint UNSIGNED NOT NULL,
  `stage_id` bigint UNSIGNED NOT NULL,
  `schedule_id` bigint UNSIGNED NOT NULL,
  `salary_id` bigint UNSIGNED NOT NULL,
  `education_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `view` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `company`, `city_id`, `profession_id`, `stage_id`, `schedule_id`, `salary_id`, `education_id`, `user_id`, `description`, `email`, `phone`, `view`, `created_at`, `updated_at`) VALUES
(329, 'Conroy-Wunsch', 2, 14, 3, 1, 10, 1, 25, 'Dicta facere enim quia beatae maxime deleniti culpa aut quidem velit ea quod architecto adipisci et magnam non qui consequatur dolore sapiente numquam voluptatem repudiandae non nemo animi qui.', 'unique.trantow@yahoo.com', '+1-660-988-9390', 112, '2021-11-11 03:03:04', '2022-01-07 17:52:09'),
(330, 'Hauck-Orn', 1, 1, 2, 4, 12, 1, 23, 'Illo sunt reiciendis id et exercitationem eligendi quod commodi sit esse cum ut quo perferendis occaecati illum illum non sequi aliquid accusamus magni eum hic iure pariatur omnis necessitatibus quo quia qui perferendis sit molestiae eius et.', 'weissnat.nickolas@yahoo.com', '1-308-230-6641', 583, '2021-11-24 17:31:14', '2022-01-07 17:53:50'),
(331, 'Wiegand, Stehr and Effertz', 1, 8, 2, 3, 1, 3, 25, 'Pariatur sed excepturi vitae eius animi aut fuga dolore ut nemo possimus possimus delectus est dolor magnam minus cupiditate adipisci soluta enim quos quia sit id vitae molestiae eius quos odit blanditiis totam ut praesentium minima placeat voluptatem numquam ex fugiat ea et omnis quasi at qui expedita.', 'jane.sporer@brown.org', '857.499.2346', 572, '2021-11-14 13:18:16', '2022-01-07 17:53:50'),
(332, 'Reilly-Heller', 4, 6, 1, 4, 8, 2, 24, 'Ut ipsum possimus laborum aperiam neque enim labore dolorem et dolorem quis ut occaecati aliquid voluptate aperiam expedita nemo quaerat quas odio quidem et laboriosam et ullam ut in quod illo nemo cum autem eaque sit voluptas voluptatem et non iure dignissimos sapiente facilis.', 'emory41@brown.com', '(812) 628-0269', 927, '2021-12-21 12:08:12', '2022-01-07 17:53:50'),
(333, 'Miller-Kovacek', 5, 1, 1, 5, 13, 3, 23, 'Ea culpa sunt hic iste facilis rem autem debitis est explicabo aut rerum sed nam hic excepturi consequatur soluta et enim unde exercitationem corrupti quas laudantium molestias tempora aut voluptatem.', 'rdickens@hotmail.com', '(505) 676-8845', 688, '2021-12-24 06:01:13', '2022-01-07 17:53:50'),
(334, 'Torp-Metz', 1, 2, 3, 4, 7, 2, 23, 'Quia qui quibusdam eligendi rerum modi eum qui quis consequatur delectus quia maiores sapiente cum et veritatis commodi deserunt et magni error quo repellendus est voluptatem dignissimos voluptatibus modi nam id sit commodi quibusdam eum animi distinctio vero quidem quidem eligendi minima.', 'justus93@ryan.com', '551-233-2889', 540, '2021-11-25 01:44:23', '2022-01-07 17:53:50'),
(335, 'Orn, O\'Reilly and Boyle', 3, 2, 3, 5, 6, 2, 23, 'Nobis beatae quo soluta totam praesentium praesentium aperiam est quas totam adipisci nesciunt corrupti sit pariatur corrupti reprehenderit amet et eius minima exercitationem consequatur nihil fugiat expedita tenetur iusto magnam dolores in aut veniam ratione ipsa qui saepe quis veritatis deleniti aut necessitatibus.', 'kolby58@hotmail.com', '347-304-1998', 465, '2021-12-02 14:45:01', '2022-01-07 17:53:50'),
(336, 'Price-Mayer', 1, 8, 2, 2, 17, 3, 24, 'Ea eligendi consequatur delectus laboriosam sed assumenda consectetur accusamus ut aperiam accusamus eveniet nostrum fuga et consequatur reprehenderit unde ea similique a dolorem eos soluta at et at laudantium ut asperiores enim quidem sed voluptate amet placeat eligendi est autem eius magni consequatur odit ut magni et rem nobis et corrupti quam eius omnis.', 'purdy.michelle@yahoo.com', '586.810.7210', 475, '2021-11-26 04:30:04', '2022-01-07 17:53:50'),
(337, 'Purdy Ltd', 5, 11, 4, 4, 4, 1, 23, 'Deserunt quia est quo sequi eligendi sint est libero corrupti repudiandae ad cum dolor nemo pariatur blanditiis sit non nihil odit dolorem dignissimos omnis incidunt deleniti.', 'wpouros@anderson.net', '(715) 806-8024', 429, '2022-01-01 19:35:40', '2022-01-07 17:53:50'),
(338, 'Goyette and Sons', 4, 5, 4, 3, 17, 3, 23, 'Excepturi sint eos exercitationem doloribus ut eveniet labore ducimus dolorem consequuntur placeat quis in qui dolor sit molestiae at provident molestias nobis numquam nobis cupiditate aspernatur autem.', 'gerhold.helen@wiza.info', '+1 (820) 428-8558', 243, '2021-11-09 14:35:52', '2022-01-07 17:53:50'),
(339, 'Kovacek, Paucek and Christiansen', 5, 4, 3, 4, 2, 3, 25, 'Sunt non repellendus ipsam veniam aliquid voluptas incidunt iusto magnam laudantium voluptatum reprehenderit doloribus et repellat voluptates est deleniti dolor iusto quia consequatur et laboriosam sit ut sit ipsa ad voluptatum quia occaecati sunt harum animi quisquam et nisi sapiente expedita impedit ut praesentium quis esse mollitia perspiciatis doloribus delectus animi iure adipisci et aperiam ut.', 'blanda.letha@spinka.com', '1-458-899-9451', 712, '2021-11-17 01:21:38', '2022-01-08 08:53:53'),
(340, 'Lindgren-Wunsch', 5, 15, 1, 2, 17, 1, 25, 'Eaque aut sit et sed et sequi illo quasi a aut in explicabo nisi facilis est incidunt tenetur eos non dolorum nobis est et at laudantium minima vitae nihil ea eos earum et nam sint suscipit voluptatem enim et perspiciatis ipsam maiores rem rem quaerat.', 'kenton04@gmail.com', '+17328028269', 958, '2021-11-26 10:45:34', '2022-01-07 17:53:50'),
(341, 'Orn-Wunsch', 3, 13, 2, 5, 15, 1, 25, 'Et blanditiis dolor doloribus nihil modi quam dignissimos aperiam aut nesciunt eos vel voluptas nemo possimus reiciendis illo ex quae recusandae voluptatem et adipisci itaque harum earum fugiat qui rerum ducimus ut quaerat qui voluptatem molestias id tempore et vel rem illo corporis.', 'velda69@hotmail.com', '(315) 472-7844', 502, '2021-11-27 17:04:19', '2022-01-07 17:53:50'),
(342, 'Hintz and Sons', 2, 6, 4, 3, 14, 2, 25, 'Blanditiis non neque nobis aut aut aut unde eos tempora voluptatibus voluptatem qui dolorem sed maxime et vero ut voluptate sint reiciendis suscipit ea fugit laborum sequi ut quaerat quibusdam eos fuga labore quisquam voluptatem ipsa sint officiis rerum sunt laudantium reprehenderit facilis reiciendis nobis voluptas et nisi voluptatem occaecati culpa architecto.', 'marvin.reba@hotmail.com', '432-857-1005', 482, '2021-11-15 01:00:31', '2022-01-07 17:53:50'),
(343, 'Bartell Inc', 5, 1, 4, 2, 17, 4, 23, 'Aspernatur qui ut et eum facilis quos commodi facilis dolores et numquam dolores qui sint rerum fugit placeat quam sint sequi nostrum dolor sit provident autem voluptatem vel nobis est veniam et ratione ex deserunt aliquam suscipit voluptas molestias.', 'luna.braun@nitzsche.net', '1-681-758-7905', 918, '2021-11-26 00:51:21', '2022-01-07 17:53:50'),
(344, 'Reichel, Runolfsdottir and Oberbrunner', 3, 10, 3, 3, 5, 4, 25, 'Nulla quis ea perferendis voluptas eum incidunt quos quis accusantium iste accusamus occaecati rerum aut consequuntur enim earum neque aliquid minima voluptas magni voluptatem ut reprehenderit.', 'eschaefer@yahoo.com', '+12289081979', 290, '2022-01-02 19:24:31', '2022-01-07 17:53:50'),
(345, 'Brekke-Funk', 2, 4, 4, 4, 16, 1, 23, 'Sequi fugit dolores dolorem maiores alias et modi quidem rerum ab laborum ipsa et illum omnis quia et consectetur totam vero vel ut iure eos voluptas veritatis officiis et impedit voluptatem quibusdam rem ut fugiat repellendus est velit maiores dolorem soluta sit accusantium assumenda a fuga enim ducimus id officiis repellat consequuntur amet.', 'kunze.milford@hotmail.com', '313.925.1128', 95, '2021-12-26 08:34:42', '2022-01-07 17:53:50'),
(346, 'Brekke Group', 4, 2, 1, 5, 13, 3, 25, 'Debitis sapiente fugit illum iusto blanditiis nam laborum quos delectus eaque error possimus unde ab fuga error similique ipsam adipisci non ea eius voluptatem id nam non porro est ullam quos aperiam alias quis consequatur qui et debitis voluptates dolores sed vel quia perspiciatis dolorum ut consequatur saepe quia.', 'rahul.sanford@gmail.com', '239-792-6000', 941, '2021-12-27 22:21:55', '2022-01-07 17:53:50'),
(347, 'Block, Luettgen and Jones', 4, 2, 3, 3, 2, 4, 24, 'Ipsum veritatis voluptas quibusdam vel sunt perspiciatis alias quia et nihil similique quidem odio animi soluta voluptates eos expedita praesentium ea accusamus reprehenderit quo et nihil eligendi.', 'crystal.bins@mante.net', '551-772-1191', 191, '2021-11-09 02:19:44', '2022-01-07 17:53:50'),
(348, 'Corwin Group', 2, 4, 2, 1, 17, 1, 25, 'Nesciunt nobis eos voluptate iste error non et dolor voluptatem praesentium non molestiae ipsam nobis nisi ullam error qui repellat est rerum reprehenderit aut illo fugiat ab in numquam temporibus eius quisquam ex at quia velit distinctio aliquid eos enim tenetur quis quae quidem eius et doloremque et.', 'brandy82@osinski.info', '743-496-8656', 372, '2021-12-02 02:26:53', '2022-01-07 17:53:50'),
(349, 'Grimes-Abbott', 3, 15, 1, 4, 14, 2, 23, 'Error error et quos animi fugit veniam voluptatibus accusamus in mollitia alias et cumque eum nihil ut autem libero omnis id fugiat veniam rerum ducimus.', 'altenwerth.alvah@weissnat.com', '+1-505-757-5241', 528, '2022-01-05 06:07:39', '2022-01-07 17:53:50'),
(350, 'Stoltenberg, Spinka and Keebler', 1, 1, 2, 2, 3, 2, 23, 'Possimus magnam omnis cumque voluptatem dolorem iure dolorem qui aliquam doloremque quos ullam et eum rem nesciunt quaerat rem aut qui tenetur nostrum perferendis commodi nihil et vitae minus ducimus repudiandae sed in illum dolor deserunt vero dicta omnis omnis consequatur et.', 'virgie78@littel.net', '(517) 849-1688', 650, '2021-12-22 22:36:14', '2022-01-07 17:53:50'),
(351, 'Botsford Group', 5, 11, 3, 4, 7, 1, 23, 'Quos accusamus inventore et consequatur minus aut exercitationem nihil aut praesentium illo quaerat autem quaerat consequatur cupiditate aliquam totam nemo eaque est praesentium dolores qui ipsum eum laboriosam unde temporibus.', 'lemke.norma@strosin.com', '361.427.2479', 618, '2021-11-23 10:40:36', '2022-01-07 17:53:50'),
(352, 'Feil-Treutel', 5, 11, 3, 5, 16, 4, 25, 'Dolore dignissimos ab soluta officiis non culpa dignissimos iusto harum in natus consectetur expedita cupiditate nam deserunt voluptatem esse ut doloribus necessitatibus doloribus doloribus ut error nam omnis culpa quo autem corrupti aut et et voluptate voluptatem quasi eos eius et pariatur voluptate consequuntur dolorem dolore tempora totam repellendus.', 'zion.witting@yahoo.com', '1-986-280-2462', 781, '2021-12-15 08:23:54', '2022-01-07 17:53:50'),
(353, 'Reichel, DuBuque and Hodkiewicz', 1, 15, 1, 5, 13, 2, 25, 'Sint recusandae autem necessitatibus laudantium cupiditate tempore et aliquid doloremque expedita et adipisci debitis voluptate expedita aut exercitationem quos exercitationem alias consequatur voluptatem accusamus ea quos et placeat corporis magni quia.', 'daniela15@walter.com', '650.264.4736', 369, '2021-12-13 21:44:56', '2022-01-07 17:53:50'),
(354, 'Hills-Lang', 4, 11, 4, 4, 17, 2, 25, 'Soluta accusantium beatae qui facere qui aut qui similique eaque cum debitis facilis reprehenderit quibusdam quod dolores voluptatem minus nisi voluptatem corrupti molestias dignissimos et ipsa hic unde rerum consequuntur commodi itaque nesciunt voluptatum tempora exercitationem saepe culpa saepe excepturi laboriosam consequatur ea rem natus.', 'kennith.hill@yahoo.com', '1-828-933-1235', 578, '2021-11-30 02:28:19', '2022-01-07 17:53:50'),
(355, 'Ankunding PLC', 2, 7, 2, 4, 7, 4, 25, 'Nihil ipsa optio praesentium nam eaque quod error et enim debitis eius rerum architecto in aut maxime eaque voluptas ut est dolor quisquam ut iure officia maxime veniam consequatur dolores minima provident quae aut corrupti amet tenetur ratione expedita est voluptas enim voluptate minima dolores vel enim recusandae.', 'shirley.donnelly@gislason.com', '+1-380-359-8895', 213, '2021-12-19 19:24:50', '2022-01-07 17:53:50'),
(356, 'Bernhard-Ward', 2, 1, 1, 2, 14, 4, 23, 'Dolor nobis itaque ut sit ab enim nostrum est saepe sint sunt eos tenetur recusandae ut ullam perferendis deleniti deleniti ut magni veniam dignissimos similique iure quaerat quaerat sit quasi minus sit et dolorem totam odio aut cupiditate sapiente molestiae.', 'bins.jaime@dach.com', '341.647.2993', 161, '2021-11-24 13:24:46', '2022-01-07 17:53:50'),
(357, 'Daniel, Bergstrom and Herman', 2, 6, 1, 1, 11, 2, 23, 'Inventore ipsum voluptatem accusantium iure laudantium reiciendis dolore velit veritatis perspiciatis rerum et nobis distinctio et vitae vel fuga cupiditate expedita nihil animi libero doloribus cum omnis dolorum et expedita sed modi laboriosam velit aut amet veniam nihil autem porro reiciendis vitae distinctio nulla ipsam excepturi eum sapiente.', 'eleanore02@hotmail.com', '1-539-643-5397', 793, '2021-12-09 23:53:16', '2022-01-07 17:53:50'),
(358, 'Crooks-Trantow', 5, 5, 2, 5, 14, 4, 25, 'Eos hic fuga omnis ab quaerat itaque eum dolorum consequatur magni rerum iusto ratione ut aut asperiores eligendi enim magni suscipit maiores perspiciatis adipisci nam eveniet beatae sunt in minima qui minima assumenda reiciendis est porro nam repellat praesentium soluta et nostrum officia ut consequuntur voluptatem explicabo hic iusto vel consequatur.', 'gerhold.ashley@hotmail.com', '(918) 400-3615', 277, '2021-12-28 17:22:58', '2022-01-07 17:53:50'),
(359, 'Mohr-Stroman', 2, 2, 1, 2, 15, 1, 24, 'Vel iusto qui voluptas quidem nihil error et praesentium repudiandae reprehenderit amet perspiciatis alias eum perferendis quam enim ut aspernatur sapiente sed fuga perspiciatis commodi quas.', 'ivah99@buckridge.biz', '(307) 540-8235', 361, '2021-11-14 13:30:36', '2022-01-07 17:53:50'),
(360, 'Okuneva, Boyer and Schimmel', 5, 12, 1, 1, 9, 1, 24, 'Architecto ad qui nesciunt officiis repellendus non laboriosam beatae illo in ut quasi reprehenderit dolores reiciendis dolorum ipsum assumenda omnis officiis unde mollitia quo nostrum officia ut impedit fugit excepturi ut exercitationem non sed at ab quos sed soluta.', 'johnson.hoeger@yahoo.com', '385-292-1205', 170, '2022-01-04 13:02:49', '2022-01-07 17:53:50'),
(361, 'Kulas-Stracke', 4, 11, 4, 5, 12, 2, 23, 'Consequatur modi repudiandae dolores at deleniti maxime magnam omnis similique ut sunt iure consequatur aut aperiam id et ex cum qui aspernatur et eos blanditiis veritatis et distinctio autem modi quia maxime nobis praesentium in temporibus deleniti doloremque.', 'ward.bashirian@thiel.com', '+18059689792', 990, '2021-12-02 08:49:59', '2022-01-07 17:53:50'),
(362, 'Jones-Borer', 1, 3, 4, 5, 16, 1, 25, 'Neque sed iste quaerat et consequuntur quaerat et est id quae praesentium nulla voluptas autem et adipisci facere odit sed officia sed et sit inventore aspernatur illo dolorem rem voluptas assumenda reprehenderit delectus dolor ea dicta qui voluptas error in qui ab iure quasi voluptatem neque.', 'fhodkiewicz@hintz.info', '+19492399650', 196, '2021-12-28 05:17:45', '2022-01-07 17:53:50'),
(363, 'Friesen and Sons', 3, 4, 3, 4, 7, 2, 23, 'Eum esse repellendus totam quasi quam nihil iste ea provident corrupti iure natus reprehenderit quisquam voluptas ipsum aut laboriosam dolorem exercitationem aut saepe assumenda eius laboriosam placeat corrupti sed.', 'qfeest@goyette.com', '(903) 780-4856', 217, '2021-11-26 05:24:27', '2022-01-07 17:53:50'),
(364, 'Batz, Deckow and Abbott', 5, 8, 4, 4, 3, 1, 23, 'Minima dolore iusto animi voluptatem cum autem rerum officiis atque omnis corporis ipsam nihil necessitatibus temporibus dolorum qui cupiditate ex nihil voluptatem eveniet optio suscipit maiores modi unde.', 'leda.weber@gmail.com', '415.506.5095', 16, '2021-12-17 23:04:15', '2022-01-07 17:53:50'),
(365, 'Greenfelder and Sons', 3, 2, 4, 4, 1, 2, 24, 'Enim quo inventore deserunt in voluptates facilis placeat quae dignissimos consequuntur placeat voluptatem numquam et et quas qui aut accusantium neque cum doloribus qui explicabo delectus sed.', 'preston01@strosin.net', '870-414-4729', 451, '2021-11-23 08:35:36', '2022-01-07 17:53:50'),
(366, 'Schinner, Brekke and Miller', 1, 6, 1, 3, 13, 1, 23, 'Suscipit necessitatibus ab dolorem explicabo necessitatibus in totam explicabo quam dicta laborum non officiis et sed quisquam deserunt numquam adipisci animi ut aut non eos suscipit quia delectus enim quia dolorem aut aut quo numquam qui quis sed quisquam consequatur ducimus sint sunt neque.', 'nader.craig@adams.com', '+1 (815) 643-7054', 334, '2021-11-07 22:34:37', '2022-01-07 17:53:50'),
(367, 'Williamson, Stroman and Lynch', 4, 13, 3, 5, 8, 4, 25, 'Quam qui et et qui id expedita laborum aliquid assumenda ut eos consequatur quasi omnis id deserunt a velit natus consequatur sunt molestiae culpa voluptas qui sit ut quia mollitia ut consequatur similique quos est vitae officiis ab eius est voluptas at qui.', 'theresia.bauch@oconner.info', '+1.423.738.2705', 651, '2021-12-22 04:33:56', '2022-01-07 17:53:50'),
(368, 'Beier, Schroeder and Barton', 4, 4, 3, 5, 9, 3, 23, 'Impedit optio laboriosam necessitatibus dolorem et quia tempora et dolores culpa aperiam quis et aut reprehenderit eaque qui ut et ut veniam quis tempore cupiditate dignissimos atque et voluptatem pariatur aut fugit debitis ut eum non nostrum labore nihil ipsum repudiandae ea.', 'richard61@yahoo.com', '260.652.8557', 680, '2022-01-02 04:00:54', '2022-01-07 17:53:50'),
(369, 'Gutmann, Johnson and Mayert', 3, 9, 1, 5, 5, 4, 25, 'Minima expedita asperiores et et consectetur ad consectetur eius et impedit commodi minima quo qui tempore consequatur voluptatum voluptates nemo esse sapiente suscipit est aut porro laboriosam earum aliquid ratione corporis rem itaque qui omnis.', 'andreanne84@hotmail.com', '+1.763.561.0150', 434, '2021-12-17 07:10:33', '2022-01-07 17:53:50'),
(370, 'Nolan, Beatty and Nader', 5, 10, 2, 5, 3, 1, 24, 'Odio sunt omnis porro laborum qui sit ut quod quam laborum sed ea voluptate id animi sed et repudiandae sed mollitia amet asperiores dolorem qui earum mollitia unde quia est id a excepturi quisquam est minima non at fugiat cumque quia dolor quidem et nisi pariatur a ut commodi vitae eos nesciunt.', 'bell35@herzog.net', '714.632.2950', 442, '2021-11-21 06:14:34', '2022-01-07 17:53:50'),
(371, 'Kshlerin Group', 5, 9, 2, 1, 5, 1, 24, 'Qui perspiciatis sed ipsa est nulla doloremque quos temporibus ipsam saepe quisquam omnis consequatur excepturi a maiores voluptate repellat sint aut perferendis qui quis voluptatem commodi voluptate qui enim velit ratione aspernatur est facilis ea aut sit qui nihil a tempora animi deserunt dolor ullam rerum et enim aliquid blanditiis nihil quasi culpa expedita accusamus ad natus.', 'america10@gutmann.info', '954-953-1498', 262, '2022-01-03 20:40:26', '2022-01-07 17:53:50'),
(372, 'O\'Connell PLC', 3, 2, 2, 4, 14, 4, 24, 'Id rerum eos sequi sunt sit voluptas delectus et iste asperiores et quis dolor quas et consequatur consectetur provident error illum quis autem harum velit ea et et ratione facere assumenda accusantium nesciunt earum aut amet doloribus quis occaecati qui magni.', 'watson66@gmail.com', '(832) 763-0177', 712, '2021-11-23 18:56:45', '2022-01-07 17:53:50'),
(373, 'Dare-Schowalter', 4, 4, 1, 1, 7, 4, 25, 'Dicta tempore rerum voluptatem adipisci neque architecto consequatur sed quo esse non vitae laudantium reiciendis possimus sunt minima assumenda quo itaque sit exercitationem sint sit unde dicta omnis animi provident porro suscipit error qui sunt explicabo pariatur.', 'vkoelpin@gmail.com', '(970) 748-2682', 485, '2021-12-05 09:24:02', '2022-01-07 17:53:50'),
(374, 'Bechtelar Group', 3, 15, 1, 1, 13, 1, 23, 'Quia consectetur qui ex laudantium deserunt dolorem mollitia illum veritatis architecto placeat beatae excepturi laudantium rem ut ipsum omnis magni asperiores non qui quo quia ipsam quis recusandae magni eaque tempore et libero dolor laboriosam quo sit quibusdam et.', 'justus.fahey@yahoo.com', '1-406-323-0858', 588, '2021-11-20 16:24:50', '2022-01-07 17:53:50'),
(375, 'Leffler-McLaughlin', 5, 1, 3, 4, 2, 2, 25, 'Mollitia culpa ipsa ut delectus quidem qui rerum rerum dolorem recusandae odit placeat necessitatibus voluptatem expedita ratione dolor id voluptas ullam corporis est expedita sed at harum aut excepturi placeat nisi et numquam nihil excepturi dolor excepturi et quisquam.', 'xcruickshank@bechtelar.com', '1-732-271-0729', 384, '2021-12-20 21:55:55', '2022-01-07 17:53:50'),
(376, 'Larson Group', 3, 5, 2, 2, 5, 2, 25, 'Dolores rerum inventore similique hic temporibus quod quod non rem optio et molestias in dolores perspiciatis eveniet magni ipsum eaque nesciunt consequatur eos dolorum qui velit cupiditate magni molestiae ea minus sint odit possimus voluptas earum doloremque dolor optio ipsum fugiat repellendus ut quasi quam autem adipisci quo ab quia ad quia harum cumque velit.', 'felicia.roberts@gmail.com', '303.242.5238', 585, '2021-11-19 08:55:50', '2022-01-07 17:53:50'),
(377, 'Mann, Zboncak and Ryan', 2, 2, 3, 3, 6, 1, 23, 'Et id quisquam et quas ea eius quo fugiat ex impedit inventore molestias nostrum doloribus quia ad rerum repudiandae eos velit quod velit dolor est optio et modi alias ratione quo omnis omnis dolorem autem sit necessitatibus consequuntur quia voluptatem dolor doloremque et eum nesciunt doloribus sapiente cupiditate perspiciatis molestiae est molestiae nihil.', 'abe34@hotmail.com', '+1-458-787-8394', 270, '2021-12-25 10:57:44', '2022-01-07 17:53:50'),
(378, 'Casper-Bailey', 1, 5, 4, 2, 16, 4, 24, 'Porro ut nostrum nisi porro sit eaque sit et assumenda eos eveniet quo dolores cupiditate optio ullam ducimus et voluptas quidem excepturi debitis illum soluta itaque perferendis.', 'lewis64@schoen.org', '276.418.1890', 581, '2021-12-11 01:05:56', '2022-01-07 17:53:50'),
(379, 'Yundt, Cronin and Hane', 3, 9, 1, 1, 7, 4, 23, 'Perferendis aut adipisci nostrum autem quia aut placeat possimus similique nihil voluptate consequatur in est quo molestiae neque quasi asperiores repudiandae delectus velit non sit aliquid dolorum sit architecto illo molestiae ut repellat est numquam dicta ipsam.', 'trisha03@jaskolski.com', '+1 (920) 401-9465', 880, '2021-11-14 18:40:59', '2022-01-07 17:53:50'),
(380, 'Koelpin-Nienow', 4, 15, 4, 5, 13, 4, 23, 'Maiores dolorem velit itaque necessitatibus itaque aut corrupti voluptas vero corporis similique quasi vel et quae esse necessitatibus quibusdam voluptatem error eveniet reiciendis voluptatum velit consequuntur animi incidunt commodi totam suscipit in nostrum nulla doloribus dolores et sit repudiandae quis sit dolor porro nulla placeat consequatur at atque laboriosam optio.', 'hkutch@hotmail.com', '1-832-222-4418', 375, '2021-12-28 14:25:02', '2022-01-07 17:53:50'),
(381, 'Quigley, Muller and Heathcote', 4, 7, 1, 2, 13, 2, 25, 'Ut exercitationem numquam possimus in et aut a voluptatem voluptate qui aliquid inventore iusto quisquam aliquid dolores odio magni veniam eos voluptatum assumenda optio perspiciatis nihil voluptatem harum.', 'sasha60@hotmail.com', '+12819032487', 932, '2021-11-13 20:18:25', '2022-01-07 17:53:50'),
(382, 'Feil-Hickle', 2, 5, 3, 5, 3, 3, 25, 'Voluptates rerum excepturi ut sed harum eos nemo dignissimos et officiis est aut quaerat ut odio qui optio aut ab nostrum voluptatibus sit fugit reprehenderit dolor fugit quia id quidem aliquid aspernatur.', 'dion.green@goodwin.info', '(912) 677-2417', 755, '2021-11-24 08:23:43', '2022-01-07 17:53:50'),
(383, 'Murazik-Leffler', 5, 13, 2, 1, 8, 4, 25, 'Quia architecto tenetur delectus rem dolorem illo neque incidunt in et rem voluptatem expedita blanditiis id sed cum deleniti adipisci maiores blanditiis quasi repellendus voluptate ut autem nulla nihil quo molestias doloribus sint blanditiis non et dignissimos ipsum nihil necessitatibus id beatae laudantium et consequatur ut ad ut enim molestias fugit officia possimus perferendis rerum.', 'batz.carole@streich.com', '+1-615-626-6523', 933, '2021-11-16 10:04:22', '2022-01-07 17:53:50'),
(384, 'Thiel PLC', 1, 10, 1, 3, 5, 3, 23, 'Quia aliquid eum debitis at at quidem adipisci occaecati eveniet in reprehenderit cum voluptatem et fuga maiores et repudiandae molestiae sint enim voluptates officia voluptas accusantium iusto voluptatem quia exercitationem minima quod ea aliquam voluptates voluptatum nisi ut omnis voluptas nihil mollitia laudantium facilis.', 'koss.ora@gmail.com', '260.301.9916', 864, '2021-12-19 07:37:57', '2022-01-07 17:53:50'),
(385, 'Gaylord Group', 4, 8, 4, 4, 3, 2, 24, 'Ut aut animi et nemo modi harum fuga aut maxime iure dolor sint et blanditiis dolor cumque dolorem consequatur ex perferendis in et atque repellat nobis quidem voluptatem ad qui autem nisi eveniet qui sed cupiditate quis odit corrupti non et fugiat nostrum omnis ratione delectus voluptatum occaecati repellat quia culpa molestiae blanditiis est eveniet.', 'edwina25@hirthe.com', '+1-323-909-9255', 390, '2021-12-27 12:25:35', '2022-01-07 17:53:50'),
(386, 'VonRueden, Kshlerin and Paucek', 3, 7, 2, 2, 6, 3, 25, 'Sint fugit veritatis aut rerum inventore aut non vel doloremque omnis perferendis ad itaque dignissimos et commodi et laborum consectetur modi tempore non esse nobis enim alias debitis aut quis consequatur sint dolor possimus et laborum voluptatem et consequatur temporibus quo iste ex quibusdam inventore totam molestias optio est totam cumque qui saepe.', 'gideon.sawayn@yahoo.com', '+1 (680) 844-5670', 545, '2021-11-07 19:41:31', '2022-01-07 17:53:50'),
(387, 'Yundt, Zulauf and Ernser', 4, 9, 4, 5, 7, 2, 23, 'Voluptas neque saepe provident et tenetur nostrum suscipit perspiciatis officiis quaerat assumenda aspernatur cupiditate officiis consequuntur perspiciatis unde eos natus voluptas distinctio omnis molestias nemo.', 'ttoy@gmail.com', '(820) 837-2510', 970, '2021-11-15 01:14:28', '2022-01-07 17:53:50'),
(388, 'Littel Group', 3, 8, 1, 2, 17, 2, 24, 'Qui praesentium occaecati ut vel ex nihil consequatur incidunt voluptatem repudiandae quas fuga fugiat possimus eos ut sit ut et qui eligendi non perspiciatis ipsum consectetur animi quos error minima veniam nam perspiciatis fugiat corporis corporis delectus eaque facere voluptatem nemo libero rerum iste illo repellendus et consequatur.', 'zokuneva@runolfsdottir.org', '+1 (803) 446-6344', 537, '2021-12-25 13:10:14', '2022-01-07 17:53:50'),
(389, 'Dickens, Aufderhar and Conn', 3, 2, 2, 1, 6, 4, 23, 'Dicta facilis cumque magnam vero omnis dolorem id est est corrupti nam ipsa ut eum esse ipsam inventore fugit amet quia ut et exercitationem esse ad vel nobis id accusantium qui totam error ut dolorem soluta ullam iste quia neque perspiciatis eveniet dolore velit possimus architecto odio impedit vitae itaque et voluptas et.', 'janessa68@heathcote.org', '1-458-361-6308', 580, '2022-01-02 06:15:14', '2022-01-07 17:53:50'),
(390, 'Zulauf, Walsh and Schowalter', 3, 9, 3, 3, 9, 2, 24, 'Et temporibus repellendus commodi dicta omnis rerum iure numquam ex exercitationem eum laboriosam dolorem asperiores animi ducimus sed magnam nobis dolorum dolorem labore amet non voluptatibus deserunt ducimus consequatur.', 'verner.reichel@gmail.com', '+1.713.687.7434', 868, '2021-11-19 07:29:19', '2022-01-07 17:53:50'),
(391, 'Wisoky PLC', 5, 7, 4, 4, 14, 3, 25, 'Explicabo labore illo et consequatur eum qui corrupti odit cupiditate quos culpa ullam recusandae recusandae exercitationem eos velit cupiditate impedit necessitatibus sunt neque id autem repellendus nemo asperiores quia quae qui praesentium voluptas id fugiat qui aliquid maiores alias repellendus molestias nesciunt hic debitis velit.', 'nicolas82@yahoo.com', '1-678-696-7316', 301, '2021-12-27 02:30:14', '2022-01-07 17:53:50'),
(392, 'Bahringer and Sons', 3, 5, 3, 4, 14, 4, 23, 'Non autem doloribus voluptatem dolorem porro non dolore illum aspernatur quos id voluptatem ex nihil quas dolores minus hic quia esse natus expedita magnam fugiat nemo.', 'towne.trisha@barrows.com', '1-479-880-3627', 291, '2022-01-02 13:52:09', '2022-01-07 17:53:50'),
(393, 'Emard, Veum and Orn', 1, 4, 1, 3, 2, 1, 25, 'Voluptas ut nisi voluptatem porro voluptatibus quia ut aut modi libero qui qui unde a in sequi aut minima reiciendis laborum fuga dolorem voluptatem praesentium id dolore qui maxime id deleniti provident saepe quam voluptates eos provident at est delectus error fuga sit quo velit voluptas et voluptates fugiat sed qui reiciendis.', 'ahamill@gmail.com', '1-530-436-1879', 967, '2021-11-22 12:46:54', '2022-01-07 17:53:50'),
(394, 'Lebsack, Fahey and Mayert', 3, 13, 1, 2, 1, 1, 25, 'Debitis minus sint quos sint quos fugiat quod est neque necessitatibus qui sint odit eaque nisi repellendus magni explicabo illo perspiciatis qui nihil suscipit maxime est et fuga maxime voluptate eos voluptatem inventore autem et ut est tempora dolorum non quia velit accusamus expedita dignissimos possimus ipsa repudiandae hic necessitatibus quo quae aperiam aut.', 'koepp.kayleigh@jerde.com', '+1 (458) 580-8691', 570, '2021-11-21 11:54:06', '2022-01-07 17:53:50'),
(395, 'Mertz Inc', 3, 1, 4, 5, 17, 4, 24, 'Aliquam eum aut ut autem modi doloribus dolorem nostrum est fugit et pariatur mollitia dolores ducimus dignissimos expedita velit ut delectus vel soluta eum nam in quia est cumque animi suscipit commodi eveniet sint a id impedit.', 'grodriguez@schaden.info', '864.692.2051', 30, '2021-11-18 12:15:09', '2022-01-07 17:53:50'),
(396, 'Bode Ltd', 5, 8, 3, 2, 11, 2, 24, 'Ipsa omnis aperiam aut aut est quia et molestiae quibusdam ex quia omnis repellat aut ad blanditiis accusamus aperiam odio laboriosam sit voluptas sunt optio et delectus libero facilis beatae autem officia iusto sit.', 'martin.dach@kessler.com', '+1.661.866.6764', 893, '2021-12-28 13:16:35', '2022-01-07 17:53:50'),
(397, 'Bogisich-Greenholt', 4, 4, 4, 1, 17, 1, 24, 'Reprehenderit qui est eos autem eius placeat dolores expedita fugit voluptatem ea ut ea recusandae nihil vitae officiis quaerat atque ipsum consequuntur ea quibusdam et sint ex vitae molestiae facere consequatur expedita vel vel ex.', 'nconnelly@gmail.com', '223-835-1491', 576, '2021-11-13 06:21:34', '2022-01-07 17:53:50'),
(398, 'Kris-Koss', 4, 12, 2, 4, 7, 4, 23, 'Quia ipsam corrupti similique iusto sequi sed vel facere aut pariatur deleniti eum voluptatem ea omnis quia voluptatibus similique occaecati inventore aut in inventore error ipsa impedit voluptas explicabo voluptas ea aut excepturi quam quod consequatur perferendis repellendus deleniti doloremque vel molestiae sed est cupiditate temporibus ut sed ut pariatur delectus placeat ad voluptatem eos.', 'victoria.hermann@yundt.net', '+1-812-650-4420', 786, '2022-01-06 17:03:18', '2022-01-07 17:53:50'),
(399, 'Robel, Rogahn and Orn', 4, 4, 3, 5, 1, 1, 23, 'Blanditiis neque ut perspiciatis est commodi temporibus laborum rerum velit non nam sequi voluptatem est rerum ipsa cum ut sequi perspiciatis eligendi aperiam excepturi nam optio omnis quia beatae voluptas est delectus quis eum rerum.', 'jaren.stark@moore.com', '+16893270395', 15, '2021-12-08 15:27:08', '2022-01-07 17:53:50'),
(400, 'Windler, Dicki and Jerde', 5, 14, 3, 5, 3, 2, 24, 'Tempore tempora voluptas voluptatem ea sed aut non atque aspernatur quas sed nisi dignissimos quaerat quia neque est est omnis aut rerum temporibus porro qui consequatur doloremque in corrupti quia dolorem non eaque occaecati eum exercitationem ut sit natus dicta sed est veritatis error quod quam tempore fugiat molestiae possimus sunt molestias sunt vero vel.', 'kshlerin.leilani@yahoo.com', '1-828-635-9875', 757, '2021-11-26 11:12:51', '2022-01-07 17:53:50'),
(401, 'Emard Ltd', 1, 5, 2, 1, 2, 2, 25, 'Enim tempore qui quia odit ab earum quia maxime dolore et velit minus quia fugit vel et et quas aut dolor libero fuga rem ex et repellendus consequatur porro doloremque dolores perspiciatis autem aspernatur aut facilis explicabo officia est omnis laboriosam aperiam velit repudiandae quasi ad facere libero numquam sapiente velit alias reprehenderit libero magni a.', 'alford.hills@okon.com', '+1-360-442-2506', 414, '2021-11-21 22:17:01', '2022-01-07 17:53:50'),
(402, 'Bailey, White and Collins', 5, 4, 4, 5, 15, 4, 23, 'Enim nesciunt reprehenderit deserunt tempora repudiandae cupiditate quisquam pariatur dignissimos quia pariatur cumque illum natus voluptas et magni quibusdam eum consequuntur impedit saepe sit quis velit iste et et pariatur autem voluptatibus est qui repellendus in voluptate fugit iusto aspernatur.', 'ggoodwin@hotmail.com', '1-769-710-4822', 280, '2021-11-25 04:48:46', '2022-01-07 17:53:50'),
(403, 'Kemmer, Roberts and Ankunding', 3, 6, 4, 4, 3, 1, 24, 'Ullam amet molestias ut voluptatibus similique consequuntur temporibus odio minus iste quam voluptatem laudantium quis possimus sit odio adipisci molestiae iste ut sit qui est qui possimus facilis alias dolor aut.', 'iwilkinson@ritchie.com', '+1-984-443-9948', 94, '2022-01-01 12:48:56', '2022-01-07 17:53:50'),
(404, 'Stracke, Dibbert and Simonis', 1, 13, 3, 1, 10, 4, 23, 'Sint maiores illum consectetur non labore aperiam quia est nesciunt repellat veniam placeat deserunt accusamus aut nihil dolores id rerum tempora laboriosam quia et quia culpa quia mollitia sapiente assumenda impedit amet sint porro adipisci itaque at unde quam corporis et voluptas aut itaque possimus.', 'melyssa.kreiger@armstrong.net', '(541) 859-9381', 361, '2021-12-08 01:13:55', '2022-01-07 17:53:50'),
(405, 'Hegmann, Bashirian and Klein', 1, 10, 4, 5, 14, 2, 24, 'Est aut dolorem facere totam doloremque totam vero maxime expedita qui tempore exercitationem soluta quibusdam aperiam quasi sit non consequuntur cupiditate officia et quia et aperiam impedit totam et aut quaerat non voluptatibus omnis magnam cumque possimus magnam ullam sit quo.', 'eleanore00@gmail.com', '323.367.9845', 475, '2021-12-26 07:44:34', '2022-01-07 17:53:50'),
(406, 'Emard-Jerde', 3, 6, 4, 3, 15, 2, 23, 'Ipsum assumenda aspernatur nobis molestias velit pariatur laborum dolor voluptatum aut perferendis quisquam nostrum neque eos dolores in sapiente dolorem omnis minus eius aut odit optio assumenda aut voluptates ut nobis qui modi asperiores dignissimos et.', 'phoebe.mccullough@donnelly.com', '1-364-681-4046', 709, '2021-11-29 11:22:03', '2022-01-07 17:53:50'),
(407, 'Hermann, Lueilwitz and Mueller', 2, 4, 3, 4, 8, 4, 24, 'Ut perferendis rem placeat veritatis voluptatem quaerat non numquam consequatur adipisci est vel at inventore occaecati aut occaecati aspernatur alias animi consectetur aut hic ut consequuntur rerum aspernatur aperiam voluptas et accusantium deleniti quo.', 'ksanford@hotmail.com', '(470) 357-3911', 647, '2021-12-21 04:30:43', '2022-01-07 17:53:50'),
(408, 'Lemke, Balistreri and Mraz', 2, 10, 1, 1, 4, 3, 25, 'Qui voluptatem assumenda incidunt qui reprehenderit et omnis in sit et officia recusandae voluptas doloribus ad vero quae nihil qui et facilis amet laboriosam architecto quas id in magni et nam deleniti aut sit optio numquam quia sunt dolore dolores perspiciatis repellat officia rerum laudantium et est molestias cupiditate excepturi minima.', 'frances.dare@hotmail.com', '+15203389605', 510, '2021-12-12 14:18:13', '2022-01-07 17:53:50'),
(409, 'Dare, Lehner and Nikolaus', 5, 10, 2, 5, 8, 2, 23, 'Cumque temporibus ipsam temporibus enim recusandae earum quia natus aperiam quos deserunt odio id optio qui ab recusandae cupiditate quos sunt qui voluptatum nihil earum ab exercitationem beatae laudantium quo quia voluptas omnis qui ut error.', 'berneice15@gmail.com', '+1 (845) 810-8762', 510, '2021-12-18 11:07:28', '2022-01-07 17:53:50'),
(410, 'Greenfelder Ltd', 5, 11, 3, 1, 8, 2, 24, 'Sed quos eaque consequatur nostrum animi commodi et magni officia quam nostrum mollitia nostrum laboriosam iste ut reiciendis distinctio voluptatum incidunt assumenda ea modi non quisquam nam hic occaecati aut dolores autem corrupti ut praesentium est ratione et commodi nesciunt qui aliquam praesentium quia cupiditate enim error sed similique optio quibusdam.', 'ggerhold@blick.com', '475.642.3744', 409, '2021-12-03 15:38:55', '2022-01-07 17:53:50'),
(411, 'Walker, Hackett and Braun', 1, 7, 3, 3, 7, 4, 24, 'Laboriosam maiores ratione porro dolorem voluptatem quo ut doloribus delectus maxime sequi consectetur libero dolorem error aliquid aut nihil rerum quae consequatur est autem in voluptas facere est error et non est earum consequuntur reprehenderit deserunt et pariatur dolorem praesentium architecto ea cumque pariatur nemo quisquam explicabo ratione ut saepe laudantium ut et officia rerum ratione.', 'awaelchi@yahoo.com', '+1-657-441-3492', 748, '2021-12-23 08:40:43', '2022-01-07 17:53:50'),
(412, 'Bayer-Hahn', 2, 9, 1, 5, 12, 1, 24, 'Fugiat doloremque et labore assumenda esse nisi debitis nesciunt repudiandae illo tempore natus id ab in placeat minus voluptates doloribus est laudantium alias excepturi sunt et quis vitae quis nisi repellendus sunt esse adipisci voluptatem eos inventore.', 'jones.ernesto@yahoo.com', '+1 (573) 994-3659', 231, '2021-12-20 06:36:27', '2022-01-07 17:53:50'),
(413, 'Willms, West and Kohler', 5, 9, 4, 2, 7, 3, 24, 'Laborum et asperiores voluptas eum autem et ullam ducimus perferendis est aperiam voluptates non quod id nisi itaque consequatur quam quia adipisci omnis quis eos fuga et placeat esse incidunt quis aut error est quo qui magni consequatur asperiores architecto ipsa quia eum saepe soluta quis laboriosam voluptates voluptates sed id voluptas alias voluptas eos.', 'herman.rene@yahoo.com', '(215) 996-4353', 647, '2021-12-02 17:54:31', '2022-01-07 17:53:50'),
(414, 'Hagenes, Bartoletti and Shanahan', 4, 12, 2, 3, 5, 1, 24, 'Distinctio qui quisquam nam est deleniti ea doloremque modi sint adipisci explicabo rem iure vel odit est non totam cum maxime eos suscipit sunt et reiciendis voluptatibus consequatur minus praesentium architecto vel rerum nemo et aut.', 'gusikowski.sanford@watsica.com', '442-470-5190', 439, '2021-12-11 19:54:13', '2022-01-07 17:53:50'),
(415, 'Herman LLC', 2, 7, 1, 5, 6, 1, 24, 'Et doloribus magnam voluptatibus voluptas quia suscipit itaque itaque et et nisi velit non velit voluptatem dignissimos nisi cupiditate voluptatum provident eos delectus reiciendis numquam eaque molestiae est molestias pariatur sed ratione enim occaecati.', 'nicola.dietrich@koelpin.com', '+1-458-353-1115', 228, '2021-12-01 04:27:15', '2022-01-07 17:53:50'),
(416, 'Conroy Group', 5, 11, 2, 5, 17, 2, 25, 'Neque quos non unde a maxime consequuntur at iste animi dignissimos numquam cupiditate veritatis aliquam nihil et itaque pariatur odio placeat rem delectus assumenda rerum laborum voluptas sed fugit laborum et quos illo sit odit nihil molestiae adipisci aspernatur numquam possimus dolor.', 'rogers.huel@yahoo.com', '+1-870-976-0450', 689, '2021-11-11 09:19:23', '2022-01-07 17:53:50'),
(417, 'Dickens and Sons', 2, 12, 2, 3, 5, 1, 24, 'Aspernatur omnis eveniet odit dicta a distinctio qui cum voluptatibus ab nostrum eos alias iure porro consequatur vitae ducimus quia porro voluptatem et ullam aut voluptatem aut necessitatibus aspernatur ut sunt officia inventore error laudantium porro quibusdam blanditiis vel tempora ex sit culpa.', 'wisoky.zakary@gmail.com', '+1 (607) 292-0097', 724, '2021-11-22 21:45:06', '2022-01-07 17:53:50'),
(418, 'Macejkovic and Sons', 4, 5, 3, 2, 4, 1, 23, 'Est numquam rerum hic ut dolores rerum vel ea placeat aut sint sit repellendus eum dolorem tenetur quaerat impedit itaque corporis voluptas consequatur dolorem dolor autem quia voluptatem sit sed officiis unde velit assumenda est nesciunt reprehenderit excepturi fugiat.', 'blick.sallie@abshire.com', '+17402701370', 124, '2021-12-24 15:51:26', '2022-01-07 17:53:50'),
(419, 'Blick and Sons', 1, 2, 2, 1, 13, 2, 25, 'Ducimus debitis voluptates cupiditate nihil numquam corporis necessitatibus tempore occaecati qui totam et odio sunt necessitatibus sed sunt aut optio molestias animi debitis saepe neque omnis ea atque possimus quia libero qui sed error omnis maxime odit vel eius accusantium sed dolor quae exercitationem quam est.', 'csawayn@cummings.org', '+1-223-459-4104', 196, '2021-12-07 01:44:42', '2022-01-07 17:53:50'),
(420, 'Hermiston, Okuneva and Konopelski', 4, 10, 3, 2, 9, 4, 23, 'Praesentium quod error vero explicabo placeat vero velit corrupti enim sequi ut qui fuga sapiente numquam ullam et ad voluptas et quaerat eos suscipit quis repellat et officiis ipsum accusantium sed facere non voluptas ut porro est eveniet nesciunt quia qui quas.', 'muller.edmund@yahoo.com', '1-202-677-0557', 60, '2021-11-11 15:15:14', '2022-01-07 17:53:50'),
(421, 'Carroll-Hamill', 4, 10, 1, 3, 10, 4, 24, 'Aut facere magnam autem amet molestias dolores eveniet laborum autem quae fugiat laboriosam voluptas voluptas quidem consequuntur dolorem et consequuntur debitis cumque ipsa neque aut reprehenderit qui quis impedit qui ad hic ea.', 'pziemann@nitzsche.info', '1-445-915-3522', 372, '2021-12-27 08:10:07', '2022-01-07 17:53:50'),
(422, 'Ziemann-Hilpert', 2, 8, 3, 5, 4, 1, 24, 'Et nam magnam quo animi doloribus quibusdam odio excepturi est magni qui vitae iste nihil sapiente pariatur aperiam voluptatem perspiciatis et assumenda vel quaerat aut commodi placeat totam et officiis aut et nihil deleniti est voluptatum ipsa voluptas sint tempora molestiae nobis at est amet eveniet est rerum vero officiis repellendus est cum possimus sint.', 'donnelly.hans@hotmail.com', '+1-240-784-8128', 487, '2021-11-20 13:29:50', '2022-01-07 17:53:50'),
(423, 'Bergstrom-Konopelski', 3, 15, 2, 5, 13, 1, 24, 'Eaque repellat et velit incidunt voluptatem velit quibusdam hic eos nobis quia officia nostrum iure quis repellendus voluptatem dolores praesentium nemo est numquam cupiditate natus necessitatibus tenetur dolorem et voluptates impedit est iure numquam id odit est aut eos aliquid temporibus id magni et harum ut et.', 'providenci.murphy@gerhold.com', '240.564.3101', 127, '2021-12-06 15:15:43', '2022-01-07 17:53:50'),
(424, 'Hoppe-Dooley', 1, 11, 2, 5, 16, 2, 24, 'Qui fugit itaque ut sint ut iste facere sit ex sit quo placeat mollitia aspernatur error sit quidem et nisi alias dolores sint illo quo rerum quo sit rerum velit sit.', 'pfannerstill.chelsey@lowe.com', '+1-580-518-1721', 264, '2021-11-22 04:43:23', '2022-01-07 17:53:50'),
(425, 'Ullrich, Ratke and Lemke', 1, 10, 4, 4, 14, 2, 23, 'Nobis consequuntur maiores deleniti eius ut exercitationem omnis non enim asperiores placeat optio culpa dolorem dolores nesciunt sed laborum provident modi maxime quis beatae aliquam quam vel eius et expedita qui error a aut laboriosam accusantium id animi et omnis quis laboriosam tenetur cupiditate commodi magni voluptatem aut veniam aut eos reiciendis nulla ratione.', 'dubuque.mathias@gmail.com', '404-984-8926', 255, '2021-12-26 16:33:10', '2022-01-07 17:53:50'),
(426, 'Labadie, Pacocha and Labadie', 3, 7, 1, 3, 5, 3, 25, 'Nihil et impedit qui rem quis maiores nihil quis non voluptas quis quibusdam fuga incidunt distinctio dolorem odio illum non doloribus autem id id ducimus odit autem quia.', 'bhirthe@bartoletti.info', '913.944.5347', 514, '2021-12-19 17:59:51', '2022-01-07 17:53:50'),
(427, 'Adams and Sons', 2, 11, 1, 2, 2, 3, 25, 'Sed autem nulla autem debitis aliquam ea nisi ea id voluptatem dolores id voluptas ratione quos amet dolor nihil deleniti aut consectetur in consequatur ex aut quam quis.', 'ronny96@mcclure.com', '+1-442-322-8107', 799, '2021-12-04 00:08:11', '2022-01-07 17:53:50'),
(428, 'Bauch and Sons', 5, 12, 3, 4, 10, 2, 23, 'Molestiae ut harum doloremque odit quo inventore magnam dolore impedit aut aperiam placeat enim rem corrupti voluptas sit sint sequi corrupti laborum quasi facere consequatur est ducimus et enim voluptatum cumque non nemo et ut illum fuga debitis mollitia beatae dolor iure mollitia a officiis perferendis sed blanditiis rem consectetur autem voluptas id perferendis ut.', 'neha52@johns.com', '(253) 804-0732', 639, '2022-01-05 13:14:01', '2022-01-07 17:53:50'),
(429, 'Ullrich-Stehr', 5, 5, 1, 3, 14, 3, 23, 'Sint inventore soluta sit quos quos officia assumenda pariatur quis nostrum unde rerum amet maiores eum molestiae harum vitae totam saepe temporibus non vitae non accusantium fugiat rem provident omnis est error expedita velit officia unde et expedita autem non dolor quod eius maiores architecto ea in consequatur consectetur.', 'nspinka@yahoo.com', '978.982.2261', 243, '2021-11-11 04:16:25', '2022-01-07 17:53:50'),
(430, 'Test', 1, 2, 1, 1, 3, 2, 25, '<p>jhsdfbvs sebr fsbfjvbs g h;s fvhdf vkjsd; fv dfvs df.jhb;sf vbnfbhs;fb skjj/ fb.a,fblv srhu bv;.sfgb,.s nfgb;oij\' rtbjnsfgnb.d tgb\'dfj</p>', 'omaraly@a.ru', '993610338', 11, '2022-01-08 09:58:53', '2022-01-08 11:01:52');

-- --------------------------------------------------------

--
-- Структура таблицы `professions`
--

CREATE TABLE `professions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `professions`
--

INSERT INTO `professions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Бух учет,финансы', '2022-01-04 21:00:00', '2022-01-04 21:00:00'),
(2, 'Гос служба', '2022-01-04 21:00:00', '2022-01-04 21:00:00'),
(3, 'Дизайн,полиграфия', '2022-01-04 21:00:00', '2022-01-04 21:00:00'),
(4, 'ИТ,Интернет', '2022-01-04 21:00:00', '2022-01-04 21:00:00'),
(5, 'Крарота,фитнес,спорт', '2022-01-04 21:00:00', '2022-01-04 21:00:00'),
(6, 'Логистика,склад', '2022-01-04 21:00:00', '2022-01-04 21:00:00'),
(7, 'Образование, репетиторств', '2022-01-05 00:42:31', '2022-01-05 00:42:41'),
(8, 'Производство, агропром', '2022-01-05 00:42:44', '2022-01-05 00:42:49'),
(9, 'Рестораны, питание\r\n', '2022-01-05 00:42:53', '2022-01-05 00:42:57'),
(10, 'Строительство', '2022-01-05 00:43:00', '2022-01-05 00:43:29'),
(11, 'Торговля', '2022-01-04 00:43:35', '2022-01-05 00:44:32'),
(12, 'Транспорт, автосервис', '2022-01-04 00:43:39', '2022-01-05 00:44:37'),
(13, 'Туризм, гостиницы', '2022-01-04 00:43:43', '2022-01-05 00:44:40'),
(14, 'Юриспруденция', '2022-01-04 00:43:48', '2022-01-05 00:44:43'),
(15, 'HR, кадры', '2022-01-04 00:43:54', '2022-01-05 00:44:47');

-- --------------------------------------------------------

--
-- Структура таблицы `salaries`
--

CREATE TABLE `salaries` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `salaries`
--

INSERT INTO `salaries` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'по итогам собеседования', '2022-01-04 21:00:00', '2022-01-04 21:00:00'),
(2, 'до 1000', '2022-01-04 21:00:00', '2022-01-04 21:00:00'),
(3, 'от 1000 до 3000', '2022-01-04 21:00:00', '2022-01-04 21:00:00'),
(4, 'от 2000 до 4000', '2022-01-04 21:00:00', '2022-01-04 21:00:00'),
(5, 'от 3000 до 5000', '2022-01-04 21:00:00', '2022-01-04 21:00:00'),
(6, 'от 4000 до 6000', '2022-01-04 21:00:00', '2022-01-04 21:00:00'),
(7, 'от 5000  до 7000', '2022-01-04 21:00:00', '2022-01-04 21:00:00'),
(8, 'от 6000 до 8000', '2022-01-04 21:00:00', '2022-01-04 21:00:00'),
(9, 'от 7000 до 9000', '2022-01-04 21:00:00', '2022-01-04 21:00:00'),
(10, ' от 8000 до 10000', '2022-01-04 21:00:00', '2022-01-04 21:00:00'),
(11, 'от 9000 до 11000', '2022-01-04 21:00:00', '2022-01-04 21:00:00'),
(12, 'от 10000 и 12000', '2022-01-04 21:00:00', '2022-01-04 21:00:00'),
(13, 'от 12000 до 14000', '2022-01-04 21:00:00', '2022-01-04 21:00:00'),
(14, 'от 14000 до 16000', '2022-01-04 21:00:00', '2022-01-04 21:00:00'),
(15, 'от 16000 до 18000', '2022-01-04 21:00:00', '2022-01-04 21:00:00'),
(16, 'от 18000 до 20000', '2022-01-04 21:00:00', '2022-01-04 21:00:00'),
(17, 'от 20000 и высшая', '2022-01-04 21:00:00', '2022-01-04 21:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `schedules`
--

CREATE TABLE `schedules` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `schedules`
--

INSERT INTO `schedules` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Полный день', '2022-01-04 21:00:00', '2022-01-04 21:00:00'),
(2, 'Сменный график', '2022-01-04 21:00:00', '2022-01-04 21:00:00'),
(3, 'Гибкий график', '2022-01-04 21:00:00', '2022-01-04 21:00:00'),
(4, 'Удаленная работа', '2022-01-04 21:00:00', '2022-01-04 21:00:00'),
(5, 'Вахтовый метод', '2022-01-04 21:00:00', '2022-01-04 21:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `stages`
--

CREATE TABLE `stages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `stages`
--

INSERT INTO `stages` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Без опыта', NULL, NULL),
(2, 'от 1 до 3 лет', NULL, NULL),
(3, 'от 3 до 5 лет', NULL, NULL),
(4, 'от 5 лет', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `family` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `family`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(23, 'user', 'Sydnie', 'Wilderman', 'uhintz@example.net', '2022-01-07 10:11:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'f27vs1n9h8', '2022-01-07 10:11:06', '2022-01-07 10:11:06'),
(24, 'user', 'Consuelo', 'Hilpert', 'admin1@test.com', '2022-01-07 10:11:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wnoQHbyuqC', '2022-01-07 10:11:06', '2022-01-07 10:11:06'),
(25, 'user', 'admin', 'admin', 'admin@test.com', '2022-01-07 17:47:18', '$2y$10$.PYI6ezj2agtW8OsWaaCAO2SfRq2pcBqg3yD4XeK60JfzlXRLLkEq', NULL, '2022-01-07 17:45:48', '2022-01-08 11:29:18'),
(26, 'user', 'Агалы', 'Омаров', 'admin2@test.com', '2022-01-08 11:46:49', '$2y$10$dj4oUCk/UGRad6NbKimEOOG7fKt84qQBsVaaHkF1dPhkkOIa5iwiG', NULL, '2022-01-08 11:43:29', '2022-01-08 11:46:49');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `language_posts`
--
ALTER TABLE `language_posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `language_posts_langauge_id_post_id_unique` (`langauge_id`,`post_id`),
  ADD KEY `language_posts_langauge_idx` (`langauge_id`),
  ADD KEY `language_posts_post_idx` (`post_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_city_idx` (`city_id`),
  ADD KEY `posts_profession_idx` (`profession_id`),
  ADD KEY `posts_stage_fk` (`stage_id`),
  ADD KEY `posts_schedule_fk` (`schedule_id`),
  ADD KEY `posts_salaries_fk` (`salary_id`),
  ADD KEY `posts_users_fk` (`user_id`);

--
-- Индексы таблицы `professions`
--
ALTER TABLE `professions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `salaries`
--
ALTER TABLE `salaries`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `stages`
--
ALTER TABLE `stages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `education`
--
ALTER TABLE `education`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `language_posts`
--
ALTER TABLE `language_posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=433;

--
-- AUTO_INCREMENT для таблицы `professions`
--
ALTER TABLE `professions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `salaries`
--
ALTER TABLE `salaries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `stages`
--
ALTER TABLE `stages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `language_posts`
--
ALTER TABLE `language_posts`
  ADD CONSTRAINT `language_posts_langauge_fk` FOREIGN KEY (`langauge_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `language_posts_post_fk` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_city_fk` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  ADD CONSTRAINT `posts_profession_fk` FOREIGN KEY (`profession_id`) REFERENCES `professions` (`id`),
  ADD CONSTRAINT `posts_salaries_fk` FOREIGN KEY (`salary_id`) REFERENCES `salaries` (`id`),
  ADD CONSTRAINT `posts_schedule_fk` FOREIGN KEY (`schedule_id`) REFERENCES `schedules` (`id`),
  ADD CONSTRAINT `posts_stage_fk` FOREIGN KEY (`stage_id`) REFERENCES `stages` (`id`),
  ADD CONSTRAINT `posts_users_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
