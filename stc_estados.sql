-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-04-2021 a las 21:21:53
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `form_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stc_estados`
--

CREATE TABLE `stc_estados` (
  `id_estado` int(11) NOT NULL,
  `estado` varchar(250) NOT NULL,
  `capital` varchar(50) NOT NULL COMMENT 'Capital del Estado',
  `iso_3166` varchar(4) NOT NULL,
  `estadis1` int(11) NOT NULL,
  `latitud` double NOT NULL,
  `longitud` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `stc_estados`
--

INSERT INTO `stc_estados` (`id_estado`, `estado`, `capital`, `iso_3166`, `estadis1`, `latitud`, `longitud`) VALUES
(1, 'Amazonas', 'Puerto Ayacucho', 'VE-X', 1, 4.573103, -66.03104),
(2, 'Anzoátegui', 'Barcelona', 'VE-B', 0, 10.13625, -64.68618),
(3, 'Apure', 'San Fernando de Apure', 'VE-C', 0, 7.88782, -67.47236),
(4, 'Aragua', 'Maracay', 'VE-D', 5, 10.23535, -67.59113),
(5, 'Barinas', 'Barinas', 'VE-E', 0, 8.62261, -70.20749),
(6, 'Bolívar', 'Ciudad Bolívar', 'VE-F', 0, 8.12923, -63.54086),
(7, 'Carabobo', 'Valencia', 'VE-G', 0, 10.459239, -68.024884),
(8, 'Cojedes', 'San Carlos', 'VE-H', 0, 9.66124, -68.58268),
(9, 'Delta Amacuro', 'Tucupita', 'VE-Y', 6, 9.553314, -61.476094),
(10, 'Falcón', 'Coro', 'VE-I', 0, 11.780758, -69.947945),
(11, 'Guárico', 'San Juan de los Morros', 'VE-J', 0, 9.91152, -67.35381),
(12, 'Lara', 'Barquisimeto', 'VE-K', 0, 10.6398, -69.879593),
(13, 'Mérida', 'Mérida', 'VE-L', 0, 8.903446, -71.14111),
(14, 'Miranda', 'Los Teques', 'VE-M', 0, 10.633092, -66.245908),
(15, 'Monagas', 'Maturín', 'VE-N', 0, 9.74569, -63.18323),
(16, 'Nueva Esparta', 'La Asunción', 'VE-O', 0, 11.168445, -63.883218),
(17, 'Portuguesa', 'Guanare', 'VE-P', 0, 9.366408, -69.071912),
(18, 'Sucre', 'Cumaná', 'VE-R', 0, 10.710789, -63.091693),
(19, 'Táchira', 'San Cristóbal', 'VE-S', 0, 8.215038, -72.093223),
(20, 'Trujillo', 'Trujillo', 'VE-T', 0, 9.836934, -70.534628),
(21, 'Vargas', 'La Guaira', 'VE-W', 0, 10.60156, -66.93293),
(22, 'Yaracuy', 'San Felipe', 'VE-U', 0, 10.622941, -68.733662),
(23, 'Zulia', 'Maracaibo', 'VE-V', 0, 10.092805, -72.413681),
(24, 'Distrito Capital', 'Caracas', 'VE-A', 0, 10.48801, -66.87919);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `stc_estados`
--
ALTER TABLE `stc_estados`
  ADD PRIMARY KEY (`id_estado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `stc_estados`
--
ALTER TABLE `stc_estados`
  MODIFY `id_estado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
