-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-09-2022 a las 07:37:31
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `lock_inventory`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adquisicion`
--

CREATE TABLE `adquisicion` (
  `idadquisicion` varchar(45) NOT NULL,
  `fecha_de_adqui` date NOT NULL,
  `total_precio_adqui` decimal(20,0) NOT NULL,
  `id_proveedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `adquisicion`
--

INSERT INTO `adquisicion` (`idadquisicion`, `fecha_de_adqui`, `total_precio_adqui`, `id_proveedor`) VALUES
('com-1', '2022-08-09', '162700', 2),
('com-2', '2022-08-18', '516000', 1),
('com-3', '2022-09-01', '709000', 3),
('com-4', '2022-09-15', '168000', 3),
('com-5', '2022-09-17', '13000', 2),
('com-6', '2022-09-26', '10900000', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adquisicion_producto`
--

CREATE TABLE `adquisicion_producto` (
  `idadquisicion` varchar(45) NOT NULL,
  `id_productos` varchar(45) NOT NULL,
  `precio_producto_adqui` decimal(20,0) NOT NULL,
  `cant_productos_adqui` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `adquisicion_producto`
--

INSERT INTO `adquisicion_producto` (`idadquisicion`, `id_productos`, `precio_producto_adqui`, `cant_productos_adqui`) VALUES
('com-1', '1', '65000', 5),
('com-1', '2', '70000', 15),
('com-2', '3', '60000', 5),
('com-3', '4', '95000', 3),
('com-4', '5', '28000', 6),
('com-3', '6', '16000', 9),
('com-3', '7', '20000', 14),
('com-5', '8', '13000', 1),
('com-1', '9', '42000', 6),
('com-2', '10', '27000', 8),
('com-6', '11', '2600000', 2),
('com-6', '12', '5700000', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `idcategoria` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `nombre`) VALUES
(1, 'Celulares'),
(2, 'Tablets'),
(3, 'Accesorios celular'),
(4, 'Accesorios computador'),
(5, 'Audifonos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idcliente` varchar(45) NOT NULL,
  `idusuario` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idcliente`, `idusuario`) VALUES
('1', 'clie-1'),
('2', 'clie-2'),
('3', 'clie-3'),
('4', 'clie-4'),
('5', 'clie-5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `idfactura` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `cliente` varchar(45) NOT NULL,
  `total` decimal(20,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`idfactura`, `fecha`, `cliente`, `total`) VALUES
(1, '2022-08-30', '1', '203000'),
(2, '2022-09-01', '2', '200000'),
(3, '2022-09-12', '1', '421000'),
(4, '2022-09-15', '3', '5700000'),
(5, '2022-09-15', '4', '2780000'),
(6, '2022-09-24', '5', '2760000'),
(7, '2022-09-30', '3', '130000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura_producto`
--

CREATE TABLE `factura_producto` (
  `idfactura_producto` int(11) NOT NULL,
  `cantidad_producto` int(11) NOT NULL,
  `idproducto` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `factura_producto`
--

INSERT INTO `factura_producto` (`idfactura_producto`, `cantidad_producto`, `idproducto`) VALUES
(1, 2, '1'),
(1, 1, '5'),
(1, 2, '6'),
(1, 1, '8'),
(2, 2, '2'),
(2, 1, '3'),
(3, 1, '1'),
(3, 2, '4'),
(3, 2, '7'),
(3, 3, '9'),
(4, 1, '12'),
(5, 3, '9'),
(5, 2, '10'),
(5, 1, '11'),
(6, 1, '3'),
(6, 5, '7'),
(6, 1, '11'),
(7, 2, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idproducto` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `marca` varchar(45) NOT NULL,
  `categoria` int(11) NOT NULL,
  `precio` decimal(20,0) NOT NULL,
  `stock_producto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idproducto`, `nombre`, `marca`, `categoria`, `precio`, `stock_producto`) VALUES
('1', 'Diadema game G900', 'asus', 5, '65000', 5),
('10', 'Bateria Samsung J2 core', 'Samsung', 3, '27000', 8),
('11', 'Tablet SAMSUNG 12.4 Pulgadas S7 Fe Wifi color', 'Samsung', 2, '2600000', 2),
('12', 'iphone 14 pro max Pulgadas S7 Fe Wifi color N', 'iPhone', 3, '5700000', 8),
('2', 'Diadema game G790', 'asus', 5, '70000', 15),
('3', 'Audifonos original', ' Apple 3.5', 5, '60000', 5),
('4', 'Cargador LNIO', 'Samsung', 3, '95000', 3),
('5', 'Silicone Case Samsung Flip 4', 'Samsung', 3, '28000', 6),
('6', 'Cable Type C', 'Sony', 3, '16000', 9),
('7', 'cable type C silicone plane', 'Nillkin H+Pro', 3, '20000', 14),
('8', 'glass turtle ', 'Iphone', 3, '13000', 1),
('9', 'Mouse ergonomico', 'Dell', 4, '42000', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `idproveedor` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`idproveedor`, `nombre`) VALUES
(1, 'telefonos y accesorios S.A.S.'),
(2, 'CIT Electronics'),
(3, 'Celulares Importados S.A.S');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `idrol` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`idrol`, `nombre`) VALUES
(1, 'admin'),
(2, 'cliente'),
(3, 'vendedor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `celular` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `rol` int(11) NOT NULL,
  `contraseña` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `nombre`, `correo`, `celular`, `direccion`, `rol`, `contraseña`) VALUES
('clie-1', 'juan', 'juan@gmail.com', '3219087181', 'cra10#8-16', 2, ''),
('clie-2', 'diego', 'diego@gmail.com', '3113449496', 'calle12#7-18', 2, ''),
('clie-3', 'steven', 'steven@gmail.com', '3218175432', 'cra 48 #7-98', 2, ''),
('clie-4', 'johan', 'johan@gmail.com', '3229527425', 'calle 85 # 34 - 43', 2, ''),
('clie-5', 'julian', 'julian@gmail.com', '3116548465', 'av 116 # 45 - 30', 2, ''),
('vend-1', 'julian herreño', 'julian12@hotmail.com', '3185694125', 'cra 51b #43 - 21', 3, '123456789'),
('vend-2', 'camila avila', 'cami1523avila@hotmail.com', '3192395485', 'calle 26 # 21- 12', 3, 'avila48');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `adquisicion`
--
ALTER TABLE `adquisicion`
  ADD PRIMARY KEY (`idadquisicion`),
  ADD KEY `ind_adquisicion_proveedor` (`id_proveedor`);

--
-- Indices de la tabla `adquisicion_producto`
--
ALTER TABLE `adquisicion_producto`
  ADD KEY `ind_adquisicionproducto_producto` (`id_productos`),
  ADD KEY `ind_adquisicionproducto_adquisicion` (`idadquisicion`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idcategoria`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idcliente`),
  ADD KEY `ind_cliente_usuario` (`idusuario`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`idfactura`),
  ADD KEY `ind_factura_cliente` (`cliente`);

--
-- Indices de la tabla `factura_producto`
--
ALTER TABLE `factura_producto`
  ADD KEY `ind_facturaproducto_factura` (`idfactura_producto`),
  ADD KEY `ind_facturaproducto_producto` (`idproducto`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idproducto`),
  ADD KEY `ind_producto_categoria` (`categoria`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`idproveedor`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`idrol`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`),
  ADD KEY `idrol_rol` (`rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `idproveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `idrol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `adquisicion`
--
ALTER TABLE `adquisicion`
  ADD CONSTRAINT `fk_proveedoe_adquisicion` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`idproveedor`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `adquisicion_producto`
--
ALTER TABLE `adquisicion_producto`
  ADD CONSTRAINT `fk_adquisicionprod_adquisicion` FOREIGN KEY (`idadquisicion`) REFERENCES `adquisicion` (`idadquisicion`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_adquisicionprod_producto` FOREIGN KEY (`id_productos`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `fk_cliente_usuario` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `fk_cliente_factura` FOREIGN KEY (`cliente`) REFERENCES `cliente` (`idcliente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `factura_producto`
--
ALTER TABLE `factura_producto`
  ADD CONSTRAINT `fk_factura_facturaproducto` FOREIGN KEY (`idfactura_producto`) REFERENCES `factura` (`idfactura`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_producto_facturaproducto` FOREIGN KEY (`idproducto`) REFERENCES `producto` (`idproducto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `fk_producto_categoria` FOREIGN KEY (`categoria`) REFERENCES `categoria` (`idcategoria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `rol_idrol` FOREIGN KEY (`rol`) REFERENCES `rol` (`idrol`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
