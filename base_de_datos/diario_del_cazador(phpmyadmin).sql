-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-02-2022 a las 19:34:32
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `diario_del_cazador`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enemigo`
--

CREATE TABLE `enemigo` (
  `CodEne` int(11) NOT NULL,
  `NomEne` varchar(45) NOT NULL,
  `DescEne` varchar(1000) NOT NULL,
  `BossEne` bit(1) NOT NULL DEFAULT b'0',
  `zona_CodZona` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `enemigo`
--

INSERT INTO `enemigo` (`CodEne`, `NomEne`, `DescEne`, `BossEne`, `zona_CodZona`) VALUES
(1, 'Reptacillo', 'Tímido carroñero que se arrastra por las cavernas buscando comida.', b'0', 2),
(2, 'Tiktik', 'Tímido carroñero que se arrastra por las cavernas buscando comida.', b'0', 2),
(3, 'Vengamosca', 'Depredador volador que persigue a su presa incansablemente.', b'0', 2),
(4, 'Cáscara Errante', 'Los restos de un insecto, reanimados por una extraña fuerza. Vaga por los caminos en los que solía vivir.', b'0', 3),
(5, 'Falso Caballero', 'Un gusano al que una fuerza extraña ha vuelto loco. Vive en una coraza blindada robada.', b'1', 3),
(6, 'Musgoagresor', 'Tímida criatura que asusta a los intrusos cubriéndose con enormes trozos de musgo.', b'0', 4),
(9, 'Hornet', 'Habilidosa protectora de las ruinas de Hallownest. Empuña una aguja e hilo.', b'1', 4),
(10, 'Fungiguerrero', 'Criatura fúngica que ataca a los intrusos para proteger a sus crías.', b'0', 5),
(11, 'Señores Mantis', 'Son los líderes de la tribu mantis, y sus mejores guerreros. Portan finas lanzas aguijón, y atacan con la velocidad del rayo.', b'1', 5),
(12, 'Cáscara Centinela', 'Los restos reanimados de un centinela de Hallownest. Aún conserva algunos recuerdos de su anterior cometido.', b'0', 6),
(13, 'Caballero Vigía', 'Coraza de un Caballero vigía, reanimada por un enjambre de moscas infectadas.', b'1', 6),
(14, 'Cavasuelos', 'Depredador de Nido Profundo que se mueve en manada. Escarba en la tierra y emerge de ella para sorprender a su presa.', b'0', 7),
(15, 'Xero', 'Sueño persistente de un guerrero caído. Ejecutado por crímenes contra el rey.', b'1', 8),
(16, 'Brillomo', 'Criatura dura y lenta. Los cristales que crecen en su lomo le confieren una protección extra ante los enemigos aéreos.', b'0', 9),
(17, 'Defensor del Estiércol', 'Un hábil guerrero que vive en el corazón de los Canales. Ataca a los intrusos con esferas compactas de estiércol.', b'1', 10),
(18, 'Mawlurk', 'Criatura grande e inmóvil. Escupe veneno de forma salvaje cuando algún intruso pasa a su lado.', b'0', 11),
(19, 'Receptáculo Roto', 'Cadáver destrozado, reanimado por parásitos infectados.', b'1', 11),
(20, 'Gran Saltamontes', 'Salta por los límites del mundo tratando de aplastar a su presa con su cuerpo.', b'0', 12),
(21, 'Áspid Primigenio', 'Una forma más salvaje y ancestral del aspid. Se pensaba que se habían extinguido, pero han reaparecido en los límites del mundo.', b'0', 12),
(22, 'Uumuu', 'Ser inteligente que protege la cámara interior de los Archivos de la Maestra.', b'1', 13),
(23, 'Petramantis', 'Acecha entre el follaje y ataca lanzando viento con forma de guadaña a distancia.', b'0', 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `foto_perfil`
--

CREATE TABLE `foto_perfil` (
  `CodFot` int(11) NOT NULL,
  `NomFot` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `foto_perfil`
--

INSERT INTO `foto_perfil` (`CodFot`, `NomFot`) VALUES
(0, 'null'),
(1, 'knightp'),
(2, 'hornetp'),
(3, 'quirrelp'),
(4, 'vesselp');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `CodUsu` int(11) NOT NULL,
  `NomUsu` varchar(45) NOT NULL,
  `Ape1Usu` varchar(45) NOT NULL,
  `Ape2Usu` varchar(45) DEFAULT NULL,
  `EmailUsu` varchar(45) NOT NULL CHECK (`EmailUsu` like '%@%.%'),
  `NickUsu` varchar(45) NOT NULL,
  `ContrUsu` varchar(45) NOT NULL,
  `FechNacUsu` varchar(10) NOT NULL,
  `AdminUsu` bit(1) NOT NULL DEFAULT b'0',
  `fotoperfil_CodFot` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`CodUsu`, `NomUsu`, `Ape1Usu`, `Ape2Usu`, `EmailUsu`, `NickUsu`, `ContrUsu`, `FechNacUsu`, `AdminUsu`, `fotoperfil_CodFot`) VALUES
(1, 'admin', 'apellido1', NULL, 'admin@admin.com', 'admin', 'root', '11/01/2003', b'1', 3),
(8, 'usuario1', 'apellido1', NULL, 'usuario@usuario.com', 'usuario', 'usuario', '01/01/2001', b'0', 4),
(9, 'usuario2', 'apellido12', 'apellido22', 'usuario2@usuario.com', 'usuario2', 'usuario', '02/01/2001', b'0', 0);

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
(1, 'Acantilados Aulladores', 'Un paraje yermo en el extremo noroeste de Hallownest. Escasamente ocupada por enemigos pero sustentado por los cadáveres de bichos de todos los tamaños. En el extremo oeste se encuentra un poderoso viento que empujará al jugador bloqueándole el paso.'),
(2, 'Bocasucia', 'Un pequeño pueblo situado en lo más alto de Hallownest, llegamos a él al poco de empezar el juego.'),
(3, 'Cruces Olvidados', 'Estas carreteras antaño eran concurridas por viajeros de todo Hallownest. Pero tras muchos años el deterioro, las plagas de bichos agresivos y los restos de antiguos habitantes, las han transformado en una zona peligrosa.'),
(4, 'Sendero Verde', 'Profundidades llenas de vegetación, protegidas por bichos cubiertos de plantas. La gran cantidad de ácido y vegetación dificultan el paso.'),
(5, 'Páramos Fúngicos', 'Son cavernas abarrotadas de esporas. A diferencia del resto de zonas de Hallownest, está habitada por seres fúngicos. Al sur, se encuentra la Aldea Mantis, y  al este, la Ciudad de Lágrimas.'),
(6, 'Ciudad de Lágrimas', 'Capital de Hallownest y el corazón del Reino; el agua del Lago Azul cae constantemente, creando una lluvia perpetua. Se caracteriza, además, por la presencia de varias torres y edificios como el Santuario de Almas, la Torre del Vigía, Casa de los Placeres y la Torre del Amor.'),
(7, 'Nido Profundo', 'Profundidad oculta en la esquina suroeste de Hallownest, repleta de toda variedad de arañas. Al oeste se encuentra Poblado distante, una gran estructura formada por telarañas y que contiene a la Soñadora Herrah'),
(8, 'Tierras de Reposo', 'Un gran cementerio situado al extremo este de Hallownest. El jugador llega por primera vez cayendo desde Cumbre de Cristal o usando el Tranvía. Aquí encontrará el monumento y la localización de los Soñadores, además de recibir el Aguijón Onírico.'),
(9, 'Cumbre de Cristal', 'Localizado al este de Bocasucia, es una alta montaña que fue usada en el pasado como mina por sus preciados cristales.'),
(10, 'Canales Reales', 'Un alcantarillado formado por una serie de tuberías de desagüe bajo la superficie de Ciudad de Lágrimas. Al este se encuentra un ascensor derruido debido al abandono. Por el noreste podemos encontrar un pozo que conecta con la sala de Emilitia en la Ciudad de Lágrimas.'),
(11, 'Cuenca Antigua', 'La zona más profunda de Hallownest, casi inhóspita. Aquí se encontraba originalmente el Palacio Blanco, hogar del Rey Pálido.'),
(12, 'Límite del Reino', 'Sitúada al extremo este de Hallownest y con una constante lluvia de ceniza se encuentra el Límite del Reino. Cuerpos procedentes del Coliseo de los Insensatos caen desde arriba para aterrizar en un lago de ácido. Al sureste del área se encuentra un profundo foso que conduce al mayor depósito de Geo del juego.'),
(13, 'Cañón Nublado', 'Una pequeña zona repleta de niebla, burbujas y ácido. En el centro se sitúan los Archivos de la Maestra, casa de la Soñadora Monomon y sus experimentos.'),
(14, 'Jardines de la Reina', 'Una área llena de verjas ornamentadas, espinas y peligrosas plataformas situada al oeste Hallownest. En el pasado se trataba de los jardines de la Dama Blanca, pero fue invadida por las Mantis Traidoras que habían sido desterradas de su tribu.'),
(15, 'La Colmena', 'Situada al sur de Límite del Reino. A pesar de estar en Hallownest, las abejas se encuentran al margen de los asuntos del reino.');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `enemigo`
--
ALTER TABLE `enemigo`
  ADD PRIMARY KEY (`CodEne`),
  ADD KEY `fk_enemigo_zona1_idx` (`zona_CodZona`);

--
-- Indices de la tabla `foto_perfil`
--
ALTER TABLE `foto_perfil`
  ADD PRIMARY KEY (`CodFot`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`CodUsu`),
  ADD UNIQUE KEY `EmailUsu` (`EmailUsu`),
  ADD UNIQUE KEY `NickUsu` (`NickUsu`),
  ADD KEY `fk_usuario_fotoperfil1_idx` (`fotoperfil_CodFot`);

--
-- Indices de la tabla `zona`
--
ALTER TABLE `zona`
  ADD PRIMARY KEY (`CodZona`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `enemigo`
--
ALTER TABLE `enemigo`
  MODIFY `CodEne` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `CodUsu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `enemigo`
--
ALTER TABLE `enemigo`
  ADD CONSTRAINT `fk_enemigo_zona1` FOREIGN KEY (`zona_CodZona`) REFERENCES `zona` (`CodZona`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_usuario_fotoperfil1` FOREIGN KEY (`fotoperfil_CodFot`) REFERENCES `foto_perfil` (`CodFot`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
