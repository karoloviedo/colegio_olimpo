-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-02-2022 a las 23:40:30
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `colegio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura`
--

CREATE TABLE `asignatura` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `profesor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `asignatura`
--

INSERT INTO `asignatura` (`id`, `nombre`, `profesor`) VALUES
(1, 'Matematicas', 1),
(2, 'Español', 2),
(3, 'Pre Icfes', 1),
(4, 'Ingles basico', 3),
(5, 'Ingles avanzado', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura_estudiante`
--

CREATE TABLE `asignatura_estudiante` (
  `id` int(11) NOT NULL,
  `id_asignatura` int(11) NOT NULL,
  `id_estudiante` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `asignatura_estudiante`
--

INSERT INTO `asignatura_estudiante` (`id`, `id_asignatura`, `id_estudiante`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 3, 1),
(4, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colegio`
--

CREATE TABLE `colegio` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `colegio`
--

INSERT INTO `colegio` (`id`, `nombre`) VALUES
(1, 'El colegio del olimpó');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colegio_curso`
--

CREATE TABLE `colegio_curso` (
  `id` int(11) NOT NULL,
  `id_colegio` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `colegio_curso`
--

INSERT INTO `colegio_curso` (`id`, `id_colegio`, `id_curso`) VALUES
(1, 1, 1),
(2, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `id` int(11) NOT NULL,
  `grado` int(11) NOT NULL,
  `salon` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`id`, `grado`, `salon`) VALUES
(1, 10, '10A'),
(2, 10, '10B'),
(3, 11, '11A'),
(4, 11, '11B');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso_asignatura`
--

CREATE TABLE `curso_asignatura` (
  `id` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL,
  `id_asignatura` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `curso_asignatura`
--

INSERT INTO `curso_asignatura` (`id`, `id_curso`, `id_asignatura`) VALUES
(1, 2, 1),
(2, 2, 3),
(3, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`id`, `nombre`) VALUES
(1, 'Afrodita'),
(2, 'Artemisa'),
(3, 'Hefesto'),
(4, 'Hermes'),
(5, 'Apolo'),
(6, 'Atenea'),
(7, 'Hera'),
(8, 'Hades'),
(9, 'Ares'),
(10, 'Dioniso'),
(11, 'Poseidon'),
(12, 'Zeus');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`id`, `nombre`) VALUES
(1, 'Nemesis'),
(2, 'Priapo'),
(3, 'Iris');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profesor` (`profesor`);

--
-- Indices de la tabla `asignatura_estudiante`
--
ALTER TABLE `asignatura_estudiante`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_asignatura` (`id_asignatura`),
  ADD KEY `id_estudiante` (`id_estudiante`);

--
-- Indices de la tabla `colegio`
--
ALTER TABLE `colegio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `colegio_curso`
--
ALTER TABLE `colegio_curso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_colegio` (`id_colegio`),
  ADD KEY `id_curso` (`id_curso`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `curso_asignatura`
--
ALTER TABLE `curso_asignatura`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_curso` (`id_curso`),
  ADD KEY `id_asignatura` (`id_asignatura`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `asignatura_estudiante`
--
ALTER TABLE `asignatura_estudiante`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `colegio`
--
ALTER TABLE `colegio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `colegio_curso`
--
ALTER TABLE `colegio_curso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `curso_asignatura`
--
ALTER TABLE `curso_asignatura`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `profesor`
--
ALTER TABLE `profesor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asignatura`
--
ALTER TABLE `asignatura`
  ADD CONSTRAINT `asignatura_ibfk_1` FOREIGN KEY (`profesor`) REFERENCES `profesor` (`id`);

--
-- Filtros para la tabla `asignatura_estudiante`
--
ALTER TABLE `asignatura_estudiante`
  ADD CONSTRAINT `asignatura_estudiante_ibfk_1` FOREIGN KEY (`id_asignatura`) REFERENCES `asignatura` (`id`),
  ADD CONSTRAINT `asignatura_estudiante_ibfk_2` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiante` (`id`);

--
-- Filtros para la tabla `colegio_curso`
--
ALTER TABLE `colegio_curso`
  ADD CONSTRAINT `colegio_curso_ibfk_1` FOREIGN KEY (`id_colegio`) REFERENCES `colegio` (`id`),
  ADD CONSTRAINT `colegio_curso_ibfk_2` FOREIGN KEY (`id_colegio`) REFERENCES `colegio` (`id`),
  ADD CONSTRAINT `colegio_curso_ibfk_3` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id`);

--
-- Filtros para la tabla `curso_asignatura`
--
ALTER TABLE `curso_asignatura`
  ADD CONSTRAINT `curso_asignatura_ibfk_1` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id`),
  ADD CONSTRAINT `curso_asignatura_ibfk_2` FOREIGN KEY (`id_asignatura`) REFERENCES `asignatura` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
