/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.8.8-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: u348616500_salon_belleza
-- ------------------------------------------------------
-- Server version	11.8.8-MariaDB-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `administradores`
--

DROP TABLE IF EXISTS `administradores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `administradores` (
  `id_administrador` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_usuario` bigint(20) unsigned NOT NULL,
  `fecha_contratacion` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_administrador`),
  UNIQUE KEY `administradores_id_usuario_unique` (`id_usuario`),
  CONSTRAINT `administradores_id_usuario_foreign` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administradores`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `administradores` DISABLE KEYS */;
INSERT INTO `administradores` VALUES
(1,1,'2026-06-04','2026-06-04 22:33:17','2026-06-04 22:33:17');
/*!40000 ALTER TABLE `administradores` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_cliente` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_usuario` bigint(20) unsigned NOT NULL,
  `puntos_fidelidad` int(11) NOT NULL DEFAULT 0,
  `notas_preferencias` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `clientes_id_usuario_unique` (`id_usuario`),
  CONSTRAINT `clientes_id_usuario_foreign` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES
(1,4,0,NULL,'2026-06-04 23:30:58','2026-06-04 23:30:58'),
(2,5,0,NULL,'2026-06-04 23:37:00','2026-06-04 23:37:00'),
(3,6,0,NULL,'2026-06-04 23:38:41','2026-06-04 23:38:41'),
(4,7,0,NULL,'2026-06-04 23:42:31','2026-06-04 23:42:31'),
(5,8,0,NULL,'2026-06-04 23:49:02','2026-06-04 23:49:02'),
(6,9,0,NULL,'2026-06-04 23:59:37','2026-06-04 23:59:37'),
(7,10,0,NULL,'2026-06-05 18:47:16','2026-06-05 18:47:16'),
(8,12,0,NULL,'2026-06-23 04:21:09','2026-06-23 04:21:09'),
(9,13,0,NULL,'2026-06-23 04:24:29','2026-06-23 04:24:29'),
(10,14,0,NULL,'2026-06-23 04:29:13','2026-06-23 04:29:13'),
(11,15,0,NULL,'2026-06-23 04:29:55','2026-06-23 04:29:55'),
(12,16,0,NULL,'2026-06-23 04:30:31','2026-06-23 04:30:31'),
(13,17,0,NULL,'2026-06-23 04:35:33','2026-06-23 04:35:33'),
(14,18,0,NULL,'2026-06-23 04:39:03','2026-06-23 04:39:03'),
(15,19,0,NULL,'2026-06-23 04:42:15','2026-06-23 04:42:15'),
(16,20,0,NULL,'2026-06-25 01:56:25','2026-06-25 01:56:25'),
(17,21,0,NULL,'2026-06-26 13:32:17','2026-06-26 13:32:17'),
(18,22,0,NULL,'2026-06-26 13:32:40','2026-06-26 13:32:40'),
(19,23,0,NULL,'2026-06-26 14:36:17','2026-06-26 14:36:17'),
(20,24,0,NULL,'2026-06-26 14:37:06','2026-06-26 14:37:06'),
(21,25,0,NULL,'2026-06-26 14:37:07','2026-06-26 14:37:07'),
(22,26,0,NULL,'2026-06-26 14:37:14','2026-06-26 14:37:14'),
(23,27,0,NULL,'2026-06-26 14:37:25','2026-06-26 14:37:25'),
(24,28,0,NULL,'2026-07-16 04:03:03','2026-07-16 04:03:03'),
(25,29,0,NULL,'2026-07-17 04:22:53','2026-07-17 04:22:53'),
(26,31,0,NULL,'2026-07-21 13:56:48','2026-07-21 13:56:48'),
(27,32,0,NULL,'2026-07-21 14:05:07','2026-07-21 14:05:07'),
(28,33,0,NULL,'2026-07-30 04:44:54','2026-07-30 04:44:54'),
(29,34,0,NULL,'2026-07-30 04:50:35','2026-07-30 04:50:35');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `cotizaciones`
--

DROP TABLE IF EXISTS `cotizaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cotizaciones` (
  `id_cotizacion` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_cliente` bigint(20) unsigned NOT NULL,
  `id_estilista` bigint(20) unsigned DEFAULT NULL,
  `id_reserva` bigint(20) unsigned DEFAULT NULL,
  `id_estado` bigint(20) unsigned NOT NULL DEFAULT 9,
  `fecha_solicitud` date NOT NULL,
  `monto_estimado` decimal(10,2) DEFAULT 0.00,
  `notas` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_cotizacion`),
  KEY `fk_cotizaciones_cliente` (`id_cliente`),
  KEY `fk_cotizaciones_estilista` (`id_estilista`),
  KEY `fk_cotizaciones_estado` (`id_estado`),
  KEY `fk_cotizaciones_reserva` (`id_reserva`),
  CONSTRAINT `fk_cotizaciones_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`) ON DELETE CASCADE,
  CONSTRAINT `fk_cotizaciones_estado` FOREIGN KEY (`id_estado`) REFERENCES `estados_reserva` (`id_estado`),
  CONSTRAINT `fk_cotizaciones_estilista` FOREIGN KEY (`id_estilista`) REFERENCES `estilistas` (`id_estilista`) ON DELETE SET NULL,
  CONSTRAINT `fk_cotizaciones_reserva` FOREIGN KEY (`id_reserva`) REFERENCES `reservas` (`id_reserva`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cotizaciones`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `cotizaciones` DISABLE KEYS */;
INSERT INTO `cotizaciones` VALUES
(1,1,2,87,12,'2026-08-10',0.00,'Tengo el cabello teñido de negro y quiero un diseño de color.','2026-07-30 06:09:08','2026-07-31 00:03:01'),
(2,1,2,88,12,'2026-08-10',155.00,'Tengo el cabello teñido de negro y quiero un diseño de color.','2026-07-30 14:30:20','2026-07-31 00:02:57'),
(3,3,2,NULL,11,'2026-08-10',0.00,'quiero una extenciones muy largas. | Motivo de cancelación: El presupuesto excede mi límite de costo.','2026-07-30 14:37:52','2026-07-30 15:32:41'),
(4,4,2,89,11,'2026-07-30',120.00,'con untinte en especifico quisiera eso | Motivo de cancelación: muy caro | Motivo de cancelación: muy caro','2026-07-30 17:16:40','2026-07-30 19:00:39'),
(5,4,2,90,10,'2026-07-30',666.00,NULL,'2026-07-30 19:01:02','2026-07-30 19:02:03'),
(6,4,2,91,10,'2026-07-30',777.00,'quiera un corte bien god para una boda','2026-07-30 19:19:07','2026-07-30 19:20:00'),
(7,4,2,92,10,'2026-07-30',111.00,'quiereo ser como goku','2026-07-30 19:26:08','2026-07-30 19:27:06'),
(8,4,2,NULL,10,'2026-07-30',200.00,'quiero el penado bien god','2026-07-30 19:32:59','2026-07-30 22:32:05'),
(9,1,2,93,12,'2026-07-30',111.00,'quiero ser como el vegeta','2026-07-30 19:37:17','2026-07-31 00:02:49'),
(10,1,1,NULL,11,'2026-07-30',222.00,' | Motivo de cancelación: muy caro','2026-07-30 19:39:20','2026-07-30 19:40:29'),
(11,1,2,109,12,'2026-07-30',150.00,'quiero tener una cola de cabalo','2026-07-30 23:34:24','2026-07-31 16:30:15'),
(12,1,2,NULL,11,'2026-07-30',0.00,'quiero tener una cola de cabalo | Motivo de cancelación: hola','2026-07-30 23:34:27','2026-07-31 00:33:22'),
(13,1,2,106,12,'2026-07-30',150.00,'quiero tener una cola de cabalo','2026-07-30 23:34:29','2026-07-31 00:59:09'),
(14,27,1,NULL,9,'2026-07-31',0.00,'uñitas acrilicas','2026-07-31 07:23:31','2026-07-31 07:23:31');
/*!40000 ALTER TABLE `cotizaciones` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `detalles_cotizacion`
--

DROP TABLE IF EXISTS `detalles_cotizacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalles_cotizacion` (
  `id_detalle_cotizacion` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_cotizacion` bigint(20) unsigned NOT NULL,
  `id_servicio` bigint(20) unsigned NOT NULL,
  `precio_cotizado` decimal(10,2) DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_detalle_cotizacion`),
  KEY `fk_det_cotizacion` (`id_cotizacion`),
  KEY `fk_det_servicio` (`id_servicio`),
  CONSTRAINT `fk_det_cotizacion` FOREIGN KEY (`id_cotizacion`) REFERENCES `cotizaciones` (`id_cotizacion`) ON DELETE CASCADE,
  CONSTRAINT `fk_det_servicio` FOREIGN KEY (`id_servicio`) REFERENCES `servicios` (`id_servicio`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalles_cotizacion`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `detalles_cotizacion` DISABLE KEYS */;
INSERT INTO `detalles_cotizacion` VALUES
(1,1,1,0.00,'2026-07-30 06:09:08','2026-07-30 06:09:08'),
(2,1,3,0.00,'2026-07-30 06:09:08','2026-07-30 06:09:08'),
(3,2,1,120.00,'2026-07-30 14:30:20','2026-07-30 14:32:17'),
(4,2,3,35.00,'2026-07-30 14:30:20','2026-07-30 14:32:17'),
(5,3,1,0.00,'2026-07-30 14:37:52','2026-07-30 14:37:52'),
(6,3,3,0.00,'2026-07-30 14:37:52','2026-07-30 14:37:52'),
(7,4,1,120.00,'2026-07-30 17:16:40','2026-07-30 17:38:53'),
(8,5,2,0.00,'2026-07-30 19:01:02','2026-07-30 19:01:02'),
(9,6,2,0.00,'2026-07-30 19:19:07','2026-07-30 19:19:07'),
(10,7,2,0.00,'2026-07-30 19:26:08','2026-07-30 19:26:08'),
(11,8,2,200.00,'2026-07-30 19:32:59','2026-07-30 22:32:05'),
(12,9,2,0.00,'2026-07-30 19:37:17','2026-07-30 19:37:17'),
(13,9,1,111.00,'2026-07-30 19:37:17','2026-07-30 19:37:54'),
(14,10,1,0.00,'2026-07-30 19:39:20','2026-07-30 19:39:20'),
(15,11,1,150.00,'2026-07-30 23:34:24','2026-07-31 16:29:05'),
(16,12,1,0.00,'2026-07-30 23:34:27','2026-07-30 23:34:27'),
(17,13,1,150.00,'2026-07-30 23:34:29','2026-07-31 00:31:46'),
(18,14,1,0.00,'2026-07-31 07:23:31','2026-07-31 07:23:31');
/*!40000 ALTER TABLE `detalles_cotizacion` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `detalles_reserva`
--

DROP TABLE IF EXISTS `detalles_reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalles_reserva` (
  `id_detalle` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_reserva` bigint(20) unsigned NOT NULL,
  `id_servicio` bigint(20) unsigned NOT NULL,
  `precio_historico` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_detalle`),
  KEY `detalles_reserva_id_reserva_foreign` (`id_reserva`),
  KEY `detalles_reserva_id_servicio_foreign` (`id_servicio`),
  CONSTRAINT `detalles_reserva_id_reserva_foreign` FOREIGN KEY (`id_reserva`) REFERENCES `reservas` (`id_reserva`) ON DELETE CASCADE,
  CONSTRAINT `detalles_reserva_id_servicio_foreign` FOREIGN KEY (`id_servicio`) REFERENCES `servicios` (`id_servicio`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalles_reserva`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `detalles_reserva` DISABLE KEYS */;
INSERT INTO `detalles_reserva` VALUES
(1,1,1,25.00,'2026-06-05 00:12:15','2026-06-05 00:12:15'),
(2,2,1,25.00,'2026-06-05 00:12:41','2026-06-05 00:12:41'),
(3,3,1,25.00,'2026-06-05 00:13:14','2026-06-05 00:13:14'),
(4,4,1,25.00,'2026-06-05 00:15:19','2026-06-05 00:15:19'),
(5,5,1,25.00,'2026-06-05 00:28:08','2026-06-05 00:28:08'),
(6,6,1,25.00,'2026-06-05 00:35:48','2026-06-05 00:35:48'),
(7,7,1,25.00,'2026-06-05 00:36:32','2026-06-05 00:36:32'),
(8,8,1,25.00,'2026-06-05 00:44:56','2026-06-05 00:44:56'),
(9,9,1,25.00,'2026-06-05 11:34:18','2026-06-05 11:34:18'),
(10,10,1,25.00,'2026-06-05 11:35:34','2026-06-05 11:35:34'),
(11,11,1,25.00,'2026-06-05 11:53:35','2026-06-05 11:53:35'),
(12,15,1,25.00,NULL,NULL),
(13,16,1,25.00,'2026-06-18 07:05:15','2026-06-18 07:05:15'),
(14,16,2,35.00,'2026-06-18 07:05:15','2026-06-18 07:05:15'),
(15,17,1,25.00,'2026-06-18 07:16:04','2026-06-18 07:16:04'),
(16,17,3,35.00,'2026-06-18 07:16:04','2026-06-18 07:16:04'),
(17,18,1,25.00,'2026-06-18 08:46:17','2026-06-18 08:46:17'),
(18,18,2,35.00,'2026-06-18 08:46:17','2026-06-18 08:46:17'),
(19,19,1,25.00,'2026-06-19 07:25:58','2026-06-19 07:25:58'),
(20,19,2,35.00,'2026-06-19 07:25:58','2026-06-19 07:25:58'),
(21,20,2,35.00,'2026-06-22 02:54:00','2026-06-22 02:54:00'),
(22,21,1,25.00,'2026-06-22 03:19:55','2026-06-22 03:19:55'),
(27,23,2,35.00,'2026-06-22 23:53:37','2026-06-22 23:53:37'),
(28,24,2,35.00,'2026-06-22 23:54:37','2026-06-22 23:54:37'),
(34,27,1,25.00,'2026-06-25 01:39:52','2026-06-25 01:39:52'),
(35,28,3,35.00,'2026-06-25 18:05:07','2026-06-25 18:05:07'),
(38,29,2,35.00,'2026-06-26 05:19:53','2026-06-26 05:19:53'),
(39,30,3,35.00,'2026-06-26 05:59:01','2026-06-26 05:59:01'),
(41,26,2,35.00,'2026-06-26 07:14:59','2026-06-26 07:14:59'),
(42,26,3,35.00,'2026-06-26 07:14:59','2026-06-26 07:14:59'),
(45,31,5,20.00,'2026-06-26 07:41:28','2026-06-26 07:41:28'),
(48,25,3,35.00,'2026-06-26 08:31:13','2026-06-26 08:31:13'),
(49,32,2,35.00,'2026-06-26 14:38:49','2026-06-26 14:38:49'),
(50,33,1,25.00,'2026-06-26 14:39:03','2026-06-26 14:39:03'),
(51,34,2,35.00,'2026-06-26 14:40:18','2026-06-26 14:40:18'),
(52,35,3,35.00,'2026-06-26 14:41:57','2026-06-26 14:41:57'),
(53,36,3,35.00,'2026-06-26 14:42:35','2026-06-26 14:42:35'),
(54,37,1,25.00,'2026-06-26 14:43:52','2026-06-26 14:43:52'),
(55,37,2,35.00,'2026-06-26 14:43:52','2026-06-26 14:43:52'),
(56,37,3,35.00,'2026-06-26 14:43:52','2026-06-26 14:43:52'),
(57,22,2,35.00,'2026-06-26 14:45:35','2026-06-26 14:45:35'),
(58,22,3,35.00,'2026-06-26 14:45:35','2026-06-26 14:45:35'),
(60,38,2,35.00,'2026-06-26 14:46:54','2026-06-26 14:46:54'),
(61,39,2,35.00,'2026-06-26 14:48:47','2026-06-26 14:48:47'),
(62,40,1,25.00,'2026-06-26 14:50:38','2026-06-26 14:50:38'),
(63,41,2,35.00,'2026-06-26 14:51:50','2026-06-26 14:51:50'),
(64,42,1,25.00,'2026-06-26 15:19:40','2026-06-26 15:19:40'),
(65,42,2,35.00,'2026-06-26 15:19:40','2026-06-26 15:19:40'),
(66,42,3,35.00,'2026-06-26 15:19:40','2026-06-26 15:19:40'),
(67,43,2,35.00,'2026-07-14 03:59:15','2026-07-14 03:59:15'),
(68,44,2,35.00,'2026-07-14 04:02:34','2026-07-14 04:02:34'),
(69,45,2,35.00,'2026-07-14 04:11:03','2026-07-14 04:11:03'),
(70,46,2,35.00,'2026-07-16 04:55:16','2026-07-16 04:55:16'),
(71,46,5,20.00,'2026-07-16 04:55:16','2026-07-16 04:55:16'),
(72,47,2,35.00,'2026-07-16 05:42:30','2026-07-16 05:42:30'),
(73,48,2,35.00,'2026-07-16 06:07:51','2026-07-16 06:07:51'),
(74,49,1,25.00,'2026-07-16 06:23:09','2026-07-16 06:23:09'),
(75,49,2,35.00,'2026-07-16 06:23:09','2026-07-16 06:23:09'),
(76,50,3,35.00,'2026-07-16 06:24:02','2026-07-16 06:24:02'),
(77,51,1,25.00,'2026-07-16 06:42:28','2026-07-16 06:42:28'),
(78,51,2,35.00,'2026-07-16 06:42:28','2026-07-16 06:42:28'),
(79,51,5,20.00,'2026-07-16 06:42:28','2026-07-16 06:42:28'),
(80,52,1,25.00,'2026-07-16 07:22:47','2026-07-16 07:22:47'),
(81,52,2,35.00,'2026-07-16 07:22:47','2026-07-16 07:22:47'),
(82,53,2,35.00,'2026-07-16 16:00:22','2026-07-16 16:00:22'),
(83,54,3,35.00,'2026-07-16 16:20:37','2026-07-16 16:20:37'),
(84,55,3,35.00,'2026-07-16 16:34:29','2026-07-16 16:34:29'),
(85,56,1,25.00,'2026-07-16 16:57:26','2026-07-16 16:57:26'),
(86,57,5,20.00,'2026-07-16 17:37:56','2026-07-16 17:37:56'),
(87,58,5,20.00,'2026-07-16 17:38:43','2026-07-16 17:38:43'),
(88,59,2,35.00,'2026-07-17 03:40:16','2026-07-17 03:40:16'),
(89,60,1,25.00,'2026-07-17 03:46:50','2026-07-17 03:46:50'),
(90,61,5,20.00,'2026-07-17 05:16:27','2026-07-17 05:16:27'),
(91,62,5,20.00,'2026-07-17 05:22:11','2026-07-17 05:22:11'),
(94,64,3,35.00,'2026-07-17 06:19:45','2026-07-17 06:19:45'),
(95,64,5,20.00,'2026-07-17 06:19:45','2026-07-17 06:19:45'),
(96,65,3,35.00,'2026-07-21 00:24:06','2026-07-21 00:24:06'),
(97,65,5,20.00,'2026-07-21 00:24:06','2026-07-21 00:24:06'),
(98,66,5,20.00,'2026-07-21 14:08:37','2026-07-21 14:08:37'),
(102,67,2,35.00,'2026-07-21 22:31:59','2026-07-21 22:31:59'),
(103,69,3,35.00,'2026-07-22 00:24:44','2026-07-22 00:24:44'),
(106,63,2,35.00,'2026-07-22 03:17:00','2026-07-22 03:17:00'),
(107,63,3,35.00,'2026-07-22 03:17:00','2026-07-22 03:17:00'),
(108,70,2,35.00,'2026-07-22 03:34:29','2026-07-22 03:34:29'),
(109,71,2,35.00,'2026-07-22 04:00:46','2026-07-22 04:00:46'),
(110,72,3,35.00,'2026-07-22 05:06:43','2026-07-22 05:06:43'),
(111,72,5,20.00,'2026-07-22 05:06:43','2026-07-22 05:06:43'),
(112,73,5,20.00,'2026-07-22 05:28:01','2026-07-22 05:28:01'),
(113,74,2,35.00,'2026-07-22 05:41:27','2026-07-22 05:41:27'),
(114,75,5,20.00,'2026-07-22 05:45:42','2026-07-22 05:45:42'),
(115,76,5,20.00,'2026-07-22 13:18:20','2026-07-22 13:18:20'),
(116,77,5,20.00,'2026-07-22 15:37:54','2026-07-22 15:37:54'),
(117,68,5,20.00,'2026-07-22 16:25:57','2026-07-22 16:25:57'),
(118,78,5,20.00,'2026-07-22 16:50:56','2026-07-22 16:50:56'),
(119,79,5,20.00,'2026-07-22 16:51:25','2026-07-22 16:51:25'),
(120,80,2,35.00,'2026-07-22 16:52:59','2026-07-22 16:52:59'),
(121,81,2,35.00,'2026-07-22 16:54:09','2026-07-22 16:54:09'),
(122,81,5,20.00,'2026-07-22 16:54:09','2026-07-22 16:54:09'),
(123,82,1,25.00,'2026-07-22 16:58:57','2026-07-22 16:58:57'),
(124,82,2,35.00,'2026-07-22 16:58:57','2026-07-22 16:58:57'),
(125,84,1,0.00,'2026-07-30 14:22:54','2026-07-30 14:22:54'),
(126,84,3,0.00,'2026-07-30 14:22:54','2026-07-30 14:22:54'),
(127,85,1,0.00,'2026-07-30 14:22:58','2026-07-30 14:22:58'),
(128,85,3,0.00,'2026-07-30 14:22:58','2026-07-30 14:22:58'),
(129,86,1,0.00,'2026-07-30 14:25:53','2026-07-30 14:25:53'),
(130,86,3,0.00,'2026-07-30 14:25:53','2026-07-30 14:25:53'),
(131,87,1,0.00,'2026-07-30 14:33:26','2026-07-30 14:33:26'),
(132,87,3,0.00,'2026-07-30 14:33:26','2026-07-30 14:33:26'),
(133,88,1,120.00,'2026-07-30 14:33:35','2026-07-30 14:33:35'),
(134,88,3,35.00,'2026-07-30 14:33:35','2026-07-30 14:33:35'),
(135,89,1,120.00,'2026-07-30 18:54:13','2026-07-30 18:54:13'),
(136,90,2,0.00,'2026-07-30 19:02:03','2026-07-30 19:02:03'),
(137,91,2,0.00,'2026-07-30 19:20:00','2026-07-30 19:20:00'),
(138,92,2,0.00,'2026-07-30 19:27:06','2026-07-30 19:27:06'),
(139,93,2,0.00,'2026-07-30 19:38:15','2026-07-30 19:38:15'),
(140,93,1,111.00,'2026-07-30 19:38:15','2026-07-30 19:38:15'),
(141,94,1,25.00,'2026-07-30 22:27:47','2026-07-30 22:27:47'),
(142,95,1,25.00,'2026-07-30 22:28:36','2026-07-30 22:28:36'),
(143,96,1,25.00,'2026-07-30 22:34:10','2026-07-30 22:34:10'),
(144,97,1,25.00,'2026-07-30 22:48:32','2026-07-30 22:48:32'),
(145,98,1,25.00,'2026-07-30 22:49:07','2026-07-30 22:49:07'),
(146,99,1,25.00,'2026-07-30 22:57:18','2026-07-30 22:57:18'),
(147,100,1,25.00,'2026-07-30 22:58:39','2026-07-30 22:58:39'),
(148,101,1,25.00,'2026-07-30 23:02:29','2026-07-30 23:02:29'),
(149,102,1,25.00,'2026-07-30 23:05:20','2026-07-30 23:05:20'),
(150,102,2,35.00,'2026-07-30 23:05:20','2026-07-30 23:05:20'),
(151,102,3,35.00,'2026-07-30 23:05:20','2026-07-30 23:05:20'),
(152,103,3,35.00,'2026-07-30 23:10:06','2026-07-30 23:10:06'),
(153,104,1,25.00,'2026-07-30 23:27:38','2026-07-30 23:27:38'),
(154,105,1,25.00,'2026-07-30 23:29:02','2026-07-30 23:29:02'),
(155,106,1,150.00,'2026-07-31 00:59:09','2026-07-31 00:59:09'),
(156,107,3,35.00,'2026-07-31 06:27:36','2026-07-31 06:27:36'),
(157,108,5,20.00,'2026-07-31 16:25:55','2026-07-31 16:25:55'),
(158,109,1,150.00,'2026-07-31 16:30:15','2026-07-31 16:30:15');
/*!40000 ALTER TABLE `detalles_reserva` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `especialidades`
--

DROP TABLE IF EXISTS `especialidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `especialidades` (
  `id_especialidad` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_especialidad` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_especialidad`),
  UNIQUE KEY `especialidades_nombre_especialidad_unique` (`nombre_especialidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidades`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `especialidades` DISABLE KEYS */;
/*!40000 ALTER TABLE `especialidades` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `estados_reserva`
--

DROP TABLE IF EXISTS `estados_reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `estados_reserva` (
  `id_estado` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_estado` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_estado`),
  UNIQUE KEY `estados_reserva_nombre_estado_unique` (`nombre_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estados_reserva`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `estados_reserva` DISABLE KEYS */;
INSERT INTO `estados_reserva` VALUES
(1,'Pendiente','2026-06-04 22:33:17','2026-06-04 22:33:17'),
(2,'Confirmada','2026-06-04 22:33:17','2026-06-04 22:33:17'),
(3,'En Proceso','2026-06-04 22:33:17','2026-06-04 22:33:17'),
(4,'Completada','2026-06-04 22:33:17','2026-06-04 22:33:17'),
(5,'Cancelada','2026-06-04 22:33:17','2026-06-04 22:33:17'),
(6,'No Asistió','2026-06-04 22:33:17','2026-06-04 22:33:17'),
(7,'Cancelada por Cliente','2026-07-16 07:20:44','2026-07-16 07:20:44'),
(8,'Cancelada por Estilista','2026-07-16 07:20:44','2026-07-16 07:20:44'),
(9,'Cotizacion Pendiente','2026-07-30 05:37:49','2026-07-30 05:37:49'),
(10,'Cotizado','2026-07-30 05:37:49','2026-07-30 05:37:49'),
(11,'Cotizacion Cancelada',NULL,NULL),
(12,'Cotización Aceptada','2026-07-30 23:58:49','2026-07-30 23:58:49');
/*!40000 ALTER TABLE `estados_reserva` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `estilista_especialidades`
--

DROP TABLE IF EXISTS `estilista_especialidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `estilista_especialidades` (
  `id_estilista` bigint(20) unsigned NOT NULL,
  `id_especialidad` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_estilista`,`id_especialidad`),
  KEY `estilista_especialidades_id_especialidad_foreign` (`id_especialidad`),
  CONSTRAINT `estilista_especialidades_id_especialidad_foreign` FOREIGN KEY (`id_especialidad`) REFERENCES `especialidades` (`id_especialidad`) ON DELETE CASCADE,
  CONSTRAINT `estilista_especialidades_id_estilista_foreign` FOREIGN KEY (`id_estilista`) REFERENCES `estilistas` (`id_estilista`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estilista_especialidades`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `estilista_especialidades` DISABLE KEYS */;
/*!40000 ALTER TABLE `estilista_especialidades` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `estilistas`
--

DROP TABLE IF EXISTS `estilistas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `estilistas` (
  `id_estilista` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_usuario` bigint(20) unsigned NOT NULL,
  `id_administrador_supervisor` bigint(20) unsigned DEFAULT NULL,
  `fecha_ingreso` date NOT NULL,
  `estado_laboral` varchar(30) NOT NULL DEFAULT 'Activo',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `biografia` text DEFAULT NULL,
  `foto_perfil` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_estilista`),
  UNIQUE KEY `estilistas_id_usuario_unique` (`id_usuario`),
  KEY `estilistas_id_administrador_supervisor_foreign` (`id_administrador_supervisor`),
  CONSTRAINT `estilistas_id_administrador_supervisor_foreign` FOREIGN KEY (`id_administrador_supervisor`) REFERENCES `administradores` (`id_administrador`),
  CONSTRAINT `estilistas_id_usuario_foreign` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estilistas`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `estilistas` DISABLE KEYS */;
INSERT INTO `estilistas` VALUES
(1,2,1,'2026-06-04','Activo','2026-06-04 22:33:17','2026-06-23 01:16:23',NULL,'https://i.pinimg.com/736x/d0/5d/b0/d05db0b785beb07a26033b2ccdcbb96a.jpg'),
(2,3,1,'2026-06-04','Activo','2026-06-04 22:57:12','2026-06-25 04:16:52','soy muy god contratemeeeeeeeeeee','https://i.pinimg.com/736x/3a/a9/9e/3aa99e7a2dbd96fd5ad60b255eb9d92f.jpg'),
(3,11,1,'2026-06-22','Activo','2026-06-22 03:00:06','2026-06-22 03:00:06',NULL,NULL),
(4,30,1,'2026-07-21','Activo','2026-07-21 01:23:30','2026-07-21 02:06:58',NULL,NULL);
/*!40000 ALTER TABLE `estilistas` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `fechas_inactivas_estilista`
--

DROP TABLE IF EXISTS `fechas_inactivas_estilista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `fechas_inactivas_estilista` (
  `id_inactividad` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_estilista` bigint(20) unsigned NOT NULL,
  `fecha_inactiva` date NOT NULL,
  `motivo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_inactividad`),
  KEY `id_estilista` (`id_estilista`),
  CONSTRAINT `fechas_inactivas_estilista_ibfk_1` FOREIGN KEY (`id_estilista`) REFERENCES `estilistas` (`id_estilista`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fechas_inactivas_estilista`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `fechas_inactivas_estilista` DISABLE KEYS */;
INSERT INTO `fechas_inactivas_estilista` VALUES
(1,3,'2026-07-21','Permiso médico por enfermedad (gripe)','2026-07-13 04:00:29','2026-07-13 04:00:29'),
(3,4,'2026-07-22','vaciaiones','2026-07-21 02:26:13','2026-07-21 02:26:13'),
(4,4,'2026-07-24','zzzzz','2026-07-22 00:23:09','2026-07-22 00:23:09'),
(5,4,'2026-07-31','vacaciones','2026-07-22 01:54:09','2026-07-22 01:54:09'),
(6,2,'2026-07-24','viaje','2026-07-22 16:46:11','2026-07-22 16:46:11');
/*!40000 ALTER TABLE `fechas_inactivas_estilista` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `horarios_estilista`
--

DROP TABLE IF EXISTS `horarios_estilista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `horarios_estilista` (
  `id_horario` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_estilista` bigint(20) unsigned NOT NULL,
  `dia_semana` varchar(20) NOT NULL,
  `hora_entrada` time NOT NULL,
  `hora_salida` time NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_horario`),
  KEY `horarios_estilista_id_estilista_foreign` (`id_estilista`),
  CONSTRAINT `horarios_estilista_id_estilista_foreign` FOREIGN KEY (`id_estilista`) REFERENCES `estilistas` (`id_estilista`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horarios_estilista`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `horarios_estilista` DISABLE KEYS */;
INSERT INTO `horarios_estilista` VALUES
(1,1,'Lunes','09:00:00','20:00:00',1,'2026-07-13 03:54:31','2026-07-13 03:54:31'),
(2,1,'Martes','09:00:00','20:00:00',1,'2026-07-13 03:54:31','2026-07-13 03:54:31'),
(3,1,'Miercoles','10:00:00','20:00:00',0,'2026-07-13 03:54:31','2026-07-20 04:24:49'),
(4,1,'Jueves','09:00:00','20:00:00',1,'2026-07-13 03:54:31','2026-07-13 03:54:31'),
(5,1,'Viernes','10:00:00','20:00:00',0,'2026-07-13 03:54:31','2026-07-20 04:27:27'),
(6,1,'Sabado','09:00:00','20:00:00',1,'2026-07-13 03:54:31','2026-07-13 03:54:31'),
(7,1,'Domingo','00:00:00','00:00:00',0,'2026-07-13 03:54:31','2026-07-13 03:54:31'),
(8,2,'Lunes','09:00:00','20:00:00',1,'2026-07-13 03:54:31','2026-07-13 03:54:31'),
(9,2,'Martes','09:00:00','20:00:00',1,'2026-07-13 03:54:31','2026-07-13 03:54:31'),
(10,2,'Miercoles','09:00:00','20:00:00',1,'2026-07-13 03:54:31','2026-07-13 03:54:31'),
(11,2,'Jueves','11:00:00','20:00:00',1,'2026-07-13 03:54:31','2026-07-22 16:46:24'),
(12,2,'Viernes','09:00:00','20:00:00',1,'2026-07-13 03:54:31','2026-07-13 03:54:31'),
(13,2,'Sabado','09:00:00','20:00:00',1,'2026-07-13 03:54:31','2026-07-13 03:54:31'),
(14,2,'Domingo','00:00:00','00:00:00',0,'2026-07-13 03:54:31','2026-07-13 03:54:31'),
(15,3,'Lunes','09:00:00','13:00:00',1,'2026-07-13 03:54:31','2026-07-13 03:54:31'),
(16,3,'Martes','09:00:00','13:00:00',1,'2026-07-13 03:54:31','2026-07-13 03:54:31'),
(17,3,'Miercoles','09:00:00','13:00:00',1,'2026-07-13 03:54:31','2026-07-13 03:54:31'),
(18,3,'Jueves','09:00:00','13:00:00',1,'2026-07-13 03:54:31','2026-07-13 03:54:31'),
(19,3,'Viernes','09:00:00','13:00:00',1,'2026-07-13 03:54:31','2026-07-13 03:54:31'),
(20,3,'Sabado','09:00:00','13:00:00',1,'2026-07-13 03:54:31','2026-07-13 03:54:31'),
(21,3,'Domingo','00:00:00','00:00:00',0,'2026-07-13 03:54:31','2026-07-13 03:54:31'),
(22,4,'Lunes','08:00:00','18:00:00',1,'2026-07-21 02:07:09','2026-07-21 02:07:09'),
(23,4,'Martes','09:00:00','18:00:00',1,'2026-07-21 02:16:32','2026-07-22 01:25:51'),
(24,4,'Miércoles','08:00:00','18:00:00',1,'2026-07-21 02:25:48','2026-07-21 02:25:48'),
(25,4,'Jueves','10:00:00','20:00:00',1,'2026-07-21 23:13:42','2026-07-31 15:40:25'),
(26,4,'Viernes','08:00:00','18:00:00',1,'2026-07-21 23:48:11','2026-07-22 00:23:44'),
(27,4,'Sábado','08:00:00','18:00:00',1,'2026-07-21 23:48:32','2026-07-21 23:48:32'),
(28,4,'Domingo','08:00:00','18:00:00',1,'2026-07-22 00:23:57','2026-07-22 00:23:57');
/*!40000 ALTER TABLE `horarios_estilista` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES
(1,'0001_01_01_000000_create_users_table',1),
(2,'0001_01_01_000001_create_cache_table',1),
(3,'0001_01_01_000002_create_jobs_table',1),
(4,'2026_06_04_161553_create_roles_table',1),
(5,'2026_06_04_161554_create_usuarios_table',1),
(6,'2026_06_04_161559_create_administradores_table',1),
(7,'2026_06_04_161600_create_clientes_table',1),
(8,'2026_06_04_161600_create_estilistas_table',1),
(9,'2026_06_04_161605_create_especialidades_table',1),
(10,'2026_06_04_161606_create_estilista_especialidades_table',1),
(11,'2026_06_04_161606_create_horarios_estilista_table',1),
(12,'2026_06_04_161607_create_servicios_table',1),
(13,'2026_06_04_161611_create_detalles_reserva_table',1),
(14,'2026_06_04_161611_create_estados_reserva_table',1),
(15,'2026_06_04_161611_create_reservas_table',1),
(16,'2026_06_04_161615_create_resenias_table',1),
(17,'2026_06_04_161616_create_notificaciones_table',1),
(18,'2026_06_04_172722_create_personal_access_tokens_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `notificaciones`
--

DROP TABLE IF EXISTS `notificaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `notificaciones` (
  `id_notificacion` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_usuario` bigint(20) unsigned NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `mensaje` text NOT NULL,
  `leido` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_notificacion`),
  KEY `notificaciones_id_usuario_foreign` (`id_usuario`),
  CONSTRAINT `notificaciones_id_usuario_foreign` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificaciones`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `notificaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `notificaciones` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` text NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  KEY `personal_access_tokens_expires_at_index` (`expires_at`)
) ENGINE=InnoDB AUTO_INCREMENT=710 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
INSERT INTO `personal_access_tokens` VALUES
(1,'App\\Models\\Usuario',1,'auth_token_soa','65cccfd7299c307da58d401434c63863742090e92fd5a64532a882c0585f11e7','[\"*\"]',NULL,NULL,'2026-06-04 22:44:33','2026-06-04 22:44:33'),
(2,'App\\Models\\Usuario',1,'auth_token_soa','1c72f08c89440559a6965469687af78e2556eece7250f6fd9cfd53f7f730b6ca','[\"*\"]','2026-06-04 23:05:40',NULL,'2026-06-04 22:55:02','2026-06-04 23:05:40'),
(3,'App\\Models\\Usuario',1,'auth_token_soa','8b6b5ade10757265c528d5e3b72bb723bbe1b1c4d595c5b1cc935295ac21681a','[\"*\"]','2026-06-05 00:00:02',NULL,'2026-06-04 23:05:50','2026-06-05 00:00:02'),
(4,'App\\Models\\Usuario',5,'ClienteToken','93c8677a531cab05a5faddb162bc7ee9a04ede54e65b112e30299ec904b029ce','[\"*\"]',NULL,NULL,'2026-06-04 23:41:35','2026-06-04 23:41:35'),
(5,'App\\Models\\Usuario',9,'MobileClientToken','074c23e06763fd8615d091b7c158796f5bdf46e51d39c4bc98cc3fcf00d8cc6b','[\"*\"]',NULL,NULL,'2026-06-04 23:59:37','2026-06-04 23:59:37'),
(6,'App\\Models\\Usuario',5,'ClienteToken','9d639abb1e5cba0ea86f81cc67b2e8517f7de71459a0076dcb6b168a0556af95','[\"*\"]','2026-06-05 00:12:15',NULL,'2026-06-05 00:06:13','2026-06-05 00:12:15'),
(7,'App\\Models\\Usuario',5,'ClienteToken','e905f2c494b4b594f46e02a9be0e9a5c5b0408ebb18aa136dfea2a43796af35d','[\"*\"]','2026-06-05 00:27:34',NULL,'2026-06-05 00:12:33','2026-06-05 00:27:34'),
(8,'App\\Models\\Usuario',5,'ClienteToken','28333c0df243cd0a0bab1ce1d340129c839fa03b8463534e0487f28ca4e2531b','[\"*\"]','2026-06-05 00:58:07',NULL,'2026-06-05 00:27:54','2026-06-05 00:58:07'),
(9,'App\\Models\\Usuario',5,'ClienteToken','20e086a393069c239e1340488dce4ed5b88922d50f4974332f64e9be88d4cca6','[\"*\"]','2026-06-05 01:06:00',NULL,'2026-06-05 00:58:32','2026-06-05 01:06:00'),
(10,'App\\Models\\Usuario',3,'EstilistaToken','21aca2920977f29535b96a927640c9c2c8099ef82cfa0a63800df5bea73243b1','[\"*\"]','2026-06-05 01:15:01',NULL,'2026-06-05 01:13:35','2026-06-05 01:15:01'),
(11,'App\\Models\\Usuario',3,'EstilistaToken','46124972c4bff464d355bc1db2fe0ee3b06fa09f27f4ff5f2611a60c24669ccf','[\"*\"]',NULL,NULL,'2026-06-05 07:06:24','2026-06-05 07:06:24'),
(12,'App\\Models\\Usuario',3,'EstilistaToken','dbda3a5771364745e57b1c1fb971b388a023c8d102a4fb5d73009cba96b8d727','[\"*\"]',NULL,NULL,'2026-06-05 07:56:31','2026-06-05 07:56:31'),
(13,'App\\Models\\Usuario',5,'ClienteToken','3ecef1d595f0201fdc8cd8c7d0df6024c4a5599c3e6ce315c78acfd2904165ed','[\"*\"]',NULL,NULL,'2026-06-05 08:02:24','2026-06-05 08:02:24'),
(14,'App\\Models\\Usuario',5,'ClienteToken','d04ebea52908c0b6be34ade90e62c625d856a502d73380f5a371794227a206df','[\"*\"]',NULL,NULL,'2026-06-05 08:12:49','2026-06-05 08:12:49'),
(15,'App\\Models\\Usuario',3,'EstilistaToken','1215faf0c6ee7dd4412378c0a869ca5b0e07dd7d7be0daf763521f8f9c828a90','[\"*\"]',NULL,NULL,'2026-06-05 08:13:34','2026-06-05 08:13:34'),
(16,'App\\Models\\Usuario',5,'ClienteToken','caa4bb22c4c62e36bf14af3f934f7b81a2afd3c52889e5e4491d1e721c7bf1fa','[\"*\"]',NULL,NULL,'2026-06-05 08:14:16','2026-06-05 08:14:16'),
(17,'App\\Models\\Usuario',3,'EstilistaToken','03bd1597627df3015c1453a3f90c750d9ac8d99e72cc13793bf7af2f82b0a869','[\"*\"]','2026-06-05 08:32:52',NULL,'2026-06-05 08:32:51','2026-06-05 08:32:52'),
(18,'App\\Models\\Usuario',2,'EstilistaToken','4fe87b2535fd91929ea43e6007b427023bcf77be60e7f66b3d5a9de3a79a9c2d','[\"*\"]','2026-06-05 08:41:08',NULL,'2026-06-05 08:35:50','2026-06-05 08:41:08'),
(19,'App\\Models\\Usuario',2,'EstilistaToken','fe4b4bffc4866d7b9f4218e6c981bc1b5fef6ccbd0ba0af3d5383baccbbe5c20','[\"*\"]','2026-06-05 09:24:49',NULL,'2026-06-05 08:44:38','2026-06-05 09:24:49'),
(20,'App\\Models\\Usuario',2,'EstilistaToken','0f0a74dff21d3f8ae74ca9616e7c476b360f46419f3c9b44c387325e9f453a69','[\"*\"]','2026-06-05 09:01:57',NULL,'2026-06-05 08:52:35','2026-06-05 09:01:57'),
(21,'App\\Models\\Usuario',2,'EstilistaToken','de8db0ba3ec2cb63a0e12940af6c1ec6c0738c31f12eb82963154055ead3306b','[\"*\"]','2026-06-05 09:27:20',NULL,'2026-06-05 09:02:07','2026-06-05 09:27:20'),
(22,'App\\Models\\Usuario',3,'EstilistaToken','2f570105dec93321fdc07aee59678a7589b29994aed34d1459f79e75766d4e5d','[\"*\"]','2026-06-05 10:14:24',NULL,'2026-06-05 09:36:36','2026-06-05 10:14:24'),
(23,'App\\Models\\Usuario',3,'EstilistaToken','9277faa81a436b40fd2c6078a005608cd453736d70ab80c3bcae370e8f308dc2','[\"*\"]','2026-06-05 09:37:20',NULL,'2026-06-05 09:37:20','2026-06-05 09:37:20'),
(24,'App\\Models\\Usuario',3,'EstilistaToken','fabce6cf021a8ae3eb704e97e53b0ff529d591e958590864ed8c881ad4833837','[\"*\"]','2026-06-05 09:43:36',NULL,'2026-06-05 09:42:50','2026-06-05 09:43:36'),
(25,'App\\Models\\Usuario',3,'EstilistaToken','7408f3c76baf892699b96eafb27617bf8c185cb2cba496f854b0eaf63062fb41','[\"*\"]','2026-06-05 10:22:05',NULL,'2026-06-05 09:47:25','2026-06-05 10:22:05'),
(26,'App\\Models\\Usuario',5,'ClienteToken','ceb9553fdad9c3f4a8e6acc552e2fbb6ee3ac001f52771fc579c162bc256e4ff','[\"*\"]','2026-06-05 12:43:31',NULL,'2026-06-05 10:44:23','2026-06-05 12:43:31'),
(27,'App\\Models\\Usuario',5,'ClienteToken','76929ce2608765dbfbfe993920265ec223b3295090891b0bbc59bc7a9efe873c','[\"*\"]','2026-06-05 11:36:02',NULL,'2026-06-05 10:52:38','2026-06-05 11:36:02'),
(28,'App\\Models\\Usuario',5,'ClienteToken','415d430f0d81a7b4c5b02dad30375c313de1ec9dfd1940b40f8fceddcb8433f4','[\"*\"]','2026-06-05 12:19:34',NULL,'2026-06-05 11:58:55','2026-06-05 12:19:34'),
(29,'App\\Models\\Usuario',1,'AdministradorToken','ec0f6630e1966c97e393908c025217b65bea41820def8606d3ed08931d7f8258','[\"*\"]','2026-06-05 18:31:49',NULL,'2026-06-05 18:29:42','2026-06-05 18:31:49'),
(30,'App\\Models\\Usuario',10,'MobileClientToken','29c00db85c729b035ba73a7c7a46031625f7be2332046660748854902831ab49','[\"*\"]',NULL,NULL,'2026-06-05 18:47:16','2026-06-05 18:47:16'),
(31,'App\\Models\\Usuario',3,'EstilistaToken','a507482fbe2e00785ede91ef2e7d0c400fb42a183daf14a831516a46778a5e06','[\"*\"]','2026-06-11 07:18:24',NULL,'2026-06-11 07:18:10','2026-06-11 07:18:24'),
(32,'App\\Models\\Usuario',5,'ClienteToken','0b95e2b6fa2f478a5c8c539a5b76a69ff594d6621ddd167dddf87fc1c1256651','[\"*\"]','2026-06-11 07:19:42',NULL,'2026-06-11 07:19:10','2026-06-11 07:19:42'),
(33,'App\\Models\\Usuario',3,'EstilistaToken','4a76aa85cb7e615949b23db7bd81b7c93045b29aef9d2babedcb044b02166a00','[\"*\"]','2026-06-11 09:20:36',NULL,'2026-06-11 08:40:29','2026-06-11 09:20:36'),
(34,'App\\Models\\Usuario',3,'EstilistaToken','f3120271470172d60cf773165bc3b11c9a048a695c6445e8914c976299c300e9','[\"*\"]',NULL,NULL,'2026-06-11 09:11:56','2026-06-11 09:11:56'),
(35,'App\\Models\\Usuario',3,'EstilistaToken','5c4e5369379d75064de4c7562195d28258469ffdd4f8f6a025f8aa5cfba34211','[\"*\"]','2026-06-11 09:14:09',NULL,'2026-06-11 09:11:58','2026-06-11 09:14:09'),
(36,'App\\Models\\Usuario',1,'AdministradorToken','470e0f2190b2406dabd666fed7fc80451e72b74a13907c625bc421e93abe9941','[\"*\"]','2026-06-18 06:24:29',NULL,'2026-06-18 06:01:53','2026-06-18 06:24:29'),
(39,'App\\Models\\Usuario',4,'ClienteToken','10024d01e0be37b92b686434c61562c0ba3365d2981cdd0e0456c6a2811fa0a6','[\"*\"]','2026-06-18 07:19:55',NULL,'2026-06-18 07:04:19','2026-06-18 07:19:55'),
(40,'App\\Models\\Usuario',3,'EstilistaToken','092e22767c548e3cc05da5af3eea81a82cb2edc04c25008b326789d08f252f1c','[\"*\"]','2026-06-18 07:23:09',NULL,'2026-06-18 07:20:43','2026-06-18 07:23:09'),
(41,'App\\Models\\Usuario',4,'ClienteToken','7abc004384e97815ccc55dc1c69ae5c544e24e0ce5240a198519744f53e5aa31','[\"*\"]','2026-06-18 08:03:34',NULL,'2026-06-18 08:03:15','2026-06-18 08:03:34'),
(42,'App\\Models\\Usuario',3,'EstilistaToken','4dd931c37d7a8d772955a0a5e0ee2f7c7c3f8aae1914a31a21dfb84060c38a1d','[\"*\"]','2026-06-18 08:31:04',NULL,'2026-06-18 08:05:48','2026-06-18 08:31:04'),
(44,'App\\Models\\Usuario',1,'AdministradorToken','e8631819b85ecda8553198ad5d06f24f5cbeee128f05bd85972662430cdce80a','[\"*\"]','2026-06-18 08:47:01',NULL,'2026-06-18 08:45:20','2026-06-18 08:47:01'),
(45,'App\\Models\\Usuario',1,'AdministradorToken','195539fd5c9cd2c1f86a69b22fe37ff40a62b8028ee7c9f88c4bb5436e0d983f','[\"*\"]','2026-06-19 07:30:33',NULL,'2026-06-19 07:25:19','2026-06-19 07:30:33'),
(46,'App\\Models\\Usuario',1,'AdministradorToken','d0f0c4de6b78a6e1841d72feb091761033fdb9991e2d1d14eabe3f5303d31ca8','[\"*\"]',NULL,NULL,'2026-06-21 03:01:38','2026-06-21 03:01:38'),
(50,'App\\Models\\Usuario',4,'ClienteToken','4d6d62afa89ffdb073d71f6b025a7e28a30ea00ed597353c08a0f17ba0564e87','[\"*\"]',NULL,NULL,'2026-06-21 23:56:37','2026-06-21 23:56:37'),
(51,'App\\Models\\Usuario',4,'ClienteToken','74b910400000ffb444d4be6b1e0231a249d508c6db35aed544b44ad8053cab7e','[\"*\"]',NULL,NULL,'2026-06-22 00:03:44','2026-06-22 00:03:44'),
(52,'App\\Models\\Usuario',4,'ClienteToken','3267499fd7fdd37bf3c2eb841c44e05ccfd3628f8d5271116f00846fdc15594e','[\"*\"]',NULL,NULL,'2026-06-22 00:08:08','2026-06-22 00:08:08'),
(53,'App\\Models\\Usuario',4,'ClienteToken','6eb05bdbdff8431456429da9bdff9a84a30c811c50c99aa588395bf29937d04d','[\"*\"]',NULL,NULL,'2026-06-22 00:08:55','2026-06-22 00:08:55'),
(59,'App\\Models\\Usuario',1,'AdministradorToken','7a5f4b91c33847c1f9891b0d7e6b78ed47c2de2dacce6d2e5f6ef3ae586dea71','[\"*\"]','2026-06-22 02:47:22',NULL,'2026-06-22 02:46:59','2026-06-22 02:47:22'),
(60,'App\\Models\\Usuario',1,'AdministradorToken','a100b5a395e9a434f3bcee67a19f20873d3d9347e1926fb3bf1cc29f7ad1d95d','[\"*\"]','2026-06-22 03:04:58',NULL,'2026-06-22 02:48:07','2026-06-22 03:04:58'),
(61,'App\\Models\\Usuario',1,'AdministradorToken','74ff070e441c6bb3c9ebc2bd0ca6212d7ebbb0822e9162c0effd05991dec818f','[\"*\"]','2026-06-22 03:19:57',NULL,'2026-06-22 03:18:43','2026-06-22 03:19:57'),
(62,'App\\Models\\Usuario',1,'AdministradorToken','e212cdb5827fdc883dd3c4113136f733620d57f63d478b680dc5ce9b43b4183d','[\"*\"]','2026-06-22 03:32:26',NULL,'2026-06-22 03:32:23','2026-06-22 03:32:26'),
(63,'App\\Models\\Usuario',3,'EstilistaToken','2911e57d6ff2184e499e2fe63a6b3b41e002ad8d530cfa8c162dd6d6d50bad5a','[\"*\"]',NULL,NULL,'2026-06-22 03:43:07','2026-06-22 03:43:07'),
(65,'App\\Models\\Usuario',4,'ClienteToken','5c7ddc2e4b773924ba5a74597f61dbd88ee6994ab7c6ebb3baad00784364fefc','[\"*\"]','2026-06-22 04:38:52',NULL,'2026-06-22 03:48:14','2026-06-22 04:38:52'),
(68,'App\\Models\\Usuario',1,'AdministradorToken','fe9175d8c447d483558a81f624df315fee5a7e9c4c34a233b56a0ee695681f43','[\"*\"]','2026-06-22 04:33:09',NULL,'2026-06-22 04:33:08','2026-06-22 04:33:09'),
(69,'App\\Models\\Usuario',4,'ClienteToken','112a927893f4d7cf92c83d854443a193401cbd27a14d7b4ea8ae2b6d72f036da','[\"*\"]','2026-06-22 04:36:34',NULL,'2026-06-22 04:35:44','2026-06-22 04:36:34'),
(70,'App\\Models\\Usuario',1,'AdministradorToken','0192bf14cfa549399bcb25637bf90689f2ddc6b7ed928d6522a2c6e9c651c15a','[\"*\"]','2026-06-22 05:11:12',NULL,'2026-06-22 05:11:11','2026-06-22 05:11:12'),
(71,'App\\Models\\Usuario',1,'AdministradorToken','d6996873995ebda85892e1536af4694d4450f55f6be4a6c6e9365aa60a1f5851','[\"*\"]','2026-06-22 05:13:12',NULL,'2026-06-22 05:13:11','2026-06-22 05:13:12'),
(73,'App\\Models\\Usuario',1,'AdministradorToken','5f49aaa0ee3659e8bb47edc525ea69f1ebf106c1f78e4a05aa62bc319dc1c093','[\"*\"]','2026-06-22 05:24:51',NULL,'2026-06-22 05:24:50','2026-06-22 05:24:51'),
(74,'App\\Models\\Usuario',1,'AdministradorToken','1444841f30c9b63e56a4995029f5a1d7ba84c6d829373633fb0ca1180ae831f9','[\"*\"]','2026-06-22 05:33:56',NULL,'2026-06-22 05:33:55','2026-06-22 05:33:56'),
(75,'App\\Models\\Usuario',1,'AdministradorToken','e5c53b4136e1ab3b809cc0f1e3aeecfab361b4809b30a5b1fbd00d5600140b80','[\"*\"]','2026-06-22 05:38:53',NULL,'2026-06-22 05:37:38','2026-06-22 05:38:53'),
(76,'App\\Models\\Usuario',1,'AdministradorToken','1c03b4b8821056a50b46e36a975219d8203bc51c02e5b0d9dcedb97b0af0897b','[\"*\"]','2026-06-22 05:53:00',NULL,'2026-06-22 05:52:57','2026-06-22 05:53:00'),
(77,'App\\Models\\Usuario',1,'AdministradorToken','0ca88ae7eb00eb294c81c56e2bd54b65fc9c8630c0eeb2ced9ef6965e42bcf6e','[\"*\"]','2026-06-22 06:02:27',NULL,'2026-06-22 06:02:00','2026-06-22 06:02:27'),
(78,'App\\Models\\Usuario',1,'AdministradorToken','0376c834c851ace43bfb77789bd257dd692808ee25973573acb5c7afe300f994','[\"*\"]','2026-06-22 06:21:08',NULL,'2026-06-22 06:20:01','2026-06-22 06:21:08'),
(80,'App\\Models\\Usuario',4,'ClienteToken','2e89fc010c00968e141ddbf7f317817ee0b12ae925f34ca0688a1e6d9132d171','[\"*\"]',NULL,NULL,'2026-06-22 13:20:45','2026-06-22 13:20:45'),
(81,'App\\Models\\Usuario',4,'ClienteToken','c6f90ac9dc811a0ddb5c3ea7a8675e879c3797e504a24b13b734c145d55a9806','[\"*\"]',NULL,NULL,'2026-06-22 13:20:55','2026-06-22 13:20:55'),
(82,'App\\Models\\Usuario',4,'ClienteToken','6cf59ba328a86fe2e018c99fcb41026ef61747466fed99410a8d0bce6c8ee961','[\"*\"]',NULL,NULL,'2026-06-22 13:21:09','2026-06-22 13:21:09'),
(83,'App\\Models\\Usuario',4,'ClienteToken','aea0dad9ef26d02be0578dfbbfe3c43e31b86b404a1e9cc5dd946d25805108c5','[\"*\"]',NULL,NULL,'2026-06-22 13:21:17','2026-06-22 13:21:17'),
(84,'App\\Models\\Usuario',4,'ClienteToken','e10f9ba7ba07e11edac0a50f998b0325fa367362eea12a4fcbdcc3e62282f781','[\"*\"]',NULL,NULL,'2026-06-22 13:21:47','2026-06-22 13:21:47'),
(85,'App\\Models\\Usuario',4,'ClienteToken','e5cbe380fe5b4183f33ce00bf8c68b639b7e15f0e7042bf85091d2cfd82e8cbc','[\"*\"]',NULL,NULL,'2026-06-22 13:22:18','2026-06-22 13:22:18'),
(86,'App\\Models\\Usuario',4,'ClienteToken','b5dc7c663a8d6fd16983bfcc08339ee62e84b4cc94e331082542dedb310b6f49','[\"*\"]',NULL,NULL,'2026-06-22 13:28:55','2026-06-22 13:28:55'),
(90,'App\\Models\\Usuario',4,'ClienteToken','d7a5b167c1c01649096d1b825e655da8eb71d1334649803a798ee18d598bbdee','[\"*\"]','2026-06-22 15:51:59',NULL,'2026-06-22 15:51:58','2026-06-22 15:51:59'),
(93,'App\\Models\\Usuario',4,'ClienteToken','63f1fe9d23882998fe4fa9d33728c220a2b1a6a2d632bc6133900c40c43ed00d','[\"*\"]','2026-06-23 02:58:12',NULL,'2026-06-22 22:46:42','2026-06-23 02:58:12'),
(94,'App\\Models\\Usuario',1,'AdministradorToken','3c3f26c48f030b05383ac6c1dea59f81e344ccb96937748ca25e99d441c0545f','[\"*\"]','2026-06-22 23:14:51',NULL,'2026-06-22 23:13:54','2026-06-22 23:14:51'),
(95,'App\\Models\\Usuario',1,'AdministradorToken','d4747ae658ea5ca7d463d832516401d0adf280eb1c195b8c971ede6a4088a988','[\"*\"]','2026-06-22 23:23:11',NULL,'2026-06-22 23:23:08','2026-06-22 23:23:11'),
(96,'App\\Models\\Usuario',1,'AdministradorToken','5ae246aae34ec92cb1ba0759dd0f10ffaa3f229ca66db74476c6ef208280231c','[\"*\"]','2026-06-22 23:34:42',NULL,'2026-06-22 23:34:30','2026-06-22 23:34:42'),
(97,'App\\Models\\Usuario',1,'AdministradorToken','0a63962991073b07de9720a7432ab431573fb5e07f8a0e16b109ac712434db1d','[\"*\"]','2026-06-22 23:46:05',NULL,'2026-06-22 23:45:40','2026-06-22 23:46:05'),
(98,'App\\Models\\Usuario',1,'AdministradorToken','cbc338e111faa770c5cf801d535b2aa2a7b5c47ade5b86229647d42b1979c7c4','[\"*\"]','2026-06-22 23:54:05',NULL,'2026-06-22 23:53:49','2026-06-22 23:54:05'),
(99,'App\\Models\\Usuario',1,'AdministradorToken','412e3b4dd6dea1c792d814acaca96504ebb861cfa1486014de204b962ffe7d43','[\"*\"]','2026-06-23 00:34:40',NULL,'2026-06-23 00:34:07','2026-06-23 00:34:40'),
(101,'App\\Models\\Usuario',1,'AdministradorToken','956373e8eb39caeea5aa5df9453387f28798a895482e60a7d40f4882583a32e9','[\"*\"]','2026-06-23 00:43:25',NULL,'2026-06-23 00:43:04','2026-06-23 00:43:25'),
(102,'App\\Models\\Usuario',1,'AdministradorToken','e8f24b2b884e6f06bfa467cb15bd6f8c2c7252f5c6bce8834a9d2afb989fc36a','[\"*\"]','2026-06-23 00:52:21',NULL,'2026-06-23 00:52:01','2026-06-23 00:52:21'),
(103,'App\\Models\\Usuario',1,'AdministradorToken','edcab28aeaffca08fee1eb095c5293291e33bf0e533fb5ca3865378c4efe19c7','[\"*\"]','2026-06-23 00:56:06',NULL,'2026-06-23 00:55:58','2026-06-23 00:56:06'),
(104,'App\\Models\\Usuario',1,'AdministradorToken','620cd1946dfc198c834c3e6a76c0bb06570b06e5428cc2e1a391328392c5bb6a','[\"*\"]','2026-06-23 00:58:36',NULL,'2026-06-23 00:58:22','2026-06-23 00:58:36'),
(105,'App\\Models\\Usuario',1,'AdministradorToken','f5c4f98fc05f991fc4455aaca311a6f5d59c25b3341e12b75ff92abfcc8c4ca5','[\"*\"]','2026-06-23 01:05:28',NULL,'2026-06-23 01:04:35','2026-06-23 01:05:28'),
(106,'App\\Models\\Usuario',1,'AdministradorToken','af6cdf6de3814a558521de9609393eb4020aafb7235b96b250fa4a22acc82fec','[\"*\"]','2026-06-23 01:17:00',NULL,'2026-06-23 01:15:14','2026-06-23 01:17:00'),
(107,'App\\Models\\Usuario',1,'AdministradorToken','f00ee6fc999519db4db99eb666cd13a03a3d6e53bdc30ded6fca73ad92828c1a','[\"*\"]','2026-06-23 01:27:12',NULL,'2026-06-23 01:24:42','2026-06-23 01:27:12'),
(108,'App\\Models\\Usuario',1,'AdministradorToken','941b4b44b31c392756cd2208e1f12734b9fac35268a4a2cbd5045f630a23006a','[\"*\"]','2026-06-23 01:32:09',NULL,'2026-06-23 01:32:07','2026-06-23 01:32:09'),
(109,'App\\Models\\Usuario',1,'AdministradorToken','dd4c1d4f51ba1edb1cb0b1e76addb123d49271ef38d8513f8aaafed8e0a6ef55','[\"*\"]','2026-06-23 01:34:48',NULL,'2026-06-23 01:34:44','2026-06-23 01:34:48'),
(110,'App\\Models\\Usuario',1,'AdministradorToken','f094940e9794819ac15b7d885c2a78d5361a42a3cedc25cd747a8be666ab93fa','[\"*\"]','2026-06-23 01:46:24',NULL,'2026-06-23 01:46:07','2026-06-23 01:46:24'),
(111,'App\\Models\\Usuario',1,'AdministradorToken','f0af76dbda11eb3c44a8f16e1df84e583c333f14dde940fa07feba571fdc273e','[\"*\"]','2026-06-23 01:52:06',NULL,'2026-06-23 01:51:01','2026-06-23 01:52:06'),
(112,'App\\Models\\Usuario',1,'AdministradorToken','113968db3b2104b547b57d41334180df6af7aeee37a95bbe577d6630bfab99db','[\"*\"]','2026-06-23 01:59:22',NULL,'2026-06-23 01:58:32','2026-06-23 01:59:22'),
(113,'App\\Models\\Usuario',1,'AdministradorToken','e101ee020d68ec890cf38ac1da976ae7eccdc127f2c6c633de4e1f2e77969644','[\"*\"]','2026-06-23 02:02:01',NULL,'2026-06-23 02:01:54','2026-06-23 02:02:01'),
(114,'App\\Models\\Usuario',1,'AdministradorToken','67c842b56771dbcefe1a954f3f5282dff6361e374cdbf32fc40b90c3cace8c56','[\"*\"]','2026-06-23 02:10:06',NULL,'2026-06-23 02:10:03','2026-06-23 02:10:06'),
(115,'App\\Models\\Usuario',1,'AdministradorToken','784439ae3ee9811d7a9671ec02b5198651a48ea537007b803954bcc51ee08dfd','[\"*\"]','2026-06-23 02:13:16',NULL,'2026-06-23 02:13:13','2026-06-23 02:13:16'),
(117,'App\\Models\\Usuario',1,'AdministradorToken','82f97f956a66948e13cdb57143698f6b86e5ec68db63217d8f000470160bc2cb','[\"*\"]','2026-06-23 02:20:56',NULL,'2026-06-23 02:19:51','2026-06-23 02:20:56'),
(118,'App\\Models\\Usuario',1,'AdministradorToken','7f8de3a40357042da24d8fd7b69da768ef6cde3f273b55d01bdc667494f5c8ff','[\"*\"]','2026-06-23 02:33:24',NULL,'2026-06-23 02:32:33','2026-06-23 02:33:24'),
(119,'App\\Models\\Usuario',1,'AdministradorToken','186f5ad0e2bf4cc988e3a734b4a4612fc24ab4c25c2f02a3fdb8d2c78496231a','[\"*\"]','2026-06-23 02:37:28',NULL,'2026-06-23 02:37:27','2026-06-23 02:37:28'),
(125,'App\\Models\\Usuario',1,'AdministradorToken','b0c0beae0c70838bb940683827c60562dfc25e4330aecba9d3d48cd19ebcc10c','[\"*\"]','2026-06-23 03:01:15',NULL,'2026-06-23 03:01:12','2026-06-23 03:01:15'),
(128,'App\\Models\\Usuario',3,'EstilistaToken','8c5a86d66c4a0c749886a8fe2c1e94bb7e7bf6353b3cc754ef5fba9dc1ce247c','[\"*\"]',NULL,NULL,'2026-06-23 03:41:23','2026-06-23 03:41:23'),
(130,'App\\Models\\Usuario',3,'EstilistaToken','0e6e149e4b73b5ad0778de77d91c977c512efe09a58ca35272ae8b5745dd6bdd','[\"*\"]',NULL,NULL,'2026-06-23 03:41:57','2026-06-23 03:41:57'),
(135,'App\\Models\\Usuario',12,'MobileClientToken','02b01289380487f2f512517a81f58532b2ae0535b9e30156dab487b22158280a','[\"*\"]',NULL,NULL,'2026-06-23 04:21:09','2026-06-23 04:21:09'),
(136,'App\\Models\\Usuario',13,'MobileClientToken','83b82c7c6c770a41dc4a42d399d874220ff09025c9d5ca2a3b2d29cabee82392','[\"*\"]',NULL,NULL,'2026-06-23 04:24:29','2026-06-23 04:24:29'),
(138,'App\\Models\\Usuario',14,'MobileClientToken','e13754e4624fbef47c08728ec2a1d219c572eb773604b58d502188dfa73e934c','[\"*\"]',NULL,NULL,'2026-06-23 04:29:13','2026-06-23 04:29:13'),
(139,'App\\Models\\Usuario',15,'MobileClientToken','bd4f34b90603b5b6306a8365246ff7275b7d65b56ff29b8c46627885ba5b24fe','[\"*\"]',NULL,NULL,'2026-06-23 04:29:55','2026-06-23 04:29:55'),
(140,'App\\Models\\Usuario',16,'MobileClientToken','b65cb312c3276d927f58fe95a9cd6794472474bc5d2250e5072a5a7b41479cf0','[\"*\"]',NULL,NULL,'2026-06-23 04:30:31','2026-06-23 04:30:31'),
(141,'App\\Models\\Usuario',16,'ClienteToken','e2bfad62c03c3f3c83ba445aeaca9c242ead75b3514edbf2620d1297201472da','[\"*\"]',NULL,NULL,'2026-06-23 04:30:43','2026-06-23 04:30:43'),
(144,'App\\Models\\Usuario',16,'ClienteToken','c7433ae5a3dd59ecfa3ecb73392a830793a135c31ee0db5be421e32294fb91e8','[\"*\"]',NULL,NULL,'2026-06-23 04:34:03','2026-06-23 04:34:03'),
(146,'App\\Models\\Usuario',17,'MobileClientToken','40e305396257a3dbd12f1e3bc0ba8d0c50567e305d9ed24d3e55088008d12f4e','[\"*\"]',NULL,NULL,'2026-06-23 04:35:33','2026-06-23 04:35:33'),
(147,'App\\Models\\Usuario',18,'MobileClientToken','0a9c0e6c7c640e975db46877560d8786f2588f9384ed7efa64e7238ab102197a','[\"*\"]',NULL,NULL,'2026-06-23 04:39:03','2026-06-23 04:39:03'),
(149,'App\\Models\\Usuario',19,'MobileClientToken','4954b6931f2f8fd1106997637cdd2b65836966bd884bab6c51e222c458654c20','[\"*\"]',NULL,NULL,'2026-06-23 04:42:15','2026-06-23 04:42:15'),
(150,'App\\Models\\Usuario',1,'AdministradorToken','3df309ecd79500b1f5e1df5e84ffbb16f37191d0f2d02790ff9279fadd80d651','[\"*\"]','2026-06-23 04:52:03',NULL,'2026-06-23 04:52:03','2026-06-23 04:52:03'),
(151,'App\\Models\\Usuario',1,'AdministradorToken','b03072a411240dfb2281c5f20260ec889474170b2b8adbe91590b4726b6200c9','[\"*\"]','2026-06-23 04:55:49',NULL,'2026-06-23 04:54:28','2026-06-23 04:55:49'),
(152,'App\\Models\\Usuario',1,'AdministradorToken','09cddb1e85575a3a3d50a1a989a52ce8edf909b58d5adacd4da476576f34ff60','[\"*\"]','2026-06-23 16:29:17',NULL,'2026-06-23 16:27:49','2026-06-23 16:29:17'),
(154,'App\\Models\\Usuario',4,'ClienteToken','b827bdcde04656d0cfb9ac04a74904137be88710629fb6cbc9cba3f51d3223f3','[\"*\"]','2026-06-23 18:27:48',NULL,'2026-06-23 18:27:47','2026-06-23 18:27:48'),
(155,'App\\Models\\Usuario',4,'ClienteToken','c5794080a191d7a0e3e0a157bdda5134af4785e0c08853708eff18814daba50f','[\"*\"]','2026-06-23 18:30:21',NULL,'2026-06-23 18:27:49','2026-06-23 18:30:21'),
(156,'App\\Models\\Usuario',3,'EstilistaToken','160cc2aa791db568c91ed56480f91595b05eb8255539471bedf70132d3ca64e9','[\"*\"]',NULL,NULL,'2026-06-24 03:01:53','2026-06-24 03:01:53'),
(157,'App\\Models\\Usuario',4,'ClienteToken','30747f1e3eb08a3e283403309bb9c60f7949b69a12dffb54f43799182575bea3','[\"*\"]',NULL,NULL,'2026-06-24 12:15:39','2026-06-24 12:15:39'),
(158,'App\\Models\\Usuario',4,'ClienteToken','287bd88918f67dadedbddcf2a75471468e8217da7a3a9525538e67d1d525f8f5','[\"*\"]',NULL,NULL,'2026-06-24 15:52:22','2026-06-24 15:52:22'),
(159,'App\\Models\\Usuario',4,'ClienteToken','67f383760fcd5192fbe970357c04e4b0df4a09a383312b255d72315be291344c','[\"*\"]',NULL,NULL,'2026-06-24 15:55:28','2026-06-24 15:55:28'),
(160,'App\\Models\\Usuario',3,'EstilistaToken','279072bc813ffe391f061313034de14a4e4376e64fb166ff1fcf96d218566c4b','[\"*\"]',NULL,NULL,'2026-06-24 16:15:58','2026-06-24 16:15:58'),
(162,'App\\Models\\Usuario',4,'ClienteToken','adcebc787d592c246b46e6362d1855cdfb05ae57d49c9cea7f717320f33b8fa9','[\"*\"]','2026-06-25 00:47:46',NULL,'2026-06-25 00:08:05','2026-06-25 00:47:46'),
(163,'App\\Models\\Usuario',1,'AdministradorToken','59fab3d0afd23e6e6b4ec7548b5e9a4236e08ff45324600f8e904221922eabb4','[\"*\"]','2026-06-25 00:36:00',NULL,'2026-06-25 00:35:58','2026-06-25 00:36:00'),
(164,'App\\Models\\Usuario',1,'AdministradorToken','e547d562a303c95ade5a54e4870bc5ee747ebcc43944d84cfc0be33a0eebf5a7','[\"*\"]','2026-06-25 00:39:56',NULL,'2026-06-25 00:39:54','2026-06-25 00:39:56'),
(165,'App\\Models\\Usuario',1,'AdministradorToken','007d0a3e41f5ed64d111a332e7cef00aeba178908d07a5957af64c908c8c8c26','[\"*\"]','2026-06-25 00:46:16',NULL,'2026-06-25 00:46:14','2026-06-25 00:46:16'),
(166,'App\\Models\\Usuario',1,'AdministradorToken','851a456ef0891f16bd083f5164dd23caa5858f5600e9996b28d411554e0189e8','[\"*\"]','2026-06-25 01:16:12',NULL,'2026-06-25 01:16:10','2026-06-25 01:16:12'),
(167,'App\\Models\\Usuario',3,'EstilistaToken','e3eb0442ec4eb22b1de0eaeed4a073ad13ae85f8cd4677a0242eccc6d82cdeea','[\"*\"]',NULL,NULL,'2026-06-25 01:17:17','2026-06-25 01:17:17'),
(168,'App\\Models\\Usuario',1,'AdministradorToken','a41a6d8b8952d1662cb90dd4e9bd32cd9b4a300c262ba755c542441115155289','[\"*\"]','2026-06-25 01:32:27',NULL,'2026-06-25 01:32:25','2026-06-25 01:32:27'),
(169,'App\\Models\\Usuario',20,'MobileClientToken','1108b3da9fa7d87a09ec5724073b0a3b7fc832f27c45b10930fb4ae85612deaf','[\"*\"]',NULL,NULL,'2026-06-25 01:56:25','2026-06-25 01:56:25'),
(170,'App\\Models\\Usuario',20,'ClienteToken','e1dee5d214051940d46e4ba13937b1734470f40003df39ad5e581c1587ba29f4','[\"*\"]',NULL,NULL,'2026-06-25 01:56:40','2026-06-25 01:56:40'),
(171,'App\\Models\\Usuario',20,'ClienteToken','ffc2045137ba833c2b7ec904ce631e7226b1652c28214012e30e559a04d10eef','[\"*\"]',NULL,NULL,'2026-06-25 02:02:32','2026-06-25 02:02:32'),
(172,'App\\Models\\Usuario',20,'ClienteToken','1960abe4dc8c72e60e57ffba05a80384127be6e1e10a21745b2daf33491ac228','[\"*\"]',NULL,NULL,'2026-06-25 02:08:21','2026-06-25 02:08:21'),
(174,'App\\Models\\Usuario',20,'ClienteToken','e02219aa57a24988abce99a4b5a99523721807669671093e22e50a0f93c4ba88','[\"*\"]',NULL,NULL,'2026-06-25 02:15:00','2026-06-25 02:15:00'),
(176,'App\\Models\\Usuario',20,'ClienteToken','2d53834226d0252d33e1b73053b50a640cd841d28a96d7d876932a75f2ac8e0a','[\"*\"]',NULL,NULL,'2026-06-25 02:26:39','2026-06-25 02:26:39'),
(177,'App\\Models\\Usuario',1,'AdministradorToken','3333ef9c65204be6e8d17efbc802e9725ddab34f54481f1afbc444f40c3b579f','[\"*\"]','2026-06-25 02:42:31',NULL,'2026-06-25 02:42:29','2026-06-25 02:42:31'),
(178,'App\\Models\\Usuario',1,'AdministradorToken','24a764fbdb1c8a0becb2d1e84564032595507922ae843348079499d5cf35269a','[\"*\"]','2026-06-25 02:48:16',NULL,'2026-06-25 02:48:14','2026-06-25 02:48:16'),
(179,'App\\Models\\Usuario',1,'AdministradorToken','5298bfad305b213a3bb64b0454df98b39b5e3253d3e9816adf3f8bb3b79475b2','[\"*\"]','2026-06-25 02:52:43',NULL,'2026-06-25 02:51:48','2026-06-25 02:52:43'),
(181,'App\\Models\\Usuario',20,'ClienteToken','53aa66da1916cc45eefd5d86980eba22fd53c5eecac74451f8c5cda391617678','[\"*\"]',NULL,NULL,'2026-06-25 02:55:52','2026-06-25 02:55:52'),
(182,'App\\Models\\Usuario',1,'AdministradorToken','d5f7182552027b8da82ccc630d6aaf7da64efd7c8c1d2b3ab58021a461374064','[\"*\"]','2026-06-25 02:58:25',NULL,'2026-06-25 02:58:20','2026-06-25 02:58:25'),
(183,'App\\Models\\Usuario',3,'EstilistaToken','2c9a083d3123bb5bfd8306a6ad7a856a1fb5f6a25e3aac27dc25857c3ac6118a','[\"*\"]',NULL,NULL,'2026-06-25 03:00:37','2026-06-25 03:00:37'),
(184,'App\\Models\\Usuario',3,'EstilistaToken','385438c8dfda0064a56991bf9be070de8480ca37a222aad77483b4358debef8c','[\"*\"]',NULL,NULL,'2026-06-25 03:01:05','2026-06-25 03:01:05'),
(185,'App\\Models\\Usuario',3,'EstilistaToken','bcc78c736ed133eb57fd1070fb75853b1e126e9afdfd9f83a9f910957229e11a','[\"*\"]','2026-06-25 03:18:30',NULL,'2026-06-25 03:01:15','2026-06-25 03:18:30'),
(186,'App\\Models\\Usuario',20,'ClienteToken','76b06853dd789461aee63c5873f779300235a81737bf6cc9c988493d3c98d954','[\"*\"]',NULL,NULL,'2026-06-25 03:05:11','2026-06-25 03:05:11'),
(187,'App\\Models\\Usuario',1,'AdministradorToken','b9569e6c0141460be4d8e6a38708c0010d6a57585c2d3233ec7515b038529b80','[\"*\"]','2026-06-25 03:06:58',NULL,'2026-06-25 03:06:56','2026-06-25 03:06:58'),
(188,'App\\Models\\Usuario',20,'ClienteToken','b5755a8db8d32aff9625239e5251ade60c5b44134548d6afd3bedee236ac07a8','[\"*\"]',NULL,NULL,'2026-06-25 03:13:09','2026-06-25 03:13:09'),
(189,'App\\Models\\Usuario',1,'AdministradorToken','fb6abc54272afe008595c5555f8857103e01e0e1c4f59fb1c3e2685cf85c3779','[\"*\"]','2026-06-25 03:15:11',NULL,'2026-06-25 03:15:08','2026-06-25 03:15:11'),
(190,'App\\Models\\Usuario',1,'AdministradorToken','1d2c79057859b8f0cba7be827d844398c7ddbc513aca78001320cfd2c461300c','[\"*\"]','2026-06-25 03:18:38',NULL,'2026-06-25 03:18:36','2026-06-25 03:18:38'),
(191,'App\\Models\\Usuario',20,'ClienteToken','92b1803a9af9b613b65dc619822962e526427c75c227e24b6424a798b2fedcab','[\"*\"]',NULL,NULL,'2026-06-25 03:21:31','2026-06-25 03:21:31'),
(193,'App\\Models\\Usuario',1,'AdministradorToken','57790f24f6f58712b50b7b8538dbe6302ea792f63879fbf3dc583a3f98dec229','[\"*\"]','2026-06-25 03:30:39',NULL,'2026-06-25 03:30:37','2026-06-25 03:30:39'),
(194,'App\\Models\\Usuario',20,'ClienteToken','f8de08d77ed6b47e485d75e41c3d291fad8b1d20bf45f1eae43216855a605cb7','[\"*\"]',NULL,NULL,'2026-06-25 03:30:58','2026-06-25 03:30:58'),
(195,'App\\Models\\Usuario',20,'ClienteToken','63f1891740de3f6cfacc3b0ce6a393671b5c6501bb4c855149839eab699075de','[\"*\"]',NULL,NULL,'2026-06-25 03:39:46','2026-06-25 03:39:46'),
(196,'App\\Models\\Usuario',1,'AdministradorToken','fc2ca8d81fe42fcb4cf82675eef2f035803e0955cd9941c244eb9bde2f37d522','[\"*\"]','2026-06-25 03:50:35',NULL,'2026-06-25 03:43:07','2026-06-25 03:50:35'),
(198,'App\\Models\\Usuario',20,'ClienteToken','3ea4acf0819fd17489f086b353cfaca02cf221b5fbe01c30dd07fe3c18c46f84','[\"*\"]',NULL,NULL,'2026-06-25 03:44:27','2026-06-25 03:44:27'),
(199,'App\\Models\\Usuario',20,'ClienteToken','0cfcc09745a190e662f5d022d4ae3643be014952d573c847fe38d7bb6d516fee','[\"*\"]',NULL,NULL,'2026-06-25 03:55:41','2026-06-25 03:55:41'),
(200,'App\\Models\\Usuario',20,'ClienteToken','39cb305a139db7c72207c7ecbca040b30c9e42fe9614fb994ef758fc6706c750','[\"*\"]','2026-06-25 03:57:47',NULL,'2026-06-25 03:57:39','2026-06-25 03:57:47'),
(201,'App\\Models\\Usuario',20,'ClienteToken','f924531aed45f2318516fbe7d0d19bcc6aeaed227f05605347889a002c9d35d6','[\"*\"]','2026-06-25 04:02:40',NULL,'2026-06-25 04:02:34','2026-06-25 04:02:40'),
(202,'App\\Models\\Usuario',1,'AdministradorToken','284896d98d982fb13c658be8074c397f9390b1300c92d85d1f13873e69396442','[\"*\"]','2026-06-25 04:05:16',NULL,'2026-06-25 04:05:06','2026-06-25 04:05:16'),
(203,'App\\Models\\Usuario',20,'ClienteToken','75e0a7b3878ef2f171d0f3153b86de1f3e59ef66f934498c797a6b2e5545c43d','[\"*\"]','2026-06-25 04:07:34',NULL,'2026-06-25 04:05:38','2026-06-25 04:07:34'),
(204,'App\\Models\\Usuario',1,'AdministradorToken','9481e41d1b9eac347f3a0466ef49d0b4c956ba7a14bf714bdd35274f0caf6c19','[\"*\"]','2026-06-25 04:10:47',NULL,'2026-06-25 04:06:31','2026-06-25 04:10:47'),
(206,'App\\Models\\Usuario',20,'ClienteToken','192f9afc3aa50472b8e1dee1df76c8784ad9d8b528ab18658cd8a4c22f4fcead','[\"*\"]','2026-06-25 04:19:09',NULL,'2026-06-25 04:19:02','2026-06-25 04:19:09'),
(207,'App\\Models\\Usuario',1,'AdministradorToken','6abf68ddde0ccadee66c791826aed9dbcf01ec8769590c41d6a301073388f456','[\"*\"]','2026-06-25 04:22:08',NULL,'2026-06-25 04:22:07','2026-06-25 04:22:08'),
(208,'App\\Models\\Usuario',20,'ClienteToken','310364f8051354b1c3d37c542e54df3ddf5901d398f77fe13c52bd9b18df982f','[\"*\"]','2026-06-25 04:29:01',NULL,'2026-06-25 04:28:50','2026-06-25 04:29:01'),
(209,'App\\Models\\Usuario',20,'ClienteToken','c2d9c14b63be6930cfe82d5e72a03df76c869ea627eea0f9f54f9b0d18c86ecd','[\"*\"]',NULL,NULL,'2026-06-25 04:38:14','2026-06-25 04:38:14'),
(210,'App\\Models\\Usuario',20,'ClienteToken','1375c16e5c17d14fbcd65d6cd98d7af36853df286e5ce58e9a90ee1b4303f7b5','[\"*\"]',NULL,NULL,'2026-06-25 04:48:18','2026-06-25 04:48:18'),
(211,'App\\Models\\Usuario',20,'ClienteToken','3320f1ca0c3e8e2fd88a08990d9abeccbc46431acbf9d44f4030e9550a296981','[\"*\"]','2026-06-25 04:54:25',NULL,'2026-06-25 04:52:38','2026-06-25 04:54:25'),
(212,'App\\Models\\Usuario',20,'ClienteToken','5b1f174cb5836e93a32082268a92b651b70382c1710138cb80eb723e9415abec','[\"*\"]','2026-06-25 05:01:26',NULL,'2026-06-25 05:01:12','2026-06-25 05:01:26'),
(213,'App\\Models\\Usuario',4,'ClienteToken','98983ad4b2eb989d1f647ebe970a53e55722d5db1c570d3eb5bd8280936ba91a','[\"*\"]','2026-06-25 05:05:39',NULL,'2026-06-25 05:05:20','2026-06-25 05:05:39'),
(214,'App\\Models\\Usuario',20,'ClienteToken','36ab2b6fb8fc961a74ccb52829c513446a077b6466b61bf5db78d514ff43f9ff','[\"*\"]',NULL,NULL,'2026-06-25 05:08:51','2026-06-25 05:08:51'),
(215,'App\\Models\\Usuario',20,'ClienteToken','e35021c4447714815e013253da7480ad35aa43b053b1d0423cf1f0940f8e2101','[\"*\"]',NULL,NULL,'2026-06-25 05:19:53','2026-06-25 05:19:53'),
(216,'App\\Models\\Usuario',20,'ClienteToken','f31bbcbe32069cd47024868565d100b0d8a8761de446bdbaf6abe298f1d6367e','[\"*\"]','2026-06-25 05:29:54',NULL,'2026-06-25 05:29:37','2026-06-25 05:29:54'),
(217,'App\\Models\\Usuario',20,'ClienteToken','65879129bc25b60e91308939203b97d09ef0de9bd76f096fa830d0f213fff768','[\"*\"]','2026-06-25 05:35:46',NULL,'2026-06-25 05:35:21','2026-06-25 05:35:46'),
(218,'App\\Models\\Usuario',20,'ClienteToken','5df9ba5baa23a5d18363f6b6835e8fd35780e705e4c28b535176cecf7d53d222','[\"*\"]','2026-06-25 05:40:18',NULL,'2026-06-25 05:40:17','2026-06-25 05:40:18'),
(219,'App\\Models\\Usuario',20,'ClienteToken','29163cbb2f9ea149e5db3aadbd949c653a9a47e52c53f6875971c3f3c11e1a6b','[\"*\"]','2026-06-25 05:45:05',NULL,'2026-06-25 05:44:50','2026-06-25 05:45:05'),
(220,'App\\Models\\Usuario',20,'ClienteToken','37d8534b43c5ba06b3cde8230ff345a06df55aace87d614b53f49a39cb5ba6bf','[\"*\"]','2026-06-25 05:54:39',NULL,'2026-06-25 05:54:25','2026-06-25 05:54:39'),
(221,'App\\Models\\Usuario',20,'ClienteToken','d8eea68300a48178d802835778155f819434a10a2713862683bc2d6a7029a411','[\"*\"]','2026-06-25 06:16:02',NULL,'2026-06-25 06:15:34','2026-06-25 06:16:02'),
(222,'App\\Models\\Usuario',4,'ClienteToken','8aeaa9780784813ce00517dccfb3b45d19b62d4471b5958188981c6f545dd1b5','[\"*\"]','2026-06-25 06:27:29',NULL,'2026-06-25 06:24:45','2026-06-25 06:27:29'),
(223,'App\\Models\\Usuario',4,'ClienteToken','dfac48517868aa4abd1a3a8700809f862d730110a48a0111df977d05ca54aff7','[\"*\"]','2026-06-25 06:40:33',NULL,'2026-06-25 06:39:48','2026-06-25 06:40:33'),
(224,'App\\Models\\Usuario',3,'EstilistaToken','28526b77cb6c7aacac425888d468b5fed8c41b59957eeb0af2b2ca5ed68c942a','[\"*\"]','2026-06-25 07:03:25',NULL,'2026-06-25 07:03:08','2026-06-25 07:03:25'),
(225,'App\\Models\\Usuario',3,'EstilistaToken','29a6e9fd93acdd2669a679bb6ad0ca4b8583308549f58c0de9946d57b2ce345c','[\"*\"]','2026-06-25 07:04:17',NULL,'2026-06-25 07:04:16','2026-06-25 07:04:17'),
(226,'App\\Models\\Usuario',3,'EstilistaToken','3cce7e95ad1f5135d1a8793d248675e7297a9a0322661b3261932905698f016c','[\"*\"]','2026-06-25 07:06:00',NULL,'2026-06-25 07:05:59','2026-06-25 07:06:00'),
(227,'App\\Models\\Usuario',3,'EstilistaToken','e11bc82244d481e5cdd1d13195b4c7fc2c58bab22eab39cc0fb46f2b3b4cabe4','[\"*\"]','2026-06-25 07:09:49',NULL,'2026-06-25 07:09:48','2026-06-25 07:09:49'),
(228,'App\\Models\\Usuario',3,'EstilistaToken','0305ee64ff943cf5c87c664df8a47730225b6028de249d896ca6ce30283f6df2','[\"*\"]','2026-06-25 07:16:38',NULL,'2026-06-25 07:16:38','2026-06-25 07:16:38'),
(229,'App\\Models\\Usuario',3,'EstilistaToken','ad9a95a6748241bca5a8eb7c8f809c6f1f80c52600a5660aff46d70a4e04ec3a','[\"*\"]','2026-06-25 07:19:29',NULL,'2026-06-25 07:19:29','2026-06-25 07:19:29'),
(230,'App\\Models\\Usuario',3,'EstilistaToken','1e83c3399d7c8cdc60aa290e0658ef2382e8767cf616ccde51ce71f294bc41a8','[\"*\"]','2026-06-25 13:00:58',NULL,'2026-06-25 13:00:48','2026-06-25 13:00:58'),
(231,'App\\Models\\Usuario',4,'ClienteToken','e476d8431854899000be003bcd62f683edc30e4ab41af145d7d7815f6bf2da90','[\"*\"]','2026-06-25 13:03:58',NULL,'2026-06-25 13:03:28','2026-06-25 13:03:58'),
(232,'App\\Models\\Usuario',3,'EstilistaToken','1662e6fc2f95266ab4f0408623b155263fa9439116c1999ccd9e4b3484dfe88a','[\"*\"]',NULL,NULL,'2026-06-25 13:24:34','2026-06-25 13:24:34'),
(233,'App\\Models\\Usuario',20,'ClienteToken','051cb913f15dd314962c7d525e795f5aa19b4f07ac984dea75235f775e377afb','[\"*\"]','2026-06-25 15:08:15',NULL,'2026-06-25 15:08:14','2026-06-25 15:08:15'),
(234,'App\\Models\\Usuario',20,'ClienteToken','40410b3d7f44f780772bad7b23ab36cc2e940143bb0a6048031bdf0bbd0fe6cb','[\"*\"]',NULL,NULL,'2026-06-25 15:10:59','2026-06-25 15:10:59'),
(235,'App\\Models\\Usuario',20,'ClienteToken','81f7a2d1420d589ae62d5bb37bc52712b0332ec256ceebdf255b5eb6e5a0d1d1','[\"*\"]','2026-06-25 15:13:11',NULL,'2026-06-25 15:11:31','2026-06-25 15:13:11'),
(236,'App\\Models\\Usuario',4,'ClienteToken','c6dc7d7aa2f3db444692818483cb6fa1cf937753970db29ee37b917757524aa0','[\"*\"]','2026-06-25 15:14:10',NULL,'2026-06-25 15:14:09','2026-06-25 15:14:10'),
(237,'App\\Models\\Usuario',20,'ClienteToken','d7e947e328b899bd94448af829d134e04d637c23cbfb59b1b79fb404e778e3dc','[\"*\"]','2026-06-25 16:06:20',NULL,'2026-06-25 16:06:20','2026-06-25 16:06:20'),
(238,'App\\Models\\Usuario',4,'ClienteToken','774c24b77d5e5594c787126237793723de1c7154ffa9d746e33420285a2fc6a4','[\"*\"]','2026-06-25 16:07:44',NULL,'2026-06-25 16:06:58','2026-06-25 16:07:44'),
(239,'App\\Models\\Usuario',4,'ClienteToken','1ee0c18f0826667091a609de92a588c0f914730b4770c34d067932d6d0a0dfe8','[\"*\"]','2026-06-25 16:13:18',NULL,'2026-06-25 16:13:18','2026-06-25 16:13:18'),
(241,'App\\Models\\Usuario',4,'ClienteToken','6a6267d1cd9c43c4f73770741beee0152f19a5f0d7f93a8671284cb988109f94','[\"*\"]','2026-06-25 16:25:30',NULL,'2026-06-25 16:24:16','2026-06-25 16:25:30'),
(242,'App\\Models\\Usuario',20,'ClienteToken','b1c71082619d67a73c2462304feb817e16506d7e9cbce181375efc7b09c70447','[\"*\"]','2026-06-25 16:31:02',NULL,'2026-06-25 16:30:15','2026-06-25 16:31:02'),
(243,'App\\Models\\Usuario',4,'ClienteToken','931387aef0e1568b9489bebf7a92f5e1a8b4f50f39c34601677080852fe2aa0e','[\"*\"]','2026-06-25 16:49:44',NULL,'2026-06-25 16:31:33','2026-06-25 16:49:44'),
(244,'App\\Models\\Usuario',4,'ClienteToken','6c4f3c52b83187ac5c16390d51066fba5bdd360cff9a852d5addb022191ba84f','[\"*\"]','2026-06-25 16:38:41',NULL,'2026-06-25 16:38:40','2026-06-25 16:38:41'),
(245,'App\\Models\\Usuario',4,'ClienteToken','8ec0bf788e031b703cbe7fadab4b3e6664a821e750dbc668aa7fddf259640940','[\"*\"]','2026-06-25 16:44:56',NULL,'2026-06-25 16:44:55','2026-06-25 16:44:56'),
(246,'App\\Models\\Usuario',1,'AdministradorToken','961adea2e92b76f70bf2605952b2b4127a8c4481679f0f8c7165b1bd4caf4a59','[\"*\"]','2026-06-25 17:03:36',NULL,'2026-06-25 16:50:37','2026-06-25 17:03:36'),
(247,'App\\Models\\Usuario',4,'ClienteToken','b1208de3c46289ebbad63bd17ceaeeb0794532fa15a5cb4b4fbf1a8ed59f0f30','[\"*\"]','2026-06-25 16:56:51',NULL,'2026-06-25 16:56:50','2026-06-25 16:56:51'),
(249,'App\\Models\\Usuario',4,'ClienteToken','56f22096427259e93bf6214ef8316757d38243396071206d38656086f966e3bd','[\"*\"]','2026-06-25 17:17:54',NULL,'2026-06-25 17:17:53','2026-06-25 17:17:54'),
(250,'App\\Models\\Usuario',4,'ClienteToken','67b75e000cd224e8c93799a7f5a988dee59235999c12dbb75a52df2049e8431b','[\"*\"]','2026-06-25 17:22:14',NULL,'2026-06-25 17:22:13','2026-06-25 17:22:14'),
(251,'App\\Models\\Usuario',4,'ClienteToken','ca2cf34b2f8705cb8e475e5fd56a9952ca3d91a77ae18dd176f82f30400b46fc','[\"*\"]','2026-06-25 17:31:53',NULL,'2026-06-25 17:31:52','2026-06-25 17:31:53'),
(253,'App\\Models\\Usuario',1,'AdministradorToken','a46f8c8ccd66be61f333d87e148da5621363539b1b5573776eefa1cf4ad9aaf0','[\"*\"]','2026-06-25 18:09:46',NULL,'2026-06-25 17:37:33','2026-06-25 18:09:46'),
(254,'App\\Models\\Usuario',4,'ClienteToken','6d7fc08ff90baf10b2796bafa5d5fb9b34fc63621c6c9dd9337abea791da5d6b','[\"*\"]','2026-06-25 17:51:45',NULL,'2026-06-25 17:44:18','2026-06-25 17:51:45'),
(255,'App\\Models\\Usuario',4,'ClienteToken','5d889ef43e93d4178c506561c183963ecedbdb8591a3eaa10faaa8460a8b93fc','[\"*\"]','2026-06-25 21:02:15',NULL,'2026-06-25 21:02:14','2026-06-25 21:02:15'),
(256,'App\\Models\\Usuario',4,'ClienteToken','4245940761099f0f5b03a1bae0d5e0ab1b2de0ae6efb3d1cb1ca0f83982e3b54','[\"*\"]','2026-06-25 22:49:11',NULL,'2026-06-25 22:44:48','2026-06-25 22:49:11'),
(258,'App\\Models\\Usuario',4,'ClienteToken','caa573ec6143d785e10a456e4c5915223976a29d7276b8048878031f48694532','[\"*\"]','2026-06-25 22:54:37',NULL,'2026-06-25 22:54:36','2026-06-25 22:54:37'),
(259,'App\\Models\\Usuario',4,'ClienteToken','ac702e0ca23163714d6c180e14046ce3f19e2a569a85c84077b815a6f551958c','[\"*\"]','2026-06-25 23:02:57',NULL,'2026-06-25 23:02:55','2026-06-25 23:02:57'),
(260,'App\\Models\\Usuario',4,'ClienteToken','c70abfe2eabf185096e8b4e44f8a2354285b0d64b54d92c43a57296102a886ff','[\"*\"]','2026-06-25 23:06:34',NULL,'2026-06-25 23:06:20','2026-06-25 23:06:34'),
(262,'App\\Models\\Usuario',3,'EstilistaToken','398a1bd5a5de0f4b70b54b41d7eb59e53ccc8ef609af2f1436c04ea09e2854df','[\"*\"]','2026-06-25 23:41:09',NULL,'2026-06-25 23:41:08','2026-06-25 23:41:09'),
(263,'App\\Models\\Usuario',1,'AdministradorToken','7e8bb712436e92e04376cbd90dd7db0e26caad5a4ee19b3ed973740a8846e455','[\"*\"]','2026-06-26 00:30:24',NULL,'2026-06-26 00:30:18','2026-06-26 00:30:24'),
(264,'App\\Models\\Usuario',3,'EstilistaToken','badb63c235aa343815c76eed51d195d66fbb953f8e289e8d964b0910af4c98a3','[\"*\"]','2026-06-26 00:48:25',NULL,'2026-06-26 00:48:24','2026-06-26 00:48:25'),
(265,'App\\Models\\Usuario',3,'EstilistaToken','15708776d91cb48b6a141068623767a178d7a159cb3b660b508bb0702655fcc7','[\"*\"]','2026-06-26 00:51:33',NULL,'2026-06-26 00:51:31','2026-06-26 00:51:33'),
(266,'App\\Models\\Usuario',1,'AdministradorToken','1c74bfa3a3c7f25c3dd66049a256c73381384a86f73d09f1b1e0b1f63d96922e','[\"*\"]','2026-06-26 00:58:35',NULL,'2026-06-26 00:58:15','2026-06-26 00:58:35'),
(269,'App\\Models\\Usuario',4,'ClienteToken','1408c9b8ae04a5ccc7cb433d42717535937dcea0f532a4a69fa99f8654213504','[\"*\"]','2026-06-26 01:32:37',NULL,'2026-06-26 01:32:34','2026-06-26 01:32:37'),
(270,'App\\Models\\Usuario',3,'EstilistaToken','ace151838b4b18c69b571ff6ab8874f079e1a29a6da2935fe3168233f5195bac','[\"*\"]','2026-06-26 02:24:10',NULL,'2026-06-26 01:43:11','2026-06-26 02:24:10'),
(271,'App\\Models\\Usuario',3,'EstilistaToken','40edc8d9ef071d65f7e8e118f025e707fc75ac6c93315640a88169897ca94d3c','[\"*\"]','2026-06-26 02:12:01',NULL,'2026-06-26 02:12:00','2026-06-26 02:12:01'),
(272,'App\\Models\\Usuario',3,'EstilistaToken','2175ff652957ff946c86838759d72c0676f5d1558989adec09e8dc1634614ec0','[\"*\"]','2026-06-26 02:22:30',NULL,'2026-06-26 02:22:29','2026-06-26 02:22:30'),
(273,'App\\Models\\Usuario',3,'EstilistaToken','53534c70055f7dd871cded5c86bafc4bd5ff72d0a6e2853759e84e2d08567db0','[\"*\"]','2026-06-26 02:29:33',NULL,'2026-06-26 02:26:40','2026-06-26 02:29:33'),
(274,'App\\Models\\Usuario',3,'EstilistaToken','2b0e5b83d526e7e1b1e282ddc1cd0dae251c7633102c846f65a5712e498b9094','[\"*\"]','2026-06-26 02:31:53',NULL,'2026-06-26 02:31:52','2026-06-26 02:31:53'),
(275,'App\\Models\\Usuario',3,'EstilistaToken','966cdb0f0832e325f1223840d1967c08813e2d60caeefa8ea50a2ec3e8499fff','[\"*\"]','2026-06-26 02:45:39',NULL,'2026-06-26 02:45:38','2026-06-26 02:45:39'),
(277,'App\\Models\\Usuario',3,'EstilistaToken','ec17fbe6d1096a190d3ad76e830fe565224d7d1201300526817b7be363a3119d','[\"*\"]','2026-06-26 02:54:15',NULL,'2026-06-26 02:54:14','2026-06-26 02:54:15'),
(278,'App\\Models\\Usuario',4,'ClienteToken','648327100c1f5427c567f0309ff292ca67b9672e748321d752bcab52f3ca0836','[\"*\"]','2026-06-26 02:55:21',NULL,'2026-06-26 02:55:20','2026-06-26 02:55:21'),
(280,'App\\Models\\Usuario',4,'ClienteToken','c4501bd5deca6d59f25599574a29b2f08ebe5701ad9b98f366784510d3572645','[\"*\"]','2026-06-26 02:56:43',NULL,'2026-06-26 02:56:38','2026-06-26 02:56:43'),
(281,'App\\Models\\Usuario',4,'ClienteToken','eacba9b0fda15647e8d58aeebc527a994c00406bac2570d628a19f79941674dc','[\"*\"]','2026-06-29 03:22:19',NULL,'2026-06-26 03:00:04','2026-06-29 03:22:19'),
(282,'App\\Models\\Usuario',4,'ClienteToken','ea98360dc1b87fa53452aa131487f264e6ea7e0767f1ffe7345938bf2de96d11','[\"*\"]','2026-06-26 03:13:23',NULL,'2026-06-26 03:13:21','2026-06-26 03:13:23'),
(284,'App\\Models\\Usuario',4,'ClienteToken','aa88451838de3777c02d6d960b04865d701a36a1f1bc021b13ee92532badd8c5','[\"*\"]','2026-06-26 03:51:04',NULL,'2026-06-26 03:51:02','2026-06-26 03:51:04'),
(285,'App\\Models\\Usuario',4,'ClienteToken','bd777b77934357024dc6fb48caa95ed5b19bfc49f7997d5ee08df05b4c016543','[\"*\"]','2026-06-26 04:08:18',NULL,'2026-06-26 04:08:16','2026-06-26 04:08:18'),
(286,'App\\Models\\Usuario',4,'ClienteToken','8b36c68f2156922457afc6734a851471c0858cefd009f94f183b663bd9e10739','[\"*\"]','2026-06-26 04:14:54',NULL,'2026-06-26 04:14:52','2026-06-26 04:14:54'),
(288,'App\\Models\\Usuario',1,'AdministradorToken','d1471add3c58ec41af09fc9d37a636eaef0d575d33528afa0f8a38b14a4db380','[\"*\"]','2026-06-26 04:20:55',NULL,'2026-06-26 04:20:53','2026-06-26 04:20:55'),
(289,'App\\Models\\Usuario',1,'AdministradorToken','ed463e36257c9cf0922f651be199db069399d5d5f4cfe4f7e411ab379b8d1d4b','[\"*\"]','2026-06-26 06:23:16',NULL,'2026-06-26 05:16:02','2026-06-26 06:23:16'),
(290,'App\\Models\\Usuario',4,'ClienteToken','9a54fc1fa74ac6d843fa291b4abe591ffabfee4aa13325a358607855881d9ffa','[\"*\"]','2026-06-26 05:20:09',NULL,'2026-06-26 05:17:15','2026-06-26 05:20:09'),
(291,'App\\Models\\Usuario',3,'EstilistaToken','ca0666b641ea9f67a2904a5d5f335adfe291215c5d95a3c82c9782e10233fd3a','[\"*\"]',NULL,NULL,'2026-06-26 05:20:24','2026-06-26 05:20:24'),
(292,'App\\Models\\Usuario',3,'EstilistaToken','8268adce125b38aae2cfadda2ed2367c882759a0a90b3110d1f14ee4184c6a37','[\"*\"]',NULL,NULL,'2026-06-26 05:20:27','2026-06-26 05:20:27'),
(293,'App\\Models\\Usuario',3,'EstilistaToken','5af99682fa472178839a496c0386f6d204556763626cf3dd809c8fe7a5253e06','[\"*\"]',NULL,NULL,'2026-06-26 05:20:29','2026-06-26 05:20:29'),
(294,'App\\Models\\Usuario',3,'EstilistaToken','683bfa4ae4af6af0bc5e54719064c966f2e8005073269b49bc799e17f1a78213','[\"*\"]',NULL,NULL,'2026-06-26 05:20:29','2026-06-26 05:20:29'),
(295,'App\\Models\\Usuario',3,'EstilistaToken','64e1864e593cfd6bc818ea3d9cb64057e6947f7d50e88f3f2f3c4c8067801e05','[\"*\"]',NULL,NULL,'2026-06-26 05:20:30','2026-06-26 05:20:30'),
(296,'App\\Models\\Usuario',3,'EstilistaToken','6505477822ee14b6ccb50557c48654af3eac3adcbaa5e147dcecaee3e58f821e','[\"*\"]',NULL,NULL,'2026-06-26 05:20:31','2026-06-26 05:20:31'),
(297,'App\\Models\\Usuario',3,'EstilistaToken','c3c386924cbc3f04ea10c1b5d9bd2f7970a3daac884a752cbd4111566d545628','[\"*\"]','2026-06-26 07:06:41',NULL,'2026-06-26 05:20:33','2026-06-26 07:06:41'),
(298,'App\\Models\\Usuario',4,'ClienteToken','fde7d93646ce3f86804e57756a52fe9f1ccb9ecf3f0fc6cd8544c45e9c422b5d','[\"*\"]','2026-06-26 05:34:51',NULL,'2026-06-26 05:34:00','2026-06-26 05:34:51'),
(302,'App\\Models\\Usuario',4,'ClienteToken','1643f239997110321c7906a5c983e66d6a73b259ae8b0c461828898cf9f228b6','[\"*\"]','2026-06-26 05:44:52',NULL,'2026-06-26 05:43:19','2026-06-26 05:44:52'),
(305,'App\\Models\\Usuario',4,'ClienteToken','85beb8c73f65cace27fa0a95c18af3d8c03483ac82cecd5d4b32943d423c8b34','[\"*\"]','2026-06-26 05:58:10',NULL,'2026-06-26 05:58:07','2026-06-26 05:58:10'),
(306,'App\\Models\\Usuario',4,'ClienteToken','ce00b44e4ca9f2f6acfc0542b3c1673cb9e22f177abc6c48d57601d3019e4c37','[\"*\"]','2026-06-26 06:06:08',NULL,'2026-06-26 06:04:48','2026-06-26 06:06:08'),
(307,'App\\Models\\Usuario',4,'ClienteToken','289483e42c12d95cae253abb2c72082684ec40397b029c2d0bb1f2181fd8e7c3','[\"*\"]','2026-06-26 06:20:43',NULL,'2026-06-26 06:20:38','2026-06-26 06:20:43'),
(308,'App\\Models\\Usuario',1,'AdministradorToken','2cf892bb35a07c205bfdccbb7ddbd8e54c82fac7bc05ad0256f11effadef7c25','[\"*\"]','2026-06-26 06:41:29',NULL,'2026-06-26 06:24:50','2026-06-26 06:41:29'),
(309,'App\\Models\\Usuario',4,'ClienteToken','dcfee2821f9c656b2c2d1ce354b4cac332cc981e7b697cef2cc1179365d87f61','[\"*\"]','2026-06-26 06:24:58',NULL,'2026-06-26 06:24:57','2026-06-26 06:24:58'),
(310,'App\\Models\\Usuario',4,'ClienteToken','78f5b680aa83d3708b297a76d18bb16f846b8384d7099470c10b970fa4460fb6','[\"*\"]','2026-06-26 06:27:31',NULL,'2026-06-26 06:27:29','2026-06-26 06:27:31'),
(311,'App\\Models\\Usuario',4,'ClienteToken','0d9a46dbe9d1905dbd7c58162724914fedf5bd1711a94d6c0147d9e23db5004d','[\"*\"]','2026-06-26 06:33:00',NULL,'2026-06-26 06:32:58','2026-06-26 06:33:00'),
(312,'App\\Models\\Usuario',4,'ClienteToken','e7898fa09d9ea69e9d5492357db9acb9169f298a629225f50d98be8e3c92b94b','[\"*\"]','2026-07-13 04:34:42',NULL,'2026-06-26 06:34:23','2026-07-13 04:34:42'),
(313,'App\\Models\\Usuario',4,'ClienteToken','7ee8f3a4f86ab48657470df19897d9df088a5bb23e6975c4d5712e480d5375ec','[\"*\"]','2026-06-26 06:38:10',NULL,'2026-06-26 06:38:08','2026-06-26 06:38:10'),
(314,'App\\Models\\Usuario',4,'ClienteToken','59012f7ca67a8de13d1b1868cca66bd9186282709f6c73c73a91e5212f019053','[\"*\"]','2026-06-26 06:42:27',NULL,'2026-06-26 06:42:25','2026-06-26 06:42:27'),
(315,'App\\Models\\Usuario',1,'AdministradorToken','ab8a4ea8b7f896e37f4feb9d30d5251cb9d79f9e4334823f4babc1234237651b','[\"*\"]','2026-06-26 06:46:53',NULL,'2026-06-26 06:46:47','2026-06-26 06:46:53'),
(316,'App\\Models\\Usuario',4,'ClienteToken','2fca902a1be2f7d9fb31d0e4b4d0ec064dd986c86e94c809a3e5451319cb3c45','[\"*\"]','2026-06-26 06:51:05',NULL,'2026-06-26 06:51:02','2026-06-26 06:51:05'),
(317,'App\\Models\\Usuario',4,'ClienteToken','eb8679ab6fc3cd51b0148bffca280da54947b0d2858133a39bcaa1e67219663c','[\"*\"]','2026-06-26 06:54:02',NULL,'2026-06-26 06:53:59','2026-06-26 06:54:02'),
(319,'App\\Models\\Usuario',1,'AdministradorToken','e0d28f09ffd643378128645bd1d6e30c14e8347edb4a47a63d1920a5b269e9f7','[\"*\"]','2026-06-26 07:18:10',NULL,'2026-06-26 07:06:46','2026-06-26 07:18:10'),
(320,'App\\Models\\Usuario',4,'ClienteToken','a8c3d776d723cd78426c6266d83a404be174d7082dd1026d731d306bf264afb4','[\"*\"]','2026-06-26 07:08:26',NULL,'2026-06-26 07:07:09','2026-06-26 07:08:26'),
(321,'App\\Models\\Usuario',4,'ClienteToken','d3f9f40b99adeebcf8e1be8336fca6db7cab05a208ab13a52fdfe644d04974eb','[\"*\"]','2026-06-26 07:10:43',NULL,'2026-06-26 07:09:32','2026-06-26 07:10:43'),
(322,'App\\Models\\Usuario',4,'ClienteToken','8f26ddb54319e9c96504c83fbde60e1b0d14af5077a6027b992f50e9c5431972','[\"*\"]','2026-06-26 08:24:02',NULL,'2026-06-26 07:09:54','2026-06-26 08:24:02'),
(323,'App\\Models\\Usuario',4,'ClienteToken','9aa6dc119933074762d83fc420a3bbf93adcf79557dbbcaee3367666671a60a0','[\"*\"]','2026-06-26 07:15:23',NULL,'2026-06-26 07:14:05','2026-06-26 07:15:23'),
(325,'App\\Models\\Usuario',4,'ClienteToken','4cffe47aa4c9d6d4511d40ad0aec3cfee1083fd148908e9b0fb0a7f8ac402c84','[\"*\"]','2026-06-26 07:23:12',NULL,'2026-06-26 07:22:04','2026-06-26 07:23:12'),
(326,'App\\Models\\Usuario',1,'AdministradorToken','87a4fa55fb8d1dfc48e2d691be3f7c191457e9c2104d432ce7c90d048fdabee4','[\"*\"]','2026-06-26 07:22:34',NULL,'2026-06-26 07:22:08','2026-06-26 07:22:34'),
(328,'App\\Models\\Usuario',4,'ClienteToken','1de63baa81ac48dc50d264595a0751cf73caa8a0ca560c0ad18ed33d91727d34','[\"*\"]','2026-06-26 07:30:55',NULL,'2026-06-26 07:30:34','2026-06-26 07:30:55'),
(330,'App\\Models\\Usuario',1,'AdministradorToken','48a939755b50f2cd09e4d17e184e112701c1f39a8b5b3c5884c7d032b7dbf2c4','[\"*\"]','2026-06-26 07:41:31',NULL,'2026-06-26 07:40:24','2026-06-26 07:41:31'),
(331,'App\\Models\\Usuario',4,'ClienteToken','cd38b75997d95b627331943f90742a4bae0ccdcab93c50ac9e0854c787d5e19f','[\"*\"]','2026-06-26 07:41:39',NULL,'2026-06-26 07:41:37','2026-06-26 07:41:39'),
(332,'App\\Models\\Usuario',4,'ClienteToken','25b6ed3e1a19bcdd0ffdc739ca8adb8bb26069c256d580e2109a35ed2945b3ac','[\"*\"]','2026-06-26 07:48:04',NULL,'2026-06-26 07:47:44','2026-06-26 07:48:04'),
(333,'App\\Models\\Usuario',4,'ClienteToken','768c111260c65474406e34e599b26d9139867b5b2828398dd134d611edade2ba','[\"*\"]','2026-06-26 07:51:12',NULL,'2026-06-26 07:50:44','2026-06-26 07:51:12'),
(334,'App\\Models\\Usuario',4,'ClienteToken','aeb4bc8a3a555a1d8efbb699c688067aea798c04bba28a6a5f4c3695a9c284d9','[\"*\"]','2026-06-26 07:52:56',NULL,'2026-06-26 07:52:52','2026-06-26 07:52:56'),
(335,'App\\Models\\Usuario',4,'ClienteToken','49d7921323fd0427cb7b3bde2e5a3703608c0a949fbd4365036bd15167feac9b','[\"*\"]','2026-06-26 07:57:48',NULL,'2026-06-26 07:57:46','2026-06-26 07:57:48'),
(336,'App\\Models\\Usuario',4,'ClienteToken','42d9e192ec845011dc5b49b11f89a2c3dbd75dd0f3e266fffcd72c2edfe75137','[\"*\"]','2026-06-26 08:03:57',NULL,'2026-06-26 08:03:54','2026-06-26 08:03:57'),
(337,'App\\Models\\Usuario',1,'AdministradorToken','054e5fe93945dd0cb3154c86ef394534172e3a9bed8431064cfe6893e429861a','[\"*\"]','2026-06-26 08:10:38',NULL,'2026-06-26 08:10:36','2026-06-26 08:10:38'),
(339,'App\\Models\\Usuario',4,'ClienteToken','3d5aae47017def6135831c6cdf2261ed53561075280eb7e586600d4a082b6b5c','[\"*\"]','2026-06-26 08:14:02',NULL,'2026-06-26 08:12:53','2026-06-26 08:14:02'),
(340,'App\\Models\\Usuario',4,'ClienteToken','37eedf809839d65f8eee6e59d4b09907c3ba87e603ce5946b8fd592ddfd8a671','[\"*\"]','2026-06-26 08:23:49',NULL,'2026-06-26 08:20:18','2026-06-26 08:23:49'),
(341,'App\\Models\\Usuario',4,'ClienteToken','651c12c45da42a8103a0abea1aa9c15cf1790b3b674d7918694cb836366a890d','[\"*\"]','2026-06-26 08:31:13',NULL,'2026-06-26 08:29:23','2026-06-26 08:31:13'),
(342,'App\\Models\\Usuario',4,'ClienteToken','30cf757a21a6f849c0be800cdefa6d2d95654a64b32d46e85668281f35d0736c','[\"*\"]','2026-06-26 08:33:25',NULL,'2026-06-26 08:33:23','2026-06-26 08:33:25'),
(343,'App\\Models\\Usuario',4,'ClienteToken','e9f651cd192b71abfcf91ec4e86fca12839a676570cd015b8c697682bf581eac','[\"*\"]','2026-06-26 08:35:49',NULL,'2026-06-26 08:35:18','2026-06-26 08:35:49'),
(344,'App\\Models\\Usuario',4,'ClienteToken','ff1b9130dcc6a39cf7e0f52e342f5e0d119256869ebd6348360d768818451cfd','[\"*\"]',NULL,NULL,'2026-06-26 13:26:19','2026-06-26 13:26:19'),
(345,'App\\Models\\Usuario',4,'ClienteToken','86ad52989483afaa8edafd54ffe4f069f04807db5b72fad51c7f5da65b4e1a09','[\"*\"]',NULL,NULL,'2026-06-26 13:26:21','2026-06-26 13:26:21'),
(346,'App\\Models\\Usuario',4,'ClienteToken','f40e094336cdb6eb1100e6b8bca8857ccc498e3e867f8a276c5c6b64361554d3','[\"*\"]',NULL,NULL,'2026-06-26 13:26:22','2026-06-26 13:26:22'),
(347,'App\\Models\\Usuario',4,'ClienteToken','4b57f2d5039c61157324ec33b1984b684f4e90042617c137b5d04cdd7da9cc43','[\"*\"]',NULL,NULL,'2026-06-26 13:27:13','2026-06-26 13:27:13'),
(348,'App\\Models\\Usuario',4,'ClienteToken','1a98738ac3b89fab8e062a0860465e366cb950f19c969697c18ee7f577cca743','[\"*\"]',NULL,NULL,'2026-06-26 13:27:33','2026-06-26 13:27:33'),
(349,'App\\Models\\Usuario',4,'ClienteToken','c0f9a7d9d0dbd13c58849db8bef0521153798a611b8c9e887e1446b7bb4c1788','[\"*\"]',NULL,NULL,'2026-06-26 13:27:37','2026-06-26 13:27:37'),
(350,'App\\Models\\Usuario',4,'ClienteToken','ee266fabadf6bec6d85cc278fe068cfd2a11b5abf4fa911dca93b825018355e8','[\"*\"]',NULL,NULL,'2026-06-26 13:27:42','2026-06-26 13:27:42'),
(351,'App\\Models\\Usuario',4,'ClienteToken','cc6568cad7c8b956e6c89b3c0819e4235015905b82b9b786e4a6f85a25683343','[\"*\"]',NULL,NULL,'2026-06-26 13:27:45','2026-06-26 13:27:45'),
(352,'App\\Models\\Usuario',4,'ClienteToken','0e3767ad5b6a22ec5db2fcc4817766bbaea74418a8a2ad78de93284daf135e29','[\"*\"]',NULL,NULL,'2026-06-26 13:27:47','2026-06-26 13:27:47'),
(353,'App\\Models\\Usuario',4,'ClienteToken','4f804305543553b3715396a052d6a483c63754fca48eeb09c233ce57441a1501','[\"*\"]',NULL,NULL,'2026-06-26 13:27:48','2026-06-26 13:27:48'),
(354,'App\\Models\\Usuario',4,'ClienteToken','e706063566363e03e9eb44796f50ad79db7136dbedd24523d65dc009339f2501','[\"*\"]',NULL,NULL,'2026-06-26 13:27:49','2026-06-26 13:27:49'),
(355,'App\\Models\\Usuario',4,'ClienteToken','7bb6493d6fb9b601a5e6f2a382d81900ff717d6c08b2cc41b4adf5ac060bde0f','[\"*\"]',NULL,NULL,'2026-06-26 13:27:50','2026-06-26 13:27:50'),
(356,'App\\Models\\Usuario',20,'ClienteToken','65ddbaa4347be54d15f91fac9d0c8db2742f207ddf12ba13a894d56e4f703427','[\"*\"]',NULL,NULL,'2026-06-26 13:28:57','2026-06-26 13:28:57'),
(357,'App\\Models\\Usuario',20,'ClienteToken','144726cca1adcf0643a613d64cb8c8a774bea338c70a15c196f1405e94306a33','[\"*\"]',NULL,NULL,'2026-06-26 13:29:45','2026-06-26 13:29:45'),
(358,'App\\Models\\Usuario',20,'ClienteToken','2fe4220fe7dd742c01b2fa67a01ef80e88d041f522317e0a4267afd5f8516785','[\"*\"]',NULL,NULL,'2026-06-26 13:30:43','2026-06-26 13:30:43'),
(359,'App\\Models\\Usuario',4,'ClienteToken','77c4f436ffe2675dbd9a585108c0a6ee0452d98290618202076522ee83b3d141','[\"*\"]',NULL,NULL,'2026-06-26 13:31:38','2026-06-26 13:31:38'),
(360,'App\\Models\\Usuario',21,'MobileClientToken','a2001483d9b2124a73ff12f2d0d354f6bac6af075f6dc424cda22ff4066afc89','[\"*\"]',NULL,NULL,'2026-06-26 13:32:17','2026-06-26 13:32:17'),
(361,'App\\Models\\Usuario',22,'MobileClientToken','b7c4ae0e10b244968609a03519c0836c6ac1335a7cac24045a18e7deeec2f0f2','[\"*\"]',NULL,NULL,'2026-06-26 13:32:40','2026-06-26 13:32:40'),
(363,'App\\Models\\Usuario',4,'ClienteToken','3f85c65eb2e9d71309defb72a74a54ab05721f8e33aa84a038fa0306d24215f6','[\"*\"]',NULL,NULL,'2026-06-26 13:33:02','2026-06-26 13:33:02'),
(364,'App\\Models\\Usuario',4,'ClienteToken','49ee4f756af90eed8876bc2d7e556026af9cedf0bc826cf3b86d6a104d6d6827','[\"*\"]',NULL,NULL,'2026-06-26 13:33:03','2026-06-26 13:33:03'),
(365,'App\\Models\\Usuario',4,'ClienteToken','f60ed7a9516d0d000abab4142b4571fd1183c9360aff55fa2193a0d493d09297','[\"*\"]',NULL,NULL,'2026-06-26 13:33:04','2026-06-26 13:33:04'),
(366,'App\\Models\\Usuario',4,'ClienteToken','fb89723277389e6cbfedca8c4dc6c02c3ce88db22aced4463597683761726094','[\"*\"]',NULL,NULL,'2026-06-26 13:33:05','2026-06-26 13:33:05'),
(367,'App\\Models\\Usuario',4,'ClienteToken','1bd6d7a288143eb36bf3782162f81cc465d3a947a7991bde03fd9cd0a976159d','[\"*\"]',NULL,NULL,'2026-06-26 13:33:07','2026-06-26 13:33:07'),
(368,'App\\Models\\Usuario',20,'ClienteToken','0275b4d0be70c4a8def6ac92f9ed2eb1ef32fd6083e69c32d20f27da7d7c29d1','[\"*\"]',NULL,NULL,'2026-06-26 13:34:44','2026-06-26 13:34:44'),
(369,'App\\Models\\Usuario',4,'ClienteToken','12232432529534d938ea207b4a8535b99d47e214e46c3cbe7513238d97f321ff','[\"*\"]',NULL,NULL,'2026-06-26 13:36:21','2026-06-26 13:36:21'),
(370,'App\\Models\\Usuario',4,'ClienteToken','f0e0287b8283274b11b6bc491d1de54c686289fe7405c47b1a45ac036d26e4d3','[\"*\"]',NULL,NULL,'2026-06-26 13:36:32','2026-06-26 13:36:32'),
(371,'App\\Models\\Usuario',4,'ClienteToken','7209f5f5f88776ddf2a9926518cd5d2b549e0457341b48d92343c764b895cf3a','[\"*\"]','2026-06-26 13:40:22',NULL,'2026-06-26 13:40:20','2026-06-26 13:40:22'),
(372,'App\\Models\\Usuario',1,'AdministradorToken','5da86240cfdde58d68f3bf5e8df6d330fd0010cafa8c51642b2fad53a1024798','[\"*\"]','2026-06-26 14:22:43',NULL,'2026-06-26 13:47:22','2026-06-26 14:22:43'),
(373,'App\\Models\\Usuario',4,'ClienteToken','7cb703ca19fe89828c05913289622035a309f9e9ca9c206ca12edf622f13c950','[\"*\"]','2026-06-26 13:49:51',NULL,'2026-06-26 13:49:48','2026-06-26 13:49:51'),
(374,'App\\Models\\Usuario',3,'EstilistaToken','fd7d5284dc9f163e583c413cd7c3d4b81ca00c7f3ce9297cf00caf261102b6cb','[\"*\"]','2026-06-26 13:51:16',NULL,'2026-06-26 13:51:15','2026-06-26 13:51:16'),
(375,'App\\Models\\Usuario',4,'ClienteToken','bee0bfb9f5469b583a936061895f0e4fe8c03e7d357a16ce8d1f7457828655ef','[\"*\"]','2026-06-26 14:05:44',NULL,'2026-06-26 14:04:49','2026-06-26 14:05:44'),
(377,'App\\Models\\Usuario',1,'AdministradorToken','313ddbdb65012548a750ea97b0b0f9c749cadac40e0710507c8d42e575642374','[\"*\"]','2026-06-26 14:37:24',NULL,'2026-06-26 14:25:13','2026-06-26 14:37:24'),
(378,'App\\Models\\Usuario',23,'MobileClientToken','164ecbbc1d92c13fd175f99a6b09c893fa3e03d8809bc42ba8e23e42eeccd86b','[\"*\"]',NULL,NULL,'2026-06-26 14:36:17','2026-06-26 14:36:17'),
(379,'App\\Models\\Usuario',23,'ClienteToken','55409f55185e4abe05c22f22212e14835c3586b308fec03ea0a948c922909161','[\"*\"]','2026-06-26 14:44:57',NULL,'2026-06-26 14:36:33','2026-06-26 14:44:57'),
(380,'App\\Models\\Usuario',24,'MobileClientToken','59231ea221b663eee89bdd41be68e2eb86328286e0346b95dee337dc15e15fbe','[\"*\"]',NULL,NULL,'2026-06-26 14:37:06','2026-06-26 14:37:06'),
(381,'App\\Models\\Usuario',25,'MobileClientToken','ad8926b7ddf1de3f7875a7a6fc0776ab3ffb302b3486cd323595631786bdd46e','[\"*\"]',NULL,NULL,'2026-06-26 14:37:07','2026-06-26 14:37:07'),
(382,'App\\Models\\Usuario',26,'MobileClientToken','d21b32956e101be0d8a60e1d3854eb256b9ccfb2ca96a0bb83df9875beb65452','[\"*\"]',NULL,NULL,'2026-06-26 14:37:14','2026-06-26 14:37:14'),
(383,'App\\Models\\Usuario',25,'ClienteToken','227b495cb5a865566815c10fd10ddc3dcd633415bb538850a77eb4a98ed2fb21','[\"*\"]','2026-06-26 14:49:38',NULL,'2026-06-26 14:37:14','2026-06-26 14:49:38'),
(384,'App\\Models\\Usuario',27,'MobileClientToken','a43179c7caa76658461945cfc1af9d69912d840ac00836d550fcc84e020210f9','[\"*\"]',NULL,NULL,'2026-06-26 14:37:25','2026-06-26 14:37:25'),
(385,'App\\Models\\Usuario',26,'ClienteToken','039f323acd12b451efaddaf649ed0626f03a1a0c5ed6f2d5223cb65012352e1a','[\"*\"]','2026-06-26 15:24:37',NULL,'2026-06-26 14:37:27','2026-06-26 15:24:37'),
(386,'App\\Models\\Usuario',27,'ClienteToken','0c7e4f442a3dbab951fc12eecf6b24f10acdd4b088c99678580ec9988d4c03cc','[\"*\"]','2026-06-26 15:17:55',NULL,'2026-06-26 14:37:32','2026-06-26 15:17:55'),
(387,'App\\Models\\Usuario',24,'ClienteToken','9aa55c8f498cda83114b59cd35b09f8067810ff7edd36b55aeb86bfe950b7d87','[\"*\"]','2026-06-26 14:42:29',NULL,'2026-06-26 14:37:42','2026-06-26 14:42:29'),
(389,'App\\Models\\Usuario',24,'ClienteToken','38d66773e2a465d9ecc54fd5020ce85ca6e438424e438a1e363def38d9538538','[\"*\"]','2026-06-26 15:09:11',NULL,'2026-06-26 14:45:20','2026-06-26 15:09:11'),
(390,'App\\Models\\Usuario',4,'ClienteToken','5cba8a107b3e3a222b680e5c74cc339711b313e8e6e70d831e00294e729230ed','[\"*\"]','2026-06-26 14:50:52',NULL,'2026-06-26 14:48:03','2026-06-26 14:50:52'),
(391,'App\\Models\\Usuario',4,'ClienteToken','83dd1b0315af5d766b643f4762de6e2df84d0a629ef735b91e1b5d7b1d4f2a36','[\"*\"]','2026-06-26 14:49:14',NULL,'2026-06-26 14:49:11','2026-06-26 14:49:14'),
(392,'App\\Models\\Usuario',3,'EstilistaToken','33bb49c89f60b58a883915c2a8bda80a7304c740a6a248d234b0e38a64923ed0','[\"*\"]','2026-06-26 15:19:45',NULL,'2026-06-26 14:49:17','2026-06-26 15:19:45'),
(393,'App\\Models\\Usuario',3,'EstilistaToken','348dfcb8f5c365b192b4ec82cb6eecdc09d76ef19f0ea2d7b836e20bb231815d','[\"*\"]','2026-06-26 14:51:03',NULL,'2026-06-26 14:51:02','2026-06-26 14:51:03'),
(394,'App\\Models\\Usuario',24,'ClienteToken','f1e6a1a5eb7ce8a61c0a73c7559a8857635300ff1d77c3d6db6ad5e9cd32c9a9','[\"*\"]','2026-06-26 15:25:11',NULL,'2026-06-26 14:51:28','2026-06-26 15:25:11'),
(395,'App\\Models\\Usuario',23,'ClienteToken','cc20f7087af4fcb3abfaed0a3c01f1cd2768dacd8546d7a51b319db2528e1fb4','[\"*\"]','2026-06-26 14:54:29',NULL,'2026-06-26 14:53:12','2026-06-26 14:54:29'),
(396,'App\\Models\\Usuario',4,'ClienteToken','b530b65b9d838ea9a24ebc0f69c679f774c4849e65fa9b40ba7560f979a092be','[\"*\"]','2026-06-26 15:26:46',NULL,'2026-06-26 15:23:05','2026-06-26 15:26:46'),
(397,'App\\Models\\Usuario',23,'ClienteToken','fdb960643dc856b655831eac532cbac69840e3be5391632fde7e9ba3f3f6e281','[\"*\"]','2026-06-26 15:25:51',NULL,'2026-06-26 15:25:26','2026-06-26 15:25:51'),
(398,'App\\Models\\Usuario',4,'ClienteToken','6fa657b849bc22c9ac9bf97edafcc7f5edbb757acd67be04b19c55c50f03d28e','[\"*\"]','2026-07-05 00:52:18',NULL,'2026-07-05 00:51:24','2026-07-05 00:52:18'),
(399,'App\\Models\\Usuario',1,'AdministradorToken','b58aa78aa5d5f9d0107615dbe735aba4e3e2a2d138e666baf64c3c26a40d962d','[\"*\"]','2026-07-05 23:57:07',NULL,'2026-07-05 23:56:52','2026-07-05 23:57:07'),
(400,'App\\Models\\Usuario',4,'ClienteToken','33e4476e9053a7795d5216ab2b1390381bd2fc4130b213193b5b1f02907e1143','[\"*\"]',NULL,NULL,'2026-07-06 04:05:57','2026-07-06 04:05:57'),
(401,'App\\Models\\Usuario',4,'ClienteToken','835f67ac7181d7fd3953201a7e8ae106e97cbd42256f6ca820a53ceb84d662d6','[\"*\"]',NULL,NULL,'2026-07-08 03:24:04','2026-07-08 03:24:04'),
(402,'App\\Models\\Usuario',4,'ClienteToken','079fcea952808fcd12dcbc556a92cbb0867863bd1869d5a50a9afb3b8b00e1a3','[\"*\"]','2026-07-08 03:25:06',NULL,'2026-07-08 03:25:06','2026-07-08 03:25:06'),
(403,'App\\Models\\Usuario',4,'ClienteToken','56cfe93502819d89895106f7d57af0c381b96ed55213cf5422c943e1d4bce63f','[\"*\"]',NULL,NULL,'2026-07-08 03:34:21','2026-07-08 03:34:21'),
(404,'App\\Models\\Usuario',4,'ClienteToken','3fc768e07a7c4cb9e4c73bfad94588bb067d436552faf2bbba6c1d6700bbeb8c','[\"*\"]',NULL,NULL,'2026-07-08 03:36:29','2026-07-08 03:36:29'),
(405,'App\\Models\\Usuario',4,'ClienteToken','2ef29a3a0b2883f7a78027a75ea8e3bb5e653979c39bc309aa738f3ef558edb7','[\"*\"]',NULL,NULL,'2026-07-08 03:37:00','2026-07-08 03:37:00'),
(406,'App\\Models\\Usuario',4,'ClienteToken','47f40ac1a3e23121d733fe505cac975de942003f26d4792bb30bc8865abc06b1','[\"*\"]',NULL,NULL,'2026-07-08 03:37:40','2026-07-08 03:37:40'),
(407,'App\\Models\\Usuario',4,'ClienteToken','5985bc7328e12274e4a7b4a9af1451a7aa381d2ae60ef2ddb178cd3999cec69f','[\"*\"]',NULL,NULL,'2026-07-08 03:40:05','2026-07-08 03:40:05'),
(408,'App\\Models\\Usuario',4,'ClienteToken','937312ce0b39a268343c02cb9569bc5f716c9ac332eeb4fbbe3a65ed35418412','[\"*\"]',NULL,NULL,'2026-07-08 03:40:14','2026-07-08 03:40:14'),
(409,'App\\Models\\Usuario',4,'ClienteToken','af6563aa52e48cf83703b19cfc98feea4e1c1f3c32f07c9aad629288ea70a03a','[\"*\"]',NULL,NULL,'2026-07-13 00:09:23','2026-07-13 00:09:23'),
(410,'App\\Models\\Usuario',4,'ClienteToken','92444e039e76ce1b1e08389ccd00b7e345937b3d7597b7c20b976ca4db8c3599','[\"*\"]','2026-07-13 02:03:53',NULL,'2026-07-13 02:03:25','2026-07-13 02:03:53'),
(411,'App\\Models\\Usuario',4,'ClienteToken','a9d003bb88c763b95819da35ed1d2d95cc3466bcade8385efc01a41698ca5acb','[\"*\"]','2026-07-13 03:00:42',NULL,'2026-07-13 02:57:56','2026-07-13 03:00:42'),
(412,'App\\Models\\Usuario',4,'ClienteToken','345de8c00d1ea7fdb1bc04c558480d1cb78addbe29028a312328f7ca03b4ab23','[\"*\"]','2026-07-13 03:40:31',NULL,'2026-07-13 03:04:48','2026-07-13 03:40:31'),
(414,'App\\Models\\Usuario',4,'ClienteToken','667e4f4496d8192a6736a70044492cbb3a11d7d42c2d9a280a77761026edc444','[\"*\"]','2026-07-13 03:52:06',NULL,'2026-07-13 03:51:56','2026-07-13 03:52:06'),
(418,'App\\Models\\Usuario',1,'AdministradorToken','ed66d60da9d3a9737a92dd63d9277b14afbb218bfcefd00568eed53de96b275e','[\"*\"]','2026-07-13 04:19:09',NULL,'2026-07-13 04:19:06','2026-07-13 04:19:09'),
(419,'App\\Models\\Usuario',1,'AdministradorToken','4a62341d73b53061a9973b3683919c43894421329840233fa4f46c4c208f62c0','[\"*\"]','2026-07-13 04:22:57',NULL,'2026-07-13 04:22:54','2026-07-13 04:22:57'),
(423,'App\\Models\\Usuario',1,'AdministradorToken','bf5afe2991374534e9e05e1cadae817caf967fb5097a7b438ed44cbb20bc3bcd','[\"*\"]','2026-07-13 05:07:14',NULL,'2026-07-13 05:06:54','2026-07-13 05:07:14'),
(424,'App\\Models\\Usuario',1,'AdministradorToken','9f53dbc6acb89f1d765e30da1d9c3f7bad7f220d2f7c20503a0e766f30698c6e','[\"*\"]','2026-07-13 05:47:04',NULL,'2026-07-13 05:26:58','2026-07-13 05:47:04'),
(425,'App\\Models\\Usuario',4,'ClienteToken','502e8a1378a68193e9441b1410b204421a4fb44f2bafe6dd77fbfcd5082acd0e','[\"*\"]','2026-07-13 14:03:33',NULL,'2026-07-13 14:01:33','2026-07-13 14:03:33'),
(426,'App\\Models\\Usuario',4,'ClienteToken','7d61e6435278a69c849cd24cfabb2dba460ed3945b72ba639b63f76258d4ed1a','[\"*\"]','2026-07-14 00:59:06',NULL,'2026-07-14 00:58:28','2026-07-14 00:59:06'),
(427,'App\\Models\\Usuario',4,'ClienteToken','25e984aeb1bb2b11e0d1296e3c662af6603f64d5948eac8fffe80401477bfbd3','[\"*\"]','2026-07-16 13:58:50',NULL,'2026-07-14 02:06:10','2026-07-16 13:58:50'),
(428,'App\\Models\\Usuario',4,'ClienteToken','7ea5fe773e75b3e6307db90956a3a52932e0bc80bfbc265889220de7d611dd93','[\"*\"]','2026-07-14 02:39:14',NULL,'2026-07-14 02:39:13','2026-07-14 02:39:14'),
(429,'App\\Models\\Usuario',4,'ClienteToken','41017a7406595c3e2d1a48c9e01aa4d8933402e294b7db20f349a1a299207b68','[\"*\"]','2026-07-14 04:11:05',NULL,'2026-07-14 02:45:17','2026-07-14 04:11:05'),
(430,'App\\Models\\Usuario',4,'ClienteToken','0cdf622a2cc0e4f3a3393093bc29064f1d9fef436126e117e7b527a8537d8aee','[\"*\"]','2026-07-14 02:46:53',NULL,'2026-07-14 02:46:52','2026-07-14 02:46:53'),
(431,'App\\Models\\Usuario',4,'ClienteToken','2912eef31340cf7f491606160a4142bc5df36f6215c92326e9f964380e24f355','[\"*\"]','2026-07-14 02:51:28',NULL,'2026-07-14 02:51:26','2026-07-14 02:51:28'),
(432,'App\\Models\\Usuario',4,'ClienteToken','b8afcba4e5cfa7e8bae59f84272eb207c46f5ee21e3070e140c7e35438a692f2','[\"*\"]','2026-07-14 03:04:58',NULL,'2026-07-14 03:04:57','2026-07-14 03:04:58'),
(433,'App\\Models\\Usuario',4,'ClienteToken','12dddc84b08013a9a69744d0a63567c221ff5fc0b38aa8415f8d289c27ff582e','[\"*\"]','2026-07-14 03:05:35',NULL,'2026-07-14 03:05:34','2026-07-14 03:05:35'),
(434,'App\\Models\\Usuario',4,'ClienteToken','24acf3f3fdfaed4b2f11b80d86d9bcf7fe2e63a4bda00bdfa496f885cfbd3dd8','[\"*\"]','2026-07-14 04:05:52',NULL,'2026-07-14 03:21:14','2026-07-14 04:05:52'),
(435,'App\\Models\\Usuario',4,'ClienteToken','a85719dda4e9c8652c715681dca33875be295a264bb6db40bbb9979f74e7ebb5','[\"*\"]','2026-07-14 03:56:13',NULL,'2026-07-14 03:55:25','2026-07-14 03:56:13'),
(436,'App\\Models\\Usuario',4,'ClienteToken','26730f825bcf01f1cb61c11ba79c5b2ea67416eca11800332dbd117113d784eb','[\"*\"]','2026-07-14 05:20:43',NULL,'2026-07-14 05:13:22','2026-07-14 05:20:43'),
(437,'App\\Models\\Usuario',4,'ClienteToken','773ffea5c91fceb478c5572aa4b928d16f8ff9a7dca5092d21800785442e2701','[\"*\"]','2026-07-14 14:18:31',NULL,'2026-07-14 14:18:21','2026-07-14 14:18:31'),
(438,'App\\Models\\Usuario',4,'ClienteToken','1b0b0abd5c0de97aa97676e7f23186e336c7cad9c9117f7ccaefca4985daa03b','[\"*\"]','2026-07-14 22:53:24',NULL,'2026-07-14 14:33:56','2026-07-14 22:53:24'),
(439,'App\\Models\\Usuario',4,'ClienteToken','6fe0e49ed269b94d465028efb99ba7c02b919f3d1688391e9e54257968c87202','[\"*\"]','2026-07-14 23:20:13',NULL,'2026-07-14 22:56:57','2026-07-14 23:20:13'),
(440,'App\\Models\\Usuario',4,'ClienteToken','b25e63f738424717b5efda29b3621c1f93968431b524c0d68ee426f89e1cd022','[\"*\"]','2026-07-14 23:53:27',NULL,'2026-07-14 22:57:21','2026-07-14 23:53:27'),
(441,'App\\Models\\Usuario',4,'ClienteToken','9225733d5fbfcaf26193d67e68ae1ea7c4439e4c9f2a1a47bdac202f2a752609','[\"*\"]','2026-07-14 23:22:57',NULL,'2026-07-14 23:22:14','2026-07-14 23:22:57'),
(442,'App\\Models\\Usuario',4,'ClienteToken','0fa13fceee5452f0c272f5d47d1627a6827c0cb807c9ed05d50f9ce45322587c','[\"*\"]','2026-07-16 00:39:30',NULL,'2026-07-14 23:30:16','2026-07-16 00:39:30'),
(443,'App\\Models\\Usuario',4,'ClienteToken','dd0377ac4aec86d903a27a26e5a767ffe7fc058c6dddf6c41098863c12a0b015','[\"*\"]','2026-07-16 02:04:59',NULL,'2026-07-16 00:41:58','2026-07-16 02:04:59'),
(444,'App\\Models\\Usuario',1,'AdministradorToken','e9d04380dfd9b017aa273f481c05416455adec91412918fb9846538f64236847','[\"*\"]','2026-07-16 04:03:03',NULL,'2026-07-16 00:53:44','2026-07-16 04:03:03'),
(445,'App\\Models\\Usuario',4,'ClienteToken','e3c99466823695918e94aa60d196f273e2c8807c91e5c1935163a3af956bbe05','[\"*\"]','2026-07-16 02:11:23',NULL,'2026-07-16 02:11:21','2026-07-16 02:11:23'),
(446,'App\\Models\\Usuario',4,'ClienteToken','330de7ddbdbe470e92f0ec2a7ad98c34f034b7c699ec45588fc10f01fd1e2631','[\"*\"]','2026-07-16 02:20:02',NULL,'2026-07-16 02:20:00','2026-07-16 02:20:02'),
(447,'App\\Models\\Usuario',4,'ClienteToken','3e9075c404cc2c1dde54d8c55f596de40d1d526f9ae8b1f93cc1ddd70e39b357','[\"*\"]','2026-07-16 02:38:54',NULL,'2026-07-16 02:38:53','2026-07-16 02:38:54'),
(448,'App\\Models\\Usuario',4,'ClienteToken','f4af01fa6760f528e4a195d662ed0d16604a936910563075f63643401554541b','[\"*\"]','2026-07-16 02:46:43',NULL,'2026-07-16 02:46:42','2026-07-16 02:46:43'),
(449,'App\\Models\\Usuario',4,'ClienteToken','75c648659c7c6fb6783ec58c1944039ec983c3df0663386c4d578fa743cb7c38','[\"*\"]','2026-07-16 02:47:38',NULL,'2026-07-16 02:47:37','2026-07-16 02:47:38'),
(450,'App\\Models\\Usuario',4,'ClienteToken','5c78dd9a6803630ab45f9bb0995e5020014e9f5af373bfd6c886297a42166875','[\"*\"]','2026-07-16 02:55:22',NULL,'2026-07-16 02:55:20','2026-07-16 02:55:22'),
(451,'App\\Models\\Usuario',4,'ClienteToken','0a2f7b55b63f79b61b5d247f84781120da5e8e9e6c5f7e05a584c939547073cb','[\"*\"]','2026-07-16 03:20:25',NULL,'2026-07-16 02:56:46','2026-07-16 03:20:25'),
(452,'App\\Models\\Usuario',4,'ClienteToken','cbcd1d83595e0a0a8f5191cb0cb4009918f2fca1736e588b9e1d130ef4ea7c74','[\"*\"]','2026-07-16 03:06:14',NULL,'2026-07-16 03:05:56','2026-07-16 03:06:14'),
(453,'App\\Models\\Usuario',1,'AdministradorToken','f9ecb8569be1606e540927e7f0dead78c4faf1e2c46db82e745463ad999d3c4c','[\"*\"]','2026-07-16 03:50:45',NULL,'2026-07-16 03:50:40','2026-07-16 03:50:45'),
(454,'App\\Models\\Usuario',4,'ClienteToken','9de12a055867ad665ed98a02068156e968c3a6f6d7de9f66dd18c509c3d9e40c','[\"*\"]','2026-07-16 04:17:27',NULL,'2026-07-16 03:59:56','2026-07-16 04:17:27'),
(456,'App\\Models\\Usuario',1,'AdministradorToken','5fdd5ff49e518dca398b749afc4dcf358f5213b2c1502dd4b98987edad660c29','[\"*\"]','2026-07-16 04:16:51',NULL,'2026-07-16 04:13:29','2026-07-16 04:16:51'),
(457,'App\\Models\\Usuario',4,'ClienteToken','ae567ead25847a20d16cf04140606ba45d717a985679087b4efe023467cd0601','[\"*\"]','2026-07-16 04:30:54',NULL,'2026-07-16 04:18:11','2026-07-16 04:30:54'),
(458,'App\\Models\\Usuario',1,'AdministradorToken','48f69d57b45d0a5af9fcba4512e65e53daa726d04ab53945574b46ec32f64678','[\"*\"]','2026-07-16 04:55:18',NULL,'2026-07-16 04:54:11','2026-07-16 04:55:18'),
(459,'App\\Models\\Usuario',1,'AdministradorToken','701d842543dfb602b48633680bd44bd1ebf17dd4db276b9f2e47cc596a118268','[\"*\"]','2026-07-16 05:05:44',NULL,'2026-07-16 05:00:54','2026-07-16 05:05:44'),
(460,'App\\Models\\Usuario',1,'AdministradorToken','fa62afb1b6e2a590b5e43c53168de171e7d42b810d6f6a7970e024ebe3ba55b9','[\"*\"]','2026-07-16 05:17:10',NULL,'2026-07-16 05:17:05','2026-07-16 05:17:10'),
(461,'App\\Models\\Usuario',1,'AdministradorToken','38061687184b5cd40bddaf502dfe7d3ce91624f50aec916b3df013c151694fed','[\"*\"]','2026-07-16 05:22:41',NULL,'2026-07-16 05:21:45','2026-07-16 05:22:41'),
(464,'App\\Models\\Usuario',4,'ClienteToken','b484c9ebf618234c4ead085f5fbdb2f4fb7ab78bb4a538089cca9daa8b591b99','[\"*\"]','2026-07-16 06:11:23',NULL,'2026-07-16 05:40:42','2026-07-16 06:11:23'),
(465,'App\\Models\\Usuario',4,'ClienteToken','4391487ebfcb200e1e0170353a1ffaf3f5778d5b9004c6be99760eb5d6969439','[\"*\"]','2026-07-16 05:42:30',NULL,'2026-07-16 05:41:57','2026-07-16 05:42:30'),
(466,'App\\Models\\Usuario',4,'ClienteToken','3a1153ab50556ab0ec635e47b686d9d6594301dc24f56cab021fb7fe516623fb','[\"*\"]','2026-07-16 05:46:16',NULL,'2026-07-16 05:46:15','2026-07-16 05:46:16'),
(467,'App\\Models\\Usuario',1,'AdministradorToken','5b2876b929f1e6c64da02381906077b05d50e22c7e202bef9002c15be7ce20b8','[\"*\"]','2026-07-16 05:53:44',NULL,'2026-07-16 05:53:25','2026-07-16 05:53:44'),
(468,'App\\Models\\Usuario',1,'AdministradorToken','5a551edc12fd47dfb0894a7b9f314ff5719bbb224be2663a071e48e4db82d5a1','[\"*\"]','2026-07-16 05:58:21',NULL,'2026-07-16 05:58:08','2026-07-16 05:58:21'),
(469,'App\\Models\\Usuario',4,'ClienteToken','4105e7aead17a19e6a6d70f8c29032862d34b3491ead1c1f85a6c0a9472e2c90','[\"*\"]','2026-07-16 06:07:51',NULL,'2026-07-16 06:06:37','2026-07-16 06:07:51'),
(470,'App\\Models\\Usuario',1,'AdministradorToken','9151b14bae2959bd166b2fb3f931f6c03d6976c93ae221c0627aedb583281646','[\"*\"]','2026-07-16 06:07:25',NULL,'2026-07-16 06:07:11','2026-07-16 06:07:25'),
(472,'App\\Models\\Usuario',1,'AdministradorToken','3471047bf272298e4b87923215b7a09bdbb9b9f04f7fc48977b9783311ed325d','[\"*\"]','2026-07-16 06:16:07',NULL,'2026-07-16 06:16:05','2026-07-16 06:16:07'),
(473,'App\\Models\\Usuario',1,'AdministradorToken','8929b914d06e26cc477b347ef643b54bf1f5fe1886e1b358387bb3f8e54dabfd','[\"*\"]','2026-07-16 06:25:09',NULL,'2026-07-16 06:22:36','2026-07-16 06:25:09'),
(474,'App\\Models\\Usuario',1,'AdministradorToken','916a5b07dee48f457af40cc89a58b57ea63c8f7ddfebee0f818658876ba4a916','[\"*\"]','2026-07-16 06:43:00',NULL,'2026-07-16 06:41:04','2026-07-16 06:43:00'),
(475,'App\\Models\\Usuario',1,'AdministradorToken','89dde0d85e713b9a7180e9ab3856d7fb2a5033825fd913720f0ed944b9725109','[\"*\"]','2026-07-16 06:48:04',NULL,'2026-07-16 06:47:35','2026-07-16 06:48:04'),
(476,'App\\Models\\Usuario',1,'AdministradorToken','41d18d2f7a22757f40078d68042c90150de8405f6f712086d044de4bbc6900d0','[\"*\"]','2026-07-16 06:51:27',NULL,'2026-07-16 06:51:07','2026-07-16 06:51:27'),
(477,'App\\Models\\Usuario',1,'AdministradorToken','903ecbd1d9cb2f7d457847c91ba9485f5cab7fb162e28991c229af45f6914175','[\"*\"]','2026-07-16 06:56:39',NULL,'2026-07-16 06:56:08','2026-07-16 06:56:39'),
(479,'App\\Models\\Usuario',1,'AdministradorToken','93f84520b8cf841f11de736f9a5db26f3c3db0884971e4a9a8835f87dbfb8213','[\"*\"]','2026-07-16 07:08:06',NULL,'2026-07-16 07:07:15','2026-07-16 07:08:06'),
(484,'App\\Models\\Usuario',3,'EstilistaToken','f5f45ded232a01ad642c5ca30b82e910c022278b13b652c51eaedd886192d2b8','[\"*\"]','2026-07-16 09:04:55',NULL,'2026-07-16 07:25:49','2026-07-16 09:04:55'),
(485,'App\\Models\\Usuario',3,'EstilistaToken','13f9316f9faaf2ffbb58a4a39df07013c4845008af98c6fdb4c36a3e119cda94','[\"*\"]','2026-07-20 04:30:31',NULL,'2026-07-16 08:17:23','2026-07-20 04:30:31'),
(486,'App\\Models\\Usuario',4,'ClienteToken','2a04d15ca0a95bc9dcd762e12280fdfd69db288b8d00084f2fb2fd5107142149','[\"*\"]','2026-07-16 13:47:12',NULL,'2026-07-16 13:47:10','2026-07-16 13:47:12'),
(488,'App\\Models\\Usuario',4,'ClienteToken','fdae0b5419125361f1f96eaf3fe43275e23a87d34d7956442d500056aa7d1cc7','[\"*\"]','2026-07-17 06:28:29',NULL,'2026-07-16 13:59:32','2026-07-17 06:28:29'),
(489,'App\\Models\\Usuario',3,'EstilistaToken','71109afd43f90d9c7e46fbeb0575bc4da5a26459d5c1c140d588ba3581321474','[\"*\"]','2026-07-16 14:05:08',NULL,'2026-07-16 14:04:39','2026-07-16 14:05:08'),
(490,'App\\Models\\Usuario',4,'ClienteToken','b02d88cc3254d5a8db45bcfcf6a90a6ae06fabdcfde0a4979c7ab5aac0d146b2','[\"*\"]','2026-07-16 14:17:13',NULL,'2026-07-16 14:05:21','2026-07-16 14:17:13'),
(491,'App\\Models\\Usuario',4,'ClienteToken','1d07863c46db768f0afd33e548fbcd426a931b04d4046ddd2c4a2b705348eae3','[\"*\"]','2026-07-16 14:16:29',NULL,'2026-07-16 14:16:27','2026-07-16 14:16:29'),
(492,'App\\Models\\Usuario',4,'ClienteToken','99b7a94775f15a7c139bc2cb5cf1f08ac0b4f848d7bf088f945d7bf3bc41ee24','[\"*\"]','2026-07-16 16:00:22',NULL,'2026-07-16 15:57:54','2026-07-16 16:00:22'),
(493,'App\\Models\\Usuario',4,'ClienteToken','35d99a6db3b17886fc8a09fcdd7a1cf1948b0f07431f737b43d3ebe845b9a85c','[\"*\"]','2026-07-16 16:20:37',NULL,'2026-07-16 16:19:21','2026-07-16 16:20:37'),
(494,'App\\Models\\Usuario',1,'AdministradorToken','a4a330b821c9e85c889d30deaf47079bd9b2e3aef77f1aa5cc11cb9d1066403a','[\"*\"]','2026-07-16 16:32:51',NULL,'2026-07-16 16:27:02','2026-07-16 16:32:51'),
(495,'App\\Models\\Usuario',4,'ClienteToken','294b1c9c039baca5eafb22a3810984daccfc7009706c378bed672866872f19f3','[\"*\"]','2026-07-17 00:44:58',NULL,'2026-07-16 16:33:58','2026-07-17 00:44:58'),
(496,'App\\Models\\Usuario',4,'ClienteToken','4d69ebdfdf62bc4200146cfc8f13d0638560b97c0d827b604b34fbbb8a91d595','[\"*\"]','2026-07-16 17:54:21',NULL,'2026-07-16 16:36:52','2026-07-16 17:54:21'),
(497,'App\\Models\\Usuario',1,'AdministradorToken','427ce57eda7ac6ed8ee744e4cce122c45be9f48ee8e180dc35da7d0dd622c357','[\"*\"]','2026-07-16 16:45:05',NULL,'2026-07-16 16:44:58','2026-07-16 16:45:05'),
(499,'App\\Models\\Usuario',1,'AdministradorToken','de1d4d4b8a8eb4d1c4ef1beb6e4b5b4896330137b8debb501be1e48e1cd92a0f','[\"*\"]','2026-07-16 16:51:30',NULL,'2026-07-16 16:51:28','2026-07-16 16:51:30'),
(500,'App\\Models\\Usuario',1,'AdministradorToken','ee5d02749863a2ca0fd2166a931acf41f61a84fba0bd6cd35ffa0ce3def1f5a3','[\"*\"]','2026-07-16 16:57:28',NULL,'2026-07-16 16:56:41','2026-07-16 16:57:28'),
(501,'App\\Models\\Usuario',4,'ClienteToken','f5eaa1477eedd087e23351d6e5c00868dce7eb4839eaec71118e3a6e27fcea75','[\"*\"]','2026-07-17 02:36:29',NULL,'2026-07-17 02:19:14','2026-07-17 02:36:29'),
(502,'App\\Models\\Usuario',4,'ClienteToken','1f3e3d34ca67c2233638483264d7c9f8bb01003164ec43fc732afbc988bad5ac','[\"*\"]','2026-07-17 02:36:44',NULL,'2026-07-17 02:36:43','2026-07-17 02:36:44'),
(503,'App\\Models\\Usuario',4,'ClienteToken','f73a792d63758bb741c0f4197074b83c3453a76053f5e372ff0d90e66e6df3e7','[\"*\"]','2026-07-17 02:39:40',NULL,'2026-07-17 02:39:25','2026-07-17 02:39:40'),
(504,'App\\Models\\Usuario',1,'AdministradorToken','f6c3231cdf1408ac39412641c297c7c5b4e2f2e81744f4a31f71cbc793e9de00','[\"*\"]','2026-07-17 03:21:43',NULL,'2026-07-17 03:21:39','2026-07-17 03:21:43'),
(505,'App\\Models\\Usuario',1,'AdministradorToken','78c0d52117602859e285239d68972e797c7b3bf02c34e4502deb6cdb68802df6','[\"*\"]','2026-07-17 03:26:34',NULL,'2026-07-17 03:26:31','2026-07-17 03:26:34'),
(506,'App\\Models\\Usuario',1,'AdministradorToken','03db36ed31590873a68b1af0c80e937a19c98b3cadf0d4c17d46edf4e07fa9d5','[\"*\"]','2026-07-17 03:33:04',NULL,'2026-07-17 03:32:32','2026-07-17 03:33:04'),
(507,'App\\Models\\Usuario',1,'AdministradorToken','b7ad322dc8637db74c7ef2f6e935dd668961b309b797f262e6bb6b350e6f49d8','[\"*\"]','2026-07-17 03:40:17',NULL,'2026-07-17 03:39:18','2026-07-17 03:40:17'),
(508,'App\\Models\\Usuario',1,'AdministradorToken','d9d22f4af2bcb119ea2c9c165eaf5f1526cb6a0728f609efc13e6011bb8d94d0','[\"*\"]','2026-07-17 03:46:53',NULL,'2026-07-17 03:46:13','2026-07-17 03:46:53'),
(509,'App\\Models\\Usuario',1,'AdministradorToken','0336fb621a43139998e25356c571311549c658ab7c8401b8b8458f3bd36956ce','[\"*\"]','2026-07-17 03:53:28',NULL,'2026-07-17 03:52:50','2026-07-17 03:53:28'),
(513,'App\\Models\\Usuario',4,'ClienteToken','c44487f80e1d6568b1c02ecf680d4eb6ae77b9542e672c02c071b5e16378f011','[\"*\"]','2026-07-17 05:00:52',NULL,'2026-07-17 04:54:47','2026-07-17 05:00:52'),
(514,'App\\Models\\Usuario',4,'ClienteToken','e545e8492863ab380a03ff9e6c2a3dc5a8673ccf6aa1c0d491d905a0cc6d6432','[\"*\"]','2026-07-17 05:16:28',NULL,'2026-07-17 05:15:54','2026-07-17 05:16:28'),
(515,'App\\Models\\Usuario',4,'ClienteToken','a7420af53d84a4900784e4f8c98c49e65a07e3a3ece0300ef9be123afd1a3317','[\"*\"]','2026-07-17 05:42:44',NULL,'2026-07-17 05:18:09','2026-07-17 05:42:44'),
(516,'App\\Models\\Usuario',4,'ClienteToken','953609c11cab0310df4aa31c8c02987177080992445768d3a51198bb6b812fe7','[\"*\"]','2026-07-17 05:44:06',NULL,'2026-07-17 05:43:23','2026-07-17 05:44:06'),
(517,'App\\Models\\Usuario',4,'ClienteToken','fada7d327c8ed01b528fd71f52a5f8e1b905aa679ed63fd1e2b3661fb5345f54','[\"*\"]','2026-07-17 05:46:30',NULL,'2026-07-17 05:45:42','2026-07-17 05:46:30'),
(518,'App\\Models\\Usuario',4,'ClienteToken','a028dba26b4262d9062e9f30b95faf5133d7d49809e9c640123abc3c91fd9930','[\"*\"]','2026-07-17 06:19:45',NULL,'2026-07-17 06:17:53','2026-07-17 06:19:45'),
(519,'App\\Models\\Usuario',4,'ClienteToken','46df50325b0a8e3fef40e33ce9b5aa9b246acae61cda4d9b321666014fb609d0','[\"*\"]','2026-07-17 06:39:44',NULL,'2026-07-17 06:20:29','2026-07-17 06:39:44'),
(520,'App\\Models\\Usuario',1,'AdministradorToken','84b9734257dc5aa1ea8379be6f2f2f91dbcdc78bb0716f417302edf699db9252','[\"*\"]','2026-07-17 06:32:31',NULL,'2026-07-17 06:32:21','2026-07-17 06:32:31'),
(521,'App\\Models\\Usuario',20,'ClienteToken','eb7acafb2502349ecf9e176c576cb0c58f047a57d2317596d16e056452122a3b','[\"*\"]',NULL,NULL,'2026-07-17 15:26:24','2026-07-17 15:26:24'),
(522,'App\\Models\\Usuario',4,'ClienteToken','52c1ea27b71f4ade4214a2cda35fda3ceb2a85121acc756a20137dd650db6aee','[\"*\"]','2026-07-20 03:20:33',NULL,'2026-07-20 03:20:31','2026-07-20 03:20:33'),
(523,'App\\Models\\Usuario',4,'ClienteToken','19b81f95c244156c22dbecd8c160bebba4f1d228ae23d75c3604f34eca94a2cc','[\"*\"]','2026-07-20 17:02:22',NULL,'2026-07-20 17:02:01','2026-07-20 17:02:22'),
(524,'App\\Models\\Usuario',1,'AdministradorToken','1c26f902f344f52e57470797ab25accff7cf325c68cfd9c0c6c267fd58ea9ef7','[\"*\"]','2026-07-20 22:33:29',NULL,'2026-07-20 22:33:25','2026-07-20 22:33:29'),
(525,'App\\Models\\Usuario',1,'AdministradorToken','3aa20df19605fa1da15dedb3047b0b836ba2b6ee093d6f4d8e7a287a2f19ba49','[\"*\"]','2026-07-20 22:40:59',NULL,'2026-07-20 22:40:49','2026-07-20 22:40:59'),
(526,'App\\Models\\Usuario',1,'AdministradorToken','127fa9b45323e199ad861603b105f5094126a4d5a3860348a55b5223e038d537','[\"*\"]','2026-07-20 22:48:07',NULL,'2026-07-20 22:46:56','2026-07-20 22:48:07'),
(527,'App\\Models\\Usuario',1,'AdministradorToken','1bf5619cfa4679c032fb88a6f29d469db3a5056ef3370386604d23e3ac6c4822','[\"*\"]','2026-07-20 22:54:59',NULL,'2026-07-20 22:54:55','2026-07-20 22:54:59'),
(528,'App\\Models\\Usuario',1,'AdministradorToken','49c05d1db05179eb8a1e713a5d5cbc3f5323270a14b086a8ebdddd3c73222c44','[\"*\"]','2026-07-20 23:13:12',NULL,'2026-07-20 23:12:55','2026-07-20 23:13:12'),
(529,'App\\Models\\Usuario',1,'AdministradorToken','5282bdcb2e90ce59b5c4759b972103570c29d773fca8e4877f3228bf48249c06','[\"*\"]','2026-07-20 23:29:26',NULL,'2026-07-20 23:29:13','2026-07-20 23:29:26'),
(530,'App\\Models\\Usuario',1,'AdministradorToken','64a21b27ae15f5b008a687f43be0ff7627de074bd33941f14c86257d88f3cc94','[\"*\"]','2026-07-20 23:36:52',NULL,'2026-07-20 23:34:21','2026-07-20 23:36:52'),
(531,'App\\Models\\Usuario',1,'AdministradorToken','403e948f685128cded978bbb311bfe1514c0886b3078b37638dc92129f6df580','[\"*\"]','2026-07-20 23:46:11',NULL,'2026-07-20 23:45:43','2026-07-20 23:46:11'),
(532,'App\\Models\\Usuario',1,'AdministradorToken','b9e44ee77fa9bdbb60c02ab03d157e69b8a2f462e266c2b103ed05e126e7e215','[\"*\"]','2026-07-20 23:48:03',NULL,'2026-07-20 23:47:32','2026-07-20 23:48:03'),
(533,'App\\Models\\Usuario',1,'AdministradorToken','a85a6df212a591f329d4e8b8cc09d28c82abadf5d4bb1e4e9b5dff2822b85648','[\"*\"]','2026-07-20 23:57:52',NULL,'2026-07-20 23:57:48','2026-07-20 23:57:52'),
(534,'App\\Models\\Usuario',1,'AdministradorToken','584400cdf6d706227b00690bb6bfac73179a9b1ea5f85b14a0ad834305a104ed','[\"*\"]','2026-07-21 00:03:34',NULL,'2026-07-21 00:03:19','2026-07-21 00:03:34'),
(535,'App\\Models\\Usuario',1,'AdministradorToken','b9616ac514013320f94fa015b71ecad5846679f922c4112d4c57bae63dac8e44','[\"*\"]','2026-07-21 00:12:34',NULL,'2026-07-21 00:12:25','2026-07-21 00:12:34'),
(536,'App\\Models\\Usuario',1,'AdministradorToken','61b2d753140373836bad90a0c36fff4e648cf0bbc6725d895a68255890515722','[\"*\"]','2026-07-21 00:17:38',NULL,'2026-07-21 00:17:31','2026-07-21 00:17:38'),
(537,'App\\Models\\Usuario',1,'AdministradorToken','d4d6db2a25f70c98ed64bb7a226ca2e746b8361be0d45281c37a33bdfd6affce','[\"*\"]','2026-07-21 00:24:36',NULL,'2026-07-21 00:23:31','2026-07-21 00:24:36'),
(538,'App\\Models\\Usuario',1,'AdministradorToken','7cfc28120163161e6b2eb72eb138baa1b52ba2a1e8dc7d9ee8c8ab27be68026b','[\"*\"]','2026-07-21 00:36:38',NULL,'2026-07-21 00:36:06','2026-07-21 00:36:38'),
(539,'App\\Models\\Usuario',1,'AdministradorToken','c45900b2b73b127cbb2c57788e3b888f7e3b6941c748137c04a5909bf998556a','[\"*\"]','2026-07-21 00:43:19',NULL,'2026-07-21 00:43:10','2026-07-21 00:43:19'),
(541,'App\\Models\\Usuario',1,'AdministradorToken','97a913cc221779c5875927be86e35541e696a6807efad9f080d36d5dd5db688f','[\"*\"]','2026-07-21 00:46:08',NULL,'2026-07-21 00:46:01','2026-07-21 00:46:08'),
(542,'App\\Models\\Usuario',1,'AdministradorToken','6ea76430a7fde69c3e310a718c74408787e1ab3ea8fc198663a7993aaf6d13fe','[\"*\"]','2026-07-21 00:57:55',NULL,'2026-07-21 00:57:43','2026-07-21 00:57:55'),
(543,'App\\Models\\Usuario',1,'AdministradorToken','aba1d9a2a72b814bdbc549558a5eae27d5c70ed33257aba18f6fdaf2a73f7012','[\"*\"]','2026-07-21 01:01:01',NULL,'2026-07-21 01:00:53','2026-07-21 01:01:01'),
(544,'App\\Models\\Usuario',1,'AdministradorToken','6c8ecb3a1312b46b9f7eaa97f82e72f705c12ebf92ca6afba9de8165807d9fa9','[\"*\"]','2026-07-21 01:16:09',NULL,'2026-07-21 01:14:47','2026-07-21 01:16:09'),
(545,'App\\Models\\Usuario',1,'AdministradorToken','b2c81f3e83e37c6391012576141abed94af0fe42eba4ec4b317eebfeeccd58f9','[\"*\"]','2026-07-21 01:41:08',NULL,'2026-07-21 01:22:43','2026-07-21 01:41:08'),
(546,'App\\Models\\Usuario',1,'AdministradorToken','52eb1abf2a43bb0e99055250946d732e572774c9591246362d31024e9974a648','[\"*\"]','2026-07-21 01:47:29',NULL,'2026-07-21 01:46:35','2026-07-21 01:47:29'),
(547,'App\\Models\\Usuario',1,'AdministradorToken','13bda46ef0101a0eabec16d1dcb26d4b8e1128887e7d2bf7c13ac08e4614c195','[\"*\"]','2026-07-21 01:58:20',NULL,'2026-07-21 01:58:03','2026-07-21 01:58:20'),
(548,'App\\Models\\Usuario',1,'AdministradorToken','56465d8b4dc04924932582b564158303090ca2c83e83f52895b5ea2608a6a9a7','[\"*\"]','2026-07-21 02:07:14',NULL,'2026-07-21 02:06:27','2026-07-21 02:07:14'),
(549,'App\\Models\\Usuario',1,'AdministradorToken','da449b1b4ca5f875d49c6a603120669f0a10e4494a2b967a3213e99305bc28c7','[\"*\"]','2026-07-21 02:17:02',NULL,'2026-07-21 02:16:21','2026-07-21 02:17:02'),
(550,'App\\Models\\Usuario',1,'AdministradorToken','d4d367ff48b372f0bcca68d536bd6b5e09aaee0e1e1802e6711aedf764cdc568','[\"*\"]','2026-07-21 02:26:18',NULL,'2026-07-21 02:25:39','2026-07-21 02:26:18'),
(552,'App\\Models\\Usuario',3,'EstilistaToken','28460172e93099122eac97bba3e97e33dc4e57219aa491a65b4655c229fe13d7','[\"*\"]','2026-07-21 05:53:39',NULL,'2026-07-21 03:26:54','2026-07-21 05:53:39'),
(553,'App\\Models\\Usuario',3,'EstilistaToken','f62760b2b5e2343246e814819b14f400d047e85e8fb5b7eb53f6ff9586f51162','[\"*\"]','2026-07-21 05:51:58',NULL,'2026-07-21 03:35:20','2026-07-21 05:51:58'),
(554,'App\\Models\\Usuario',4,'ClienteToken','ff7615262b70fe1812e496c500797ad47d864999aa5156121dd3abcf863bc6e8','[\"*\"]','2026-07-21 04:22:34',NULL,'2026-07-21 03:45:01','2026-07-21 04:22:34'),
(556,'App\\Models\\Usuario',3,'EstilistaToken','fa40fb006c8ef2552c425afe934943c3271a3c6978408e3317b1547f09de2fa9','[\"*\"]','2026-07-21 14:27:04',NULL,'2026-07-21 13:23:08','2026-07-21 14:27:04'),
(557,'App\\Models\\Usuario',31,'MobileClientToken','f7868ec99a6807da4e6d00c712d90a732e51d3582d14d2b67857ba8b3a1a819f','[\"*\"]',NULL,NULL,'2026-07-21 13:56:48','2026-07-21 13:56:48'),
(558,'App\\Models\\Usuario',32,'MobileClientToken','a3a989d93d09362ab2e7fd9ab8f34ab589cc4336a5c8e7ec48de0a6501625d99','[\"*\"]',NULL,NULL,'2026-07-21 14:05:07','2026-07-21 14:05:07'),
(559,'App\\Models\\Usuario',32,'ClienteToken','8f8fba13224bc2262df212ca540fd72eb2a0c908c96c22116f9b25f5ee779126','[\"*\"]','2026-07-21 14:08:37',NULL,'2026-07-21 14:05:23','2026-07-21 14:08:37'),
(560,'App\\Models\\Usuario',3,'EstilistaToken','bde96fb54a3e3134c86276a135007592f2fbee5a74db5d257a9d147f3d9aa4e8','[\"*\"]','2026-07-21 16:14:17',NULL,'2026-07-21 14:19:05','2026-07-21 16:14:17'),
(561,'App\\Models\\Usuario',32,'ClienteToken','bfe4338bd31943c6c68cff9e490807b73a98e7f2ba17e9b9f4b9a02508474751','[\"*\"]','2026-07-21 21:57:04',NULL,'2026-07-21 14:23:12','2026-07-21 21:57:04'),
(562,'App\\Models\\Usuario',3,'EstilistaToken','5ca109ac47e0641e961b3353c2861b2d5fbcc387589b5ff0a89511f228cf50f2','[\"*\"]','2026-07-21 16:42:18',NULL,'2026-07-21 16:28:24','2026-07-21 16:42:18'),
(563,'App\\Models\\Usuario',32,'ClienteToken','3993be5b0e6453f76ffabce51e655e7dba60204f824de9f6d69c6b843883b0b0','[\"*\"]','2026-07-21 22:15:47',NULL,'2026-07-21 21:57:44','2026-07-21 22:15:47'),
(564,'App\\Models\\Usuario',32,'ClienteToken','17c37dc8806d374ce5aa4536ccb6960c6aa397e7161d00d2683f93de3f2baf00','[\"*\"]','2026-07-21 22:27:14',NULL,'2026-07-21 22:27:12','2026-07-21 22:27:14'),
(565,'App\\Models\\Usuario',32,'ClienteToken','105a1b0ae87e003a2b1db18c9a14c89bf95cba5715b9db6b6890a6373eae6a46','[\"*\"]','2026-07-21 22:30:51',NULL,'2026-07-21 22:30:50','2026-07-21 22:30:51'),
(566,'App\\Models\\Usuario',32,'ClienteToken','53a3da5fee7ed44826a0ef2af7ad419832713311c3d585587a8ec40be356a524','[\"*\"]','2026-07-21 22:31:59',NULL,'2026-07-21 22:31:41','2026-07-21 22:31:59'),
(567,'App\\Models\\Usuario',32,'ClienteToken','117f1914d6aaf81e92869b3202dd8538140f49a264d4ce233c854b3bbad2ac04','[\"*\"]','2026-07-21 22:42:10',NULL,'2026-07-21 22:34:00','2026-07-21 22:42:10'),
(568,'App\\Models\\Usuario',3,'EstilistaToken','3b9bdb39bd0641ff77308e4f51200cb04ed89d7ed0a89019c877ad70c540d8c9','[\"*\"]','2026-07-21 22:42:05',NULL,'2026-07-21 22:41:01','2026-07-21 22:42:05'),
(569,'App\\Models\\Usuario',32,'ClienteToken','460c72db6f5f1179c4b7e752483d027ba7edd7a678b7216f65bb20c8cc6b0e4a','[\"*\"]','2026-07-21 22:43:35',NULL,'2026-07-21 22:43:34','2026-07-21 22:43:35'),
(570,'App\\Models\\Usuario',1,'AdministradorToken','4f34d20bdc4cef9c0287606d266ed1c9f2e5816ed57498676917ba1e6796e480','[\"*\"]','2026-07-21 22:53:41',NULL,'2026-07-21 22:51:40','2026-07-21 22:53:41'),
(571,'App\\Models\\Usuario',1,'AdministradorToken','284c9dcecf76a82b179f12cb88ca553a6aea3f7d72a1c88d131204f43fa3dced','[\"*\"]','2026-07-21 23:20:16',NULL,'2026-07-21 23:11:04','2026-07-21 23:20:16'),
(572,'App\\Models\\Usuario',1,'AdministradorToken','d8fcb8a3f45af5d7baa3816ae8ca958618b5867dc7b17d9414573e9e0ada9ffc','[\"*\"]','2026-07-21 23:33:40',NULL,'2026-07-21 23:32:57','2026-07-21 23:33:40'),
(573,'App\\Models\\Usuario',1,'AdministradorToken','4c0e8973a235931153177de0a17c3a77fa682b3612debd591aae62975778ebf8','[\"*\"]','2026-07-21 23:49:00',NULL,'2026-07-21 23:47:21','2026-07-21 23:49:00'),
(574,'App\\Models\\Usuario',1,'AdministradorToken','6592dce89c56f5894226dbaf0255a76ec755ed117bb28134cd94bebe2fb804b9','[\"*\"]','2026-07-22 00:10:53',NULL,'2026-07-22 00:09:13','2026-07-22 00:10:53'),
(575,'App\\Models\\Usuario',1,'AdministradorToken','62248fca50404d5c71a51c2338b8083f4fed6184eab2af4d9902b5e4fb5e7049','[\"*\"]','2026-07-22 00:25:28',NULL,'2026-07-22 00:22:09','2026-07-22 00:25:28'),
(576,'App\\Models\\Usuario',4,'ClienteToken','4fbabda43910c6da23fe720ba6b2e2517644eb2e9a5daedebbdd7414b107e9f9','[\"*\"]','2026-07-22 04:06:08',NULL,'2026-07-22 00:26:15','2026-07-22 04:06:08'),
(577,'App\\Models\\Usuario',1,'AdministradorToken','93d73491ee5fa3942ae060ebe12c45553356e0b9126a0917f3bae31ba8a9dde2','[\"*\"]','2026-07-22 00:34:25',NULL,'2026-07-22 00:33:29','2026-07-22 00:34:25'),
(578,'App\\Models\\Usuario',4,'ClienteToken','f4dcca939d2dad1bf504475c92e1ff12c7b5430f77aebdbf906118e364297e02','[\"*\"]','2026-07-22 01:09:37',NULL,'2026-07-22 00:51:14','2026-07-22 01:09:37'),
(580,'App\\Models\\Usuario',1,'AdministradorToken','ad6773beb30a737af901612e02a96546c686a3f26e114ecdcd474ebfaa61f51b','[\"*\"]','2026-07-22 01:36:23',NULL,'2026-07-22 01:20:24','2026-07-22 01:36:23'),
(582,'App\\Models\\Usuario',1,'AdministradorToken','630c71b8862d203f9a6e4014274d668ba8eeb2c1d2d7eda54a29dee0d20adebf','[\"*\"]','2026-07-22 01:45:27',NULL,'2026-07-22 01:43:06','2026-07-22 01:45:27'),
(583,'App\\Models\\Usuario',1,'AdministradorToken','44261b7bff5246082eb138c1bd507e9039119c2f01a6fe0286539f9532e01d3c','[\"*\"]','2026-07-22 01:59:06',NULL,'2026-07-22 01:52:36','2026-07-22 01:59:06'),
(584,'App\\Models\\Usuario',1,'AdministradorToken','e89e9ce026bd56921729f4fc639371cb4859a9625fba207726790809f6f0c364','[\"*\"]','2026-07-22 02:09:04',NULL,'2026-07-22 02:07:46','2026-07-22 02:09:04'),
(586,'App\\Models\\Usuario',4,'ClienteToken','0389f3e1480a2a1b8533c4923324a029b8e18067e694275b5d3bcc8d2afb4f23','[\"*\"]','2026-07-22 02:30:56',NULL,'2026-07-22 02:24:41','2026-07-22 02:30:56'),
(587,'App\\Models\\Usuario',4,'ClienteToken','e664e9e669eeb1e38dcf2e43db820561bc52075316a46b78abb87fbb59a27924','[\"*\"]','2026-07-22 02:30:16',NULL,'2026-07-22 02:27:25','2026-07-22 02:30:16'),
(588,'App\\Models\\Usuario',4,'ClienteToken','710b4127f81c81988b632eedfb9e8ec1bb1637d87f11284f11d89b8ade5db9e9','[\"*\"]','2026-07-22 02:38:21',NULL,'2026-07-22 02:33:19','2026-07-22 02:38:21'),
(590,'App\\Models\\Usuario',32,'ClienteToken','ccf8a1ca9c8aa1cf0876eb7b1297ebca28d3ce212ca9fd8b38d294a38ad05f5f','[\"*\"]','2026-07-22 02:56:11',NULL,'2026-07-22 02:39:32','2026-07-22 02:56:11'),
(591,'App\\Models\\Usuario',32,'ClienteToken','346b2de94d923318ee44e5a815c86294046de0f389cbf3012d5bf9125c91b31c','[\"*\"]','2026-07-22 03:21:44',NULL,'2026-07-22 03:21:36','2026-07-22 03:21:44'),
(592,'App\\Models\\Usuario',32,'ClienteToken','d37f0ff189bced60cc9ebe6029cdb212311bb3f826e4296d1229516ec57726f3','[\"*\"]','2026-07-22 03:30:03',NULL,'2026-07-22 03:29:53','2026-07-22 03:30:03'),
(593,'App\\Models\\Usuario',4,'ClienteToken','615291ca28e33edd4cd9d5dde7eb391627f1822e2655a4b37b465e8933b9e057','[\"*\"]',NULL,NULL,'2026-07-22 03:38:49','2026-07-22 03:38:49'),
(594,'App\\Models\\Usuario',32,'ClienteToken','14877001b01132419b4f85e94bc2b1d3b94c14c5c0d5c9802d7181691834ddf0','[\"*\"]','2026-07-22 03:43:44',NULL,'2026-07-22 03:43:34','2026-07-22 03:43:44'),
(595,'App\\Models\\Usuario',32,'ClienteToken','2cc7701ec9e08a01419dc21f876c9cd472d19a174b993497b6786532e03629df','[\"*\"]','2026-07-22 03:48:43',NULL,'2026-07-22 03:48:36','2026-07-22 03:48:43'),
(596,'App\\Models\\Usuario',32,'ClienteToken','5b9b9dc9d48ce68d963274063577bb6040136579596a188bfc4178165443c625','[\"*\"]','2026-07-22 03:58:14',NULL,'2026-07-22 03:58:12','2026-07-22 03:58:14'),
(597,'App\\Models\\Usuario',32,'ClienteToken','a1e6a6ba9a63d19a8bc74832b462f2ee858527fd41c2df4c0843c4b8e1090f2a','[\"*\"]','2026-07-22 03:59:00',NULL,'2026-07-22 03:58:58','2026-07-22 03:59:00'),
(598,'App\\Models\\Usuario',32,'ClienteToken','dc28c4db79e6e62246f9b60272614023bdbf68481f36ed5e4c8f067314e82120','[\"*\"]','2026-07-22 04:00:41',NULL,'2026-07-22 04:00:39','2026-07-22 04:00:41'),
(599,'App\\Models\\Usuario',3,'EstilistaToken','c1547e40d01936a8ba53a5c3a1cee65ef3c3ad22fe2c759af044dd6b25b3efb2','[\"*\"]','2026-07-22 04:03:55',NULL,'2026-07-22 04:02:40','2026-07-22 04:03:55'),
(601,'App\\Models\\Usuario',32,'ClienteToken','0b4e83a195f371eefbac67d57014b7c659bbd3c50ba88ffed9ab205ee3ae8968','[\"*\"]','2026-07-22 04:16:12',NULL,'2026-07-22 04:16:10','2026-07-22 04:16:12'),
(602,'App\\Models\\Usuario',32,'ClienteToken','a74bcdfa9e980574950b2973c1355f1c002d87f52f38f894d7a84f74a5e7e5ae','[\"*\"]','2026-07-22 04:26:09',NULL,'2026-07-22 04:25:33','2026-07-22 04:26:09'),
(603,'App\\Models\\Usuario',32,'ClienteToken','6c7471aaa0d1d801439b70b46553cd96cdb73f99182e21497caba7a490ddefda','[\"*\"]','2026-07-22 04:29:07',NULL,'2026-07-22 04:29:05','2026-07-22 04:29:07'),
(604,'App\\Models\\Usuario',32,'ClienteToken','929b500713835f40a93f845f34036fba9ff2fb15bd18165af0e112711b77404b','[\"*\"]','2026-07-22 05:02:20',NULL,'2026-07-22 04:57:12','2026-07-22 05:02:20'),
(605,'App\\Models\\Usuario',32,'ClienteToken','d018c422b38a1e74caaba72282ffd6db104886c150d002084f88e7dbb8cd51f0','[\"*\"]','2026-07-22 05:09:37',NULL,'2026-07-22 05:06:14','2026-07-22 05:09:37'),
(606,'App\\Models\\Usuario',32,'ClienteToken','6b40842f92bd4bcbe9ce52005c876f3bc17615016b9597b61d89fd124d1bacd3','[\"*\"]','2026-07-22 05:20:58',NULL,'2026-07-22 05:20:56','2026-07-22 05:20:58'),
(607,'App\\Models\\Usuario',32,'ClienteToken','90820777edd368364c3e3639683038efa1279171fd3612c618b0e19b036588f2','[\"*\"]','2026-07-22 05:28:01',NULL,'2026-07-22 05:27:40','2026-07-22 05:28:01'),
(608,'App\\Models\\Usuario',32,'ClienteToken','b6556416ba59215cacfe607dfa0ea974376a5bc4424878636f3038c8f6f791a8','[\"*\"]','2026-07-22 05:29:46',NULL,'2026-07-22 05:29:45','2026-07-22 05:29:46'),
(609,'App\\Models\\Usuario',32,'ClienteToken','4d5076fd4348d30e3e530b6c93626a20a14eb89a1b57d8b6ae29ade8693c6b53','[\"*\"]','2026-07-22 05:38:05',NULL,'2026-07-22 05:35:48','2026-07-22 05:38:05'),
(611,'App\\Models\\Usuario',3,'EstilistaToken','27f4186ac4bc4032395f2a7bb9909ac0020ce51e17c8f90311a639479d6ca838','[\"*\"]','2026-07-22 05:39:40',NULL,'2026-07-22 05:36:32','2026-07-22 05:39:40'),
(612,'App\\Models\\Usuario',32,'ClienteToken','5c3cd24c5b274a7fdf4ae96fef291cc4dbb7c5c39d245b3f4fd69060d14d564a','[\"*\"]','2026-07-22 05:41:58',NULL,'2026-07-22 05:39:18','2026-07-22 05:41:58'),
(613,'App\\Models\\Usuario',32,'ClienteToken','c8748795ec57d1e24aca21e7e24add25314fd5ca7e8b12447e22f785645914fe','[\"*\"]','2026-07-22 05:52:39',NULL,'2026-07-22 05:44:39','2026-07-22 05:52:39'),
(616,'App\\Models\\Usuario',32,'ClienteToken','be8ccca6af3a5e77d764f7a19a0d7c4b0b684a8297bf42b8155e8b89d0591c30','[\"*\"]','2026-07-22 13:18:21',NULL,'2026-07-22 13:16:06','2026-07-22 13:18:21'),
(617,'App\\Models\\Usuario',3,'EstilistaToken','8c40e975d90a9fcf0fde7087f2ac4cbcb50014c77e020cda8b4fdc3185832c27','[\"*\"]','2026-07-22 13:34:19',NULL,'2026-07-22 13:16:45','2026-07-22 13:34:19'),
(619,'App\\Models\\Usuario',32,'ClienteToken','96b52466501017362e737ac9d21c7cfc7468dc521a328e3cb71c1b0a133420a2','[\"*\"]','2026-07-22 13:40:50',NULL,'2026-07-22 13:40:39','2026-07-22 13:40:50'),
(620,'App\\Models\\Usuario',32,'ClienteToken','612c127eea52e9bfef1d528a52f4542f9a7dd90df32e8bb33d9a772898c1a79f','[\"*\"]','2026-07-22 13:48:34',NULL,'2026-07-22 13:48:32','2026-07-22 13:48:34'),
(621,'App\\Models\\Usuario',1,'AdministradorToken','2eeef47f27c672f4a752cd83611dad021e24de69047cd7306e2588dc40c9bef2','[\"*\"]','2026-07-22 14:07:57',NULL,'2026-07-22 14:07:48','2026-07-22 14:07:57'),
(622,'App\\Models\\Usuario',1,'AdministradorToken','3815d1504dba242e1d89c8831052bc68d6e5168e1430777516bfe80fd44c1183','[\"*\"]','2026-07-22 14:15:24',NULL,'2026-07-22 14:14:54','2026-07-22 14:15:24'),
(623,'App\\Models\\Usuario',32,'ClienteToken','86175ecbc4da3ac0c42ba8800ac8612c65352ea918763dd3ee2e3fbd851d8014','[\"*\"]','2026-07-22 14:25:27',NULL,'2026-07-22 14:25:25','2026-07-22 14:25:27'),
(624,'App\\Models\\Usuario',32,'ClienteToken','df2f4578e8c54abb82b4b8b7bd999b93dba75614e976b5450e5723b2952d50a0','[\"*\"]','2026-07-22 14:56:53',NULL,'2026-07-22 14:56:53','2026-07-22 14:56:53'),
(625,'App\\Models\\Usuario',32,'ClienteToken','20c00e409aa15bd6429543b8bc90b971ab85d9a7b62aff8112625077a56a9423','[\"*\"]','2026-07-22 14:58:50',NULL,'2026-07-22 14:58:48','2026-07-22 14:58:50'),
(626,'App\\Models\\Usuario',32,'ClienteToken','6e1e13714d6cb082f97831f37b1e5bf6237d188d6a2a594094f807e70ce05d54','[\"*\"]','2026-07-22 15:20:13',NULL,'2026-07-22 15:20:09','2026-07-22 15:20:13'),
(627,'App\\Models\\Usuario',1,'AdministradorToken','bc9486c20702cbc3cc3d0181c7c6140704737c54542e8f86efd4fd1fab6909d6','[\"*\"]','2026-07-22 16:46:38',NULL,'2026-07-22 15:25:47','2026-07-22 16:46:38'),
(628,'App\\Models\\Usuario',32,'ClienteToken','29bbb220446b6082213c2808c01e3c8a6eaaa20fc7371e0c259d700f4d9e4a85','[\"*\"]','2026-07-22 15:39:30',NULL,'2026-07-22 15:37:08','2026-07-22 15:39:30'),
(630,'App\\Models\\Usuario',32,'ClienteToken','8fdca8dd07933c0b736788d40759f5414132910c91bc4c8f7252814d25d709f5','[\"*\"]','2026-07-22 15:47:38',NULL,'2026-07-22 15:40:07','2026-07-22 15:47:38'),
(631,'App\\Models\\Usuario',32,'ClienteToken','1a5a5d7932793b8275a381312fcb75c33e8feb3a31b903a308ffed292cd9cc87','[\"*\"]','2026-07-22 15:48:15',NULL,'2026-07-22 15:48:12','2026-07-22 15:48:15'),
(632,'App\\Models\\Usuario',32,'ClienteToken','cb2e1f205333d285f446106a1419c583fde116f05feb9bbb115ec9bca9d358b1','[\"*\"]','2026-07-22 16:10:38',NULL,'2026-07-22 16:06:52','2026-07-22 16:10:38'),
(633,'App\\Models\\Usuario',32,'ClienteToken','1a8abc0e92824f9af61e849da509cd8bf99d9672d22f3a5be66629fe2614b276','[\"*\"]','2026-07-22 16:26:16',NULL,'2026-07-22 16:25:05','2026-07-22 16:26:16'),
(634,'App\\Models\\Usuario',32,'ClienteToken','96fe116f64c586db0acc2c8039608d18d38479aab0330758f8318c08bb80079b','[\"*\"]','2026-07-22 16:34:39',NULL,'2026-07-22 16:28:33','2026-07-22 16:34:39'),
(635,'App\\Models\\Usuario',32,'ClienteToken','98d570d8bea9df629f01e9d14e92704d8fab0fadcb604bff46c9335ced75b317','[\"*\"]','2026-07-22 16:51:45',NULL,'2026-07-22 16:35:03','2026-07-22 16:51:45'),
(636,'App\\Models\\Usuario',4,'ClienteToken','93d546c5b0853b98e84fa10aa763fc3dbac904c14a81a25050f6fffb22e0d075','[\"*\"]','2026-07-22 16:59:26',NULL,'2026-07-22 16:48:06','2026-07-22 16:59:26'),
(637,'App\\Models\\Usuario',32,'ClienteToken','74731a85cb5b8ad83a9795515109e5d1bbbffaa623ff9bebff73312dfa706164','[\"*\"]','2026-07-22 16:52:13',NULL,'2026-07-22 16:52:11','2026-07-22 16:52:13'),
(639,'App\\Models\\Usuario',1,'AdministradorToken','6e4c2b83204cd73a0dad31f60fe631f5eff92644a71bae73c90dbc4d74e8c5b8','[\"*\"]',NULL,NULL,'2026-07-30 03:13:32','2026-07-30 03:13:32'),
(640,'App\\Models\\Usuario',33,'MobileClientToken','d6ac6dbd33d638e8db77c7d140e2e61dfc89195dcb85dda18c5aa8e3432b0517','[\"*\"]',NULL,NULL,'2026-07-30 04:44:54','2026-07-30 04:44:54'),
(642,'App\\Models\\Usuario',34,'MobileClientToken','8368b9de7e66b38432bf5f12a57455a2686e996b75782403a1ac9379cb382d5b','[\"*\"]',NULL,NULL,'2026-07-30 04:50:35','2026-07-30 04:50:35'),
(643,'App\\Models\\Usuario',32,'ClienteToken','5cc6fb4685ae4b0ff21105ef24a0575126be12c5c755291c8a7da46c8999fe4c','[\"*\"]','2026-07-30 05:27:47',NULL,'2026-07-30 05:27:47','2026-07-30 05:27:47'),
(644,'App\\Models\\Usuario',4,'ClienteToken','5a2ecca9734015b3223bcfcf897ea2f0cb51314ae10e3b7c0b70791675002a84','[\"*\"]',NULL,NULL,'2026-07-30 05:49:27','2026-07-30 05:49:27'),
(645,'App\\Models\\Usuario',4,'ClienteToken','b68fc110084e67b09fe2eaca64d643b018a0977a960cd417dfafbe44d8a51add','[\"*\"]','2026-07-31 00:58:41',NULL,'2026-07-30 05:49:31','2026-07-31 00:58:41'),
(648,'App\\Models\\Usuario',1,'AdministradorToken','4f633cf207ad2be2e1dba7165b5053b9ed64debf7fea099dc739f3482013b0ea','[\"*\"]','2026-07-30 21:54:24',NULL,'2026-07-30 21:53:00','2026-07-30 21:54:24'),
(649,'App\\Models\\Usuario',1,'AdministradorToken','ed6c41805ed22e47d774368b2b54eb02665261324da6bedbb1396e9e16bf7e71','[\"*\"]','2026-07-30 22:17:03',NULL,'2026-07-30 22:15:26','2026-07-30 22:17:03'),
(650,'App\\Models\\Usuario',1,'AdministradorToken','f4ef80ff8e260ca020280635b3a36b226a5c42107c6a3a6c87091a7aa2d47f30','[\"*\"]','2026-07-30 22:21:59',NULL,'2026-07-30 22:20:56','2026-07-30 22:21:59'),
(651,'App\\Models\\Usuario',1,'AdministradorToken','a8d7cc263bc30cbcb564184dcab058041c3d595d7860a7aec116dd7cb0942131','[\"*\"]','2026-07-30 22:34:45',NULL,'2026-07-30 22:29:48','2026-07-30 22:34:45'),
(652,'App\\Models\\Usuario',1,'AdministradorToken','e81c360c2c614a70acd88f8a20f38af9879f369aea5ded8d8e30b62cbc1db229','[\"*\"]','2026-07-30 22:50:29',NULL,'2026-07-30 22:48:32','2026-07-30 22:50:29'),
(654,'App\\Models\\Usuario',1,'AdministradorToken','bf6f3dabec04da15748a069a37b18f6f48f88bc6052c909a0da572a87a10eaeb','[\"*\"]','2026-07-30 23:10:30',NULL,'2026-07-30 22:56:58','2026-07-30 23:10:30'),
(656,'App\\Models\\Usuario',1,'AdministradorToken','084e42aa8360af022e8640f23d1d9e4353426770e590e4fb3a52de7e377cf8e6','[\"*\"]','2026-07-30 23:19:04',NULL,'2026-07-30 23:18:00','2026-07-30 23:19:04'),
(657,'App\\Models\\Usuario',1,'AdministradorToken','a633d3c4e6c17c84e300b98203c8e906210c1ef8d0d0a5784873c7542b8b0b7a','[\"*\"]','2026-07-30 23:20:38',NULL,'2026-07-30 23:19:56','2026-07-30 23:20:38'),
(658,'App\\Models\\Usuario',1,'AdministradorToken','da9017f83c264ade1812367ffc4bfb1899252083827ddfef96356f57ade3fd53','[\"*\"]','2026-07-30 23:22:32',NULL,'2026-07-30 23:21:44','2026-07-30 23:22:32'),
(659,'App\\Models\\Usuario',1,'AdministradorToken','086d740f0101445783d4fe8bc4a2ebecdf1030541cbe97bd3dd0bc3bbd1bf1af','[\"*\"]','2026-07-30 23:31:23',NULL,'2026-07-30 23:28:34','2026-07-30 23:31:23'),
(660,'App\\Models\\Usuario',1,'AdministradorToken','f52de73ec56e3407c566be1059eda97d0d03317a61d0e08f22e6f86477472e10','[\"*\"]','2026-07-30 23:38:58',NULL,'2026-07-30 23:37:36','2026-07-30 23:38:58'),
(661,'App\\Models\\Usuario',1,'AdministradorToken','0e8af633d42e3a27b7b1cf47f6683a62bca72cef48c91bada368eefa2db45509','[\"*\"]','2026-07-30 23:44:33',NULL,'2026-07-30 23:41:34','2026-07-30 23:44:33'),
(662,'App\\Models\\Usuario',1,'AdministradorToken','9332b1e73dd80703c77669847027f4ad7a9b70e4252f157a4b6d9097b5567b83','[\"*\"]','2026-07-31 00:14:09',NULL,'2026-07-30 23:53:46','2026-07-31 00:14:09'),
(671,'App\\Models\\Usuario',32,'ClienteToken','c83043606e067ed464cdad22ecca65c2541917b2d561541b68259279d7b01cf1','[\"*\"]','2026-07-31 00:56:12',NULL,'2026-07-31 00:55:57','2026-07-31 00:56:12'),
(676,'App\\Models\\Usuario',1,'AdministradorToken','58add97ed0279504fd873395afe708b848de2abf463ef1ccd586fda0eb30e808','[\"*\"]','2026-07-31 02:46:14',NULL,'2026-07-31 02:46:04','2026-07-31 02:46:14'),
(677,'App\\Models\\Usuario',32,'ClienteToken','c8fab13027647d42404655401a90f361c0ae25447a6ac1f46f38570d45ebb460','[\"*\"]','2026-07-31 03:05:14',NULL,'2026-07-31 02:56:49','2026-07-31 03:05:14'),
(681,'App\\Models\\Usuario',32,'ClienteToken','f423c660b4598045ccad2d00621f8c4b48b6708a96307b5dddb4b964061cbc3e','[\"*\"]','2026-07-31 03:06:02',NULL,'2026-07-31 03:06:00','2026-07-31 03:06:02'),
(682,'App\\Models\\Usuario',3,'EstilistaToken','e782c29d1a39890165be804dd8838c7aad691eec0c18314d720708d340028afe','[\"*\"]','2026-07-31 03:32:59',NULL,'2026-07-31 03:19:51','2026-07-31 03:32:59'),
(683,'App\\Models\\Usuario',32,'ClienteToken','c4de265a0ac2c3f6cf408d5cc0eda99380ebbd92fdeb0bff325178dafb9e9ad8','[\"*\"]','2026-07-31 03:22:23',NULL,'2026-07-31 03:22:21','2026-07-31 03:22:23'),
(685,'App\\Models\\Usuario',32,'ClienteToken','f22e73a44b8e4f76320c12350d7ae992ad306d12f9b4537c5fc6faffda0bcf16','[\"*\"]','2026-07-31 03:36:10',NULL,'2026-07-31 03:36:08','2026-07-31 03:36:10'),
(689,'App\\Models\\Usuario',32,'ClienteToken','66774367ed55de8873329080ba2a36a7bd47d61aacdd142e0cc63bd244f8ea46','[\"*\"]','2026-07-31 03:44:34',NULL,'2026-07-31 03:44:32','2026-07-31 03:44:34'),
(692,'App\\Models\\Usuario',32,'ClienteToken','8edecb7a83da988b3adab90075b99398ad0a8d846a100a696d2dd87bdaf24762','[\"*\"]','2026-07-31 06:16:02',NULL,'2026-07-31 06:14:30','2026-07-31 06:16:02'),
(693,'App\\Models\\Usuario',32,'ClienteToken','32c49ea2b0cbb7b77a39c9b2dd4404dbde9d991c1442278bade10aed585c45d5','[\"*\"]','2026-07-31 06:27:37',NULL,'2026-07-31 06:20:35','2026-07-31 06:27:37'),
(694,'App\\Models\\Usuario',32,'ClienteToken','57741342ddcf0ed250697a81fd1cc621ab859aa2f422db909a6ca97867fcb142','[\"*\"]','2026-07-31 06:34:41',NULL,'2026-07-31 06:34:39','2026-07-31 06:34:41'),
(695,'App\\Models\\Usuario',32,'ClienteToken','b80e548731e37c8ce31c454ed04cc9f53f38dc7e7f8a1daa1fcf2de3086cb648','[\"*\"]','2026-07-31 06:36:14',NULL,'2026-07-31 06:36:13','2026-07-31 06:36:14'),
(696,'App\\Models\\Usuario',32,'ClienteToken','8e7a2a105b0b1cf43e751a333178cf6656f72a1a718b098c4fb626264f07760d','[\"*\"]','2026-07-31 06:39:51',NULL,'2026-07-31 06:39:49','2026-07-31 06:39:51'),
(697,'App\\Models\\Usuario',32,'ClienteToken','4fe5ae9b6bf46c0f79e490d11a0aa260c8e864ac7bda3a04d40110e14e157cff','[\"*\"]','2026-07-31 07:23:37',NULL,'2026-07-31 06:42:31','2026-07-31 07:23:37'),
(698,'App\\Models\\Usuario',32,'ClienteToken','f6dfdcd738c083103ceb6dfe1c076bc0aff47dbf5439ed73f697224b0c533b61','[\"*\"]','2026-07-31 06:55:36',NULL,'2026-07-31 06:55:34','2026-07-31 06:55:36'),
(699,'App\\Models\\Usuario',32,'ClienteToken','0bb19f1ccdf660864088f848dd7e87df91d255012036b0078be1ae84327bc167','[\"*\"]','2026-07-31 07:02:16',NULL,'2026-07-31 06:59:44','2026-07-31 07:02:16'),
(700,'App\\Models\\Usuario',32,'ClienteToken','feb1ecdf193cdca2d700538c1cc0ccf835837b14638934d148ab5c6e94d34b2a','[\"*\"]','2026-07-31 07:15:15',NULL,'2026-07-31 07:15:13','2026-07-31 07:15:15'),
(701,'App\\Models\\Usuario',32,'ClienteToken','6536b8913906b48d3048bea828b315b43a409d27875e71d5bbf3ef9625eda627','[\"*\"]','2026-07-31 07:44:59',NULL,'2026-07-31 07:44:58','2026-07-31 07:44:59'),
(702,'App\\Models\\Usuario',32,'ClienteToken','a260148f07d0ff7bb70f4b30c15644284c6ac6c9d64874a93c12b6e8c6d4773b','[\"*\"]','2026-07-31 07:47:53',NULL,'2026-07-31 07:47:50','2026-07-31 07:47:53'),
(703,'App\\Models\\Usuario',32,'ClienteToken','7ea10824a055d56a81bdc36b679f56e2dcc28bd65caad0bb84a64580f195a31d','[\"*\"]','2026-07-31 14:43:12',NULL,'2026-07-31 14:43:01','2026-07-31 14:43:12'),
(704,'App\\Models\\Usuario',1,'AdministradorToken','e992b8b01360ada99fe951cf2c71fe9587afeaff1c7758957aff5c250c8a35bc','[\"*\"]','2026-07-31 15:13:38',NULL,'2026-07-31 15:08:09','2026-07-31 15:13:38'),
(705,'App\\Models\\Usuario',32,'ClienteToken','c66b4b7429c0141bd264d5cb273645eb646ca0d8fdf3b090327387b9243a3a49','[\"*\"]','2026-07-31 15:19:43',NULL,'2026-07-31 15:19:41','2026-07-31 15:19:43'),
(706,'App\\Models\\Usuario',1,'AdministradorToken','5949bb57346bd99f83830eee005c266b41da08285a4a854181f6bc460ee37b85','[\"*\"]','2026-07-31 16:29:10',NULL,'2026-07-31 15:39:58','2026-07-31 16:29:10'),
(707,'App\\Models\\Usuario',32,'ClienteToken','17d12a05405eebd62480524a0066fdb0aa9bfffdb93c5b82cb679e340227494c','[\"*\"]','2026-07-31 15:45:46',NULL,'2026-07-31 15:45:42','2026-07-31 15:45:46'),
(709,'App\\Models\\Usuario',3,'EstilistaToken','c3962d860531271cb7f00f785ed042721e676ef52da0a7b288a5e866c02c6cdb','[\"*\"]','2026-07-31 16:35:41',NULL,'2026-07-31 16:31:08','2026-07-31 16:35:41');
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `resenias`
--

DROP TABLE IF EXISTS `resenias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `resenias` (
  `id_resenia` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_cliente` bigint(20) unsigned NOT NULL,
  `id_estilista` bigint(20) unsigned NOT NULL,
  `id_reserva` bigint(20) unsigned NOT NULL,
  `calificacion` int(11) NOT NULL,
  `comentario` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_resenia`),
  UNIQUE KEY `resenias_id_reserva_unique` (`id_reserva`),
  KEY `resenias_id_cliente_foreign` (`id_cliente`),
  KEY `resenias_id_estilista_foreign` (`id_estilista`),
  CONSTRAINT `resenias_id_cliente_foreign` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  CONSTRAINT `resenias_id_estilista_foreign` FOREIGN KEY (`id_estilista`) REFERENCES `estilistas` (`id_estilista`),
  CONSTRAINT `resenias_id_reserva_foreign` FOREIGN KEY (`id_reserva`) REFERENCES `reservas` (`id_reserva`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resenias`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `resenias` DISABLE KEYS */;
INSERT INTO `resenias` VALUES
(1,2,2,3,5,'Excelente servicio, la atención fue de primera y quedé muy conforme.','2026-06-05 01:06:00','2026-06-05 01:06:00'),
(2,1,2,17,5,'Excelente atención, muy puntual con el horario.','2026-06-18 07:19:55','2026-06-18 07:19:55'),
(15,1,2,15,4,'buena atención','2026-06-26 15:24:16','2026-06-26 15:24:16'),
(16,1,1,19,4,'buenazo','2026-07-14 22:58:08','2026-07-14 22:58:08'),
(17,1,2,26,5,'buenaso','2026-07-14 23:22:35','2026-07-14 23:22:35'),
(18,1,1,18,5,'increible','2026-07-14 23:22:45','2026-07-14 23:22:45'),
(19,1,3,24,5,'wenoooo','2026-07-14 23:22:57','2026-07-14 23:22:57'),
(21,1,2,23,3,'bueno','2026-07-16 16:35:35','2026-07-16 16:35:35'),
(22,1,2,29,5,'123','2026-07-16 16:37:10','2026-07-16 16:37:10');
/*!40000 ALTER TABLE `resenias` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `reservas`
--

DROP TABLE IF EXISTS `reservas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservas` (
  `id_reserva` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_cliente` bigint(20) unsigned NOT NULL,
  `id_estilista` bigint(20) unsigned NOT NULL,
  `id_estado` bigint(20) unsigned NOT NULL,
  `fecha_reserva` date NOT NULL,
  `hora_inicio_estimada` time NOT NULL,
  `monto_total` decimal(10,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_reserva`),
  KEY `reservas_id_cliente_foreign` (`id_cliente`),
  KEY `reservas_id_estilista_foreign` (`id_estilista`),
  KEY `reservas_id_estado_foreign` (`id_estado`),
  CONSTRAINT `reservas_id_cliente_foreign` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  CONSTRAINT `reservas_id_estado_foreign` FOREIGN KEY (`id_estado`) REFERENCES `estados_reserva` (`id_estado`),
  CONSTRAINT `reservas_id_estilista_foreign` FOREIGN KEY (`id_estilista`) REFERENCES `estilistas` (`id_estilista`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservas`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `reservas` DISABLE KEYS */;
INSERT INTO `reservas` VALUES
(1,2,1,8,'2026-07-25','16:30:00',25.00,'2026-06-05 00:12:15','2026-06-19 07:30:33'),
(2,3,2,4,'2026-06-25','14:00:00',25.00,'2026-06-05 00:12:41','2026-06-25 17:39:50'),
(3,3,2,3,'2026-06-21','14:00:00',25.00,'2026-06-05 00:13:14','2026-06-05 01:15:01'),
(4,2,2,3,'2026-06-21','14:00:00',25.00,'2026-06-05 00:15:19','2026-06-26 02:24:08'),
(5,2,2,4,'2026-06-21','14:00:00',25.00,'2026-06-05 00:28:08','2026-06-25 02:55:58'),
(6,2,2,4,'2026-06-22','14:00:00',25.00,'2026-06-05 00:35:48','2026-06-23 02:53:03'),
(7,2,1,5,'2026-10-10','14:00:00',25.00,'2026-06-05 00:36:32','2026-06-22 02:54:36'),
(8,2,2,1,'2026-06-15','10:30:00',25.00,'2026-06-05 00:44:56','2026-06-05 00:44:56'),
(9,2,1,1,'2026-06-06','04:34:00',25.00,'2026-06-05 11:34:18','2026-06-05 11:34:18'),
(10,2,1,1,'2026-06-05','07:37:00',25.00,'2026-06-05 11:35:34','2026-06-05 11:35:34'),
(11,2,2,4,'2026-06-05','05:53:00',25.00,'2026-06-05 11:53:35','2026-06-22 03:15:41'),
(15,1,2,4,'2026-07-14','09:30:00',25.00,NULL,'2026-06-26 01:54:28'),
(16,1,2,5,'2026-06-28','10:00:00',60.00,'2026-06-18 07:05:15','2026-06-25 03:46:45'),
(17,1,2,4,'2026-06-28','10:00:00',60.00,'2026-06-18 07:16:04','2026-06-23 02:53:10'),
(18,1,1,3,'2026-07-15','10:00:00',60.00,'2026-06-18 08:46:17','2026-06-26 08:23:49'),
(19,1,1,3,'2026-07-20','15:00:00',60.00,'2026-06-19 07:25:58','2026-06-26 08:13:35'),
(20,6,2,1,'2026-06-21','21:53:47',35.00,'2026-06-22 02:54:00','2026-06-22 02:54:00'),
(21,7,1,1,'2026-06-21','22:19:29',25.00,'2026-06-22 03:19:55','2026-06-22 03:19:55'),
(22,1,2,1,'2026-06-30','09:30:00',70.00,'2026-06-22 23:18:02','2026-06-26 14:45:35'),
(23,1,2,3,'2026-07-10','23:53:00',35.00,'2026-06-22 23:53:37','2026-06-26 08:35:49'),
(24,1,3,3,'2026-07-12','22:54:00',35.00,'2026-06-22 23:54:37','2026-06-23 02:14:11'),
(25,1,2,3,'2026-07-31','03:10:00',35.00,'2026-06-23 00:00:02','2026-07-31 16:31:41'),
(26,1,2,4,'2026-07-26','11:30:00',70.00,'2026-06-23 00:04:35','2026-07-16 14:05:07'),
(27,1,3,1,'2026-07-01','01:00:00',25.00,'2026-06-25 01:39:52','2026-06-25 01:39:52'),
(28,15,1,1,'2026-06-25','13:04:18',35.00,'2026-06-25 18:05:07','2026-06-25 18:05:07'),
(29,1,2,4,'2026-06-26','09:00:00',35.00,'2026-06-26 05:19:53','2026-06-26 14:50:39'),
(30,3,3,1,'2026-06-26','09:20:00',35.00,'2026-06-26 05:59:01','2026-06-26 05:59:01'),
(31,15,1,1,'2026-06-26','08:00:00',20.00,'2026-06-26 07:41:28','2026-06-26 07:41:28'),
(32,23,2,2,'2026-09-03','23:59:00',35.00,'2026-06-26 14:38:49','2026-07-21 16:14:12'),
(33,19,1,1,'2026-06-26','09:20:00',25.00,'2026-06-26 14:39:03','2026-06-26 14:39:03'),
(34,22,1,1,'2026-06-30','09:39:00',35.00,'2026-06-26 14:40:18','2026-06-26 14:40:18'),
(35,22,3,5,'2026-06-30','09:00:00',35.00,'2026-06-26 14:41:57','2026-07-13 03:33:22'),
(36,22,2,1,'2026-06-30','09:00:00',35.00,'2026-06-26 14:42:35','2026-06-26 14:42:35'),
(37,22,2,5,'2026-06-30','09:40:00',95.00,'2026-06-26 14:43:52','2026-06-26 15:14:18'),
(38,20,2,1,'2026-06-26','09:46:00',35.00,'2026-06-26 14:46:31','2026-06-26 14:46:54'),
(39,1,2,1,'2026-06-26','10:30:00',35.00,'2026-06-26 14:48:47','2026-06-26 14:48:47'),
(40,1,1,1,'2026-06-26','16:00:00',25.00,'2026-06-26 14:50:38','2026-06-26 14:50:38'),
(41,20,2,1,'2026-06-26','17:15:00',35.00,'2026-06-26 14:51:50','2026-06-26 14:51:50'),
(42,22,2,1,'2026-06-30','10:55:00',95.00,'2026-06-26 15:19:40','2026-06-26 15:19:40'),
(43,1,1,1,'2026-07-14','09:30:00',35.00,'2026-07-14 03:59:15','2026-07-14 03:59:15'),
(44,1,2,6,'2026-07-14','09:30:00',35.00,'2026-07-14 04:02:34','2026-07-21 05:50:35'),
(45,1,2,3,'2026-07-14','13:00:00',35.00,'2026-07-14 04:11:03','2026-07-21 14:27:00'),
(46,21,1,1,'2026-07-15','12:00:00',55.00,'2026-07-16 04:55:16','2026-07-16 04:55:16'),
(47,1,3,1,'2026-07-24','10:00:00',35.00,'2026-07-16 05:42:30','2026-07-16 05:42:30'),
(48,1,3,1,'2026-07-18','11:00:00',35.00,'2026-07-16 06:07:51','2026-07-16 06:07:51'),
(49,21,1,2,'2026-07-16','10:00:00',60.00,'2026-07-16 06:23:09','2026-07-16 06:56:29'),
(50,22,1,1,'2026-07-16','12:00:00',35.00,'2026-07-16 06:24:02','2026-07-16 06:24:02'),
(51,21,1,1,'2026-07-16','13:00:00',80.00,'2026-07-16 06:42:28','2026-07-16 06:42:28'),
(52,1,2,8,'2026-07-16','09:00:00',60.00,'2026-07-16 07:22:47','2026-07-16 08:52:07'),
(53,1,3,7,'2026-07-29','11:00:00',35.00,'2026-07-16 16:00:22','2026-07-22 03:35:16'),
(54,1,2,2,'2026-07-23','13:00:00',35.00,'2026-07-16 16:20:37','2026-07-21 15:04:41'),
(55,1,2,2,'2026-07-23','12:00:00',35.00,'2026-07-16 16:34:29','2026-07-22 02:08:27'),
(56,21,1,1,'2026-07-15','09:00:00',25.00,'2026-07-16 16:57:26','2026-07-16 16:57:26'),
(57,1,1,1,'2026-07-17','13:00:00',20.00,'2026-07-16 17:37:56','2026-07-16 17:37:56'),
(58,1,2,2,'2026-07-25','10:00:00',20.00,'2026-07-16 17:38:43','2026-07-21 15:30:32'),
(59,21,1,1,'2026-07-15','16:00:00',35.00,'2026-07-17 03:40:16','2026-07-17 03:40:16'),
(60,21,1,1,'2026-07-15','13:30:00',25.00,'2026-07-17 03:46:50','2026-07-17 03:46:50'),
(61,1,1,1,'2026-07-24','13:30:00',20.00,'2026-07-17 05:16:27','2026-07-17 05:16:27'),
(62,1,1,1,'2026-07-25','14:00:00',20.00,'2026-07-17 05:22:11','2026-07-17 05:22:11'),
(63,1,3,1,'2026-07-22','12:30:00',70.00,'2026-07-17 05:46:29','2026-07-22 03:17:00'),
(64,1,2,2,'2026-08-03','09:00:00',55.00,'2026-07-17 06:19:45','2026-07-21 16:05:47'),
(65,21,1,1,'2026-07-20','12:00:00',55.00,'2026-07-21 00:24:06','2026-07-21 00:24:06'),
(66,27,1,1,'2026-07-27','16:30:00',20.00,'2026-07-21 14:08:37','2026-07-21 14:08:37'),
(67,27,4,1,'2026-07-22','09:40:00',35.00,'2026-07-21 21:57:04','2026-07-22 01:32:08'),
(68,27,2,7,'2026-07-28','16:30:00',20.00,'2026-07-21 22:15:46','2026-07-22 16:26:16'),
(69,21,1,2,'2026-07-22','09:30:00',35.00,'2026-07-22 00:24:44','2026-07-22 01:28:02'),
(70,1,4,2,'2026-07-29','16:00:00',35.00,'2026-07-22 01:27:24','2026-07-22 03:34:29'),
(71,1,4,1,'2026-07-29','11:00:00',35.00,'2026-07-22 04:00:46','2026-07-22 04:00:46'),
(72,27,1,1,'2026-07-27','12:30:00',55.00,'2026-07-22 05:06:43','2026-07-22 05:06:43'),
(73,27,2,4,'2026-07-27','19:00:00',20.00,'2026-07-22 05:28:01','2026-07-22 05:37:45'),
(74,27,3,1,'2026-07-23','10:00:00',35.00,'2026-07-22 05:41:27','2026-07-22 05:41:27'),
(75,27,1,1,'2026-07-23','10:30:00',20.00,'2026-07-22 05:45:42','2026-07-22 05:45:42'),
(76,27,2,1,'2026-08-08','09:00:00',20.00,'2026-07-22 13:18:20','2026-07-22 13:18:20'),
(77,27,2,2,'2026-07-22','12:30:00',20.00,'2026-07-22 15:37:54','2026-07-22 15:38:22'),
(78,27,2,1,'2026-07-23','11:00:00',20.00,'2026-07-22 16:50:56','2026-07-22 16:50:56'),
(79,1,2,1,'2026-07-23','16:00:00',20.00,'2026-07-22 16:51:25','2026-07-22 16:51:25'),
(80,1,2,1,'2026-07-23','15:00:00',35.00,'2026-07-22 16:52:59','2026-07-22 16:52:59'),
(81,1,2,1,'2026-07-23','17:00:00',55.00,'2026-07-22 16:54:09','2026-07-22 16:54:09'),
(82,1,2,1,'2026-07-25','18:00:00',60.00,'2026-07-22 16:58:57','2026-07-22 16:58:57'),
(84,1,2,1,'2026-08-15','15:30:00',0.00,'2026-07-30 14:22:54','2026-07-30 14:22:54'),
(85,1,2,1,'2026-08-15','15:30:00',0.00,'2026-07-30 14:22:58','2026-07-30 14:22:58'),
(86,1,2,1,'2026-08-15','15:30:00',0.00,'2026-07-30 14:25:53','2026-07-30 14:25:53'),
(87,1,2,1,'2026-08-15','15:30:00',0.00,'2026-07-30 14:33:26','2026-07-30 14:33:26'),
(88,1,2,2,'2026-08-15','15:30:00',155.00,'2026-07-30 14:33:35','2026-07-30 14:33:35'),
(89,1,2,1,'2026-08-26','12:00:00',120.00,'2026-07-30 18:54:13','2026-07-30 18:54:13'),
(90,1,2,1,'2026-08-01','15:00:00',666.00,'2026-07-30 19:02:03','2026-07-30 19:02:03'),
(91,4,2,1,'2026-08-04','09:00:00',777.00,'2026-07-30 19:20:00','2026-07-30 19:20:00'),
(92,4,2,1,'2026-08-03','18:30:00',111.00,'2026-07-30 19:27:06','2026-07-30 19:27:06'),
(93,1,2,1,'2026-08-04','13:30:00',111.00,'2026-07-30 19:38:15','2026-07-30 19:38:15'),
(94,1,2,1,'2026-08-03','10:30:00',25.00,'2026-07-30 22:27:47','2026-07-30 22:27:47'),
(95,1,2,1,'2026-08-03','12:00:00',25.00,'2026-07-30 22:28:36','2026-07-30 22:28:36'),
(96,1,2,1,'2026-08-03','13:00:00',25.00,'2026-07-30 22:34:10','2026-07-30 22:34:10'),
(97,1,2,1,'2026-08-03','14:00:00',25.00,'2026-07-30 22:48:32','2026-07-30 22:48:32'),
(98,1,2,1,'2026-08-03','15:00:00',25.00,'2026-07-30 22:49:07','2026-07-30 22:49:07'),
(99,1,2,1,'2026-08-03','16:30:00',25.00,'2026-07-30 22:57:18','2026-07-30 22:57:18'),
(100,1,2,1,'2026-08-04','10:30:00',25.00,'2026-07-30 22:58:39','2026-07-30 22:58:39'),
(101,1,2,1,'2026-08-04','16:30:00',25.00,'2026-07-30 23:02:29','2026-07-30 23:02:29'),
(102,1,2,1,'2026-08-22','09:00:00',95.00,'2026-07-30 23:05:20','2026-07-30 23:05:20'),
(103,21,1,1,'2026-07-30','09:00:00',35.00,'2026-07-30 23:10:06','2026-07-30 23:10:06'),
(104,1,2,1,'2026-08-07','09:00:00',25.00,'2026-07-30 23:27:38','2026-07-30 23:27:38'),
(105,1,2,1,'2026-08-07','10:00:00',25.00,'2026-07-30 23:29:02','2026-07-30 23:29:02'),
(106,1,2,1,'2026-08-05','17:00:00',150.00,'2026-07-31 00:59:09','2026-07-31 00:59:09'),
(107,27,2,1,'2026-08-01','18:00:00',35.00,'2026-07-31 06:27:36','2026-07-31 06:27:36'),
(108,1,2,1,'2026-08-06','11:00:00',20.00,'2026-07-31 16:25:55','2026-07-31 16:25:55'),
(109,1,2,1,'2026-08-25','14:00:00',150.00,'2026-07-31 16:30:15','2026-07-31 16:30:15');
/*!40000 ALTER TABLE `reservas` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id_rol` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_rol` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_rol`),
  UNIQUE KEY `roles_nombre_rol_unique` (`nombre_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES
(1,'Administrador','2026-06-04 22:33:17','2026-06-04 22:33:17'),
(2,'Estilista','2026-06-04 22:33:17','2026-06-04 22:33:17'),
(3,'Cliente','2026-06-04 22:33:17','2026-06-04 22:33:17');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `servicios`
--

DROP TABLE IF EXISTS `servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicios` (
  `id_servicio` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_administrador_gestionado` bigint(20) unsigned NOT NULL,
  `nombre_servicio` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `duracion_estimada_minutos` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `estado_servicio` tinyint(1) NOT NULL DEFAULT 1,
  `imagen_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_servicio`),
  UNIQUE KEY `servicios_nombre_servicio_unique` (`nombre_servicio`),
  KEY `servicios_id_administrador_gestionado_foreign` (`id_administrador_gestionado`),
  CONSTRAINT `servicios_id_administrador_gestionado_foreign` FOREIGN KEY (`id_administrador_gestionado`) REFERENCES `administradores` (`id_administrador`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicios`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `servicios` DISABLE KEYS */;
INSERT INTO `servicios` VALUES
(1,1,'Corte de Cabello Degradado','Incluye lavado premium, corte estilizado y aplicación de cera modeladora.',35,25.00,1,'https://i.pinimg.com/736x/de/84/6e/de846e21b9d8d3bbb8c9490fc6132c77.jpg','2026-06-04 23:15:50','2026-06-25 17:03:34'),
(2,1,'Corte Caballero Pro','Corte con degradado clásico, lavado y peinado',40,35.00,1,'https://i.pinimg.com/736x/3c/38/be/3c38be1aa8c720fbe071c3a7ff66d87f.jpg','2026-06-18 06:47:18','2026-06-25 17:02:17'),
(3,1,'Corte Caballero Pro 2','Corte con degradado clásico, lavado y peinado',40,35.00,1,'https://i.pinimg.com/736x/8f/df/e9/8fdfe9937a71c143b174315ecc271f2f.jpg','2026-06-18 06:48:15','2026-06-25 17:02:41'),
(5,1,'cuidado de uñas pro','pintados de uñas a eleccion del cliente',30,20.00,1,'https://i.pinimg.com/736x/b3/d2/26/b3d226d29ca16bc21bdc24b62daa2595.jpg','2026-06-25 03:48:01','2026-07-16 04:14:28');
/*!40000 ALTER TABLE `servicios` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES
('0jB8l3VluyNRo1Api5ztPre6gvYhepJvJDMXWkVC',NULL,'2800:4b0:9904:90de:c404:fa34:e60b:1057','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36 OPR/133.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSExnSXJrT1FMNnhwekRlRTVPaWNmV1lCbjhSSkdxVG51NEMxbjNVUSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTU6Imh0dHBzOi8vbWVkaXVtdmlvbGV0cmVkLXJhYmJpdC05NzQ2NjguaG9zdGluZ2Vyc2l0ZS5jb20iO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1784266929),
('4Bo0Jy1JXmJteUwBTUhG6PYdilalHKaeV1CVnj9u',NULL,'190.116.144.81','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiR29tV3FiNjJmb2lVZUtCQ1U2YVJxTFJpWnhHbTJiMFNXaWNzMDIwayI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTU6Imh0dHBzOi8vbWVkaXVtdmlvbGV0cmVkLXJhYmJpdC05NzQ2NjguaG9zdGluZ2Vyc2l0ZS5jb20iO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1782231888),
('7uaT25XUuFGvLdAW6RWcEGAnWhDiGDtVJCa0dfsr',NULL,'64.76.73.194','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoibU5IZ3RNQjNhUGZBTTFYZDlweXE1OHl0b1R0V25hMUdTbG45RGJWNiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTU6Imh0dHBzOi8vbWVkaXVtdmlvbGV0cmVkLXJhYmJpdC05NzQ2NjguaG9zdGluZ2Vyc2l0ZS5jb20iO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1783999638),
('8TPXz1hjAn6D7qkdFogpayiYI58OGmZg80qi5q0E',NULL,'64.76.73.194','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoicGROMm5rQWU3TWhaNmxkVXZMMGszMDNJT2pwSFI0SUdVYmxFTU1ERSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTU6Imh0dHBzOi8vbWVkaXVtdmlvbGV0cmVkLXJhYmJpdC05NzQ2NjguaG9zdGluZ2Vyc2l0ZS5jb20iO3M6NToicm91dGUiO3M6Mjc6ImdlbmVyYXRlZDo6UHF6bkZCQzhiRDBlblA3RyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1782094266),
('aG6CIYr97veMRRK7MGKCPg2eqd6PTTBON8MB12hA',NULL,'46.17.174.174','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:98.0) Gecko/20100101 Firefox/98.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiY0VueURSNzd5UENNb0hGVFJmSnhmY0VKcFBZcnZkbUZ0cEV1cm1iSyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTU6Imh0dHBzOi8vbWVkaXVtdmlvbGV0cmVkLXJhYmJpdC05NzQ2NjguaG9zdGluZ2Vyc2l0ZS5jb20iO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1783389649),
('c4IdYFlXf1U37a0C1SMdZ4UhLkShPBIut55v45o0',NULL,'46.17.174.173','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:98.0) Gecko/20100101 Firefox/98.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiY2ZLUEJ6TmlNZTJOWU52eU1CUWcwaUo0b3lZR2xoakw2UkY3RnM1QSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTU6Imh0dHBzOi8vbWVkaXVtdmlvbGV0cmVkLXJhYmJpdC05NzQ2NjguaG9zdGluZ2Vyc2l0ZS5jb20iO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1785012518),
('D9PlGFeIbLytLhEPxQjUvXXXKRV0r7UIy9nJCMni',NULL,'46.17.174.173','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:98.0) Gecko/20100101 Firefox/98.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVFdoSHh5QWM4NjM4VE5uT3VxYmZ4bTdYbGNMZkw3SkZvRFpla3BRVSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTU6Imh0dHBzOi8vbWVkaXVtdmlvbGV0cmVkLXJhYmJpdC05NzQ2NjguaG9zdGluZ2Vyc2l0ZS5jb20iO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1783708708),
('eoO3lRNSaPG15WVEBo2ZbEsnFFrmd4LN0UJOy0A4',NULL,'177.91.255.68','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoic0EzSU9KbmpnRjVVUDB1aFFGZjhSTGh5Q0NBZU0zcUJBeUswWFNtTSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTU6Imh0dHBzOi8vbWVkaXVtdmlvbGV0cmVkLXJhYmJpdC05NzQ2NjguaG9zdGluZ2Vyc2l0ZS5jb20iO3M6NToicm91dGUiO3M6Mjc6ImdlbmVyYXRlZDo6UHF6bkZCQzhiRDBlblA3RyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1782091763),
('gLW7MfSXkMeBtvTvofyBlNmcoHduvqGosDnWnIHD',NULL,'190.116.144.81','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ25ha3J0bkRYak00Y0dleHJWNFFmbHd4ekVCeHJSZlUzN2c5Vml3QyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTU6Imh0dHBzOi8vbWVkaXVtdmlvbGV0cmVkLXJhYmJpdC05NzQ2NjguaG9zdGluZ2Vyc2l0ZS5jb20iO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1783000071),
('gqWKlaD13IwgG3lu3xAaBeOugsF4EfFfyLPJOPMu',NULL,'66.249.88.228','Mozilla/5.0 (X11; Linux x86_64)  AppleWebKit/537.36 (KHTML, like Gecko; Google Web Preview)  Chrome/149.0.7827.200 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUmZnbVBTRHRiTXhLTTJYMXJpaVRXUWlYQ1NISXJ5WVZxV1hMSDBuWCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTU6Imh0dHBzOi8vbWVkaXVtdmlvbGV0cmVkLXJhYmJpdC05NzQ2NjguaG9zdGluZ2Vyc2l0ZS5jb20iO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1784266945),
('gT657jwqNodCpYDcc6kfU2uD0ie3UcUUcujQhJ9p',NULL,'2800:4b0:8434:466e:b4a6:3ef8:fc45:b0f8','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36 OPR/132.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoibEhtdzVkWUN2cHhXT2U1OGcwT2I5dkJtQlBnSGJvYU82RWpYZU53eiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTU6Imh0dHBzOi8vbWVkaXVtdmlvbGV0cmVkLXJhYmJpdC05NzQ2NjguaG9zdGluZ2Vyc2l0ZS5jb20iO3M6NToicm91dGUiO3M6Mjc6ImdlbmVyYXRlZDo6UHF6bkZCQzhiRDBlblA3RyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1782082602),
('HN2k7eX2vgSxjxFgPPVm70lBaPyljCDltfdbFqdJ',NULL,'46.17.174.173','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:98.0) Gecko/20100101 Firefox/98.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoieTgza0wxbERaT2Y5Z0ZScWxtUTBEb04yeXppNmJyd0RuNGVSaE5vZyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTU6Imh0dHBzOi8vbWVkaXVtdmlvbGV0cmVkLXJhYmJpdC05NzQ2NjguaG9zdGluZ2Vyc2l0ZS5jb20iO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1782527572),
('i0yL0GuSHAlNxwc2jCXIB62p6C3d2ScFjtWkQZx9',NULL,'181.65.86.50','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ01WZE1uYU1IeHVrS2JRZzlLOXV3ZUVBU015dnZCRVRKZEhmNVlQMSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTU6Imh0dHBzOi8vbWVkaXVtdmlvbGV0cmVkLXJhYmJpdC05NzQ2NjguaG9zdGluZ2Vyc2l0ZS5jb20iO3M6NToicm91dGUiO3M6Mjc6ImdlbmVyYXRlZDo6UHF6bkZCQzhiRDBlblA3RyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1782091757),
('io2iNUl8S1SONGyFMRaLPIYUUjZ9alWNUEuqVbvR',NULL,'177.91.255.69','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUmRZNThGNnY2cDdXQUZtSzkxdG9UTjhPdlhITE9xQ21QOEFUWjA3aiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTU6Imh0dHBzOi8vbWVkaXVtdmlvbGV0cmVkLXJhYmJpdC05NzQ2NjguaG9zdGluZ2Vyc2l0ZS5jb20iO3M6NToicm91dGUiO3M6Mjc6ImdlbmVyYXRlZDo6UHF6bkZCQzhiRDBlblA3RyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1782094270),
('kWbQhaxEb34kuKhFjItA4rKcCCLOSVfb8Rw2GlRn',NULL,'46.17.174.173','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:98.0) Gecko/20100101 Firefox/98.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNDA0MUFzS09RMG14VUdnelJIdktpZm4wS1BhTE01dXBjVldld1FPRyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTU6Imh0dHBzOi8vbWVkaXVtdmlvbGV0cmVkLXJhYmJpdC05NzQ2NjguaG9zdGluZ2Vyc2l0ZS5jb20iO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1786231863),
('KwfBJiKz3v3QbDyceZL7YR9xQiBSWfK3YWWV0qS7',NULL,'2800:200:fe80:31b:c4dc:382:53b9:e48','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiaFMwSEJtYWRMMGtTVmNWems5d3VYeGQwUHUxUThjYW0zeGJHSmQ1YyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTU6Imh0dHBzOi8vbWVkaXVtdmlvbGV0cmVkLXJhYmJpdC05NzQ2NjguaG9zdGluZ2Vyc2l0ZS5jb20iO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1782280830),
('mHQfOmNnaVjtpOqz0jc093hexxe8b2tzyNQVAL6f',NULL,'190.238.57.167','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiR1Z5RHk3S0hUTWU1RzlUVHJ2akpqazZvWndGZTBvZW9jR2FTalNxWiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTU6Imh0dHBzOi8vbWVkaXVtdmlvbGV0cmVkLXJhYmJpdC05NzQ2NjguaG9zdGluZ2Vyc2l0ZS5jb20iO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1784179780),
('MZQhGT8oPBHLgVC38dEMlnPgV90rSez20gcaCLVR',NULL,'64.76.73.194','PostmanRuntime/7.54.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSjNsODRIQWtBMVl4ck9DS3dyN3JEaEpMcjlsWmZzaUhzeE1lcFVFaiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTU6Imh0dHBzOi8vbWVkaXVtdmlvbGV0cmVkLXJhYmJpdC05NzQ2NjguaG9zdGluZ2Vyc2l0ZS5jb20iO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1783911629),
('p2bqDyaIl7IFDeipkYH2yd1Vj1Hb7i5tjhb9vlDV',NULL,'161.132.34.4','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVlJMRVd4amhVUjZmcktvTEFRVjVlOXVYTHhhUEdsdm01dTFzdFVVTCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTU6Imh0dHBzOi8vbWVkaXVtdmlvbGV0cmVkLXJhYmJpdC05NzQ2NjguaG9zdGluZ2Vyc2l0ZS5jb20iO3M6NToicm91dGUiO3M6Mjc6ImdlbmVyYXRlZDo6UHF6bkZCQzhiRDBlblA3RyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1782091763),
('PJ4GYnunOY63geXcI4sJ5oQ2O0UaEHSikXNUV01l',NULL,'190.116.144.81','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUnJKRWtEcEoza1E2WFZ3NFpYQXEzQmJKcnc4MGF3bWpVeW5vM3hDcyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTU6Imh0dHBzOi8vbWVkaXVtdmlvbGV0cmVkLXJhYmJpdC05NzQ2NjguaG9zdGluZ2Vyc2l0ZS5jb20iO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1784302091),
('PWd93hsZnA4aQ16K1h8hnBaQlKBfH0mBVAcqK35f',NULL,'2800:4b0:9904:90de:c404:fa34:e60b:1057','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36 OPR/133.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiaEhPWDhWMW5KNnBwZVpCNzIzOE4wc3AyZkpyS01Nb1VUSW8yZjdVeCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTU6Imh0dHBzOi8vbWVkaXVtdmlvbGV0cmVkLXJhYmJpdC05NzQ2NjguaG9zdGluZ2Vyc2l0ZS5jb20iO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1784266932),
('Q9hRRfdeD0CuuIwDsgIjr0RZqTcuCcgmA9PYmnjP',NULL,'2001:1388:5e21:2551:885a:5df4:6967:5a26','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoibUVQU0pUVHlRckc5djlTRTdOM1h6aUpPMTQ0YlhYWEl5Z0hjZ3VrSCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTU6Imh0dHBzOi8vbWVkaXVtdmlvbGV0cmVkLXJhYmJpdC05NzQ2NjguaG9zdGluZ2Vyc2l0ZS5jb20iO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1784261705),
('qL1zvYGOYQTCUC4ty90MV4xIhBeiFjmeY7qbeCml',NULL,'66.249.83.99','Mozilla/5.0 (X11; Linux x86_64)  AppleWebKit/537.36 (KHTML, like Gecko; Google Web Preview)  Chrome/149.0.7827.200 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiclRseTV5UXBUSzB5NEVsRUFUM1dIMmRPcGhXcFNycndTZXlrUkFkTyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTU6Imh0dHBzOi8vbWVkaXVtdmlvbGV0cmVkLXJhYmJpdC05NzQ2NjguaG9zdGluZ2Vyc2l0ZS5jb20iO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1784785264),
('QXu5O7SzceuaqoaJm4QKKDZsRAMf2mwzpe5zenC5',NULL,'2800:4b0:9904:90de:c404:fa34:e60b:1057','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36 OPR/133.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiOWJvdlhzT3dJYllHbEtSNmMyaFExTFhFNGM1M2RLQVZka29oVldaQiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTU6Imh0dHBzOi8vbWVkaXVtdmlvbGV0cmVkLXJhYmJpdC05NzQ2NjguaG9zdGluZ2Vyc2l0ZS5jb20iO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1784266928),
('rykY6C3LmIaxRtFpqEfc3xf5uB2t0XKe6nxeYSvH',NULL,'64.76.73.194','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiY0h6NkpRcXdGMjRmbmR6a2d2T3N5ZHVBRFc3azBLTGNHS0p0OGt5SSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTU6Imh0dHBzOi8vbWVkaXVtdmlvbGV0cmVkLXJhYmJpdC05NzQ2NjguaG9zdGluZ2Vyc2l0ZS5jb20iO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1782427539),
('Svp94osf3nVyGTNtd5gXzA24c109XIJoQcvb94T0',NULL,'74.125.212.38','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Chrome-Lighthouse','YTozOntzOjY6Il90b2tlbiI7czo0MDoia2hrckZaWjdkSGNIS24xaGxGOFFvZzduOUxsblRYSUhiTG1IWlpCViI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTU6Imh0dHBzOi8vbWVkaXVtdmlvbGV0cmVkLXJhYmJpdC05NzQ2NjguaG9zdGluZ2Vyc2l0ZS5jb20iO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1785455910),
('TCgZi0w6AioNjW6nBo0wGLjTtqQSZVTPgDE2yF6g',NULL,'2800:4b0:9904:90de:c404:fa34:e60b:1057','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36 OPR/133.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoianFBcVdYd3dVeHliM0ZBNFdRQmJaM3RlVWtPRVhPY3hPeEVtOWp0byI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTU6Imh0dHBzOi8vbWVkaXVtdmlvbGV0cmVkLXJhYmJpdC05NzQ2NjguaG9zdGluZ2Vyc2l0ZS5jb20iO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1784266928),
('vUaw4wKC5UqaZZP2qXmMO3NWy6GyHfeUJP1ulzcm',NULL,'2800:200:fe40:71:3072:4058:cc2a:3b1b','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36 OPR/132.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSm02OU1aZkJzVXJFYkpzQXF0ZVVnc2Z6dWQxeXRxV3hyN1pHOGF0ZSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTU6Imh0dHBzOi8vbWVkaXVtdmlvbGV0cmVkLXJhYmJpdC05NzQ2NjguaG9zdGluZ2Vyc2l0ZS5jb20iO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1783890602),
('VxsEmaErgoVzPED9lLxRpVmvSlmU4QsihyJpuwxU',NULL,'64.76.73.194','Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Mobile Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoibjkxOVA5bzZjeXFKcm9jWkVsQXdvaTdVN295U2VBcHMwWTdsRTI5VCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTU6Imh0dHBzOi8vbWVkaXVtdmlvbGV0cmVkLXJhYmJpdC05NzQ2NjguaG9zdGluZ2Vyc2l0ZS5jb20iO3M6NToicm91dGUiO3M6Mjc6ImdlbmVyYXRlZDo6UHF6bkZCQzhiRDBlblA3RyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1782094148),
('wEFlaOy6Lgt7TD7vKDuR4mIb5FdYpOVqNuW1PJRB',NULL,'66.249.88.227','Mozilla/5.0 (X11; Linux x86_64)  AppleWebKit/537.36 (KHTML, like Gecko; Google Web Preview)  Chrome/149.0.7827.200 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiaDF3SGx5VW9FdTdmS3ZETjdWdjAwcVVSZmdIYks0bmJUVkI1WDNUbSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTU6Imh0dHBzOi8vbWVkaXVtdmlvbGV0cmVkLXJhYmJpdC05NzQ2NjguaG9zdGluZ2Vyc2l0ZS5jb20iO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1784266945),
('ZMGUuz8AgImSUgeLyBTBU5G1GRGgpUdBL6dYYwve',NULL,'64.76.73.194','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoid1FJbTdvc3N0RHlyc1VHUENOcE1GZFN1Rjl6SWt0OFljUW9JUUVFeiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTU6Imh0dHBzOi8vbWVkaXVtdmlvbGV0cmVkLXJhYmJpdC05NzQ2NjguaG9zdGluZ2Vyc2l0ZS5jb20iO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1782344715);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id_usuario` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_rol` bigint(20) unsigned NOT NULL,
  `correo_electronico` varchar(150) NOT NULL,
  `contrasenia_hash` varchar(255) NOT NULL,
  `primer_nombre` varchar(50) NOT NULL,
  `segundo_nombre` varchar(50) DEFAULT NULL,
  `primer_apellido` varchar(50) NOT NULL,
  `segundo_apellido` varchar(50) DEFAULT NULL,
  `telefono` varchar(20) NOT NULL,
  `estado_usuario` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `usuarios_correo_electronico_unique` (`correo_electronico`),
  KEY `usuarios_id_rol_foreign` (`id_rol`),
  CONSTRAINT `usuarios_id_rol_foreign` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES
(1,1,'admin@salon.com','$2y$12$X.W.4CuLBXKZAGXwrNbDv.40yC80FVMsjd4z3rb/OZ0CUXJyZ3p.2','Carlos','Alberto','Mendoza','Pérez','987654321',1,'2026-06-04 22:33:17','2026-06-04 22:33:17'),
(2,2,'estilista@salon.com','$2y$12$ncP5lpDT9WcOQldZV2WOTOxC4lIDeyqEmAMs48pybwGpyYNcpoL.K','lucia','María','Gómez','Silva','912345678',1,'2026-06-04 22:33:17','2026-06-23 01:51:20'),
(3,2,'edwin@salon.com','$2y$12$h830AWX8KVAfwVMZuFfK8uZ.X5vASYWGFY9um0M6NfqovYD5shM0y','edwin','edo','molleapaza','kcanchay','944555777',1,'2026-06-04 22:57:12','2026-06-25 04:16:52'),
(4,3,'edwinmolleapazakcanchay@gmail.com','$2y$12$SxIgjL6K6ECTznPpHCvpAeH4MgIPjwBxnQg2IRBdpm0V6.BD4pBYK','Edwin Alexander',NULL,'Valcárcel',NULL,'999888111',1,'2026-06-04 23:30:58','2026-07-21 03:26:27'),
(5,3,'edwin18@gmail.com','$2y$12$lUz/WuecgaanvJGstmVDY.1c1.axU4vjk/cqxxa8tEZIuOBB2irw.','Edwin','edo','Valcárcel','Pérez','999888777',1,'2026-06-04 23:37:00','2026-06-05 12:43:31'),
(6,3,'edwin1819@gmail.com','$2y$12$tcgTJCfKWFukyBHkkUiE8Oy1pv4WZzEQ5CWV44UUk.qL2SkZwjnJi','edwin',NULL,'Valcárcel',NULL,'999888777',1,'2026-06-04 23:38:41','2026-06-04 23:38:41'),
(7,3,'paola@gmail.com','$2y$12$dzu/4gIH9LHlFBe1l/YCxexYepRQzpL/GyBr4jWMm2wALlcEosbvi','paola',NULL,'enrriquez',NULL,'999888777',1,'2026-06-04 23:42:31','2026-06-04 23:42:31'),
(8,2,'tobias@gmail.com','$2y$12$osdx14qoVvFkXfR4iF07jewGQz6Ugbt5x5TjxPvX1646rGdJD.AHG','tobias',NULL,'arbues',NULL,'999888777',1,'2026-06-04 23:49:02','2026-06-22 02:57:32'),
(9,3,'maria@gmail.com','$2y$12$hNKwnLIVd5V1eHhRjM379OXxpIB299MRsnoVM7PVAoY9Yj7BOZ9KK','maria',NULL,'arbues',NULL,'999888777',1,'2026-06-04 23:59:37','2026-06-04 23:59:37'),
(10,3,'juan@gmail.com','$2y$12$F6cbYdc64lguIDhVd.avjOCotFQauWA5yD.1unR82mUFAmu2bCera','juan',NULL,'alvares','alvarez','945009350',1,'2026-06-05 18:47:16','2026-06-05 18:47:16'),
(11,2,'jorge@gmail.com','$2y$12$ZxJ3s/53ieBsRDHi9L1xaepY7bAvEmo8Q5sILAuqQomeKnPIZKwM.','jorge','pobre','quispe','quispe','12345678',1,'2026-06-22 03:00:06','2026-06-23 01:51:39'),
(12,3,'edwin.completo@gmail.com','$2y$12$TKDEhopLROGzqf8Ax0fptOGlGKqNQ/gPS.stKpfbNti0E6MTeHo76','Edwin5454','Alexander','Valcárcel','Choque','999888777',1,'2026-06-23 04:21:09','2026-06-23 04:21:09'),
(13,3,'keni@gmail.com','$2y$12$42zdk/1QsTOvylgPwsEJduqTuAK24Kpaz15tHGhr4CbmXUyvnVvr6','keni','angel','molleapaza',NULL,'944555777',1,'2026-06-23 04:24:29','2026-06-23 04:24:29'),
(14,3,'belen@gmail.com','$2y$12$rMs5w9YV./oJ5CT0yuso4ev0TuOBPCvGcCGhQOAM4f.tMGj10b7hq','guianella',NULL,'loayza',NULL,'457812963',1,'2026-06-23 04:29:13','2026-06-23 04:29:13'),
(15,3,'guianella@gmail.com','$2y$12$5lXiRmeQMYIA9bhDxOqS6OFdiR2TJ7CBo5F33W9eK3aOtN5c1EMoO','guianella',NULL,'loayza',NULL,'457812963',1,'2026-06-23 04:29:55','2026-06-23 04:29:55'),
(16,3,'belen123@gmail.com','$2y$12$O6xIgaqjtziTwiPhU.krEuQ7m/BvtBk2wqPefy4rZcYXzsviZO1mS','guianella',NULL,'loayza',NULL,'457812963',1,'2026-06-23 04:30:31','2026-06-23 04:30:31'),
(17,3,'kasandra@gmail.com','$2y$12$r3M6Y.M1kUk1C.zeHbnSnOr3gutlMCBrhcAUoer.Dr//Ct/KwnC/i','kasandra',NULL,'martiarena',NULL,'987654147',1,'2026-06-23 04:35:33','2026-06-23 04:35:33'),
(18,3,'linda@gmail.com','$2y$12$9jR4OHSx7TomL5IeWrEnBOmm7dDzAKCveDXYI54hO.LXbdJyLfHR2','linda',NULL,'cruz',NULL,'958745856',1,'2026-06-23 04:39:03','2026-06-23 04:39:03'),
(19,3,'diego@gmail.com','$2y$12$1RPJeWFMWn8R24zOg6wKEeERtcZqTs1/Y7sDxFSMr3olPSaXf4cPy','diego',NULL,'mamani',NULL,'987234789',1,'2026-06-23 04:42:15','2026-06-23 04:42:15'),
(20,3,'paola17@gmail.com','$2y$12$IRmxejJ/ixfa6zztCX9.x.4HxLKNBowvwHG.PaDDZ8c1YOU2wEKYa','Paola fernanda','migajera','Enriquez',NULL,'967075123',1,'2026-06-25 01:56:25','2026-06-25 16:53:46'),
(21,3,'Tobi@gmail.com','$2y$12$C4YE3j.P3.n2yRnXutZmvuYNDmq0qVZSvSzbJ4tOithxy5vpyrmPa','tobias',NULL,'S/A',NULL,'12345678',1,'2026-06-26 13:32:17','2026-06-26 13:32:17'),
(22,3,'maofomiquispecuro@gmail.com','$2y$12$C9CM0HlcDSYsLLuoAgO.cOQfZW4pBchW61.qEPVH60XRjnAFQ08wK','tobias',NULL,'S/A',NULL,'12345678',1,'2026-06-26 13:32:40','2026-06-26 13:32:40'),
(23,3,'gabriel@gmail.com','$2y$12$mDqloZCgMRY1Mp9cUesQu.7e1hmXgmPHc4c7kVBCChvdYIoC2PkCS','Jhulfo','Gabriel','Alvarez','Perez','957 146 262',1,'2026-06-26 14:36:17','2026-06-26 14:36:17'),
(24,3,'edwin22@hotmail.com','$2y$12$QJbH0ksmFn0R8IwmY2DIU.1bRYMSY0.LlojsdlMHri11jRio/prIm','Edwin',NULL,'Alcántara','Yatusabe','123456789',1,'2026-06-26 14:37:06','2026-06-26 14:37:06'),
(25,3,'carlosmasnah@gmail.com','$2y$12$mFkR2/g4DZq1tHeh29Ca.upjKUhaXe5BrSYp3N4ei2vtM8xb.YXJW','carlos',NULL,'Huamani','Ayranpo','999999999',1,'2026-06-26 14:37:07','2026-06-26 14:37:07'),
(26,3,'viennasoler@gmail.com','$2y$12$hK2D.A2rtMfidmWWDDvQV.C.O/4/vtwcTb5ULN5UElwGLs6DpQ5Ba','David',NULL,'C',NULL,'1234567898724',1,'2026-06-26 14:37:14','2026-06-26 14:37:14'),
(27,3,'ysanchez.241ds37@istta.edu.pe','$2y$12$aWv1yZzBaxZwxBEeQJRG/.EKSpwa6qwGSedsf.ColmA/wpoI.z4RW','YEREMI',NULL,'GONZALES',NULL,'966444943',1,'2026-06-26 14:37:25','2026-06-26 14:37:25'),
(28,3,'carlosgomez@gmail.com','$2y$12$sS.MM9gdj8ypyw6BaVfK1.IpjWo5Rwt7Tu4P6lBT1LQ32FxoTbLZS','Carlos','Andres','Gomez','Sosa','987654123',1,'2026-07-16 04:03:03','2026-07-16 04:03:03'),
(29,3,'miku@gmail.com','$2y$12$kuWUmnlztWvuBdJbEtRhnutr2c1SjfiqbT/GfjmEK3086B/hBxhaS','miku','miku','nakano','nakano','38479234792834',1,'2026-07-17 04:22:53','2026-07-17 04:22:53'),
(30,2,'prueba@gmail.com','$2y$12$4M.XeGkHWQND0JelsJ71QuhLCMb.jVZz8LKaaf8y2wVnmUJba7DGi','probando',NULL,'prueba',NULL,'123456798',1,'2026-07-21 01:23:30','2026-07-21 02:06:58'),
(31,3,'paola1702@gmail.com','$2y$12$qjC/7vFmTgBCp1y.mwiixui7U2E09v9kTjMBAfZXRErK32PmnxHv2','Paola',NULL,'Enriquez',NULL,'967075123',1,'2026-07-21 13:56:48','2026-07-21 13:56:48'),
(32,3,'paola1708@gmail.com','$2y$12$DgojM/UiYjoyDnQXr69mOuSGJgdW5rWbBXZkTrB0w6pbIGryK5BPG','Paola','Fernanda','Enriquez',NULL,'967075123',1,'2026-07-21 14:05:07','2026-07-22 05:09:05'),
(33,3,'esteban@gmail.com','$2y$12$Q6K1mv.DWrAwNKsdGjxzaO0XBSlx4c2SQFgQIWOa7ECvBOJCkPGUy','esteban',NULL,'aquiles',NULL,'7898465',1,'2026-07-30 04:44:54','2026-07-30 04:44:54'),
(34,3,'maria2@gmail.com','$2y$12$yEvGYctKfyxWNBNcRIogsew9gQTgVHQ68uK/Wj0TKjBhipiBadsLu','juana',NULL,'perex','perez','123345678',1,'2026-07-30 04:50:35','2026-07-30 04:50:35');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping routines for database 'u348616500_salon_belleza'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2026-09-06  3:33:13
