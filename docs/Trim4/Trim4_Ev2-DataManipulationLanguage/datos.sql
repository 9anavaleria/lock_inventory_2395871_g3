INSERT INTO `adquisicion` (`idadquisicion`, `fecha_de_adqui`, `total_precio_adqui`, `id_proveedor`) VALUES
('com-1', '2022-08-09', '162700', 2),
('com-2', '2022-08-18', '516000', 1),
('com-3', '2022-09-01', '709000', 3),
('com-4', '2022-09-15', '168000', 3),
('com-5', '2022-09-17', '13000', 2),
('com-6', '2022-09-26', '10900000', 1);

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

INSERT INTO `categoria` (`idcategoria`, `nombre`) VALUES
(1, 'Celulares'),
(2, 'Tablets'),
(3, 'Accesorios celular'),
(4, 'Accesorios computador'),
(5, 'Audifonos');

INSERT INTO `cliente` (`idcliente`, `idusuario`) VALUES
('1', 'clie-1'),
('2', 'clie-2'),
('3', 'clie-3'),
('4', 'clie-4'),
('5', 'clie-5');


INSERT INTO `factura` (`idfactura`, `fecha`, `cliente`, `total`) VALUES
(1, '2022-08-30', '1', '203000'),
(2, '2022-09-01', '2', '200000'),
(3, '2022-09-12', '1', '421000'),
(4, '2022-09-15', '3', '5700000'),
(5, '2022-09-15', '4', '2780000'),
(6, '2022-09-24', '5', '2760000'),
(7, '2022-09-30', '3', '130000');

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

INSERT INTO `proveedor` (`idproveedor`, `nombre`) VALUES
(1, 'telefonos y accesorios S.A.S.'),
(2, 'CIT Electronics'),
(3, 'Celulares Importados S.A.S');

INSERT INTO `rol` (`idrol`, `nombre`) VALUES
(1, 'admin'),
(2, 'cliente'),
(3, 'vendedor');


INSERT INTO `usuario` (`idusuario`, `nombre`, `correo`, `celular`, `direccion`, `rol`, `contraseña`) VALUES
('clie-1', 'juan', 'juan@gmail.com', '3219087181', 'cra10#8-16', 2, ''),
('clie-2', 'diego', 'diego@gmail.com', '3113449496', 'calle12#7-18', 2, ''),
('clie-3', 'steven', 'steven@gmail.com', '3218175432', 'cra 48 #7-98', 2, ''),
('clie-4', 'johan', 'johan@gmail.com', '3229527425', 'calle 85 # 34 - 43', 2, ''),
('clie-5', 'julian', 'julian@gmail.com', '3116548465', 'av 116 # 45 - 30', 2, ''),
('vend-1', 'julian herreño', 'julian12@hotmail.com', '3185694125', 'cra 51b #43 - 21', 3, '123456789'),
('vend-2', 'camila avila', 'cami1523avila@hotmail.com', '3192395485', 'calle 26 # 21- 12', 3, 'avila48');
