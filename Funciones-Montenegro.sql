DELIMITER //
CREATE FUNCTION ObtenerPrecioTotalCursos(ID_Estudiante INT)
RETURNS DECIMAL(10, 2)
NO SQL
BEGIN
    DECLARE total DECIMAL(10, 2);
    
    SELECT SUM(Monto_Pagado) INTO total
    FROM ProyectoSQL.ComprasPagos
    WHERE ID_Estudiante = ID_Estudiante;
    
    RETURN total;
END;
//
DELIMITER ;


DELIMITER //
CREATE FUNCTION ObtenerUltimoComentario(ID_Estudiante INT, ID_Curso INT)
RETURNS VARCHAR(255)
NO SQL
BEGIN
    DECLARE ultimo_comentario VARCHAR(255);
    
    SELECT Contenido_Comentario INTO ultimo_comentario
    FROM ProyectoSQL.Comentarios
    WHERE ID_Estudiante = ID_Estudiante
    AND ID_Curso = ID_Curso
    ORDER BY Fecha_Comentario DESC
    LIMIT 1;
    
    RETURN ultimo_comentario;
END;
//
DELIMITER ;



