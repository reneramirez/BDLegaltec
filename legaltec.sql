-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-04-2021 a las 11:52:31
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `legaltec`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_pago`
--

CREATE TABLE `estado_pago` (
  `id_estado_pago` int(11) NOT NULL,
  `glosa_estado_pago` varchar(255) NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 1,
  `fh_creacion` datetime NOT NULL,
  `fh_modificacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estado_pago`
--

INSERT INTO `estado_pago` (`id_estado_pago`, `glosa_estado_pago`, `activo`, `fh_creacion`, `fh_modificacion`) VALUES
(1, 'PENDIENTE', 1, '2021-04-18 05:23:02', '2021-04-18 05:23:02'),
(2, 'PAGADO', 1, '2021-04-18 05:23:02', '2021-04-18 05:23:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `id_marca` int(11) NOT NULL,
  `glosa_marca` varchar(255) NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 1,
  `fh_creacion` datetime NOT NULL,
  `fh_modificacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`id_marca`, `glosa_marca`, `activo`, `fh_creacion`, `fh_modificacion`) VALUES
(1, 'CHEVROLET', 1, '2021-04-18 04:14:26', '2021-04-18 04:14:26'),
(2, 'DODGE', 1, '2021-04-18 04:18:37', '2021-04-18 04:18:37'),
(3, 'FIAT', 1, '2021-04-18 04:18:37', '2021-04-18 04:18:37'),
(4, 'JAGUAR', 1, '2021-04-18 04:19:30', '2021-04-18 04:19:30'),
(5, 'KIA MOTORS', 1, '2021-04-18 04:19:30', '2021-04-18 04:19:30'),
(6, 'MAHINDRA', 1, '2021-04-18 04:20:04', '2021-04-18 04:20:04'),
(7, 'MAXUS', 1, '2021-04-18 04:20:04', '2021-04-18 04:20:04'),
(8, 'MAZDA', 1, '2021-04-18 04:20:25', '2021-04-18 04:20:25'),
(9, 'MITSUBISHI', 1, '2021-04-18 04:20:25', '2021-04-18 04:20:25'),
(10, 'NISSAN', 1, '2021-04-18 04:20:44', '2021-04-18 04:20:44'),
(11, 'PEUGEOT', 1, '2021-04-18 04:20:44', '2021-04-18 04:20:44'),
(12, 'SSANGYONG', 1, '2021-04-18 04:21:01', '2021-04-18 04:21:01'),
(13, 'SUZUKI', 1, '2021-04-18 04:21:01', '2021-04-18 04:21:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelo`
--

CREATE TABLE `modelo` (
  `id_modelo` int(11) NOT NULL,
  `id_marca` int(11) NOT NULL,
  `glosa_modelo` varchar(255) NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 1,
  `fh_creacion` datetime NOT NULL,
  `fh_modificacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `modelo`
--

INSERT INTO `modelo` (`id_modelo`, `id_marca`, `glosa_modelo`, `activo`, `fh_creacion`, `fh_modificacion`) VALUES
(1, 1, 'D-MAX E4 CC 2.5D DAB ABS', 1, '2021-04-18 04:42:47', '2021-04-18 04:42:47'),
(2, 2, 'RAM 3.6 1500 SLT QUADCAB SPORT', 1, '2021-04-18 04:42:47', '2021-04-18 04:42:47'),
(3, 3, 'FIORINO 1.2 CITY MJTD', 1, '2021-04-18 04:43:40', '2021-04-18 04:43:40'),
(4, 4, 'F-PACE 2.0D PRESTIGE', 1, '2021-04-18 04:43:40', '2021-04-18 04:43:40'),
(5, 5, 'FRONTIER C/C 2.5 6MT', 1, '2021-04-18 04:44:54', '2021-04-18 04:44:54'),
(6, 5, 'FRONTIER P/UP 2.5L 6MT DLX DIF', 1, '2021-04-18 04:44:54', '2021-04-18 04:44:54'),
(7, 6, 'PIK-UP 2.2 CRDE D/C 4P TM 4X4', 1, '2021-04-18 05:17:06', '2021-04-18 05:17:06'),
(8, 6, 'PIK-UP XL C/S 4X2 CRDE', 1, '2021-04-18 05:17:06', '2021-04-18 05:17:06'),
(9, 6, 'PIK-UP XL D/C 4X2 EV', 1, '2021-04-18 05:17:32', '2021-04-18 05:17:32'),
(10, 7, 'T60 4X2 GL', 1, '2021-04-18 05:17:32', '2021-04-18 05:17:32'),
(11, 8, 'BT50 D/C 2.2L 4X4 SDX 6MT', 1, '2021-04-18 05:17:57', '2021-04-18 05:17:57'),
(12, 9, 'L200 KATANA CR', 1, '2021-04-18 05:17:57', '2021-04-18 05:17:57'),
(13, 10, 'NP300 DC XE 2.3D MT', 1, '2021-04-18 05:18:29', '2021-04-18 05:18:29'),
(14, 10, 'TERRANO DX 4X2', 1, '2021-04-18 05:18:29', '2021-04-18 05:18:29'),
(15, 10, 'TERRANO DXS MT', 1, '2021-04-18 05:18:54', '2021-04-18 05:18:54'),
(16, 11, 'PARTNER 1.6 HDI AA E5', 1, '2021-04-18 05:18:55', '2021-04-18 05:18:55'),
(17, 11, 'PARTNER 1.6 HDI E5', 1, '2021-04-18 05:19:21', '2021-04-18 05:19:21'),
(18, 12, 'A.SPORTS 2.2 MT SEMI FULL', 1, '2021-04-18 05:19:21', '2021-04-18 05:19:21'),
(19, 12, 'A.SPORTS 4X2', 1, '2021-04-18 05:20:02', '2021-04-18 05:20:02'),
(20, 12, 'A.SPORTS 4X2 AC LL', 1, '2021-04-18 05:20:02', '2021-04-18 05:20:02'),
(21, 13, 'APV PICK UP 1.6', 1, '2021-04-18 05:20:26', '2021-04-18 05:20:26'),
(22, 13, 'JIMNY 1.3 JX PS WINCHE', 1, '2021-04-18 05:20:26', '2021-04-18 05:20:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_servicio`
--

CREATE TABLE `tipo_servicio` (
  `id_tipo_servicio` int(11) NOT NULL,
  `glosa_tipo_servicio` varchar(255) NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 1,
  `fh_creacion` datetime NOT NULL,
  `fh_modificacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_servicio`
--

INSERT INTO `tipo_servicio` (`id_tipo_servicio`, `glosa_tipo_servicio`, `activo`, `fh_creacion`, `fh_modificacion`) VALUES
(1, 'PERMISO\r\n', 1, '2021-04-18 05:23:56', '2021-04-18 05:23:56'),
(2, 'INTERESES Y REAJUSTES', 1, '2021-04-18 05:23:56', '2021-04-18 05:23:56'),
(3, 'MULTAS', 1, '2021-04-18 05:24:37', '2021-04-18 05:24:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

CREATE TABLE `vehiculo` (
  `id_vehiculo` int(11) NOT NULL,
  `id_modelo` int(11) NOT NULL,
  `patente` varchar(6) NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 1,
  `fh_creacion` datetime NOT NULL,
  `fh_modificacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `vehiculo`
--

INSERT INTO `vehiculo` (`id_vehiculo`, `id_modelo`, `patente`, `activo`, `fh_creacion`, `fh_modificacion`) VALUES
(1, 14, 'BZXJ51', 1, '2021-04-18 23:35:40', '2021-04-19 02:57:47'),
(2, 8, 'CKXX38', 1, '2021-04-19 00:31:32', '2021-04-19 04:24:15'),
(3, 22, 'CKLX28', 1, '2021-04-19 02:07:43', '0000-00-00 00:00:00'),
(5, 19, 'DXGH73', 1, '2021-04-19 04:28:08', '2021-04-19 05:08:38'),
(6, 9, 'JDCX57', 1, '2021-04-19 04:31:57', '0000-00-00 00:00:00'),
(9, 2, 'JPWC15', 1, '2021-04-19 04:41:27', '0000-00-00 00:00:00'),
(12, 2, 'HSGZ67', 1, '2021-04-19 04:51:06', '0000-00-00 00:00:00'),
(18, 1, 'GZXJ36', 1, '2021-04-19 05:08:08', '0000-00-00 00:00:00'),
(22, 3, 'JVYB51', 1, '2021-04-19 05:15:02', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo_detalle`
--

CREATE TABLE `vehiculo_detalle` (
  `id_vehiculo_detalle` int(11) NOT NULL,
  `id_vehiculo` int(11) NOT NULL,
  `id_tipo_servicio` int(11) NOT NULL,
  `id_estado_pago` int(11) NOT NULL,
  `monto` int(11) NOT NULL,
  `fh_creacion` datetime NOT NULL,
  `fh_modificacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `vehiculo_detalle`
--

INSERT INTO `vehiculo_detalle` (`id_vehiculo_detalle`, `id_vehiculo`, `id_tipo_servicio`, `id_estado_pago`, `monto`, `fh_creacion`, `fh_modificacion`) VALUES
(1, 1, 1, 2, 51996, '2021-04-18 23:41:09', '2021-04-19 04:02:34'),
(2, 1, 2, 2, 200, '2021-04-18 23:41:09', '2021-04-19 04:02:34'),
(3, 1, 3, 2, 0, '2021-04-18 23:41:09', '2021-04-19 04:02:34'),
(4, 22, 1, 1, 1110, '2021-04-19 05:15:04', '0000-00-00 00:00:00'),
(5, 22, 2, 1, 11110, '2021-04-19 05:15:04', '0000-00-00 00:00:00'),
(6, 22, 3, 1, 0, '2021-04-19 05:15:04', '0000-00-00 00:00:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estado_pago`
--
ALTER TABLE `estado_pago`
  ADD PRIMARY KEY (`id_estado_pago`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`id_marca`);

--
-- Indices de la tabla `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`id_modelo`),
  ADD KEY `id_marca` (`id_marca`);

--
-- Indices de la tabla `tipo_servicio`
--
ALTER TABLE `tipo_servicio`
  ADD PRIMARY KEY (`id_tipo_servicio`);

--
-- Indices de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD PRIMARY KEY (`id_vehiculo`),
  ADD UNIQUE KEY `patente` (`patente`),
  ADD KEY `id_modelo` (`id_modelo`);

--
-- Indices de la tabla `vehiculo_detalle`
--
ALTER TABLE `vehiculo_detalle`
  ADD PRIMARY KEY (`id_vehiculo_detalle`),
  ADD KEY `id_vehiculo` (`id_vehiculo`),
  ADD KEY `id_tipo_servicio` (`id_tipo_servicio`),
  ADD KEY `id_estado_pago` (`id_estado_pago`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `estado_pago`
--
ALTER TABLE `estado_pago`
  MODIFY `id_estado_pago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `id_marca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `modelo`
--
ALTER TABLE `modelo`
  MODIFY `id_modelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `tipo_servicio`
--
ALTER TABLE `tipo_servicio`
  MODIFY `id_tipo_servicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  MODIFY `id_vehiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `vehiculo_detalle`
--
ALTER TABLE `vehiculo_detalle`
  MODIFY `id_vehiculo_detalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `modelo`
--
ALTER TABLE `modelo`
  ADD CONSTRAINT `fk_marca` FOREIGN KEY (`id_marca`) REFERENCES `marca` (`id_marca`);

--
-- Filtros para la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD CONSTRAINT `fk_modelo` FOREIGN KEY (`id_modelo`) REFERENCES `modelo` (`id_modelo`);

--
-- Filtros para la tabla `vehiculo_detalle`
--
ALTER TABLE `vehiculo_detalle`
  ADD CONSTRAINT `fk_estado_pago` FOREIGN KEY (`id_estado_pago`) REFERENCES `estado_pago` (`id_estado_pago`),
  ADD CONSTRAINT `fk_tipo_servicio` FOREIGN KEY (`id_tipo_servicio`) REFERENCES `tipo_servicio` (`id_tipo_servicio`),
  ADD CONSTRAINT `fk_vehiculo` FOREIGN KEY (`id_vehiculo`) REFERENCES `vehiculo` (`id_vehiculo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
