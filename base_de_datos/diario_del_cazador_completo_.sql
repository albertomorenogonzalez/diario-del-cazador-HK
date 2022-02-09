-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-02-2022 a las 18:51:51
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `diario_del_cazador(completo)`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enemigo`
--

CREATE TABLE `enemigo` (
  `CodEn` int(11) NOT NULL,
  `NomEne` varchar(45) NOT NULL,
  `ImgEne` varchar(45) NOT NULL,
  `DescEne` varchar(1000) NOT NULL,
  `DescAdiEne` varchar(1000) NOT NULL,
  `BossEne` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `enemigo`
--

INSERT INTO `enemigo` (`CodEn`, `NomEne`, `ImgEne`, `DescEne`, `DescAdiEne`, `BossEne`) VALUES
(1, 'Hornet', 'Hornet.jpg', 'Que', 'So', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `CodUsu` int(11) NOT NULL,
  `NomUsu` varchar(45) NOT NULL,
  `Ape1Usu` varchar(45) NOT NULL,
  `Ape2Usu` varchar(45) DEFAULT NULL,
  `EmailUsu` varchar(45) NOT NULL,
  `ContrUsu` varchar(45) NOT NULL,
  `ExtTelUsu` varchar(45) NOT NULL,
  `NumTelUsu` varchar(45) NOT NULL,
  `FechNacUsu` varchar(45) NOT NULL,
  `FotPerUsu` varchar(45) NOT NULL,
  `AdminUsu` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`CodUsu`, `NomUsu`, `Ape1Usu`, `Ape2Usu`, `EmailUsu`, `ContrUsu`, `ExtTelUsu`, `NumTelUsu`, `FechNacUsu`, `FotPerUsu`, `AdminUsu`) VALUES
(1, 'Illo', 'Juan', 'García', 'Illo@juan.com', 'lmdshow', '+34', '111 11 11 11', '1/1/2001', 'xd', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_has_enemigo`
--

CREATE TABLE `usuario_has_enemigo` (
  `usuario_CodUsu` int(11) NOT NULL,
  `enemigo_CodEn` int(11) NOT NULL,
  `NumEneDer` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario_has_enemigo`
--

INSERT INTO `usuario_has_enemigo` (`usuario_CodUsu`, `enemigo_CodEn`, `NumEneDer`) VALUES
(1, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zona`
--

CREATE TABLE `zona` (
  `CodZona` int(11) NOT NULL,
  `NomZona` varchar(45) NOT NULL,
  `DescZona` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `zona`
--

INSERT INTO `zona` (`CodZona`, `NomZona`, `DescZona`) VALUES
(1, 'Sendero Verde', 'xd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zona_has_enemigo`
--

CREATE TABLE `zona_has_enemigo` (
  `zona_CodZona` int(11) NOT NULL,
  `enemigo_CodEn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `zona_has_enemigo`
--

INSERT INTO `zona_has_enemigo` (`zona_CodZona`, `enemigo_CodEn`) VALUES
(1, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `enemigo`
--
ALTER TABLE `enemigo`
  ADD PRIMARY KEY (`CodEn`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`CodUsu`);

--
-- Indices de la tabla `usuario_has_enemigo`
--
ALTER TABLE `usuario_has_enemigo`
  ADD PRIMARY KEY (`usuario_CodUsu`,`enemigo_CodEn`),
  ADD KEY `fk_usuario_has_enemigo_enemigo1_idx` (`enemigo_CodEn`),
  ADD KEY `fk_usuario_has_enemigo_usuario1_idx` (`usuario_CodUsu`);

--
-- Indices de la tabla `zona`
--
ALTER TABLE `zona`
  ADD PRIMARY KEY (`CodZona`);

--
-- Indices de la tabla `zona_has_enemigo`
--
ALTER TABLE `zona_has_enemigo`
  ADD PRIMARY KEY (`zona_CodZona`,`enemigo_CodEn`),
  ADD KEY `fk_zona_has_enemigo_enemigo1_idx` (`enemigo_CodEn`),
  ADD KEY `fk_zona_has_enemigo_zona_idx` (`zona_CodZona`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `usuario_has_enemigo`
--
ALTER TABLE `usuario_has_enemigo`
  ADD CONSTRAINT `fk_usuario_has_enemigo_enemigo1` FOREIGN KEY (`enemigo_CodEn`) REFERENCES `enemigo` (`CodEn`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuario_has_enemigo_usuario1` FOREIGN KEY (`usuario_CodUsu`) REFERENCES `usuario` (`CodUsu`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `zona_has_enemigo`
--
ALTER TABLE `zona_has_enemigo`
  ADD CONSTRAINT `fk_zona_has_enemigo_enemigo1` FOREIGN KEY (`enemigo_CodEn`) REFERENCES `enemigo` (`CodEn`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_zona_has_enemigo_zona` FOREIGN KEY (`zona_CodZona`) REFERENCES `zona` (`CodZona`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
