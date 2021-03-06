-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-06-2020 a las 09:41:35
-- Versión del servidor: 10.4.8-MariaDB
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
-- Base de datos: `sociallove`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chat`
--

CREATE TABLE `chat` (
  `login` varchar(40) COLLATE utf8_spanish2_ci NOT NULL,
  `chateacon` varchar(40) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `chat`
--

INSERT INTO `chat` (`login`, `chateacon`) VALUES
('aaalola', 'alberto'),
('alberto', 'aaalola');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contador`
--

CREATE TABLE `contador` (
  `id` int(11) NOT NULL,
  `contador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `contador`
--

INSERT INTO `contador` (`id`, `contador`) VALUES
(1, 796170),
(1, 796170),
(1, 796170),
(1, 796170),
(1, 796170),
(1, 796170),
(1, 796170),
(1, 796170);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emailhechizos`
--

CREATE TABLE `emailhechizos` (
  `login` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `emails` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `invitaciones` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `emailhechizos`
--

INSERT INTO `emailhechizos` (`login`, `emails`, `invitaciones`) VALUES
('alberto', '', 0),
('albertooo', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotos`
--

CREATE TABLE `fotos` (
  `id` int(11) NOT NULL,
  `foto` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `usuario_login` varchar(50) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `fotos`
--

INSERT INTO `fotos` (`id`, `foto`, `usuario_login`) VALUES
(49, 'chica1.jpg', 'Alba');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `like`
--

CREATE TABLE `like` (
  `usuario_da_like` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `usuario_recibe_like` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `notificado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensaje`
--

CREATE TABLE `mensaje` (
  `id` int(11) NOT NULL,
  `usuario_envia` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `usuario_recibe` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `texto` mediumtext COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `notificado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `id` int(11) NOT NULL,
  `usuario_login` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `pago` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `cod_operacion` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `importe` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `id_rango` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_has_pedido`
--

CREATE TABLE `producto_has_pedido` (
  `producto_id` int(11) NOT NULL,
  `pedido_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rango`
--

CREATE TABLE `rango` (
  `id` int(11) NOT NULL,
  `descripcion` mediumtext COLLATE utf8_spanish2_ci DEFAULT NULL,
  `nombre` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `precio` double NOT NULL,
  `Hechizos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `rango`
--

INSERT INTO `rango` (`id`, `descripcion`, `nombre`, `precio`, `Hechizos`) VALUES
(0, '3 Me gustas de empiece', 'Registrado', 0, 3),
(1, '25 Me gustas de mas\r\n20.78€', 'Vip 6 meses', 52.8, 25),
(2, '15 Me gustas de mas\r\n18.78€', 'Vip 3 meses', 32.4, 15),
(3, '5 Me gustas de mas\r\n12.78€', 'Vip 1 mes', 16.8, 5),
(4, '2 Me gustas de mas\r\n0.98€', 'Pass discovery', 6.9, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id`, `descripcion`) VALUES
(0, 'admin'),
(1, 'usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `login` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `password` varchar(200) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `email` varchar(80) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `nombre` varchar(80) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `apellidos` varchar(80) COLLATE utf8_spanish2_ci NOT NULL,
  `edad` int(2) NOT NULL,
  `hechizos` int(11) NOT NULL,
  `genero` varchar(5) COLLATE utf8_spanish2_ci NOT NULL,
  `busco` varchar(5) COLLATE utf8_spanish2_ci NOT NULL,
  `ubicacion` varchar(200) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `rol_id` int(11) NOT NULL,
  `rango_id` int(11) NOT NULL,
  `foto_perfil` varchar(40) COLLATE utf8_spanish2_ci NOT NULL,
  `validacion` varchar(40) COLLATE utf8_spanish2_ci NOT NULL,
  `activada` int(40) NOT NULL,
  `sobreti` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `gustos` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `loquebuscas` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `aficiones` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `cambiopass` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`login`, `password`, `email`, `nombre`, `apellidos`, `edad`, `hechizos`, `genero`, `busco`, `ubicacion`, `rol_id`, `rango_id`, `foto_perfil`, `validacion`, `activada`, `sobreti`, `gustos`, `loquebuscas`, `aficiones`, `cambiopass`) VALUES
('aaalola', '$2y$10$E3x0/u5fbGfmAylnoMSqFe1mPR95EVEwIuiRbTaxZoxKjTSqBTIWm', 'aa@aa.es', 'aaalola', 'de', 34, 3, 'chico', 'chico', 'madrid', 1, 0, 'lolaaaaa.jpg', '112967968082', 0, 'ddeded', 'cine.', '', '', 0),
('Aithor', '$2y$10$9dP6aYlUiknkfjAgxzkvz.pFKzDPvNzYiuWaAyuArdKdBBMyrQUVq', 'Thor9977@yahoo.com', 'Aitor', '', 27, 3, 'chico', 'chica', 'Alcobendas', 1, 0, 'chico15.jpg', '3084194680', 0, '', '', '', '', 0),
('Alba', '$2y$10$9dP6aYlUiknkfjAgxzkvz.pFKzDPvNzYiuWaAyuArdKdBBMyrQUVq', 'alba@gmail.com', 'Alba', '', 24, 3, 'chica', 'chico', 'Aldaia', 1, 0, 'chica1.jpg', '985113005', 0, '', '', '', '', 0),
('alberto', '$2y$10$w0lywYlysTuJtTL2S8c5POS0v6emVNNo2cbON770.RCbXcRez0iSq', 'albertus610@hotmail.com', 'alberto', 'cd', 35, 3, 'chico', 'chica', 'madrid', 1, 0, 'nofoto.png', '79554860100', 0, 'nadna', 'cine.', 'dfdf', 'deportes.', 0),
('AlbertoDiaz', '$2y$10$7KIw1GQm8zsM1mtDkB4/l.YIngFB0G.KaGFbOQIBfooN2eVOYHHM2', 'djkrash13@gmail.com', 'Alberto', 'Diaz', 36, 3, 'chico', 'chica', '', 1, 0, 'AlbertoDiaz.jpg', '44515370648', 1, '', '', '', '', 1),
('albertooo', '$2y$10$bzmpR.3lAb.IEpdxmjA/JOiZf2YsK7ULmaeKSqBF3DXVUfH92JNpG', 'albertooo0@hotmail.com', 'albertooo', 'md', 35, 3, 'chico', 'chica', 'madrid', 1, 0, 'f51d08be05919290355ac004cdd5c2d6.png', '95374165740', 0, '', 'cine.', '', 'deportes.', 0),
('AlexTZ', '$2y$10$9dP6aYlUiknkfjAgxzkvz.pFKzDPvNzYiuWaAyuArdKdBBMyrQUVq', 'Alextzr@gmail.com', 'Alejandro', '', 32, 3, 'chico', 'chica', 'Peñiscola', 1, 0, 'chico20.jpg', '3409566598', 0, '', '', '', '', 0),
('AnaHi', '$2y$10$9dP6aYlUiknkfjAgxzkvz.pFKzDPvNzYiuWaAyuArdKdBBMyrQUVq', 'anahi_Madrid@gmail.com', 'Ana', '', 26, 3, 'chica', 'chica', 'Madrid', 1, 0, 'chica16.jpg', '3915749328', 0, '', '', '', '', 0),
('Angeles', '$2y$10$9dP6aYlUiknkfjAgxzkvz.pFKzDPvNzYiuWaAyuArdKdBBMyrQUVq', 'angelesMurciana@gmail.com', 'Angeles', '', 27, 3, 'chica', 'chica', 'Barrio peral', 1, 0, 'chica15.jpg', '1492077350', 0, '', '', '', '', 0),
('Angie', '$2y$10$9dP6aYlUiknkfjAgxzkvz.pFKzDPvNzYiuWaAyuArdKdBBMyrQUVq', 'angelicadel_monte@gmail.com', 'Angelica', '', 23, 3, 'chica', 'chico', 'Vigo', 1, 0, 'chica4.jpg', '3713138880', 0, '', '', '', '', 0),
('Antonio', '$2y$10$9dP6aYlUiknkfjAgxzkvz.pFKzDPvNzYiuWaAyuArdKdBBMyrQUVq', 'toni@gmail.com', 'Antonio', '', 29, 3, 'chico', 'chica', 'Madrid', 1, 0, 'chico1.jpg', '2089462463', 0, '', '', '', '', 0),
('Bren', '$2y$10$9dP6aYlUiknkfjAgxzkvz.pFKzDPvNzYiuWaAyuArdKdBBMyrQUVq', 'brenda@yahoo.com', 'Brenda', '', 26, 3, 'chica', 'chico', 'Los peñascos', 1, 0, 'chica12.jpg', '3307895788', 0, '', '', '', '', 0),
('Canelita', '$2y$10$9dP6aYlUiknkfjAgxzkvz.pFKzDPvNzYiuWaAyuArdKdBBMyrQUVq', 'canelita@gmail.com', 'Carmen', '', 33, 3, 'chica', 'chico', 'Madrid', 1, 0, 'chica18.jpg', '2271091667', 0, '', '', '', '', 0),
('Carla', '$2y$10$9dP6aYlUiknkfjAgxzkvz.pFKzDPvNzYiuWaAyuArdKdBBMyrQUVq', 'carlita@gmail.com', 'Carla', '', 22, 3, 'chica', 'chico', 'mollet del valles', 1, 0, 'chica7.jpg', '1431771081', 0, '', '', '', '', 0),
('Carles', '$2y$10$9dP6aYlUiknkfjAgxzkvz.pFKzDPvNzYiuWaAyuArdKdBBMyrQUVq', 'carlesBartolo@gmail.com', 'Carles', '', 20, 3, 'chico', 'chica', 'Sabadell', 1, 0, 'chico7.jpg', '345580517', 0, '', '', '', '', 0),
('Cat', '$2y$10$9dP6aYlUiknkfjAgxzkvz.pFKzDPvNzYiuWaAyuArdKdBBMyrQUVq', 'catalina@gmail.com', 'Catalina', '', 19, 3, 'chica', 'chica', 'Burgos', 1, 0, 'chica14.jpg', '1432589456', 0, '', '', '', '', 0),
('Celia', '$2y$10$9dP6aYlUiknkfjAgxzkvz.pFKzDPvNzYiuWaAyuArdKdBBMyrQUVq', 'celia@terra.es', 'Celia', '', 19, 3, 'chica', 'chico', 'Salamanca', 1, 0, 'chica13.jpg', '2126205843', 0, '', '', '', '', 0),
('Cristina', '$2y$10$9dP6aYlUiknkfjAgxzkvz.pFKzDPvNzYiuWaAyuArdKdBBMyrQUVq', 'CristinitaGetafe@gmail.com', 'Cristina', '', 31, 3, 'chica', 'chico', 'Madrid', 1, 0, 'chica10.jpg', '2333260961', 0, '', '', '', '', 0),
('Chechu', '$2y$10$9dP6aYlUiknkfjAgxzkvz.pFKzDPvNzYiuWaAyuArdKdBBMyrQUVq', 'jesus@hotmail.com', 'Jesús', '', 25, 3, 'chico', 'chico', 'Montserrat', 1, 0, 'chico8.jpg', '1287687391', 0, '', '', '', '', 0),
('Eva', '$2y$10$9dP6aYlUiknkfjAgxzkvz.pFKzDPvNzYiuWaAyuArdKdBBMyrQUVq', 'evamaria@gmail.com', 'Eva', '', 21, 3, 'chica', 'chico', 'Sevilla', 1, 0, 'chica23.jpg', '3438654182', 0, '', '', '', '', 0),
('FelipeLuis', '$2y$10$9dP6aYlUiknkfjAgxzkvz.pFKzDPvNzYiuWaAyuArdKdBBMyrQUVq', 'FelipeLuis@yahoo.com', 'Felipe', '', 34, 3, 'chico', 'chica', 'Sevilla', 1, 0, 'chico19.jpg', '1330208852', 0, '', '', '', '', 0),
('Fernandito', '$2y$10$9dP6aYlUiknkfjAgxzkvz.pFKzDPvNzYiuWaAyuArdKdBBMyrQUVq', 'ferElMorenohDeFuenla@gmail.com', 'Fernando', '', 24, 3, 'chico', 'chica', 'Fuenlabrada', 1, 0, 'chico12.jpg', '335081829', 0, '', '', '', '', 0),
('Hector69', '$2y$10$9dP6aYlUiknkfjAgxzkvz.pFKzDPvNzYiuWaAyuArdKdBBMyrQUVq', 'HectorGarri@hotmail.com', 'Hector', '', 21, 3, 'chico', 'chica', 'Segovia', 1, 0, 'chico16.jpg', '1684782702', 0, '', '', '', '', 0),
('Iker', '$2y$10$9dP6aYlUiknkfjAgxzkvz.pFKzDPvNzYiuWaAyuArdKdBBMyrQUVq', 'IkerCasillas@gmail.com', 'Iker', '', 23, 3, 'chico', 'chica', 'Móstoles', 1, 0, 'chico13.jpg', '3418668138', 0, '', '', '', '', 0),
('Isa', '$2y$10$9dP6aYlUiknkfjAgxzkvz.pFKzDPvNzYiuWaAyuArdKdBBMyrQUVq', 'isabella@gmail.com', 'isabel', '', 23, 3, 'chica', 'chico', 'Huesca', 1, 0, 'chica5.jpg', '38992694', 0, '', '', '', '', 0),
('Jessi', '$2y$10$9dP6aYlUiknkfjAgxzkvz.pFKzDPvNzYiuWaAyuArdKdBBMyrQUVq', 'jesikaMartinez@gmail.com', 'Jesica', '', 29, 3, 'chica', 'chico', 'Toledo', 1, 0, 'chica3.jpg', '1938959170', 0, '', '', '', '', 0),
('Jose', '$2y$10$9dP6aYlUiknkfjAgxzkvz.pFKzDPvNzYiuWaAyuArdKdBBMyrQUVq', 'josito@hotmail.com', 'Jose Manuel', '', 25, 3, 'chico', 'chica', 'Barcelona', 1, 0, 'chico2.jpg', '1577817883', 0, '', '', '', '', 0),
('Jose Antonio', '$2y$10$9dP6aYlUiknkfjAgxzkvz.pFKzDPvNzYiuWaAyuArdKdBBMyrQUVq', 'JoseAntonioGarcia@hotmail.com', 'Jose.A', '', 19, 3, 'chico', 'chica', 'Madrid', 1, 0, 'chico6.jpg', '2072212018', 0, '', '', '', '', 0),
('Juanito', '$2y$10$9dP6aYlUiknkfjAgxzkvz.pFKzDPvNzYiuWaAyuArdKdBBMyrQUVq', 'JuanTorres@gmail.com', 'Juan', '', 32, 3, 'chico', 'chica', 'Getafe', 1, 0, 'chico5.jpg', '1627606556', 0, '', '', '', '', 0),
('La Patri', '$2y$10$9dP6aYlUiknkfjAgxzkvz.pFKzDPvNzYiuWaAyuArdKdBBMyrQUVq', 'LaPatriLoRompe@gmail.com', 'Patri', '', 28, 3, 'chica', 'chico', 'Valencia', 1, 0, 'chica19.jpg', '1921396837', 0, '', '', '', '', 0),
('Lorena', '$2y$10$9dP6aYlUiknkfjAgxzkvz.pFKzDPvNzYiuWaAyuArdKdBBMyrQUVq', 'lore@gmail.com', 'Lorena', '', 28, 3, 'chica', 'chico', 'Teruel', 1, 0, 'chica6.jpg', '724164630', 0, '', '', '', '', 0),
('Lucas Lera', '$2y$10$9dP6aYlUiknkfjAgxzkvz.pFKzDPvNzYiuWaAyuArdKdBBMyrQUVq', 'lucasLera@musica.com', 'Lucas', '', 18, 3, 'chico', 'chico', 'Pinto', 1, 0, 'chico17.jpg', '1856632754', 0, '', '', '', '', 0),
('Maddie', '$2y$10$9dP6aYlUiknkfjAgxzkvz.pFKzDPvNzYiuWaAyuArdKdBBMyrQUVq', 'maddi98@gmail.com', 'Maddie', '', 21, 3, 'chica', 'chica', 'Valladolid', 1, 0, 'chica21.jpg', '3110669994', 0, '', '', '', '', 0),
('Manu', '$2y$10$9dP6aYlUiknkfjAgxzkvz.pFKzDPvNzYiuWaAyuArdKdBBMyrQUVq', 'manolin@yahoo.com', 'Manuel', '', 28, 3, 'chico', 'chica', 'Valencia', 1, 0, 'chico3.jpg', '1983451821', 0, '', '', '', '', 0),
('Marina Santos', '$2y$10$9dP6aYlUiknkfjAgxzkvz.pFKzDPvNzYiuWaAyuArdKdBBMyrQUVq', 'marinaSantoValle@gmail.com', 'Marina Santos', '', 30, 3, 'chica', 'chico', 'Sangarren', 1, 0, 'chica9.jpg', '585249237', 0, '', '', '', '', 0),
('Martona', '$2y$10$9dP6aYlUiknkfjAgxzkvz.pFKzDPvNzYiuWaAyuArdKdBBMyrQUVq', 'martitaGuapa@gmail.com', 'Marta', '', 18, 3, 'chica', 'chico', 'Pineda de mar', 1, 0, 'chica8.jpg', '975890833', 0, '', '', '', '', 0),
('Mel', '$2y$10$9dP6aYlUiknkfjAgxzkvz.pFKzDPvNzYiuWaAyuArdKdBBMyrQUVq', 'melani@gmail.com', 'Melani', '', 26, 3, 'chica', 'chico', 'Barcelona', 1, 0, 'chica2.jpg', '3123706569', 0, '', '', '', '', 0),
('Melisa', '$2y$10$9dP6aYlUiknkfjAgxzkvz.pFKzDPvNzYiuWaAyuArdKdBBMyrQUVq', 'melisaMelisa@hotmail.com', 'Melisa', '', 25, 3, 'chica', 'chico', 'Cantabria', 1, 0, 'chica22.jpg', '690860460', 0, '', '', '', '', 0),
('Miguel Angel', '$2y$10$9dP6aYlUiknkfjAgxzkvz.pFKzDPvNzYiuWaAyuArdKdBBMyrQUVq', 'miguelito@hotmail.com', 'Miguel Angel', '', 28, 3, 'chico', 'chica', 'Valencia', 1, 0, 'chico10.jpg', '2083182708', 0, '', '', '', '', 0),
('Pako', '$2y$10$9dP6aYlUiknkfjAgxzkvz.pFKzDPvNzYiuWaAyuArdKdBBMyrQUVq', 'franciscofdez@gmail.com', 'Francisco', '', 26, 3, 'chico', 'chica', 'Alcalá de Henares', 1, 0, 'chico4.jpg', '343332271', 0, '', '', '', '', 0),
('Pedritoh', '$2y$10$9dP6aYlUiknkfjAgxzkvz.pFKzDPvNzYiuWaAyuArdKdBBMyrQUVq', 'PedritohReshulon@gmail.com', 'Pedro', '', 22, 3, 'chico', 'chico', 'Castellón', 1, 0, 'chico11.jpg', '3467113344', 0, '', '', '', '', 0),
('Rafita', '$2y$10$9dP6aYlUiknkfjAgxzkvz.pFKzDPvNzYiuWaAyuArdKdBBMyrQUVq', 'rafi@gmail.com', 'Rafa', '', 30, 3, 'chico', 'chica', 'Leganés', 1, 0, 'chico9.jpg', '305570020', 0, '', '', '', '', 0),
('Rodri', '$2y$10$9dP6aYlUiknkfjAgxzkvz.pFKzDPvNzYiuWaAyuArdKdBBMyrQUVq', 'rodenas@gmail.com', 'Rodrigo', '', 22, 3, 'chico', 'chica', 'Madrid', 1, 0, 'chico24.jpg', '3126510182', 0, '', '', '', '', 0),
('Samu BPAC', '$2y$10$9dP6aYlUiknkfjAgxzkvz.pFKzDPvNzYiuWaAyuArdKdBBMyrQUVq', 'SamuBripac@hotmail.com', 'Samuel', '', 29, 3, 'chico', 'chica', 'S.S de los Reyes', 1, 0, 'chico14.jpg', '2715840963', 0, '', '', '', '', 0),
('Sandritah', '$2y$10$9dP6aYlUiknkfjAgxzkvz.pFKzDPvNzYiuWaAyuArdKdBBMyrQUVq', 'sandritaReshulona@hotmail.com', 'Sandra', '', 31, 3, 'chica', 'chica', 'Salamanca', 1, 0, 'chica17.jpg', '199674381', 0, '', '', '', '', 0),
('Valeria', '$2y$10$9dP6aYlUiknkfjAgxzkvz.pFKzDPvNzYiuWaAyuArdKdBBMyrQUVq', 'valeria@hotmail.com', 'Valeria', '', 19, 3, 'chica', 'chica', 'Madrid', 1, 0, 'chica11.jpg', '850849132', 0, '', '', '', '', 0),
('Vanesa', '$2y$10$9dP6aYlUiknkfjAgxzkvz.pFKzDPvNzYiuWaAyuArdKdBBMyrQUVq', 'vanesa@yahoo.es', 'Vanesa', '', 35, 3, 'chica', 'chico', 'La rioja', 1, 0, 'chica20.jpg.webp', '3655222630', 0, '', '', '', '', 0),
('Veronica', '$2y$10$9dP6aYlUiknkfjAgxzkvz.pFKzDPvNzYiuWaAyuArdKdBBMyrQUVq', 'VeronicaGarcia@hotmail.com', 'Veronica', '', 29, 3, 'chica', 'chico', 'Malaga', 1, 0, 'chica24.jpg', '3723565867', 0, '', '', '', '', 0),
('Vity', '$2y$10$9dP6aYlUiknkfjAgxzkvz.pFKzDPvNzYiuWaAyuArdKdBBMyrQUVq', 'Vi99_Love@hotmail.com', 'Victor', '', 31, 3, 'chico', 'chica', 'Toledo', 1, 0, 'chico18.jpg', '3652161559', 0, '', '', '', '', 0),
('Xavi', '$2y$10$9dP6aYlUiknkfjAgxzkvz.pFKzDPvNzYiuWaAyuArdKdBBMyrQUVq', 'xavi77@hotmail.com', 'Xavier', '', 30, 3, 'chico', 'chico', 'Igualada', 1, 0, 'chico22.jpg', '3090110307', 0, '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitas`
--

CREATE TABLE `visitas` (
  `usuario_visitado` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `usuario_visitante` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `notificado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `emailhechizos`
--
ALTER TABLE `emailhechizos`
  ADD UNIQUE KEY `login` (`login`),
  ADD KEY `login_2` (`login`);

--
-- Indices de la tabla `fotos`
--
ALTER TABLE `fotos`
  ADD PRIMARY KEY (`id`,`usuario_login`),
  ADD KEY `fk_fotos_usuario1_idx` (`usuario_login`);

--
-- Indices de la tabla `like`
--
ALTER TABLE `like`
  ADD PRIMARY KEY (`usuario_da_like`,`usuario_recibe_like`),
  ADD KEY `fk_usuario_has_usuario_usuario2_idx` (`usuario_recibe_like`),
  ADD KEY `fk_usuario_has_usuario_usuario1_idx` (`usuario_da_like`);

--
-- Indices de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  ADD PRIMARY KEY (`id`,`usuario_envia`,`usuario_recibe`),
  ADD KEY `fk_usuario_has_usuario_usuario4_idx` (`usuario_recibe`),
  ADD KEY `fk_usuario_has_usuario_usuario3_idx` (`usuario_envia`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_login_idx` (`usuario_login`),
  ADD KEY `id_rango_idx` (`id_rango`);

--
-- Indices de la tabla `producto_has_pedido`
--
ALTER TABLE `producto_has_pedido`
  ADD PRIMARY KEY (`producto_id`,`pedido_id`),
  ADD KEY `fk_Producto_has_Pedido_Pedido1_idx` (`pedido_id`),
  ADD KEY `fk_Producto_has_Pedido_Producto_idx` (`producto_id`);

--
-- Indices de la tabla `rango`
--
ALTER TABLE `rango`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`login`,`rol_id`,`rango_id`),
  ADD KEY `fk_usuario_rol_idx` (`rol_id`),
  ADD KEY `fk_usuario_rango1_idx` (`rango_id`);

--
-- Indices de la tabla `visitas`
--
ALTER TABLE `visitas`
  ADD PRIMARY KEY (`usuario_visitado`,`usuario_visitante`),
  ADD KEY `fk_usuario_has_usuario_usuario6_idx` (`usuario_visitante`),
  ADD KEY `fk_usuario_has_usuario_usuario5_idx` (`usuario_visitado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `fotos`
--
ALTER TABLE `fotos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `emailhechizos`
--
ALTER TABLE `emailhechizos`
  ADD CONSTRAINT `usuario-emailhechizos` FOREIGN KEY (`login`) REFERENCES `usuario` (`login`);

--
-- Filtros para la tabla `fotos`
--
ALTER TABLE `fotos`
  ADD CONSTRAINT `fk_fotos_usuario1` FOREIGN KEY (`usuario_login`) REFERENCES `usuario` (`login`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `like`
--
ALTER TABLE `like`
  ADD CONSTRAINT `fk_usuario_has_usuario_usuario1` FOREIGN KEY (`usuario_da_like`) REFERENCES `usuario` (`login`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuario_has_usuario_usuario2` FOREIGN KEY (`usuario_recibe_like`) REFERENCES `usuario` (`login`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `mensaje`
--
ALTER TABLE `mensaje`
  ADD CONSTRAINT `fk_usuario_has_usuario_usuario3` FOREIGN KEY (`usuario_envia`) REFERENCES `usuario` (`login`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuario_has_usuario_usuario4` FOREIGN KEY (`usuario_recibe`) REFERENCES `usuario` (`login`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `id_rango` FOREIGN KEY (`id_rango`) REFERENCES `rango` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `usuario_login` FOREIGN KEY (`usuario_login`) REFERENCES `usuario` (`login`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `producto_has_pedido`
--
ALTER TABLE `producto_has_pedido`
  ADD CONSTRAINT `fk_Producto_has_Pedido_Pedido1` FOREIGN KEY (`pedido_id`) REFERENCES `pedido` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Producto_has_Pedido_Producto` FOREIGN KEY (`producto_id`) REFERENCES `rango` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_usuario_rango1` FOREIGN KEY (`rango_id`) REFERENCES `rango` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuario_rol` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `visitas`
--
ALTER TABLE `visitas`
  ADD CONSTRAINT `fk_usuario_has_usuario_usuario5` FOREIGN KEY (`usuario_visitado`) REFERENCES `usuario` (`login`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuario_has_usuario_usuario6` FOREIGN KEY (`usuario_visitante`) REFERENCES `usuario` (`login`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
