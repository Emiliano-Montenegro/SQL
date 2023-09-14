-- Tabla de registro para Estudiantes
CREATE TABLE Estudiantes_Log (
    ID_Log INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    ID_Estudiante INT NOT NULL,
    Accion VARCHAR(50) NOT NULL,
    Usuario VARCHAR(50) NOT NULL,
    Fecha DATE NOT NULL,
    Hora TIME NOT NULL
);

-- Tabla de registro para Cursos
CREATE TABLE Cursos_Log (
    ID_Log INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    ID_Curso INT NOT NULL,
    Accion VARCHAR(50) NOT NULL,
    Usuario VARCHAR(50) NOT NULL,
    Fecha DATE NOT NULL,
    Hora TIME NOT NULL
);

-- Trigger para Estudiantes - BEFORE INSERT
DELIMITER //
CREATE TRIGGER Estudiantes_BeforeInsert --  Antes de insertar un nuevo estudiante, establece automáticamente la fecha de registro
BEFORE INSERT ON Estudiantes
FOR EACH ROW
BEGIN
    SET NEW.Fecha_Registro = CURDATE(); -- Establecer la fecha de registro
END;
//
DELIMITER ;

-- Trigger para Estudiantes - AFTER INSERT
DELIMITER //
CREATE TRIGGER Estudiantes_AfterInsert -- Después de insertar un nuevo estudiante, registra la acción, el usuario, la fecha y la hora en la tabla de registro Estudiantes_Log
AFTER INSERT ON Estudiantes
FOR EACH ROW
BEGIN
    INSERT INTO Estudiantes_Log (ID_Estudiante, Accion, Usuario, Fecha, Hora)
    VALUES (NEW.ID_Estudiante, 'Inserción', USER(), CURDATE(), CURTIME());
END;
//
DELIMITER ;


-- Trigger para Cursos - BEFORE UPDATE
DELIMITER //
CREATE TRIGGER Cursos_BeforeUpdate -- Antes de actualizar un curso, modifica la duración para indicar que se ha actualizado.
BEFORE UPDATE ON Cursos
FOR EACH ROW
BEGIN
    SET NEW.Duracion = CONCAT('Actualizado: ', NEW.Duracion); -- Modificar la duración
END;
//
DELIMITER ;

-- Trigger para Cursos - AFTER UPDATE
DELIMITER //
CREATE TRIGGER Cursos_AfterUpdate -- Después de actualizar un curso, registra la acción, el usuario, la fecha y la hora en la tabla de registro Cursos_Log.
AFTER UPDATE ON Cursos
FOR EACH ROW
BEGIN
    INSERT INTO Cursos_Log (ID_Curso, Accion, Usuario, Fecha, Hora)
    VALUES (NEW.ID_Curso, 'Actualización', USER(), CURDATE(), CURTIME());
END;
//
DELIMITER ;

