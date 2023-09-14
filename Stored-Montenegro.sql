DELIMITER //
-- SP para ordenar una tabla por un campo específico en orden ascendente o descendente
CREATE PROCEDURE OrdenarTabla(IN NombreTabla VARCHAR(255), IN NombreCampo VARCHAR(255), IN Orden VARCHAR(10))
BEGIN
    SET @query = CONCAT('SELECT * FROM ', NombreTabla, ' ORDER BY ', NombreCampo, ' ', Orden);
    PREPARE stmt FROM @query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END;
//
DELIMITER ;

-- SP para modificar una tabla (INSERT o DELETE)
DELIMITER //
CREATE PROCEDURE ModificarTabla(IN Accion VARCHAR(10), IN NombreTabla VARCHAR(255), IN Valor1 VARCHAR(255), IN Valor2 VARCHAR(255))
BEGIN
    IF Accion = 'INSERT' THEN
        SET @query = CONCAT('INSERT INTO ', NombreTabla, ' VALUES (', Valor1, ', ', Valor2, ')');
        CALL runSQL(@query);  -- Llamamos a la función runSQL para ejecutar la consulta
    ELSEIF Accion = 'DELETE' THEN
        SET @query = CONCAT('DELETE FROM ', NombreTabla, ' WHERE columna1 = ', Valor1, ' AND columna2 = ', Valor2);
        CALL runSQL(@query);  -- Llamamos a la función runSQL para ejecutar la consulta
    END IF;
END;
//
DELIMITER ;

