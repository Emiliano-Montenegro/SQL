-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (x86_64)
--
-- Host: localhost    Database: proyecto_sql
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `Cursos`
--

LOCK TABLES `Cursos` WRITE;
/*!40000 ALTER TABLE `Cursos` DISABLE KEYS */;
INSERT INTO `Cursos` VALUES (16,'Curso de Programación en Python','Aprende Python desde cero.','8 semanas',1),(17,'Curso de Análisis de Datos','Herramientas para análisis de datos.','10 semanas',2),(18,'Curso de Diseño Gráfico','Diseño creativo y herramientas de diseño.','12 semanas',3),(19,'Curso de Desarrollo Web','Creación de sitios web modernos.','8 semanas',4),(20,'Curso de Ciencia de Datos','Exploración de datos y machine learning.','10 semanas',5),(21,'Curso de UX/UI Design','Diseño de experiencias de usuario.','12 semanas',6),(22,'Curso de Programación en Java','Programación Java para aplicaciones empresariales.','8 semanas',7),(23,'Curso de Business Intelligence','Creación de paneles de control y reportes.','10 semanas',8),(24,'Curso de Photoshop','Edición y retoque de imágenes.','12 semanas',9),(25,'Curso de Desarrollo de Apps','Creación de aplicaciones móviles.','8 semanas',10),(26,'Curso de Data Science','Ciencia de datos avanzada y estadísticas.','10 semanas',11),(27,'Curso de Diseño de Interacción','Diseño centrado en el usuario.','12 semanas',12),(28,'Curso de Programación en Ruby','Ruby y Ruby on Rails para desarrollo web.','8 semanas',13),(29,'Curso de Google Analytics','Análisis de datos web con Google Analytics.','10 semanas',14),(30,'Curso de Illustrator','Ilustración y diseño vectorial.','12 semanas',15);
/*!40000 ALTER TABLE `Cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Estudiantes`
--

LOCK TABLES `Estudiantes` WRITE;
/*!40000 ALTER TABLE `Estudiantes` DISABLE KEYS */;
INSERT INTO `Estudiantes` VALUES (1,'Juan','Perez','juan@example.com','2023-09-01'),(2,'Maria','Gomez','maria@example.com','2023-09-02'),(3,'Carlos','Rodriguez','carlos@example.com','2023-09-03'),(4,'Ana','Martinez','ana@example.com','2023-09-04'),(5,'Luis','Sanchez','luis@example.com','2023-09-05'),(6,'Laura','Diaz','laura@example.com','2023-09-06'),(7,'Pedro','Gonzalez','pedro@example.com','2023-09-07'),(8,'Sofia','Lopez','sofia@example.com','2023-09-08'),(9,'Andres','Castro','andres@example.com','2023-09-09'),(10,'Carmen','Herrera','carmen@example.com','2023-09-10'),(11,'David','Ramirez','david@example.com','2023-09-11'),(12,'Elena','Torres','elena@example.com','2023-09-12'),(13,'Oscar','Ortiz','oscar@example.com','2023-09-13'),(14,'Patricia','Garcia','patricia@example.com','2023-09-14'),(15,'Ricardo','Fernandez','ricardo@example.com','2023-09-15');
/*!40000 ALTER TABLE `Estudiantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Inscripcion`
--

LOCK TABLES `Inscripcion` WRITE;
/*!40000 ALTER TABLE `Inscripcion` DISABLE KEYS */;
INSERT INTO `Inscripcion` VALUES (16,1,16,'2023-09-01','Activa'),(17,2,17,'2023-09-02','Activa'),(18,3,18,'2023-09-03','Activa'),(19,4,19,'2023-09-04','Activa'),(20,5,20,'2023-09-05','Activa'),(21,6,21,'2023-09-06','Activa'),(22,7,22,'2023-09-07','Activa'),(23,8,23,'2023-09-08','Activa'),(24,9,24,'2023-09-09','Activa'),(25,10,25,'2023-09-10','Activa'),(26,11,26,'2023-09-11','Activa'),(27,12,27,'2023-09-12','Activa'),(28,13,28,'2023-09-13','Activa'),(29,14,29,'2023-09-14','Activa'),(30,15,30,'2023-09-15','Activa');
/*!40000 ALTER TABLE `Inscripcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Profesores`
--

LOCK TABLES `Profesores` WRITE;
/*!40000 ALTER TABLE `Profesores` DISABLE KEYS */;
INSERT INTO `Profesores` VALUES (1,'Marta','Rodriguez','marta@example.com','2023-09-01'),(2,'Carlos','Sanchez','carlos@example.com','2023-09-02'),(3,'Laura','Perez','laura@example.com','2023-09-03'),(4,'Andres','Gomez','andres@example.com','2023-09-04'),(5,'Sofia','Martinez','sofia@example.com','2023-09-05'),(6,'Juan','Gonzalez','juan@example.com','2023-09-06'),(7,'Maria','Lopez','maria@example.com','2023-09-07'),(8,'Pedro','Torres','pedro@example.com','2023-09-08'),(9,'Carmen','Diaz','carmen@example.com','2023-09-09'),(10,'David','Fernandez','david@example.com','2023-09-10'),(11,'Elena','Castro','elena@example.com','2023-09-11'),(12,'Oscar','Ramirez','oscar@example.com','2023-09-12'),(13,'Patricia','Ortiz','patricia@example.com','2023-09-13'),(14,'Luis','Garcia','luis@example.com','2023-09-14'),(15,'Ricardo','Herrera','ricardo@example.com','2023-09-15');
/*!40000 ALTER TABLE `Profesores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-04 22:21:03
