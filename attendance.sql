-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-01-2024 a las 06:22:16
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `attendance_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `attendance`
--

CREATE TABLE `attendance` (
  `id` int(6) UNSIGNED NOT NULL,
  `employee_name` varchar(50) NOT NULL,
  `action` varchar(10) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `attendance`
--

INSERT INTO `attendance` (`id`, `employee_name`, `action`, `timestamp`) VALUES
(1, 'fgfg', 'Entrada', '2024-01-30 10:35:51'),
(2, 'fgfg', 'Salida', '2024-01-30 10:35:54'),
(3, 'fgfg', 'Entrada', '2024-01-30 10:36:31'),
(4, 'fgfg', 'Entrada', '2024-01-30 10:37:10'),
(5, 'fgfg', 'Salida', '2024-01-30 10:37:14'),
(6, 'fgfg', 'Entrada', '2024-01-30 10:46:42'),
(7, '123', 'Salida', '2024-01-30 10:46:45'),
(8, '2354', 'Entrada', '0000-00-00 00:00:00'),
(9, '35453', 'Salida', '0000-00-00 00:00:00'),
(10, 'fgfg', 'Entrada', '2024-01-30 10:49:56'),
(11, 'holaaaa', 'Salida', '2024-01-30 10:50:24'),
(12, 'fgfg', 'Entrada', '2024-01-30 09:54:11'),
(13, 'fgfg', 'Salida', '2024-01-30 09:54:41');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
