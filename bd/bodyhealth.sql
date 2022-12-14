-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 10-11-2022 a las 04:50:11
-- Versión del servidor: 8.0.17
-- Versión de PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bodyhealth`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `documento` int(11) NOT NULL,
  `tipodocumento` varchar(50) DEFAULT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `telefono` varchar(30) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `id_rol` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`documento`, `tipodocumento`, `nombre`, `apellido`, `telefono`, `fecha_nacimiento`, `email`, `password`, `id_rol`) VALUES
(9999, 'CC', 'Admin', 'Uno', '1234', '2003-07-07', 'admin@bodyhealth.com', 'admin', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `documento` int(15) NOT NULL,
  `tipo_documento` varchar(15) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `fechaN` date DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `foto` varchar(150) DEFAULT NULL,
  `jornada` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`documento`, `tipo_documento`, `nombre`, `apellido`, `telefono`, `fechaN`, `email`, `password`, `foto`, `jornada`) VALUES
(2, 'CC', 'Miguel', 'Perez', '3219238493', '2022-10-11', 'miguel@gmail.com', 'miguel', 'https://jsfksdkfd', 'Mañana'),
(9999, 'CC', 'Miguel', 'Perez', '3219238493', '2022-10-11', 'miguel@gmail.com', 'miguel', 'https://jsfksdkfd', 'Mañana'),
(10000, 'CC', 'Miguel', 'Perez', '3219238493', '2022-10-11', 'miguel@gmail.com', 'miguel', 'https://jsfksdkfd', 'Mañana'),
(10003, NULL, 'LUI', 'gt', '3219238493', NULL, 'miguel@gmail.com', NULL, NULL, NULL),
(10004, NULL, 'LUIS2222', 'LUIS2222', '3219238493', NULL, 'miguel@gmail.com', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente_detalle`
--

CREATE TABLE `cliente_detalle` (
  `documentoC` int(11) NOT NULL,
  `id_detalle` int(11) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `id_metodopago` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente_rutina`
--

CREATE TABLE `cliente_rutina` (
  `documentoC` int(15) NOT NULL,
  `id_rutina` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente_rutina`
--

INSERT INTO `cliente_rutina` (`documentoC`, `id_rutina`) VALUES
(9999, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `id_compra` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_metodopago` int(15) DEFAULT NULL,
  `fecha_compra` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `compra`
--

INSERT INTO `compra` (`id_compra`, `id_cliente`, `id_metodopago`, `fecha_compra`) VALUES
(8585, 9999, 2, '2022-10-23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `control_cliente`
--

CREATE TABLE `control_cliente` (
  `documento` int(11) NOT NULL,
  `peso` double NOT NULL,
  `estatura` double NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `control_cliente`
--

INSERT INTO `control_cliente` (`documento`, `peso`, `estatura`, `fecha`) VALUES
(9999, 80, 180, '2022-11-07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `control_entrenador`
--

CREATE TABLE `control_entrenador` (
  `documento` int(11) NOT NULL,
  `peso` double DEFAULT NULL,
  `estatura` double DEFAULT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `control_entrenador`
--

INSERT INTO `control_entrenador` (`documento`, `peso`, `estatura`, `fecha`) VALUES
(222, 70, 170, '2022-10-23'),
(1004926016, 80, 180, '2022-10-23'),
(1004926016, 80, 180, '2022-10-24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle`
--

CREATE TABLE `detalle` (
  `id_detalle` int(11) NOT NULL,
  `id_plan` int(11) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `meses` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detalle`
--

INSERT INTO `detalle` (`id_detalle`, `id_plan`, `precio`, `meses`) VALUES
(1, 1, 40000, NULL),
(2, 4, 400000, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dias_semana`
--

CREATE TABLE `dias_semana` (
  `ID` int(11) NOT NULL,
  `descripcion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dias_semana`
--

INSERT INTO `dias_semana` (`ID`, `descripcion`) VALUES
(1, 'Lunes'),
(2, 'Martes'),
(3, 'Miercoles'),
(4, 'Jueves'),
(5, 'Viernes'),
(6, 'Sabado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ejercicio`
--

CREATE TABLE `ejercicio` (
  `id_ejercicio` int(11) NOT NULL,
  `id_musculo` int(15) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `series` varchar(50) DEFAULT NULL,
  `repeticiones` int(2) DEFAULT NULL,
  `url_video` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ejercicio`
--

INSERT INTO `ejercicio` (`id_ejercicio`, `id_musculo`, `descripcion`, `series`, `repeticiones`, `url_video`) VALUES
(1, 1, 'Martillo cruzado con mancuernas', '4', 12, 'video'),
(2, 1, 'Curl bíceps inclinado con barra', '4', 15, 'video2'),
(3, 3, 'Rotación externa de hombro con banda elástica', '4', 12, 'V'),
(4, 3, 'Elevaciones laterales y rotación interna con mancuernas', '4', 15, 'C');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ejercicio_musculo`
--

CREATE TABLE `ejercicio_musculo` (
  `ID` int(11) NOT NULL,
  `id_ejercicio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ejercicio_musculo`
--

INSERT INTO `ejercicio_musculo` (`ID`, `id_ejercicio`) VALUES
(100, 1),
(100, 2),
(200, 3),
(200, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrenador`
--

CREATE TABLE `entrenador` (
  `documento` int(15) NOT NULL,
  `tipo_documento` varchar(30) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `fechaN` date DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `experiencia` varchar(15) DEFAULT NULL,
  `hoja_vida` varchar(100) DEFAULT NULL,
  `titulo_académico` varchar(100) DEFAULT NULL,
  `documentoA` int(11) DEFAULT NULL,
  `id_rol` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `entrenador`
--

INSERT INTO `entrenador` (`documento`, `tipo_documento`, `nombre`, `apellido`, `telefono`, `fechaN`, `email`, `password`, `experiencia`, `hoja_vida`, `titulo_académico`, `documentoA`, `id_rol`) VALUES
(222, 'CC', 'Entrenador', 'Dos', '2222222222', '2022-10-04', 'entrenadordos@bodyhealth.com', 'entrenadordos', '3', NULL, 'Profesional', 9999, 2),
(1004926016, 'CC', 'Entrenador', 'Uno', '3023219564', '2003-10-15', 'entrenadoruno@bodyhealth.com', 'entrenadoruno', '4', NULL, 'Profesional en educación física', 9999, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `ID` int(11) NOT NULL,
  `jornada` varchar(50) DEFAULT NULL,
  `id_diasemana` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `horario`
--

INSERT INTO `horario` (`ID`, `jornada`, `id_diasemana`) VALUES
(1, 'Mañana', 1),
(2, 'Mañana', 2),
(3, 'Mañana', 3),
(4, 'Mañana', 4),
(5, 'Mañana', 5),
(6, 'Mañana', 6),
(7, 'Tarde', 1),
(8, 'Tarde', 2),
(9, 'Tarde', 3),
(10, 'Tarde', 4),
(11, 'Tarde', 5),
(12, 'Tarde', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario_entrenador`
--

CREATE TABLE `horario_entrenador` (
  `documentoE` int(15) NOT NULL,
  `id_horario` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `horario_entrenador`
--

INSERT INTO `horario_entrenador` (`documentoE`, `id_horario`) VALUES
(1004926016, 1),
(1004926016, 2),
(1004926016, 3),
(222, 7),
(222, 8),
(222, 9),
(222, 10),
(1004926016, 10),
(222, 11),
(1004926016, 11),
(222, 12),
(1004926016, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `h_entrenadorcliente`
--

CREATE TABLE `h_entrenadorcliente` (
  `documentoE` int(15) NOT NULL,
  `documentoC` int(15) NOT NULL,
  `id_horario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `h_entrenadorcliente`
--

INSERT INTO `h_entrenadorcliente` (`documentoE`, `documentoC`, `id_horario`) VALUES
(222, 9999, 222);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maquina`
--

CREATE TABLE `maquina` (
  `id_maquina` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `observacion` varchar(50) DEFAULT NULL,
  `id_proveedor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `maquina`
--

INSERT INTO `maquina` (`id_maquina`, `nombre`, `estado`, `observacion`, `id_proveedor`) VALUES
(1, 'Cinta de Correr', 'Bueno', 'N/A', 2),
(2, 'Bicicleta Vertical', 'Bueno', 'N/A', 2),
(3, 'Elíptica', 'Mal', 'Portapie desgastado', 2),
(4, 'Estepper ', 'Bueno', 'N/A', 2),
(5, 'Remo', 'Bueno', 'N/A', 1),
(6, 'Banco Olímpico', 'Bueno', 'N/A', 1),
(7, 'Prensa de Piernas', 'Bueno', 'N/A', 1),
(8, 'Banco de abdominales y dominadas', 'Bueno', 'N/A', 1),
(9, 'Air Bike', 'Bueno', 'N/A', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metodo de pago`
--

CREATE TABLE `metodo de pago` (
  `id_metodopago` int(11) NOT NULL,
  `descripcion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `metodo de pago`
--

INSERT INTO `metodo de pago` (`id_metodopago`, `descripcion`) VALUES
(1, 'PSE'),
(2, 'Efectivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `musculo`
--

CREATE TABLE `musculo` (
  `ID` int(15) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `musculo`
--

INSERT INTO `musculo` (`ID`, `descripcion`) VALUES
(1, 'Biceps'),
(2, 'Triceps'),
(3, 'Hombro'),
(4, 'Pecho'),
(5, 'Trapecio'),
(6, 'Abdomen'),
(7, 'Espalda'),
(8, 'Glúteos'),
(9, 'Cuadriceps'),
(10, 'Femoral'),
(11, 'Pantorrilla'),
(12, 'Aductores'),
(13, 'Funcional');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `id_pedido` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_compra` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `subtotal` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`id_pedido`, `id_producto`, `id_compra`, `cantidad`, `subtotal`) VALUES
(1234, 1, 8585, 3, 150000),
(1234, 2, 8585, 2, 120000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id_persona` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `saldo` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id_persona`, `nombre`, `apellido`, `email`, `telefono`, `saldo`) VALUES
(19, 'Anderson', 'Orozco', 'anderson07rolon@gmail.com', '3219238493', 123);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plan`
--

CREATE TABLE `plan` (
  `ID` int(11) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `plan`
--

INSERT INTO `plan` (`ID`, `descripcion`) VALUES
(1, 'Plan Nutricional'),
(2, 'Plan Basico'),
(3, 'Plan Intermedio'),
(4, 'Plan Avanzado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `stock` int(4) DEFAULT NULL,
  `precio` int(15) DEFAULT NULL,
  `id_proveedor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `nombre`, `stock`, `precio`, `id_proveedor`) VALUES
(1, 'Acido Arachidonic', 50, 50000, 2),
(2, 'Adrenal Core', 23, 60000, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id_proveedor` int(11) NOT NULL,
  `nombre_empresa` varchar(50) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id_proveedor`, `nombre_empresa`, `telefono`, `direccion`) VALUES
(1, 'MaquinariasPesadas', '3222323232', 'Av 3A #12-22 La Playa'),
(2, 'CardioFit', '3152545654', 'Av. 1E #17-48 Caobos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id`, `descripcion`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_TRAINER'),
(3, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rutina`
--

CREATE TABLE `rutina` (
  `ID` int(15) NOT NULL,
  `id_ejerciciomusculo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `rutina`
--

INSERT INTO `rutina` (`ID`, `id_ejerciciomusculo`) VALUES
(10, 100),
(10, 200);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `rutina del cliente`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `rutina del cliente` (
`descripcion` varchar(100)
,`documentoC` int(15)
,`fullrutina` int(15)
,`musculo` varchar(100)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(128) NOT NULL,
  `id_rol` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura para la vista `rutina del cliente`
--
DROP TABLE IF EXISTS `rutina del cliente`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `rutina del cliente`  AS  select `clirut`.`documentoC` AS `documentoC`,`rut`.`ID` AS `fullrutina`,`mus`.`descripcion` AS `musculo`,`eje`.`descripcion` AS `descripcion` from (((((select `cliente_rutina`.`documentoC` AS `documentoC`,`cliente_rutina`.`id_rutina` AS `id_rutina` from `cliente_rutina`) `clirut` join (select `rutina`.`ID` AS `ID`,`rutina`.`id_ejerciciomusculo` AS `id_ejerciciomusculo` from `rutina`) `rut`) join (select `ejercicio_musculo`.`ID` AS `ID`,`ejercicio_musculo`.`id_ejercicio` AS `id_ejercicio` from `ejercicio_musculo`) `ejemus`) join (select `ejercicio`.`id_ejercicio` AS `id_ejercicio`,`ejercicio`.`id_musculo` AS `id_musculo`,`ejercicio`.`descripcion` AS `descripcion` from `ejercicio`) `eje`) join (select `musculo`.`ID` AS `ID`,`musculo`.`descripcion` AS `descripcion` from `musculo`) `mus`) where ((`clirut`.`id_rutina` = `rut`.`ID`) and (`rut`.`id_ejerciciomusculo` = `ejemus`.`ID`) and (`eje`.`id_musculo` = `mus`.`ID`) and (`ejemus`.`id_ejercicio` = `eje`.`id_ejercicio`)) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`documento`),
  ADD KEY `id_rol` (`id_rol`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`documento`);

--
-- Indices de la tabla `cliente_detalle`
--
ALTER TABLE `cliente_detalle`
  ADD PRIMARY KEY (`documentoC`,`id_detalle`,`fecha_inicio`),
  ADD KEY `id_metodopago` (`id_metodopago`),
  ADD KEY `documentoC` (`documentoC`,`id_detalle`,`id_metodopago`),
  ADD KEY `detalle_fk` (`id_detalle`);

--
-- Indices de la tabla `cliente_rutina`
--
ALTER TABLE `cliente_rutina`
  ADD PRIMARY KEY (`documentoC`,`id_rutina`),
  ADD KEY `cliente_rutina_ibfk_2` (`id_rutina`);

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`id_compra`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_metodopago` (`id_metodopago`);

--
-- Indices de la tabla `control_cliente`
--
ALTER TABLE `control_cliente`
  ADD PRIMARY KEY (`fecha`,`documento`),
  ADD KEY `documento` (`documento`);

--
-- Indices de la tabla `control_entrenador`
--
ALTER TABLE `control_entrenador`
  ADD PRIMARY KEY (`documento`,`fecha`);

--
-- Indices de la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `id_plan` (`id_plan`);

--
-- Indices de la tabla `dias_semana`
--
ALTER TABLE `dias_semana`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `ejercicio`
--
ALTER TABLE `ejercicio`
  ADD PRIMARY KEY (`id_ejercicio`,`id_musculo`) USING BTREE,
  ADD KEY `id_musculo` (`id_musculo`);

--
-- Indices de la tabla `ejercicio_musculo`
--
ALTER TABLE `ejercicio_musculo`
  ADD PRIMARY KEY (`ID`,`id_ejercicio`) USING BTREE,
  ADD KEY `emusculo_ibfk1` (`id_ejercicio`);

--
-- Indices de la tabla `entrenador`
--
ALTER TABLE `entrenador`
  ADD PRIMARY KEY (`documento`),
  ADD KEY `id_rol` (`id_rol`),
  ADD KEY `doucumentoA` (`documentoA`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `id_diasemana` (`id_diasemana`);

--
-- Indices de la tabla `horario_entrenador`
--
ALTER TABLE `horario_entrenador`
  ADD PRIMARY KEY (`documentoE`,`id_horario`),
  ADD KEY `id_horario` (`id_horario`);

--
-- Indices de la tabla `h_entrenadorcliente`
--
ALTER TABLE `h_entrenadorcliente`
  ADD PRIMARY KEY (`documentoE`,`documentoC`,`id_horario`),
  ADD KEY `documentoC` (`documentoC`),
  ADD KEY `id_horario` (`id_horario`);

--
-- Indices de la tabla `maquina`
--
ALTER TABLE `maquina`
  ADD PRIMARY KEY (`id_maquina`),
  ADD KEY `id_proveedor` (`id_proveedor`);

--
-- Indices de la tabla `metodo de pago`
--
ALTER TABLE `metodo de pago`
  ADD PRIMARY KEY (`id_metodopago`);

--
-- Indices de la tabla `musculo`
--
ALTER TABLE `musculo`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id_pedido`,`id_producto`,`id_compra`),
  ADD KEY `id_compra` (`id_compra`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id_persona`);

--
-- Indices de la tabla `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_proveedor` (`id_proveedor`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rutina`
--
ALTER TABLE `rutina`
  ADD PRIMARY KEY (`ID`,`id_ejerciciomusculo`) USING BTREE,
  ADD KEY `id_ejericiciomusculo` (`id_ejerciciomusculo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_rol` (`id_rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `documento` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10005;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id_persona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD CONSTRAINT `admin_rol_fk` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `cliente_detalle`
--
ALTER TABLE `cliente_detalle`
  ADD CONSTRAINT `cliente_detalle_fk` FOREIGN KEY (`documentoC`) REFERENCES `cliente` (`documento`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_fk` FOREIGN KEY (`id_detalle`) REFERENCES `detalle` (`id_detalle`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `metodopago_fk` FOREIGN KEY (`id_metodopago`) REFERENCES `metodo de pago` (`id_metodopago`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cliente_rutina`
--
ALTER TABLE `cliente_rutina`
  ADD CONSTRAINT `cliente_rutina_fk` FOREIGN KEY (`documentoC`) REFERENCES `cliente` (`documento`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cliente_rutina_ibfk_2` FOREIGN KEY (`id_rutina`) REFERENCES `rutina` (`ID`);

--
-- Filtros para la tabla `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `compra_ibfk` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`documento`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `compra_ibfk_2` FOREIGN KEY (`id_metodopago`) REFERENCES `metodo de pago` (`id_metodopago`);

--
-- Filtros para la tabla `control_cliente`
--
ALTER TABLE `control_cliente`
  ADD CONSTRAINT `cliente_fk` FOREIGN KEY (`documento`) REFERENCES `cliente` (`documento`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `control_entrenador`
--
ALTER TABLE `control_entrenador`
  ADD CONSTRAINT `documento_trainer_fk` FOREIGN KEY (`documento`) REFERENCES `entrenador` (`documento`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD CONSTRAINT `detalle_ibfk_1` FOREIGN KEY (`id_plan`) REFERENCES `plan` (`ID`);

--
-- Filtros para la tabla `ejercicio`
--
ALTER TABLE `ejercicio`
  ADD CONSTRAINT `ejercicio_musculo_fk` FOREIGN KEY (`id_musculo`) REFERENCES `musculo` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `ejercicio_musculo`
--
ALTER TABLE `ejercicio_musculo`
  ADD CONSTRAINT `emusculo_ibfk1` FOREIGN KEY (`id_ejercicio`) REFERENCES `ejercicio` (`id_ejercicio`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `entrenador`
--
ALTER TABLE `entrenador`
  ADD CONSTRAINT `documentoA_entrenador_fk` FOREIGN KEY (`documentoA`) REFERENCES `administrador` (`documento`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `entrenador_rol_fk` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `horario`
--
ALTER TABLE `horario`
  ADD CONSTRAINT `horario_ibfk_1` FOREIGN KEY (`id_diasemana`) REFERENCES `dias_semana` (`ID`);

--
-- Filtros para la tabla `horario_entrenador`
--
ALTER TABLE `horario_entrenador`
  ADD CONSTRAINT `horario_entrenador_ibfk_1` FOREIGN KEY (`documentoE`) REFERENCES `entrenador` (`documento`),
  ADD CONSTRAINT `horario_entrenador_ibfk_2` FOREIGN KEY (`id_horario`) REFERENCES `horario` (`ID`);

--
-- Filtros para la tabla `h_entrenadorcliente`
--
ALTER TABLE `h_entrenadorcliente`
  ADD CONSTRAINT `h_entrenadorcliente_ibfk_1` FOREIGN KEY (`documentoE`) REFERENCES `entrenador` (`documento`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `h_entrenadorcliente_ibfk_2` FOREIGN KEY (`documentoC`) REFERENCES `cliente` (`documento`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `h_entrenadorcliente_ibfk_3` FOREIGN KEY (`id_horario`) REFERENCES `horario_entrenador` (`documentoE`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `maquina`
--
ALTER TABLE `maquina`
  ADD CONSTRAINT `maquina_ibfk_1` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`);

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`id_compra`) REFERENCES `compra` (`id_compra`),
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`);

--
-- Filtros para la tabla `rutina`
--
ALTER TABLE `rutina`
  ADD CONSTRAINT `rutina_ejerciciomusculo_ibfk1` FOREIGN KEY (`id_ejerciciomusculo`) REFERENCES `ejercicio_musculo` (`ID`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `rolfk` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
