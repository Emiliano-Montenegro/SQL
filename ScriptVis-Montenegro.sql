-- Vista 1: Lista de estudiantes inscritos en un curso
CREATE VIEW Vista_EstudiantesEnCurso AS
SELECT 
    C.ID_Curso,
    C.Titulo AS Curso,
    E.ID_Estudiante,
    E.Nombre AS Nombre_Estudiante,
    E.Apellido AS Apellido_Estudiante
FROM ProyectoSQL.Inscripcion I
JOIN ProyectoSQL.Cursos C ON I.ID_Curso = C.ID_Curso
JOIN ProyectoSQL.Estudiantes E ON I.ID_Estudiante = E.ID_Estudiante;

-- Vista 2: Comentarios de estudiantes en un curso
CREATE VIEW Vista_ComentariosEnCurso AS
SELECT 
    C.ID_Curso,
    C.Titulo AS Curso,
    CM.ID_Comentario,
    CM.Contenido_Comentario,
    CM.Fecha_Comentario
FROM ProyectoSQL.Comentarios CM
JOIN ProyectoSQL.Cursos C ON CM.ID_Curso = C.ID_Curso;

-- Vista 3: Información de compras de estudiantes
CREATE VIEW Vista_ComprasEstudiantes AS
SELECT 
    E.ID_Estudiante,
    E.Nombre AS Nombre_Estudiante,
    E.Apellido AS Apellido_Estudiante,
    CP.ID_CompraPago,
    CP.Fecha_CompraPago,
    CP.Monto_Pagado,
    CP.Metodo_Pago
FROM ProyectoSQL.ComprasPagos CP
JOIN ProyectoSQL.Estudiantes E ON CP.ID_Estudiante = E.ID_Estudiante;

-- Vista 4: Certificados emitidos a estudiantes
CREATE VIEW Vista_CertificadosEstudiantes AS
SELECT 
    E.ID_Estudiante,
    E.Nombre AS Nombre_Estudiante,
    E.Apellido AS Apellido_Estudiante,
    C.ID_Certificado,
    C.Informacion_Certificado,
    C.Fecha_Emision
FROM ProyectoSQL.Certificados C
JOIN ProyectoSQL.Estudiantes E ON C.ID_Estudiante = E.ID_Estudiante;

-- Vista 5: Cursos con más inscripciones
CREATE VIEW Vista_CursosPopulares AS
SELECT 
    C.ID_Curso,
    C.Titulo AS Curso,
    COUNT(I.ID_Matriculacion) AS Num_Inscripciones
FROM ProyectoSQL.Cursos C
LEFT JOIN ProyectoSQL.Inscripcion I ON C.ID_Curso = I.ID_Curso
GROUP BY C.ID_Curso, C.Titulo
ORDER BY Num_Inscripciones DESC;

-- Vista 6: Estudiantes con cursos y estado de inscripción
CREATE VIEW Vista_EstudiantesCursos AS
SELECT 
    E.ID_Estudiante,
    E.Nombre AS Nombre_Estudiante,
    E.Apellido AS Apellido_Estudiante,
    C.ID_Curso,
    C.Titulo AS Curso,
    I.Estado_Matriculacion
FROM ProyectoSQL.Estudiantes E
LEFT JOIN ProyectoSQL.Inscripcion I ON E.ID_Estudiante = I.ID_Estudiante
LEFT JOIN ProyectoSQL.Cursos C ON I.ID_Curso = C.ID_Curso;



