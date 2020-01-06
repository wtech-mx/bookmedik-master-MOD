-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 27-03-2019 a las 10:08:47
-- Versión del servidor: 5.6.39-cll-lve
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `DentSalud-DB`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(2, 'EstÃ©tica dental'),
(3, 'Cirujano Dentista '),
(4, 'Ortodoncista'),
(5, 'Odontopediatra'),
(6, 'Cirujano Maxilofacial '),
(7, 'Endodoncia ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `color`
--

CREATE TABLE `color` (
  `id` int(11) NOT NULL,
  `color` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `color`
--

INSERT INTO `color` (`id`, `color`) VALUES
(42, '#ac00e0'),
(43, '#ff8040'),
(44, '#0080c0'),
(45, '#ff80c0'),
(46, '#00bb00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medic`
--

CREATE TABLE `medic` (
  `id` int(11) NOT NULL,
  `no` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `day_of_birth` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `medic`
--

INSERT INTO `medic` (`id`, `no`, `name`, `lastname`, `gender`, `day_of_birth`, `email`, `address`, `phone`, `color`, `image`, `is_active`, `created_at`, `category_id`) VALUES
(4, NULL, 'Julia', 'Olivares', NULL, NULL, 'juliadent@outlook.com ', 'Santa fe', '5551027085', '#ac00e0', NULL, 1, '2019-02-25 09:30:54', 3),
(5, NULL, 'Arely', 'Ramirez', NULL, NULL, '', 'CDMX', '5537280697', '#009c00', NULL, 1, '2019-02-28 10:28:59', 3),
(6, NULL, 'Jezabel ', 'Leyva ', NULL, NULL, '', 'none', '5545186808', '#ff80c0', NULL, 1, '2019-02-28 10:31:20', 3),
(7, NULL, 'Eduardo', 'Reyes', NULL, NULL, '', 'none', '5527106584', '#006ad5', NULL, 1, '2019-02-28 10:32:08', 4),
(8, NULL, 'Mariana', 'Renteria', NULL, NULL, '', 'none', '5527552292', '#deb295', NULL, 1, '2019-02-28 10:33:01', 5),
(9, NULL, 'Carlos', 'Acosta', NULL, NULL, '', 'non', '5535588353', '#d96c00', NULL, 1, '2019-02-28 10:33:44', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacient`
--

CREATE TABLE `pacient` (
  `id` int(11) NOT NULL,
  `no` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `day_of_birth` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sick` varchar(500) DEFAULT NULL,
  `medicaments` varchar(500) DEFAULT NULL,
  `alergy` varchar(500) DEFAULT NULL,
  `is_favorite` tinyint(1) NOT NULL DEFAULT '1',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pacient`
--

INSERT INTO `pacient` (`id`, `no`, `name`, `lastname`, `gender`, `day_of_birth`, `email`, `address`, `phone`, `image`, `sick`, `medicaments`, `alergy`, `is_favorite`, `is_active`, `created_at`) VALUES
(3, NULL, 'Josue', 'Ramirez', 'h', '1998-04-03', 'dinopiza@yahoo.com.mx', 'AV VASCO DE QUIROGA 1235', '5513730772', NULL, 'Ninguna ', 'Ninguno ', 'Nada', 1, 1, '2019-02-25 09:29:41'),
(4, NULL, 'Jose', 'Aguilar', 'h', '1979-12-12', '', 'Priv.de belÃ©n #12 Col. Estrella ', '5544439492', NULL, 'Dolor de muela ', '', 'No', 1, 1, '2019-02-28 10:43:18'),
(5, NULL, 'Miguel Ãngel', 'MartÃ­nez Castellanos', 'h', '1964-01-10', '', 'Vasco de Quiroga 1235', '553412189', NULL, 'Gastritis', '', '', 1, 1, '2019-02-28 11:21:27'),
(6, NULL, 'jazmin ', 'martinez', 'm', '0000-00-00', '', '', '', NULL, '', '', '', 1, 1, '2019-02-28 11:31:43'),
(7, NULL, 'angeles', 'arroyo', 'm', '0000-00-00', '', '', '', NULL, '', '', '', 1, 1, '2019-02-28 11:32:44'),
(8, NULL, 'ingrid', 'guillermo', 'm', '0000-00-00', '', '', '', NULL, '', '', '', 1, 1, '2019-02-28 11:33:50'),
(9, NULL, 'Itzel ', 'Velasco GarcÃ­a ', 'm', '1978-12-12', '', '', '5510085798', NULL, '', '', '', 1, 1, '2019-02-28 11:34:05'),
(10, NULL, 'Sandra Leticia', 'Ugalde', 'm', '0000-00-00', '', '', '', NULL, '', '', '', 1, 1, '2019-02-28 11:36:58'),
(11, NULL, 'MÃ³nica ', 'RincÃ³n', 'm', '0000-00-00', '', '', '', NULL, '', '', '', 1, 1, '2019-02-28 11:37:27'),
(12, NULL, 'Constanza', 'SÃ¡nchez', 'm', '0000-00-00', '', '', '', NULL, '', '', '', 1, 1, '2019-02-28 11:41:20'),
(13, NULL, 'Atziri Valentina', 'RamÃ­rez Galvez', 'm', '2008-12-14', '', '', '', NULL, '', '', '', 1, 1, '2019-02-28 11:55:44'),
(14, NULL, 'Martha', 'Ãvila Monroy', 'm', '1956-05-13', '', 'Contreras 18', '5531152130', NULL, 'Gastritis', '', '', 1, 1, '2019-02-28 12:19:46'),
(15, NULL, 'Delfina ', 'Cruz', 'm', '2019-02-28', '', '', '', NULL, '', '', '', 1, 1, '2019-02-28 12:23:57'),
(16, NULL, 'Marcela', 'Sanchez', 'm', '0000-00-00', '', '', '', NULL, '', '', '', 1, 1, '2019-02-28 12:25:40'),
(17, NULL, 'Maria Elena ', 'Gonzalez', 'm', '0000-00-00', '', '', '', NULL, '', '', '', 1, 1, '2019-02-28 12:26:21'),
(18, NULL, 'Apolinar', 'Gomez', 'h', '0000-00-00', '', '', '', NULL, '', '', '', 1, 1, '2019-02-28 12:26:56'),
(19, NULL, 'Erika', 'Hernandez', 'm', '0000-00-00', '', '', '', NULL, '', '', '', 1, 1, '2019-02-28 12:27:19'),
(20, NULL, 'Apolinar', 'Moreno', 'h', '0000-00-00', '', '', '', NULL, '', '', '', 1, 1, '2019-02-28 12:27:58'),
(21, NULL, 'Emmanuel', 'Gonzalez', 'h', '0000-00-00', '', '', '', NULL, '', '', '', 1, 1, '2019-02-28 12:28:39'),
(22, NULL, 'Monica', 'Avila', 'm', '0000-00-00', '', '', '', NULL, '', '', '', 1, 1, '2019-02-28 12:29:05'),
(23, NULL, 'Guadalupe ', 'PatiÃ±o', 'm', '0000-00-00', '', '-', '', NULL, '', '', '', 1, 1, '2019-03-14 10:46:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `payment`
--

INSERT INTO `payment` (`id`, `name`) VALUES
(1, 'Pendiente'),
(2, 'Pagado'),
(3, 'Anulado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `note` text,
  `message` text,
  `date_at` varchar(50) DEFAULT NULL,
  `time_at` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `pacient_id` int(11) DEFAULT NULL,
  `symtoms` text,
  `sick` text,
  `medicaments` text,
  `user_id` int(11) DEFAULT NULL,
  `medic_id` int(11) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `is_web` tinyint(1) NOT NULL DEFAULT '0',
  `payment_id` int(11) NOT NULL DEFAULT '1',
  `status_id` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `reservation`
--

INSERT INTO `reservation` (`id`, `title`, `note`, `message`, `date_at`, `time_at`, `created_at`, `pacient_id`, `symtoms`, `sick`, `medicaments`, `user_id`, `medic_id`, `color`, `price`, `is_web`, `payment_id`, `status_id`) VALUES
(15, 'presupuesto', '', NULL, '2019-02-28', '16:00', '2019-02-28 11:35:01', 6, '', '', '', 5, 5, '#00ff00', 0, 0, 1, 1),
(16, 'revisiÃ³n', '', NULL, '2019-03-01', '18:00', '2019-02-28 11:36:15', 7, '', '', '', 5, 5, '#00ff00', 0, 0, 1, 1),
(17, 'Obturar endo', '', NULL, '2019-02-28', '13:00', '2019-02-28 11:37:04', 9, '', '', '', 3, 4, '#8000ff', 0, 0, 1, 1),
(18, 'resina', '', NULL, '2019-02-04', '17:30', '2019-02-28 11:38:12', 10, '', '', '', 5, 5, '', 0, 0, 1, 1),
(19, 'limpieza', '', NULL, '2019-03-04', '18:30', '2019-02-28 11:39:35', 11, '', '', '', 5, 5, '#00ff00', 0, 0, 1, 1),
(20, 'limpieza', '', NULL, '2019-02-09', '13:00', '2019-02-28 11:42:25', 12, '', '', '', 5, 5, '', 0, 0, 1, 1),
(21, 'Amalgama', '', NULL, '2019-03-01', '16:00', '2019-02-28 12:32:12', 15, '', 'Amalgama', '', 4, 4, '#ff00ff', 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `status`
--

INSERT INTO `status` (`id`, `name`) VALUES
(1, 'Pendiente'),
(2, 'Aplicada'),
(3, 'No asistio'),
(4, 'Cancelada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `username`, `name`, `lastname`, `email`, `password`, `is_active`, `is_admin`, `created_at`) VALUES
(1, 'admin', NULL, NULL, '', '90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad', 1, 1, '2019-02-09 00:45:04'),
(2, 'GOLDBN', 'Josue', 'Ramirez', 'contacto_webtech@yahoo.com', '6c336308b1a3ce563e05142e4f3c238d5afde6dc', 1, 1, '2019-02-09 00:46:39'),
(3, 'JuliaO', 'Julia ', 'Olivares', 'juliadent@outlook.com	', '7c919b6d66dcfc0adb3af5d397de45fc1f3db0af', 1, 1, '2019-02-09 00:47:13'),
(4, 'vicky', 'Virjinia ', 'Jaramillo', NULL, '46497942a81c90ff05130f3ee919b87444fc9847', 1, 1, '2019-02-28 10:17:15'),
(5, 'Arely', 'Arely ', 'RamÃ­rez Fuentes', NULL, 'ab7f16c7d83553eff881f6d3aba62b5531688d76', 1, 1, '2019-02-28 11:25:59'),
(7, 'Mariana', 'Mariana ', 'Renteria', NULL, 'b4bcce15cc4126b42560e610d0a6b67ec68d92c7', 1, 0, '2019-03-14 12:35:31'),
(8, 'Eduardo', 'Eduardo', 'Reyes', NULL, 'b4bcce15cc4126b42560e610d0a6b67ec68d92c7', 1, 0, '2019-03-14 12:36:17'),
(9, 'Carlos', 'Carlos', 'Acosta', NULL, 'b4bcce15cc4126b42560e610d0a6b67ec68d92c7', 1, 0, '2019-03-14 12:37:01');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `medic`
--
ALTER TABLE `medic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `category_id_2` (`category_id`),
  ADD KEY `color_id` (`color`);

--
-- Indices de la tabla `pacient`
--
ALTER TABLE `pacient`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_id` (`payment_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `pacient_id` (`pacient_id`),
  ADD KEY `medic_id` (`medic_id`),
  ADD KEY `medic_id_2` (`medic_id`),
  ADD KEY `color-id` (`color`);

--
-- Indices de la tabla `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `color`
--
ALTER TABLE `color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `medic`
--
ALTER TABLE `medic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `pacient`
--
ALTER TABLE `pacient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `medic`
--
ALTER TABLE `medic`
  ADD CONSTRAINT `medic_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Filtros para la tabla `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`id`),
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`),
  ADD CONSTRAINT `reservation_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `reservation_ibfk_4` FOREIGN KEY (`pacient_id`) REFERENCES `pacient` (`id`),
  ADD CONSTRAINT `reservation_ibfk_5` FOREIGN KEY (`medic_id`) REFERENCES `medic` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
