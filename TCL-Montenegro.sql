-- Iniciar una transacción - Primer tabla
START TRANSACTION;

-- Se eliminian los registros de la tabla Estudiantes, con ID_Estudiante 1 y 2
DELETE FROM ProyectoSQL.Estudiantes WHERE ID_Estudiante IN (1, 2);

-- Sentencia Rollback
-- ROLLBACK;

-- Sentencia Commit 
-- COMMIT;

-- sentencias para re-insertarlos 
-- INSERT INTO ProyectoSQL.Estudiantes (ID_Estudiante, Nombre, Apellido, CorreoElectronico, Fecha_Registro) VALUES
--    (1, 'Juan', 'Perez', 'juan@example.com', '2023-09-01'),
--    (2, 'Maria', 'Gomez', 'maria@example.com', '2023-09-02');


-- Iniciar una transacción - Segunda Tabla
START TRANSACTION;

-- Se insertan 4 nuevos registros en la tabla Profesores
INSERT INTO ProyectoSQL.Profesores (ID_Profesor, Nombre, Apellido, CorreoElectronico, Fecha_Registro)
VALUES
    (16, 'Eduardo', 'Gomez', 'eduardogomez@example.com', '2023-09-16'),
    (17, 'Marina', 'Fernandez', 'marinafernandez@example.com', '2023-09-16'),
    (18, 'Raul', 'Perez', 'raulperez@example.com', '2023-09-16'),
    (19, 'Cecilia', 'Lopez', 'cecilialopez@example.com', '2023-09-16');

-- Se agrega un savepoint después del registro #4
SAVEPOINT Savepoint1;

-- Insertar los siguientes 4 registros
INSERT INTO ProyectoSQL.Profesores (ID_Profesor, Nombre, Apellido, CorreoElectronico, Fecha_Registro)
VALUES
    (20, 'Manuel', 'Martinez', 'manuelmartinez@example.com', '2023-09-16'),
    (21, 'Laura', 'Sanchez', 'laurasanchez@example.com', '2023-09-16'),
    (22, 'Gabriel', 'Rodriguez', 'gabrielrodriguez@example.com', '2023-09-16'),
    (23, 'Sofia', 'Herrera', 'sofiaherrera@example.com', '2023-09-16');

-- Se agrega un savepoint después del registro #8
SAVEPOINT Savepoint2;

-- Sentencia de eliminacion 
-- RELEASE Savepoint1;

-- Sentencia Commit 
-- COMMIT;
