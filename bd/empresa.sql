-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-07-2024 a las 15:55:47
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `empresa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2024_06_08_134300_create_persona_table', 1),
(2, '2024_06_08_151147_add_c_per_sexo_to_empresa_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cPerApellido` char(50) NOT NULL,
  `cPerNombre` char(50) NOT NULL,
  `cPerDireccion` varchar(100) NOT NULL,
  `dPerFecNac` date NOT NULL,
  `nPerEdad` int(11) NOT NULL,
  `cPerSexo` char(15) NOT NULL DEFAULT 'Masculino',
  `nPerSueldo` decimal(6,2) NOT NULL,
  `cPerRnd` varchar(50) DEFAULT NULL,
  `nPerEstado` char(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id`, `cPerApellido`, `cPerNombre`, `cPerDireccion`, `dPerFecNac`, `nPerEdad`, `cPerSexo`, `nPerSueldo`, `cPerRnd`, `nPerEstado`, `created_at`, `updated_at`, `remember_token`) VALUES
(1, 'Martinez', 'Luis', 'Enriquez Segoviano 241', '2010-06-02', 25, 'Masculino', 1500.00, 'P001', '1', '2024-06-07 15:05:42', NULL, NULL),
(2, 'Rodriguez', 'Jose', 'Enriquez Segonviano 237', '2024-06-03', 20, 'Masculino', 1200.00, 'P002', '1', '2024-06-07 15:05:59', NULL, NULL),
(4, 'Gonzales', 'Nicolas', 'Enriquez Segoviano 447', '2014-06-24', 35, 'Masculino', 2000.00, 'P004', '1', '2024-06-07 15:07:15', NULL, NULL),
(5, 'Tapia', 'Daniel', 'Enriquez Segoviano 742', '2015-06-04', 40, 'Masculino', 4000.00, 'P005', '1', '2024-06-07 15:07:15', NULL, NULL),
(6, 'Garcia', 'Jose', 'Enrique', '2024-05-28', 18, 'Masculino', 2000.00, NULL, '1', '2024-06-15 20:25:31', '2024-06-22 20:40:54', NULL),
(7, 'Martinez', 'Lucho', 'Enrique 89', '2024-06-05', 20, 'Masculino', 2000.00, NULL, '0', '2024-06-22 21:10:34', '2024-06-22 21:10:45', NULL),
(8, 'Garcia', 'Fernando', 'Rosas 147', '2024-02-27', 25, 'Masculino', 2000.00, NULL, '1', '2024-07-23 18:05:22', '2024-07-23 18:09:38', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(300) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Franco', 't512700120@unitru.edu.pe', '$2y$12$JBQyOG63c.kNyZt0H041aeIr9YklTHM74vEJ22CGwHx7dWKchH5AK', '2024-07-20 21:49:45', '2024-07-20 21:49:45'),
(2, 'Franco 2', 'a@a.com', '$2y$12$lljiWbJTxKkOnl5PVrQM4.u40akH4XwVinrWz.0GAAS9uOSSh/dmS', '2024-07-20 22:30:29', '2024-07-20 22:30:29'),
(3, 'Franco 3', 'example@email.com', '$2y$12$FKqxEptyeJCRYO0s14qsWeWv4rv2QcA.AqYW0NwWJKlaety83ziyC', '2024-07-23 18:45:43', '2024-07-23 18:45:43');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id`),
  ADD KEY `persona_cperapellido_index` (`cPerApellido`),
  ADD KEY `persona_cpernombre_index` (`cPerNombre`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
