DELIMITER //
CREATE PROCEDURE spOrdenarTabla(
    IN tablaNombre VARCHAR(50),
    IN campoOrden VARCHAR(50),
    IN orden INT
)
BEGIN
    SET @sql = CONCAT('SELECT * FROM ', tablaNombre, ' ORDER BY ', campoOrden, ' ', IF(orden = 1, 'ASC', 'DESC'));
    PREPARE stmt FROM @sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END //
DELIMITER ;

CALL spOrdenarTabla('MiTabla', 'CampoOrdenamiento', 1); -- Orden ascendente
CALL spOrdenarTabla('MiTabla', 'CampoOrdenamiento', 0); -- Orden descendente

DELIMITER //
CREATE PROCEDURE spInsertarEliminarRegistro(
    IN pTablaNombre VARCHAR(50),
    IN pAccion INT,
    IN pId INT
)
BEGIN
    IF pAccion = 1 THEN
        -- Insertar un nuevo registro
        SET @query = CONCAT('INSERT INTO ', pTablaNombre, ' (...) VALUES (...);'); -- Reemplaza los campos y valores apropiados
        PREPARE stmt FROM @query;
        EXECUTE stmt;
        DEALLOCATE PREPARE stmt;
    ELSEIF pAccion = 2 THEN
        -- Eliminar un registro por ID
        SET @query = CONCAT('DELETE FROM ', pTablaNombre, ' WHERE ID = ', pId, ';');
        PREPARE stmt FROM @query;
        EXECUTE stmt;
        DEALLOCATE PREPARE stmt;
    END IF;
END //
DELIMITER ;

-- Para insertar un nuevo registro en la tabla
CALL spInsertarEliminarRegistro('NombreDeLaTabla', 1, NULL);


-- Para eliminar un registro por ID
CALL spInsertarEliminarRegistro('NombreDeLaTabla', 2, ID_A_Eliminar);

