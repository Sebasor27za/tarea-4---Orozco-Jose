
-- Primero Eliminar las claves existentes ---------
ALTER TABLE `detalle_pedido_2_h` DROP PRIMARY KEY;

-- Opcional: Eliminar la restricción de clave foránea relacionada con `codigo_pedido`
ALTER TABLE `detalle_pedido_2_h` DROP FOREIGN KEY `detalle_pedido_ibfk_1_2_H`;




-- Modificar la columna id_detallepedido para que sea AUTO_INCREMENT y PRIMARY KEY
ALTER TABLE `detalle_pedido_1_h`
    MODIFY `id_detallepedido` int NOT NULL AUTO_INCREMENT PRIMARY KEY;

-- Actualizo los valores de id_detallepedido para los registros existentes
SET @count = 0;
UPDATE `detalle_pedido_1_h` SET `id_detallepedido` = (@count:=@count+1);

-- Ajusto el detalle correspondiente
ALTER TABLE `detalle_pedido_1_h` AUTO_INCREMENT = 1;

------------------------------------------- Detalle Pedido 2 -----------------------------------------

-- Modificar la columna id_detallepedido para que sea AUTO_INCREMENT y PRIMARY KEY
ALTER TABLE `detalle_pedido_2_h`
    MODIFY `id_detallepedido` int NOT NULL AUTO_INCREMENT PRIMARY KEY;

-- Actualizar los valores de id_detallepedido para los registros existentes
SET @count = 0;
UPDATE `detalle_pedido_2_h` SET `id_detallepedido` = (@count:=@count+1);

-- Reiniciar el contador de AUTO_INCREMENT
ALTER TABLE `detalle_pedido_2_h` AUTO_INCREMENT = 1;
