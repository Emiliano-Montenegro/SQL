INSERT INTO ProyectoSQL.Estudiantes (ID_Estudiante, Nombre, Apellido, CorreoElectronico, Fecha_Registro) VALUES
    (1, 'Juan', 'Perez', 'juan@example.com', '2023-09-01'),
    (2, 'Maria', 'Gomez', 'maria@example.com', '2023-09-02'),
    (3, 'Carlos', 'Rodriguez', 'carlos@example.com', '2023-09-03'),
    (4, 'Ana', 'Martinez', 'ana@example.com', '2023-09-04'),
    (5, 'Luis', 'Sanchez', 'luis@example.com', '2023-09-05'),
    (6, 'Laura', 'Diaz', 'laura@example.com', '2023-09-06'),
    (7, 'Pedro', 'Gonzalez', 'pedro@example.com', '2023-09-07'),
    (8, 'Sofia', 'Lopez', 'sofia@example.com', '2023-09-08'),
    (9, 'Andres', 'Castro', 'andres@example.com', '2023-09-09'),
    (10, 'Carmen', 'Herrera', 'carmen@example.com', '2023-09-10'),
    (11, 'David', 'Ramirez', 'david@example.com', '2023-09-11'),
    (12, 'Elena', 'Torres', 'elena@example.com', '2023-09-12'),
    (13, 'Oscar', 'Ortiz', 'oscar@example.com', '2023-09-13'),
    (14, 'Patricia', 'Garcia', 'patricia@example.com', '2023-09-14'),
    (15, 'Ricardo', 'Fernandez', 'ricardo@example.com', '2023-09-15');

INSERT INTO ProyectoSQL.Profesores (ID_Profesor, Nombre, Apellido, CorreoElectronico, Fecha_Registro)
VALUES
    (1, 'Marta', 'Rodriguez', 'marta@example.com', '2023-09-01'),
    (2, 'Carlos', 'Sanchez', 'carlos@example.com', '2023-09-02'),
    (3, 'Laura', 'Perez', 'laura@example.com', '2023-09-03'),
    (4, 'Andres', 'Gomez', 'andres@example.com', '2023-09-04'),
    (5, 'Sofia', 'Martinez', 'sofia@example.com', '2023-09-05'),
    (6, 'Juan', 'Gonzalez', 'juan@example.com', '2023-09-06'),
    (7, 'Maria', 'Lopez', 'maria@example.com', '2023-09-07'),
    (8, 'Pedro', 'Torres', 'pedro@example.com', '2023-09-08'),
    (9, 'Carmen', 'Diaz', 'carmen@example.com', '2023-09-09'),
    (10, 'David', 'Fernandez', 'david@example.com', '2023-09-10'),
    (11, 'Elena', 'Castro', 'elena@example.com', '2023-09-11'),
    (12, 'Oscar', 'Ramirez', 'oscar@example.com', '2023-09-12'),
    (13, 'Patricia', 'Ortiz', 'patricia@example.com', '2023-09-13'),
    (14, 'Luis', 'Garcia', 'luis@example.com', '2023-09-14'),
    (15, 'Ricardo', 'Herrera', 'ricardo@example.com', '2023-09-15');


INSERT INTO ProyectoSQL.Cursos (ID_Curso, Titulo, Descripcion, Duracion, ID_Instructor)
VALUES
(16, 'Curso de Programación en Python', 'Aprende Python desde cero.', '8 semanas', 1),
(17, 'Curso de Análisis de Datos', 'Herramientas para análisis de datos.', '10 semanas', 2),
(18, 'Curso de Diseño Gráfico', 'Diseño creativo y herramientas de diseño.', '12 semanas', 3),
(19, 'Curso de Desarrollo Web', 'Creación de sitios web modernos.', '8 semanas', 4),
(20, 'Curso de Ciencia de Datos', 'Exploración de datos y machine learning.', '10 semanas', 5),
(21, 'Curso de UX/UI Design', 'Diseño de experiencias de usuario.', '12 semanas', 6),
(22, 'Curso de Programación en Java', 'Programación Java para aplicaciones empresariales.', '8 semanas', 7),
(23, 'Curso de Business Intelligence', 'Creación de paneles de control y reportes.', '10 semanas', 8),
(24, 'Curso de Photoshop', 'Edición y retoque de imágenes.', '12 semanas', 9),
(25, 'Curso de Desarrollo de Apps', 'Creación de aplicaciones móviles.', '8 semanas', 10),
(26, 'Curso de Data Science', 'Ciencia de datos avanzada y estadísticas.', '10 semanas', 11),
(27, 'Curso de Diseño de Interacción', 'Diseño centrado en el usuario.', '12 semanas', 12),
(28, 'Curso de Programación en Ruby', 'Ruby y Ruby on Rails para desarrollo web.', '8 semanas', 13),
(29, 'Curso de Google Analytics', 'Análisis de datos web con Google Analytics.', '10 semanas', 14),
(30, 'Curso de Illustrator', 'Ilustración y diseño vectorial.', '12 semanas', 15);


INSERT INTO ProyectoSQL.Contenido (ID_Contenido, ID_Curso, Descripcion_Contenido)
VALUES
(16, 16, 'Introducción a Python y su sintaxis.'),
(17, 16, 'Programación orientada a objetos en Python.'),
(18, 16, 'Desarrollo web con Django.'),
(19, 17, 'Introducción al análisis de datos.'),
(20, 17, 'Estadísticas y visualización de datos.'),
(21, 17, 'Machine learning con Python.'),
(22, 18, 'Principios de diseño gráfico.'),
(23, 18, 'Herramientas de diseño: Adobe Creative Suite.'),
(24, 18, 'Diseño de logotipos y branding.'),
(25, 19, 'HTML, CSS y diseño de sitios web.'),
(26, 19, 'Desarrollo front-end y responsive design.'),
(27, 19, 'Desarrollo back-end y bases de datos.'),
(28, 20, 'Exploración y limpieza de datos con Python.'),
(29, 20, 'Modelos de machine learning y predicción.'),
(30, 20, 'Visualización de datos con matplotlib y seaborn.'),
(31, 21, 'Diseño centrado en el usuario y experiencia de usuario.'),
(32, 21, 'Herramientas de diseño de prototipos y wireframing.'),
(33, 21, 'Pruebas de usabilidad y mejora continua.'),
(34, 22, 'Introducción a Java y programación orientada a objetos.'),
(35, 22, 'Desarrollo de aplicaciones empresariales con Java EE.'),
(36, 22, 'Java Spring Framework para desarrollo web.'),
(37, 23, 'Conceptos de Business Intelligence y análisis de datos.'),
(38, 23, 'Creación de paneles de control con Tableau.'),
(39, 23, 'Análisis de datos y toma de decisiones estratégicas.'),
(40, 24, 'Introducción a Photoshop y herramientas básicas.'),
(41, 24, 'Edición avanzada y retoque fotográfico.'),
(42, 24, 'Diseño de efectos especiales y composición.'),
(43, 25, 'Creación de aplicaciones móviles para Android.'),
(44, 25, 'Desarrollo de aplicaciones iOS con Swift.'),
(45, 25, 'Publicación en tiendas de aplicaciones.'),
(46, 26, 'Estadísticas avanzadas y análisis predictivo.'),
(47, 26, 'Aprendizaje automático y procesamiento de lenguaje natural.'),
(48, 26, 'Proyectos prácticos de ciencia de datos.'),
(49, 27, 'Diseño de interacción y experiencia de usuario.'),
(50, 27, 'Prototipado de interfaces y pruebas de usabilidad.'),
(51, 27, 'Diseño de interfaces multiplataforma.'),
(52, 28, 'Ruby para principiantes y desarrollo web.'),
(53, 28, 'Creación de aplicaciones web con Ruby on Rails.'),
(54, 28, 'Despliegue y mantenimiento de aplicaciones.'),
(55, 29, 'Configuración de Google Analytics y seguimiento de datos.'),
(56, 29, 'Informes y análisis avanzados con Google Analytics.'),
(57, 29, 'Optimización de estrategias de marketing en línea.'),
(58, 30, 'Introducción a Illustrator y herramientas de diseño vectorial.'),
(59, 30, 'Creación de ilustraciones y gráficos vectoriales.'),
(60, 30, 'Diseño de logotipos y elementos gráficos.');


INSERT INTO ProyectoSQL.Inscripcion (ID_Matriculacion, ID_Estudiante, ID_Curso, Fecha_Matriculacion, Estado_Matriculacion)
VALUES
(16, 1, 16, '2023-09-01', 'Activa'),
(17, 2, 17, '2023-09-02', 'Activa'),
(18, 3, 18, '2023-09-03', 'Activa'),
(19, 4, 19, '2023-09-04', 'Activa'),
(20, 5, 20, '2023-09-05', 'Activa'),
(21, 6, 21, '2023-09-06', 'Activa'),
(22, 7, 22, '2023-09-07', 'Activa'),
(23, 8, 23, '2023-09-08', 'Activa'),
(24, 9, 24, '2023-09-09', 'Activa'),
(25, 10, 25, '2023-09-10', 'Activa'),
(26, 11, 26, '2023-09-11', 'Activa'),
(27, 12, 27, '2023-09-12', 'Activa'),
(28, 13, 28, '2023-09-13', 'Activa'),
(29, 14, 29, '2023-09-14', 'Activa'),
(30, 15, 30, '2023-09-15', 'Activa');


INSERT INTO ProyectoSQL.Comentarios (ID_Comentario, ID_Estudiante, ID_Curso, Contenido_Comentario, Fecha_Comentario)
VALUES
(16, 1, 16, 'Excelente curso de Python.', '2023-09-01'),
(17, 2, 17, 'Me encanta el análisis de datos.', '2023-09-02'),
(18, 3, 18, 'Grandes herramientas de diseño gráfico.', '2023-09-03'),
(19, 4, 19, 'Aprendiendo desarrollo web.', '2023-09-04'),
(20, 5, 20, 'Fascinante mundo de la ciencia de datos.', '2023-09-05'),
(21, 6, 21, 'Diseño centrado en el usuario.', '2023-09-06'),
(22, 7, 22, 'Java es genial para programar.', '2023-09-07'),
(23, 8, 23, 'BI es esencial para la toma de decisiones.', '2023-09-08'),
(24, 9, 24, 'Photoshop es imprescindible para diseñadores.', '2023-09-09'),
(25, 10, 25, 'Desarrollo de aplicaciones móviles emocionante.', '2023-09-10'),
(26, 11, 26, 'Ciencia de datos es el futuro.', '2023-09-11'),
(27, 12, 27, 'Diseño de interacción mejora la experiencia.', '2023-09-12'),
(28, 13, 28, 'Ruby on Rails facilita el desarrollo web.', '2023-09-13'),
(29, 14, 29, 'Google Analytics es una herramienta poderosa.', '2023-09-14'),
(30, 15, 30, 'Illustrator es genial para diseño vectorial.', '2023-09-15');

INSERT INTO ProyectoSQL.ComprasPagos (ID_CompraPago, ID_Estudiante, Fecha_CompraPago, ID_Curso, Monto_Pagado, Metodo_Pago, Estado_Pago)
VALUES
(1, 1, '2023-09-01', 16, 99.99, 'Tarjeta', 'Aprobado'),
(2, 2, '2023-09-02', 17, 149.99, 'PayPal', 'Aprobado'),
(3, 3, '2023-09-03', 18, 199.99, 'Tarjeta', 'Aprobado'),
(4, 4, '2023-09-04', 19, 129.99, 'PayPal', 'Aprobado'),
(5, 5, '2023-09-05', 20, 179.99, 'Tarjeta', 'Aprobado'),
(6, 6, '2023-09-06', 21, 199.99, 'PayPal', 'Aprobado'),
(7, 7, '2023-09-07', 22, 129.99, 'Tarjeta', 'Aprobado'),
(8, 8, '2023-09-08', 23, 149.99, 'PayPal', 'Aprobado'),
(9, 9, '2023-09-09', 24, 199.99, 'Tarjeta', 'Aprobado'),
(10, 10, '2023-09-10', 25, 129.99, 'PayPal', 'Aprobado'),
(11, 11, '2023-09-11', 26, 179.99, 'Tarjeta', 'Aprobado'),
(12, 12, '2023-09-12', 27, 199.99, 'PayPal', 'Aprobado'),
(13, 13, '2023-09-13', 28, 129.99, 'Tarjeta', 'Aprobado'),
(14, 14, '2023-09-14', 29, 149.99, 'PayPal', 'Aprobado'),
(15, 15, '2023-09-15', 30, 199.99, 'Tarjeta', 'Aprobado');


INSERT INTO ProyectoSQL.Certificados (ID_Certificado, ID_Estudiante, ID_Curso, Fecha_Emision, Fecha_Completado, Informacion_Certificado, Estado_Certificado)
VALUES
(16, 1, 16, '2023-09-16', '2023-09-15', 'Certificado de Programación en Python', 'Emitido'),
(17, 2, 17, '2023-09-16', '2023-09-15', 'Certificado de Análisis de Datos', 'Emitido'),
(18, 3, 18, '2023-09-16', '2023-09-15', 'Certificado de Diseño Gráfico', 'Emitido'),
(19, 4, 19, '2023-09-16', '2023-09-15', 'Certificado de Desarrollo Web', 'Emitido'),
(20, 5, 20, '2023-09-16', '2023-09-15', 'Certificado de Ciencia de Datos', 'Emitido'),
(21, 6, 21, '2023-09-16', '2023-09-15', 'Certificado de UX/UI Design', 'Emitido'),
(22, 7, 22, '2023-09-16', '2023-09-15', 'Certificado de Programación en Java', 'Emitido'),
(23, 8, 23, '2023-09-16', '2023-09-15', 'Certificado de Business Intelligence', 'Emitido'),
(24, 9, 24, '2023-09-16', '2023-09-15', 'Certificado de Photoshop', 'Emitido'),
(25, 10, 25, '2023-09-16', '2023-09-15', 'Certificado de Desarrollo de Apps', 'Emitido'),
(26, 11, 26, '2023-09-16', '2023-09-15', 'Certificado de Data Science', 'Emitido'),
(27, 12, 27, '2023-09-16', '2023-09-15', 'Certificado de Diseño de Interacción', 'Emitido'),
(28, 13, 28, '2023-09-16', '2023-09-15', 'Certificado de Programación en Ruby', 'Emitido'),
(29, 14, 29, '2023-09-16', '2023-09-15', 'Certificado de Google Analytics', 'Emitido'),
(30, 15, 30, '2023-09-16', '2023-09-15', 'Certificado de Illustrator', 'Emitido');





