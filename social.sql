-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Май 04 2024 г., 06:48
-- Версия сервера: 8.0.31
-- Версия PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `social`
--

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int NOT NULL,
  `post_id` int NOT NULL,
  `author_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `content` text COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `id` int NOT NULL,
  `sender_id` int NOT NULL,
  `receiver_id` int NOT NULL,
  `message_text` text COLLATE utf8mb4_general_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `messages`
--

INSERT INTO `messages` (`id`, `sender_id`, `receiver_id`, `message_text`, `timestamp`) VALUES
(1, 13, 2, '🙂', '2024-04-13 04:31:16'),
(2, 13, 3, '🌟', '2024-04-13 04:57:40'),
(3, 13, 6, '😊🌟', '2024-04-13 04:57:51'),
(4, 13, 4, 'ttyty', '2024-04-13 05:00:18'),
(5, 13, 2, '🌟🌟🌟🌟', '2024-04-13 05:10:21'),
(6, 13, 4, '😊', '2024-04-13 05:21:50'),
(7, 13, 9, 'eswfedefd', '2024-04-13 05:43:41'),
(8, 13, 9, '', '2024-04-13 05:43:42'),
(9, 13, 9, '', '2024-04-13 05:43:43'),
(10, 13, 9, '', '2024-04-13 05:43:43'),
(11, 13, 9, '', '2024-04-13 05:43:44'),
(12, 13, 9, '', '2024-04-13 05:43:44'),
(13, 13, 9, '', '2024-04-13 05:43:45'),
(14, 13, 9, '', '2024-04-13 05:43:45'),
(15, 13, 9, '', '2024-04-13 05:43:45'),
(16, 13, 9, '', '2024-04-13 05:43:46'),
(17, 13, 9, '', '2024-04-13 05:43:46'),
(18, 13, 9, '', '2024-04-13 05:43:47'),
(19, 13, 6, '🌟😶‍ 🌫️', '2024-04-13 05:45:01'),
(20, 13, 6, '', '2024-04-13 05:45:01'),
(21, 13, 6, '', '2024-04-13 05:45:02'),
(22, 13, 6, '', '2024-04-13 05:45:02'),
(23, 13, 6, '', '2024-04-13 05:45:02'),
(24, 13, 6, '', '2024-04-13 05:45:03'),
(25, 13, 6, '', '2024-04-13 05:45:03'),
(26, 13, 6, '', '2024-04-13 05:45:07'),
(27, 13, 6, '', '2024-04-13 05:45:10'),
(28, 13, 4, 'op0🌟', '2024-04-13 05:45:47'),
(29, 13, 4, '', '2024-04-13 05:45:48'),
(30, 13, 4, '', '2024-04-13 05:45:48'),
(31, 13, 4, 'hy🙂', '2024-04-13 05:45:55'),
(32, 13, 4, '', '2024-04-13 05:45:55'),
(33, 13, 4, '', '2024-04-13 05:45:56'),
(34, 13, 4, '', '2024-04-13 05:45:56'),
(35, 13, 4, '', '2024-04-13 05:45:56'),
(36, 13, 4, '', '2024-04-13 05:45:57'),
(37, 13, 4, '', '2024-04-13 05:45:57'),
(38, 13, 3, 'efeo', '2024-04-13 05:49:18'),
(39, 13, 4, 'gfrg', '2024-04-13 05:56:02'),
(40, 13, 4, '', '2024-04-13 05:56:02'),
(41, 13, 4, '', '2024-04-13 05:56:03'),
(42, 13, 4, 'gfg😊', '2024-04-13 05:58:50'),
(43, 13, 4, '', '2024-04-13 05:58:51'),
(44, 13, 4, '', '2024-04-13 05:58:51'),
(45, 15, 3, 'hghfgh', '2024-04-13 06:03:16'),
(46, 15, 4, 'hjhj', '2024-04-13 06:04:13'),
(47, 15, 4, 'grgr etgrk', '2024-04-13 06:07:09'),
(48, 15, 4, '', '2024-04-13 06:07:10'),
(49, 13, 8, 'UP', '2024-04-13 06:16:40'),
(50, 13, 8, '', '2024-04-13 06:16:42'),
(51, 13, 8, '🌟', '2024-04-13 06:16:47'),
(52, 13, 8, '', '2024-04-13 06:16:48'),
(53, 13, 8, '😶‍ 🌫️', '2024-04-13 06:16:50'),
(54, 13, 3, '', '2024-04-13 06:17:01'),
(55, 13, 3, '', '2024-04-13 06:17:01'),
(56, 13, 3, '', '2024-04-13 06:17:04'),
(57, 13, 3, '', '2024-04-13 06:17:05'),
(58, 13, 3, '', '2024-04-13 06:17:05'),
(59, 13, 3, '', '2024-04-13 06:17:07'),
(60, 13, 3, '', '2024-04-13 06:17:09'),
(61, 13, 3, 'POP', '2024-04-13 06:17:13'),
(62, 13, 3, '', '2024-04-13 06:17:14'),
(63, 13, 8, 'ffdf🌟', '2024-04-13 06:17:51'),
(64, 13, 8, 'gh', '2024-04-13 06:28:18'),
(65, 13, 8, '', '2024-04-13 06:28:19'),
(66, 13, 14, '🌟😶‍ 🌫️😶‍ 🌫️😶‍ 🌫️😶‍ 🌫️', '2024-04-13 06:29:33'),
(67, 13, 14, '', '2024-04-13 06:29:33'),
(68, 13, 6, 'hthth', '2024-04-13 06:31:00'),
(69, 13, 6, '', '2024-04-13 06:31:01'),
(70, 13, 6, '', '2024-04-13 06:31:01'),
(71, 13, 6, '', '2024-04-13 06:31:01'),
(72, 13, 6, '', '2024-04-13 06:31:02'),
(73, 13, 6, '', '2024-04-13 06:31:02'),
(74, 13, 6, '', '2024-04-13 06:31:03'),
(75, 13, 13, 'rgrgrg', '2024-04-13 06:31:31'),
(76, 13, 2, 'ui', '2024-04-13 06:32:25'),
(77, 13, 2, '', '2024-04-13 06:32:25'),
(78, 13, 2, '', '2024-04-13 06:32:26'),
(79, 13, 2, '', '2024-04-13 06:32:26'),
(80, 13, 2, '', '2024-04-13 06:32:26'),
(81, 13, 6, 'рпрпрпр', '2024-04-20 03:53:35'),
(82, 13, 6, '', '2024-04-20 03:53:37'),
(83, 13, 6, '', '2024-04-20 03:53:37'),
(84, 13, 6, '', '2024-04-20 03:53:38'),
(85, 13, 6, '', '2024-04-20 03:53:38'),
(86, 13, 6, '', '2024-04-20 03:53:38'),
(87, 13, 6, '', '2024-04-20 03:53:38'),
(88, 13, 2, 'kiili', '2024-04-20 05:46:50'),
(89, 13, 2, '', '2024-04-20 05:46:50'),
(90, 13, 2, '', '2024-04-20 05:46:52'),
(91, 13, 2, '', '2024-04-20 05:46:52'),
(92, 13, 2, '', '2024-04-20 05:46:53'),
(93, 13, 2, '', '2024-04-20 05:46:53'),
(94, 13, 2, '', '2024-04-20 05:46:53'),
(95, 13, 2, '', '2024-04-20 05:46:53'),
(96, 13, 2, '', '2024-04-20 05:46:53'),
(97, 13, 2, '', '2024-04-20 05:46:53'),
(98, 13, 2, '', '2024-04-20 05:46:53'),
(99, 13, 2, '', '2024-04-20 05:46:53'),
(100, 13, 2, '', '2024-04-20 05:46:53'),
(101, 13, 2, '', '2024-04-20 05:46:53'),
(102, 13, 2, '', '2024-04-20 05:46:53'),
(103, 13, 2, '', '2024-04-20 05:46:53'),
(104, 13, 2, '', '2024-04-20 05:46:53'),
(105, 13, 2, '', '2024-04-20 05:46:53'),
(106, 13, 2, '', '2024-04-20 05:46:53'),
(107, 13, 2, '', '2024-04-20 05:46:53'),
(108, 13, 2, '', '2024-04-20 05:46:54'),
(109, 13, 2, '', '2024-04-20 05:46:54'),
(110, 13, 2, '', '2024-04-20 05:46:54'),
(111, 13, 2, '', '2024-04-20 05:46:54'),
(112, 13, 2, '', '2024-04-20 05:46:54'),
(113, 13, 2, '', '2024-04-20 05:46:54'),
(114, 13, 2, '', '2024-04-20 05:46:54'),
(115, 13, 2, '', '2024-04-20 05:46:54'),
(116, 13, 2, '', '2024-04-20 05:46:54'),
(117, 13, 2, '', '2024-04-20 05:46:54'),
(118, 13, 2, '', '2024-04-20 05:46:54'),
(119, 13, 2, '', '2024-04-20 05:46:54'),
(120, 13, 2, '', '2024-04-20 05:46:54'),
(121, 13, 2, '', '2024-04-20 05:46:54'),
(122, 13, 2, '', '2024-04-20 05:46:54'),
(123, 13, 2, '', '2024-04-20 05:46:54'),
(124, 13, 2, '', '2024-04-20 05:46:54'),
(125, 13, 2, '', '2024-04-20 05:46:54'),
(126, 13, 2, '', '2024-04-20 05:46:54'),
(127, 13, 2, '', '2024-04-20 05:46:54'),
(128, 13, 2, '', '2024-04-20 05:46:54'),
(129, 13, 2, '', '2024-04-20 05:46:54'),
(130, 13, 2, '', '2024-04-20 05:46:54'),
(131, 13, 2, '', '2024-04-20 05:46:54'),
(132, 13, 2, '', '2024-04-20 05:46:54'),
(133, 13, 2, '', '2024-04-20 05:46:54'),
(134, 13, 2, '', '2024-04-20 05:46:54'),
(135, 13, 2, '', '2024-04-20 05:46:54'),
(136, 13, 2, '', '2024-04-20 05:46:54'),
(137, 13, 2, '', '2024-04-20 05:46:54'),
(138, 13, 2, '', '2024-04-20 05:46:55'),
(139, 13, 2, '', '2024-04-20 05:46:55'),
(140, 13, 2, '', '2024-04-20 05:46:55'),
(141, 13, 2, '', '2024-04-20 05:46:55'),
(142, 13, 2, '', '2024-04-20 05:46:55'),
(143, 13, 2, '', '2024-04-20 05:46:55'),
(144, 13, 2, '', '2024-04-20 05:46:55'),
(145, 13, 2, '', '2024-04-20 05:46:55'),
(146, 13, 2, '', '2024-04-20 05:46:55'),
(147, 13, 2, '', '2024-04-20 05:46:55'),
(148, 13, 2, '', '2024-04-20 05:46:55'),
(149, 13, 2, '', '2024-04-20 05:46:55'),
(150, 13, 2, '', '2024-04-20 05:46:55'),
(151, 13, 2, '', '2024-04-20 05:46:55'),
(152, 13, 2, '', '2024-04-20 05:46:55'),
(153, 13, 2, '', '2024-04-20 05:46:55'),
(154, 13, 2, '', '2024-04-20 05:46:55'),
(155, 15, 8, 'grgr', '2024-04-20 06:00:28');

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `content` text COLLATE utf8mb4_general_ci NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `admin` tinyint NOT NULL,
  `us_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `age` tinyint DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `profile_picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `admin`, `us_name`, `email`, `age`, `password`, `created`, `profile_picture`, `info`) VALUES
(0, 1, 'admin', 'admin', 0, 'admin', '2024-04-20 05:06:54', NULL, NULL),
(2, 0, 'Иванов', 'b@b.ru', 18, '$2y$10$w4MjyTfzdGbi6kVAIp6IWOJdr7XvH3lNgzvMwxrZ4dScBLA1OvP8W', '2024-02-17 04:57:32', NULL, NULL),
(3, 0, 'Луи', 'q@q.ru', 22, '$2y$10$ebmmHjWrbfD9Ggq0q8WncuVlRbzc3IF37qV.px4An2AnmFiD45eSW', '2024-02-24 04:10:07', NULL, NULL),
(4, 0, 'Андрей', 'f@f.ru', 22, '$2y$10$uyG2mU9DuuAesgYPzg6Zw.USiEEVYDXvwf/4qrgUfye657DM.SJcu', '2024-02-24 04:47:05', NULL, NULL),
(6, 0, 'Огунев', 'o@o.ru', 54, '$2y$10$Eb9za4nT99p/HhzoMH976.OEFzUK4mmQ/Z1y5eAgdlQ/rQw4m4gba', '2024-02-24 05:28:31', NULL, NULL),
(8, 0, 'Андрей', 'h@h.ru', 66, '$2y$10$SqUaFLqiTP7OGAMC5jJiou9L3qy4COdmhy2OSCX7sbJtRsiuhK/zG', '2024-02-24 06:24:27', NULL, NULL),
(9, 0, 'Иванов', 'j@j.ru', 26, '$2y$10$Hk7vkaiZHiDNoOjQMzj4RuSdIbRifAFxUgrBroo8wW0GR/McIGV8.', '2024-03-02 04:11:48', NULL, NULL),
(13, 0, 'Иванько', 'P@P.ru', 52, '$2y$10$Zi011ZvM52J/XxiLwmf4xOM.8nfB1d/JBPe4C.aBT5PeDVwnHPw5O', '2024-03-16 04:14:05', 'avatars/13.png', 'Будущий Сеньёр'),
(14, 0, 'хаков ', 'rushak@yandex.ru', 89, '$2y$10$VuN3GOetSUcK8zMl1l/aBOn0o9/h4yhR7J9HY00HPL5WWmT04xCxa', '2024-04-06 05:14:04', NULL, NULL),
(15, 1, 'Admin', 'Admin@a.ru', 52, '$2y$10$EHXrFqJ0FHTP81MAHzDP3esaeDvGll6Wsz5enSXoXY5ElBFXNQCo6', '2024-04-13 05:41:16', NULL, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD KEY `post_id` (`post_id`);

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_ibfk_1` (`sender_id`),
  ADD KEY `messages_ibfk_2` (`receiver_id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_ibfk_1` (`user_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
