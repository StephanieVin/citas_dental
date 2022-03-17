-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 14-12-2021 a las 23:44:34
-- Versión del servidor: 10.5.9-MariaDB
-- Versión de PHP: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `citas_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `appointment`
--

CREATE TABLE `appointment` (
  `codcit` int(11) NOT NULL,
  `dates` date NOT NULL,
  `hour` time NOT NULL,
  `codpaci` int(11) NOT NULL,
  `coddoc` int(11) NOT NULL,
  `codespe` int(11) NOT NULL,
  `estado` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_create` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `appointment`
--

INSERT INTO `appointment` (`codcit`, `dates`, `hour`, `codpaci`, `coddoc`, `codespe`, `estado`, `fecha_create`) VALUES
(3, '2021-12-10', '02:12:00', 5, 3, 4, '1', '2021-12-14 23:39:12'),
(6, '2021-12-18', '16:00:00', 9, 1, 1, '0', '2021-12-14 23:39:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customers`
--

CREATE TABLE `customers` (
  `codpaci` int(11) NOT NULL,
  `dnipa` char(8) COLLATE utf8_unicode_ci NOT NULL,
  `nombrep` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `apellidop` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `seguro` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `tele` char(9) COLLATE utf8_unicode_ci NOT NULL,
  `sexo` char(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `clave` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cargo` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `estado` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_create` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `customers`
--

INSERT INTO `customers` (`codpaci`, `dnipa`, `nombrep`, `apellidop`, `seguro`, `tele`, `sexo`, `email`, `clave`, `cargo`, `estado`, `fecha_create`) VALUES
(4, '77654343', 'Estefania', 'Leon ', 'Si', '998687687', 'Femenino', 'email@admin.com', '5fd55c9bde2a40926afb4c460deea1ea', '2', '0', '2021-12-08 09:34:09'),
(5, '76767565', 'Isis', 'Roque Trelles', 'Si', '978078967', 'Femenino', 'personal@email.com', 'b0baee9d279d34fa1dfd71aadb908c3f', '2', '1', '2021-12-10 03:29:23'),
(9, '76656756', 'Emmanuel', 'Urbina', 'Si', '986867565', 'Masculino', 'empres@gmail.com', 'b0baee9d279d34fa1dfd71aadb908c3f', '2', '1', '2021-12-10 03:29:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doctor`
--

CREATE TABLE `doctor` (
  `coddoc` int(11) NOT NULL,
  `dnidoc` char(8) COLLATE utf8_unicode_ci NOT NULL,
  `nomdoc` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `apedoc` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `codespe` int(11) NOT NULL,
  `sexo` char(15) COLLATE utf8_unicode_ci NOT NULL,
  `telefo` char(9) COLLATE utf8_unicode_ci NOT NULL,
  `fechanaci` date NOT NULL,
  `correo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `naciona` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `estado` char(15) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_create` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `doctor`
--

INSERT INTO `doctor` (`coddoc`, `dnidoc`, `nomdoc`, `apedoc`, `codespe`, `sexo`, `telefo`, `fechanaci`, `correo`, `naciona`, `estado`, `fecha_create`) VALUES
(1, '77645342', 'Raquel', 'Roque Trelles', 1, 'Femenino', '998575656', '1920-09-15', 'rokerakel@gmail.com', 'Venezolana(o)', '1', '2021-12-08 09:39:06'),
(3, '77547574', 'Luzmila', 'Roque Yarleque', 4, 'Femenino', '965657675', '1987-09-16', 'luzmina_8_87@gmail.com', 'Argentina(o)', '1', '2021-07-21 16:32:25'),
(4, '77565645', 'Robin', 'Roque Yarleque', 4, 'Masculino', '977867767', '1990-09-13', 'robin@gmail.com', 'Peruana(o)', '1', '2021-07-21 16:36:16'),
(5, '77576565', 'Victoria', 'Roque Trelles', 3, 'Femenino', '988778678', '1991-09-05', 'vicky2@gmail.com', 'Argentina(o)', '1', '2021-07-21 16:36:20'),
(6, '75117484', 'Jose', 'Urbina Sanchez', 7, 'Masculino', '986766554', '1993-10-14', 'joseurbina@gmail.com', 'Ecuatoriana(o)', '1', '2021-07-21 16:32:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `specialty`
--

CREATE TABLE `specialty` (
  `codespe` int(11) NOT NULL,
  `nombrees` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_create` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `specialty`
--

INSERT INTO `specialty` (`codespe`, `nombrees`, `fecha_create`) VALUES
(1, 'Odontologo', '2021-12-08 07:31:40'),
(2, 'Ortodoncia', '2021-12-08 07:29:41'),
(3, 'Periodontista', '2021-12-08 07:30:20'),
(4, 'Endodoncista', '2021-12-08 07:30:54'),
(5, 'Odontopediatra', '2021-12-08 07:31:10'),
(7, 'Patólogo Oral', '2021-12-08 07:31:29'),
(8, 'Prostodoncista', '2021-12-08 07:32:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `clave` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cargo` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `email`, `clave`, `cargo`) VALUES
(1, 'Stephanie ', 'admin@admin.com', 'b0baee9d279d34fa1dfd71aadb908c3f', '1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`codcit`),
  ADD KEY `codpaci` (`codpaci`,`coddoc`,`codespe`),
  ADD KEY `coddoc` (`coddoc`),
  ADD KEY `codespe` (`codespe`);

--
-- Indices de la tabla `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`codpaci`);

--
-- Indices de la tabla `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`coddoc`),
  ADD KEY `codespe` (`codespe`);

--
-- Indices de la tabla `specialty`
--
ALTER TABLE `specialty`
  ADD PRIMARY KEY (`codespe`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `appointment`
--
ALTER TABLE `appointment`
  MODIFY `codcit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `customers`
--
ALTER TABLE `customers`
  MODIFY `codpaci` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `doctor`
--
ALTER TABLE `doctor`
  MODIFY `coddoc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `specialty`
--
ALTER TABLE `specialty`
  MODIFY `codespe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`codpaci`) REFERENCES `customers` (`codpaci`),
  ADD CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`coddoc`) REFERENCES `doctor` (`coddoc`),
  ADD CONSTRAINT `appointment_ibfk_3` FOREIGN KEY (`codespe`) REFERENCES `specialty` (`codespe`);

--
-- Filtros para la tabla `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`codespe`) REFERENCES `specialty` (`codespe`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
