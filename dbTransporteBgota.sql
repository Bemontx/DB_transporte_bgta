-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: Transporte_bgta
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Accesos`
--

DROP TABLE IF EXISTS `Accesos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Accesos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario_id` int DEFAULT NULL,
  `servicio_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  KEY `servicio_id` (`servicio_id`),
  CONSTRAINT `Accesos_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `Usuarios` (`id`),
  CONSTRAINT `Accesos_ibfk_2` FOREIGN KEY (`servicio_id`) REFERENCES `Servicios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Accesos`
--

LOCK TABLES `Accesos` WRITE;
/*!40000 ALTER TABLE `Accesos` DISABLE KEYS */;
/*!40000 ALTER TABLE `Accesos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AppMobile`
--

DROP TABLE IF EXISTS `AppMobile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AppMobile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `servicio_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `servicio_id` (`servicio_id`),
  CONSTRAINT `AppMobile_ibfk_1` FOREIGN KEY (`servicio_id`) REFERENCES `Servicios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AppMobile`
--

LOCK TABLES `AppMobile` WRITE;
/*!40000 ALTER TABLE `AppMobile` DISABLE KEYS */;
/*!40000 ALTER TABLE `AppMobile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CentralPortales`
--

DROP TABLE IF EXISTS `CentralPortales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CentralPortales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `portal_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `portal_id` (`portal_id`),
  CONSTRAINT `CentralPortales_ibfk_1` FOREIGN KEY (`portal_id`) REFERENCES `Portales` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CentralPortales`
--

LOCK TABLES `CentralPortales` WRITE;
/*!40000 ALTER TABLE `CentralPortales` DISABLE KEYS */;
/*!40000 ALTER TABLE `CentralPortales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CentralTaxis`
--

DROP TABLE IF EXISTS `CentralTaxis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CentralTaxis` (
  `id` int NOT NULL AUTO_INCREMENT,
  `servicio_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `servicio_id` (`servicio_id`),
  CONSTRAINT `CentralTaxis_ibfk_1` FOREIGN KEY (`servicio_id`) REFERENCES `Servicios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CentralTaxis`
--

LOCK TABLES `CentralTaxis` WRITE;
/*!40000 ALTER TABLE `CentralTaxis` DISABLE KEYS */;
/*!40000 ALTER TABLE `CentralTaxis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Destino`
--

DROP TABLE IF EXISTS `Destino`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Destino` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `sitp_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sitp_id` (`sitp_id`),
  CONSTRAINT `Destino_ibfk_1` FOREIGN KEY (`sitp_id`) REFERENCES `Sitp` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Destino`
--

LOCK TABLES `Destino` WRITE;
/*!40000 ALTER TABLE `Destino` DISABLE KEYS */;
/*!40000 ALTER TABLE `Destino` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Estaciones`
--

DROP TABLE IF EXISTS `Estaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Estaciones` (
  `id` int NOT NULL AUTO_INCREMENT,
  `central_portal_id` int DEFAULT NULL,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `central_portal_id` (`central_portal_id`),
  CONSTRAINT `Estaciones_ibfk_1` FOREIGN KEY (`central_portal_id`) REFERENCES `CentralPortales` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Estaciones`
--

LOCK TABLES `Estaciones` WRITE;
/*!40000 ALTER TABLE `Estaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `Estaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EstacionesPuntosIntermedios`
--

DROP TABLE IF EXISTS `EstacionesPuntosIntermedios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EstacionesPuntosIntermedios` (
  `estacion_id` int NOT NULL,
  `ruta_id` int NOT NULL,
  PRIMARY KEY (`estacion_id`,`ruta_id`),
  KEY `ruta_id` (`ruta_id`),
  CONSTRAINT `EstacionesPuntosIntermedios_ibfk_1` FOREIGN KEY (`estacion_id`) REFERENCES `Estaciones` (`id`),
  CONSTRAINT `EstacionesPuntosIntermedios_ibfk_2` FOREIGN KEY (`ruta_id`) REFERENCES `Rutas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EstacionesPuntosIntermedios`
--

LOCK TABLES `EstacionesPuntosIntermedios` WRITE;
/*!40000 ALTER TABLE `EstacionesPuntosIntermedios` DISABLE KEYS */;
/*!40000 ALTER TABLE `EstacionesPuntosIntermedios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Portales`
--

DROP TABLE IF EXISTS `Portales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Portales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `servicio_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `servicio_id` (`servicio_id`),
  CONSTRAINT `Portales_ibfk_1` FOREIGN KEY (`servicio_id`) REFERENCES `Servicios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Portales`
--

LOCK TABLES `Portales` WRITE;
/*!40000 ALTER TABLE `Portales` DISABLE KEYS */;
/*!40000 ALTER TABLE `Portales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Rutas`
--

DROP TABLE IF EXISTS `Rutas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Rutas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `servicio_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `servicio_id` (`servicio_id`),
  CONSTRAINT `Rutas_ibfk_1` FOREIGN KEY (`servicio_id`) REFERENCES `Estaciones` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Rutas`
--

LOCK TABLES `Rutas` WRITE;
/*!40000 ALTER TABLE `Rutas` DISABLE KEYS */;
/*!40000 ALTER TABLE `Rutas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Servicios`
--

DROP TABLE IF EXISTS `Servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Servicios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Servicios`
--

LOCK TABLES `Servicios` WRITE;
/*!40000 ALTER TABLE `Servicios` DISABLE KEYS */;
/*!40000 ALTER TABLE `Servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sitp`
--

DROP TABLE IF EXISTS `Sitp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Sitp` (
  `id` int NOT NULL AUTO_INCREMENT,
  `servicio_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `servicio_id` (`servicio_id`),
  CONSTRAINT `Sitp_ibfk_1` FOREIGN KEY (`servicio_id`) REFERENCES `Servicios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sitp`
--

LOCK TABLES `Sitp` WRITE;
/*!40000 ALTER TABLE `Sitp` DISABLE KEYS */;
/*!40000 ALTER TABLE `Sitp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Taxis`
--

DROP TABLE IF EXISTS `Taxis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Taxis` (
  `id` int NOT NULL AUTO_INCREMENT,
  `central_taxis` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `central_taxis` (`central_taxis`),
  CONSTRAINT `Taxis_ibfk_1` FOREIGN KEY (`central_taxis`) REFERENCES `CentralTaxis` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Taxis`
--

LOCK TABLES `Taxis` WRITE;
/*!40000 ALTER TABLE `Taxis` DISABLE KEYS */;
/*!40000 ALTER TABLE `Taxis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Uber`
--

DROP TABLE IF EXISTS `Uber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Uber` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_mobile_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `app_mobile_id` (`app_mobile_id`),
  CONSTRAINT `Uber_ibfk_1` FOREIGN KEY (`app_mobile_id`) REFERENCES `AppMobile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uber`
--

LOCK TABLES `Uber` WRITE;
/*!40000 ALTER TABLE `Uber` DISABLE KEYS */;
/*!40000 ALTER TABLE `Uber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuarios`
--

DROP TABLE IF EXISTS `Usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuarios`
--

LOCK TABLES `Usuarios` WRITE;
/*!40000 ALTER TABLE `Usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `Usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-10 10:41:43
