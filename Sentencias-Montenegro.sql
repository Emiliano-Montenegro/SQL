USE ProyectoSQL;

-- Crear un nuevo usuario con permisos de solo lectura en todas las tablas
CREATE USER 'usuario_lectura'@'localhost' IDENTIFIED BY 'sololectura';

-- Asignar permisos de lectura en todas las tablas a 'usuario_lectura'
-- Se otorgan permisos SELECT en todas las tablas existentes y futuras
GRANT SELECT ON ProyectoSQL.* TO 'usuario_lectura'@'localhost';

-- Crear un nuevo usuario con permisos de lectura, inserción y modificación en datos
CREATE USER 'usuario_modificacion'@'localhost' IDENTIFIED BY 'modificacion';

-- Asignar permisos de lectura, inserción y modificación en datos a 'usuario_modificacion'
-- Se otorgan permisos SELECT, INSERT y UPDATE en todas las tablas existentes y futuras
GRANT SELECT, INSERT, UPDATE ON ProyectoSQL.* TO 'usuario_modificacion'@'localhost';

-- Revocar el permiso DELETE en todas las tablas para ambos usuarios
-- Esto asegura que ninguno de los usuarios pueda eliminar registros de cualquier tabla
REVOKE DELETE ON ProyectoSQL.* FROM 'usuario_lectura'@'localhost';
REVOKE DELETE ON ProyectoSQL.* FROM 'usuario_modificacion'@'localhost';
