-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-06-2024 a las 15:41:06
-- Versión del servidor: 8.2.0
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `jardineria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido`
--

CREATE TABLE `detalle_pedido` (
  `codigo_pedido` int NOT NULL,
  `codigo_producto` varchar(15) NOT NULL,
  `cantidad` int NOT NULL,
  `precio_unidad` decimal(15,2) NOT NULL,
  `numero_linea` smallint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido_1_h`
--

CREATE TABLE `detalle_pedido_1_h` (
  `id_detallepedido` int NOT NULL,
  `codigo_pedido` int NOT NULL,
  `codigo_producto` varchar(15) NOT NULL,
  `cantidad` int NOT NULL,
  `precio_unidad` decimal(15,2) NOT NULL,
  `numero_linea` smallint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido_2_h`
--

CREATE TABLE `detalle_pedido_2_h` (
  `id_detallepedido` int NOT NULL,
  `codigo_pedido` int NOT NULL,
  `codigo_producto` varchar(15) NOT NULL,
  `cantidad` int NOT NULL,
  `precio_unidad` decimal(15,2) NOT NULL,
  `numero_linea` smallint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `codigo_pedido` int NOT NULL,
  `fecha` datetime NOT NULL,
  `cliente_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `codigo_producto` varchar(15) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `precio` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD PRIMARY KEY (`codigo_pedido`,`codigo_producto`),
  ADD KEY `codigo_producto` (`codigo_producto`);

--
-- Indices de la tabla `detalle_pedido_1_h`
--
ALTER TABLE `detalle_pedido_1_h`
  ADD PRIMARY KEY (`codigo_pedido`,`codigo_producto`),
  ADD KEY `codigo_producto` (`codigo_producto`);

--
-- Indices de la tabla `detalle_pedido_2_h`
--
ALTER TABLE `detalle_pedido_2_h`
  ADD PRIMARY KEY (`codigo_pedido`,`codigo_producto`),
  ADD KEY `codigo_producto` (`codigo_producto`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`codigo_pedido`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`codigo_producto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `codigo_pedido` int NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD CONSTRAINT `detalle_pedido_ibfk_1` FOREIGN KEY (`codigo_pedido`) REFERENCES `pedido` (`codigo_pedido`),
  ADD CONSTRAINT `detalle_pedido_ibfk_2` FOREIGN KEY (`codigo_producto`) REFERENCES `producto` (`codigo_producto`);

--
-- Filtros para la tabla `detalle_pedido_1_h`
--
ALTER TABLE `detalle_pedido_1_h`
  ADD CONSTRAINT `detalle_pedido_ibfk_1_1_H` FOREIGN KEY (`codigo_pedido`) REFERENCES `pedido` (`codigo_pedido`),
  ADD CONSTRAINT `detalle_pedido_ibfk_2_1_H` FOREIGN KEY (`codigo_producto`) REFERENCES `producto` (`codigo_producto`);

--
-- Filtros para la tabla `detalle_pedido_2_h`
--
ALTER TABLE `detalle_pedido_2_h`
  ADD CONSTRAINT `detalle_pedido_ibfk_1_2_H` FOREIGN KEY (`codigo_pedido`) REFERENCES `pedido` (`codigo_pedido`),
  ADD CONSTRAINT `detalle_pedido_ibfk_2_2_H` FOREIGN KEY (`codigo_producto`) REFERENCES `producto` (`codigo_producto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
