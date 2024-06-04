-- fragmentacion de datos en detalle_pedido_1_h
INSERT INTO `detalle_pedido_1_h` (`codigo_pedido`, `codigo_producto`, `cantidad`, `precio_unidad`, `numero_linea`)
SELECT `codigo_pedido`, `codigo_producto`, `cantidad`, `precio_unidad`, `numero_linea`
FROM `detalle_pedido`
WHERE `codigo_pedido` <= 3;

-- fragmentacion de datos en detalle_pedido_2_h
INSERT INTO `detalle_pedido_2_h` (`codigo_pedido`, `codigo_producto`, `cantidad`, `precio_unidad`, `numero_linea`)
SELECT `codigo_pedido`, `codigo_producto`, `cantidad`, `precio_unidad`, `numero_linea`
FROM `detalle_pedido`
WHERE `codigo_pedido` > 3;

