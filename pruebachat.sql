-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-12-2019 a las 05:01:23
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pruebachat`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_format` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `messages`
--

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `type`, `file_format`, `file_path`, `message`, `date`, `time`, `ip`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'text', '', '', 'hola', '2019-12-08', '11:50 AM', '127.0.0.1', NULL, NULL, NULL),
(2, 1, 3, 'text', '', '', 'de nuevo', '2019-12-08', '11:50 AM', '127.0.0.1', NULL, NULL, NULL),
(3, 3, 1, 'text', '', '', 'asdffdssdf', '2019-12-08', '11:50 AM', '127.0.0.1', NULL, NULL, NULL),
(4, 3, 1, 'text', '', '', 'asdf sdaf adsf asdf adsf', '2019-12-08', '11:50 AM', '127.0.0.1', NULL, NULL, NULL),
(5, 3, 2, 'text', '', '', 'sdfa', '2019-12-08', '11:52 AM', '127.0.0.1', NULL, NULL, NULL),
(6, 3, 2, 'file', 'image', '8-12-2019/1575820766134/3/trek_checkpoint_sl_5.jpg', 'trek_checkpoint_sl_5.jpg', '2019-12-08', '11:59 AM', '127.0.0.1', NULL, NULL, NULL),
(7, 3, 4, 'file', 'image', '8-12-2019/1575821034791/3/paragrapharticle-16896-5a998744f02ac.jpg', 'paragrapharticle-16896-5a998744f02ac.jpg', '2019-12-08', '12:03 PM', '127.0.0.1', NULL, NULL, NULL),
(8, 4, 3, 'file', 'text', '8-12-2019/1575821048262/4/descargarsiliconvalley.txt', 'descargarsiliconvalley.txt', '2019-12-08', '12:04 PM', '127.0.0.1', NULL, NULL, NULL),
(9, 3, 4, 'text', '', '', 'asdsdfadsf', '2019-12-08', '12:05 PM', '127.0.0.1', NULL, NULL, NULL),
(10, 4, 3, 'file', 'text', '8-12-2019/1575857286993/4/para crear chat.txt', 'para crear chat.txt', '2019-12-08', '10:08 PM', '127.0.0.1', NULL, NULL, NULL),
(11, 4, 3, 'file', 'image', '8-12-2019/1575857292864/4/splash.png', 'splash.png', '2019-12-08', '10:08 PM', '127.0.0.1', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_07_27_092819_create_messages_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `socket_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `online` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `socket_id`, `online`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'User1', 'user1@gmail.com', '$2y$10$pTkniXbjDP.XwdQ6gzGFZusPQwcnt..sLbafw9NLdqlCxajJo.sE2', '', 'N', 'tdpMvXD3UBiLgChqJBacb7uMRuXDm3yFhE5OjWQYwInnG6QHWQ73sxLLP2TB', '2019-12-08 19:47:17', '2019-12-08 19:47:17'),
(2, 'User2', 'user2@gmail.com', '$2y$10$uvSdwt.wotFphCPRic.6DuJHmre/XRxEnOgiPbVnJJip5mWuc2hjO', NULL, 'N', NULL, '2019-12-08 19:47:17', '2019-12-08 19:47:17'),
(3, 'User3', 'user3@gmail.com', '$2y$10$vOoCAxUNA8K21Az8GDbv2O4Fbchfi4MCup1Y48JshhwsYOopvKRnS', 'hqu9N9CAbfVKdCsEAAAF', 'Y', 'X700md1QErWb1p9mZthMOttesSYt4kBvyvrBqwHkz3M7eJj7YNTPiEC0TADC', '2019-12-08 19:47:17', '2019-12-08 19:47:17'),
(4, 'juan', '97juandcm11@gmail.com', '$2y$10$.WaOEhJLRKYuPJ/Bqm2ZReJT8/wzASAY1B3w0.kuc1.bFDuiPdH16', '', 'N', NULL, '2019-12-08 20:02:53', '2019-12-08 20:02:53');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
