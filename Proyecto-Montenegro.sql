-- Creación de la base de datos
CREATE DATABASE ProyectoSQL;
USE ProyectoSQL;

-- Creación de la tabla Estudiantes
CREATE TABLE Estudiantes (
    ID_Estudiante INT PRIMARY KEY NOT NULL,
    Nombre VARCHAR(50) NOT NULL,
    Apellido VARCHAR(50) NOT NULL,
    CorreoElectronico VARCHAR(50) UNIQUE NOT NULL,
    Fecha_Registro DATE NOT NULL
);

-- Creación de la tabla Profesores
CREATE TABLE Profesores (
    ID_Profesor INT PRIMARY KEY NOT NULL,
    Nombre VARCHAR(50) NOT NULL,
    Apellido VARCHAR(50) NOT NULL,
    CorreoElectronico VARCHAR(50) UNIQUE NOT NULL,
    Fecha_Registro DATE NOT NULL
);

-- Creación de la tabla Cursos
CREATE TABLE Cursos (
    ID_Curso INT PRIMARY KEY NOT NULL,
    Titulo VARCHAR(50) NOT NULL,
    Descripcion TEXT NOT NULL,
    Duracion VARCHAR(50) NOT NULL,
    ID_Instructor INT,
    FOREIGN KEY (ID_Instructor) REFERENCES Profesores(ID_Profesor)
);

-- Creación de la tabla Contenido
CREATE TABLE Contenido (
    ID_Contenido INT PRIMARY KEY NOT NULL,
    ID_Curso INT NOT NULL,
    Descripcion_Contenido TEXT NOT NULL,
    FOREIGN KEY (ID_Curso) REFERENCES Cursos(ID_Curso)
);

-- Creación de la tabla Inscripcion
CREATE TABLE Inscripcion (
    ID_Matriculacion INT PRIMARY KEY NOT NULL,
    ID_Estudiante INT NOT NULL,
    ID_Curso INT NOT NULL,
    Fecha_Matriculacion DATE NOT NULL,
    Estado_Matriculacion VARCHAR(20) NOT NULL,
    FOREIGN KEY (ID_Estudiante) REFERENCES Estudiantes(ID_Estudiante),
    FOREIGN KEY (ID_Curso) REFERENCES Cursos(ID_Curso)
);

-- Creación de la tabla Comentarios
CREATE TABLE Comentarios (
    ID_Comentario INT PRIMARY KEY NOT NULL,
    ID_Estudiante INT NOT NULL,
    ID_Curso INT NOT NULL,
    Contenido_Comentario TEXT NOT NULL,
    Fecha_Comentario DATE NOT NULL,
    FOREIGN KEY (ID_Estudiante) REFERENCES Estudiantes(ID_Estudiante),
    FOREIGN KEY (ID_Curso) REFERENCES Cursos(ID_Curso)
);

-- Creación de la tabla Compras y Pagos
CREATE TABLE ComprasPagos (
    ID_CompraPago INT PRIMARY KEY NOT NULL,
    ID_Estudiante INT NOT NULL,
    Fecha_CompraPago DATE NOT NULL,
    ID_Curso INT NOT NULL,
    Monto_Pagado DECIMAL NOT NULL,
    Metodo_Pago VARCHAR(20) NOT NULL,
    Estado_Pago VARCHAR(20) NOT NULL,
    FOREIGN KEY (ID_Estudiante) REFERENCES Estudiantes(ID_Estudiante),
    FOREIGN KEY (ID_Curso) REFERENCES Cursos(ID_Curso)
);

-- Creación de la tabla de Certificados
CREATE TABLE Certificados (
    ID_Certificado INT PRIMARY KEY NOT NULL,
    ID_Estudiante INT NOT NULL,
    ID_Curso INT NOT NULL,
    Fecha_Emision DATE NOT NULL,
    Fecha_Completado DATE NOT NULL,
    Informacion_Certificado TEXT NOT NULL,
    Estado_Certificado VARCHAR(20) NOT NULL,
    FOREIGN KEY (ID_Estudiante) REFERENCES Estudiantes(ID_Estudiante),
    FOREIGN KEY (ID_Curso) REFERENCES Cursos(ID_Curso)
);
