-- MySQL dump 10.13  Distrib 8.0.36, for macos14 (x86_64)
--
-- Host: localhost    Database: introdb73807
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Table structure for table `aerolineas`
--

DROP TABLE IF EXISTS `aerolineas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aerolineas` (
  `idAerolinea` smallint unsigned NOT NULL AUTO_INCREMENT,
  `aerolinea` varchar(40) NOT NULL,
  `url` varchar(60) NOT NULL,
  `telefono` varchar(40) NOT NULL,
  `activo` tinyint(1) NOT NULL,
  PRIMARY KEY (`idAerolinea`),
  UNIQUE KEY `aerolinea` (`aerolinea`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aerolineas`
--

LOCK TABLES `aerolineas` WRITE;
/*!40000 ALTER TABLE `aerolineas` DISABLE KEYS */;
INSERT INTO `aerolineas` VALUES (1,'Aerol?neas Argentinas','www.aerolineas.com.ar','0810-222-86527',1),(2,'Lade','lade.faa.mil.ar','0810-810-5233',1),(3,'Flybondi','www.flybondi.com','351-284-3320',1),(4,'Jet Smart','www.jetsmart.com','11-2206-7799',1),(5,'Aerom?xico','www.aeromexico.com','0800-888-2276',1),(6,'Air Canada','www.aircanada.com','0800-345-1540',1),(7,'Air Europa','www.aireuropa.com','0810-122-4546',1),(8,'Air France','www.airfrance.com.ar','0800-666-0133',1),(9,'Amaszonas Uruguay','www.amaszonas.com','11-3985-8800',1),(10,'American Airlines','www.aa.com','0800-444-84253',1),(11,'Azul Linhas A?reas','www.voeazul.com.br','11-5984-5178',1),(12,'Avianca','www.avianca.com','0810-333-8222',1),(13,'Boliviana de Aviaci?n','www.boa.bo','11-5252-3409',1),(14,'British Airways','www.britishairways.com','0800-222-0075',1),(15,'Copa Airlines','www.copaair.com','0810-810-2672',1),(16,'Cubana','www.cubana.cu','11-4326-5291',1),(17,'Delta Airlines','www.delta.com','0800-666-0133',1),(18,'Ethiopian Airlines','www.ethiopianairlines.com','4326-0362',1),(19,'Gol','www.voegol.com','0810-266-3131',1),(20,'Iberia','www.iberia.com','0810-999-4237',1),(21,'KLM','www.klm.com','11-4317-4700',1),(22,'Latam','www.latamairlines.com/ar','0800-345-9410',1),(23,'Level','www.flylevel.com','11-5984-5995',1),(24,'Lufthansa','www.lufthansa.com','11-3991-5953',1),(25,'Paranair','www.paranair.com','11-5273-4081',1),(26,'Qatar','www.qatarairways.com','11-5273-1400',1),(27,'Sky Airline','www.skyairline.com','11-5480-5138',1),(28,'Turkish Airlines','www.turkishairlines.com','11-5984-2758',1),(29,'United Airlines','www.united.com','0810-777-8648',1);
/*!40000 ALTER TABLE `aerolineas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `idCategoria` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `catNombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idCategoria`),
  UNIQUE KEY `catNombre` (`catNombre`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (5,'Cámaras Mirrorless'),(6,'Iluminación inteligente'),(2,'Parlantes Bluetooth'),(3,'Robot de limpieza'),(1,'Smartphone'),(4,'Smat TV');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamentos`
--

DROP TABLE IF EXISTS `departamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamentos` (
  `idDepartamento` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `depNombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idDepartamento`),
  UNIQUE KEY `depNombre` (`depNombre`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamentos`
--

LOCK TABLES `departamentos` WRITE;
/*!40000 ALTER TABLE `departamentos` DISABLE KEYS */;
INSERT INTO `departamentos` VALUES (1,'Administración'),(4,'Atención al público'),(2,'Compras'),(5,'Gerencia general'),(6,'Marketing'),(3,'ventas');
/*!40000 ALTER TABLE `departamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `destinos`
--

DROP TABLE IF EXISTS `destinos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `destinos` (
  `idDestino` smallint unsigned NOT NULL AUTO_INCREMENT,
  `aeropuerto` varchar(60) NOT NULL,
  `precio` decimal(8,2) unsigned NOT NULL,
  `idAerolinea` smallint unsigned NOT NULL,
  `idRegion` tinyint unsigned NOT NULL,
  `activo` tinyint(1) NOT NULL,
  PRIMARY KEY (`idDestino`),
  UNIQUE KEY `aeropuerto` (`aeropuerto`),
  KEY `idRegion` (`idRegion`),
  KEY `fk_aerolineas` (`idAerolinea`),
  CONSTRAINT `destinos_ibfk_1` FOREIGN KEY (`idRegion`) REFERENCES `regiones` (`idRegion`),
  CONSTRAINT `fk_aerolineas` FOREIGN KEY (`idAerolinea`) REFERENCES `aerolineas` (`idAerolinea`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `destinos`
--

LOCK TABLES `destinos` WRITE;
/*!40000 ALTER TABLE `destinos` DISABLE KEYS */;
INSERT INTO `destinos` VALUES (1,'Londres (Heathrow)',9711.00,27,5,1),(2,'Amsterdam (Schiphol)',6231.00,27,5,1),(3,'Miami (Wilcox Field)',6517.00,27,4,1),(4,'Tokio (Narita)',8704.00,27,7,1),(5,'Kuala Lumpur (KLIA)',8570.00,27,7,1),(6,'Bangkok (Suvarnabhumi)',8469.00,27,7,1),(7,'París (Charles de Gaulle)',7713.00,27,5,1),(8,'Cancún (Cancún)',6494.00,27,3,1),(9,'Milán (Malpensa)',6756.00,27,5,1);
/*!40000 ALTER TABLE `destinos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `idEmpleado` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `dni` int NOT NULL,
  `nroLegajo` int NOT NULL,
  `sueldo` int NOT NULL,
  `telefono` int DEFAULT NULL,
  `idDepartamento` tinyint DEFAULT NULL,
  PRIMARY KEY (`idEmpleado`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'Juan','Quintana',36232465,36232465,25000,11234567,1),(2,'Juanita','Luna',36232466,36232466,25000,11234568,1),(3,'Carlos','Alarcón',46232464,46232464,26000,11334568,2),(4,'Dina','Paceros',46232463,46232463,20000,11334565,3),(5,'Pedro','Díaz',41232463,41232463,22000,11334865,4),(6,'Wilson','Fernández',26232466,6232466,45000,11534568,5),(7,'Tina','Ponce',42832463,42832463,20000,11332565,NULL),(8,'Mario','Gonzáles',43832563,43832563,20000,11734768,NULL);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marcas`
--

DROP TABLE IF EXISTS `marcas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marcas` (
  `idMarca` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `mkNombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idMarca`),
  UNIQUE KEY `mkNombre` (`mkNombre`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marcas`
--

LOCK TABLES `marcas` WRITE;
/*!40000 ALTER TABLE `marcas` DISABLE KEYS */;
INSERT INTO `marcas` VALUES (1,'Apple'),(10,'Blaupunkt'),(8,'Bose'),(4,'iRobot'),(3,'Marshall'),(7,'Nikon'),(9,'OnePlus'),(2,'Oppo'),(6,'Samsung'),(5,'Xiaomi');
/*!40000 ALTER TABLE `marcas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personas`
--

DROP TABLE IF EXISTS `personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personas` (
  `idPersona` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `apellido` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `dni` int unsigned NOT NULL,
  `alta` date NOT NULL,
  PRIMARY KEY (`idPersona`),
  UNIQUE KEY `dni` (`dni`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personas`
--

LOCK TABLES `personas` WRITE;
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;
INSERT INTO `personas` VALUES (1,'García','Javier',25852410,'2008-12-12'),(2,'González','Mónica',36520147,'2005-09-30'),(3,'Martínez','Vanesa',35741951,'2006-06-21'),(4,'Álvarez','Fernando',32912457,'2007-11-02'),(5,'Page','Jimmy',18543219,'1954-01-09'),(6,'Plant','Robert',18543220,'1960-01-09'),(7,'Bonham','Bonzo',18543221,'1960-01-09'),(8,'Jones','John',18543222,'1960-01-09');
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `precios`
--

DROP TABLE IF EXISTS `precios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `precios` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `aproximado` float NOT NULL,
  `exacto` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `precios`
--

LOCK TABLES `precios` WRITE;
/*!40000 ALTER TABLE `precios` DISABLE KEYS */;
INSERT INTO `precios` VALUES (1,20.5,20.50),(2,28.7,28.70),(3,100.5,100.50),(4,26.4,26.40),(5,70.6,70.60),(6,73,73.00),(7,31.2,31.20),(8,7.27,7.27);
/*!40000 ALTER TABLE `precios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `idProducto` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `prdNombre` varchar(45) NOT NULL,
  `prdPrecio` decimal(8,2) unsigned NOT NULL,
  `idMarca` tinyint unsigned NOT NULL,
  `idCategoria` tinyint unsigned NOT NULL,
  `prdDescripcion` varchar(1000) NOT NULL,
  `prdImagen` varchar(45) NOT NULL,
  `prdActivo` tinyint(1) NOT NULL,
  PRIMARY KEY (`idProducto`),
  UNIQUE KEY `prdNombre` (`prdNombre`),
  KEY `idMarca` (`idMarca`),
  KEY `idCategoria` (`idCategoria`),
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`idMarca`) REFERENCES `marcas` (`idMarca`),
  CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`idCategoria`) REFERENCES `categorias` (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Oppo A78 Dual-SIM 128GB',200.00,2,1,'Smartphone Android con pantalla HD+ de 6.56 pulgadas. 8GB de RAM y 128GB de almacenamiento interno. Cámara trasera dual de 50MP. Cámara selfie es de 8MP. Batería de 5000 mAh con soporte para carga rápida de 33W.','Oppo-A78.png',1),(2,'iPhone 15 Pro',1000.00,1,1,'Apple iPhone 15 Pro con chasis fabricado en titanio y puerto USB-C. Pantalla OLED LTPO de 6.1 pulgadas y triple cámara posteriorde 48MP. Cámara frontal de 12MP con sensores para Face ID. Batería de carga rápida de 15W.','iPhone-15-pro.png',1),(3,'HomePod (2nd gen)',250.00,1,2,'El HomePod es un altavoz de alta fidelidad que combina sonido inmersivo, asistente personal y control de hogar inteligente. Conectividad Bluetooth y Wifi via Apple Music','homepod-2.png',1),(4,'Marshall Acton III',300.00,3,2,'El altavoz bluetooth Acton III Cuenta con Dynamic Loudness, que ajusta el equilibrio tonal del sonido para garantizar que su música suene brillante en todos los volúmenes. 30 Watts de potencia','marshall-acton-iii.png',1),(5,'Aspiradora Robot iRobot Roomba j7+',900.00,4,3,'Robot de limpieza Roomba J7+ con sistema de limpieza superior de tres fases y dos rodillos de silicona. Tecnología de trazado de mapas inteligente Imprint™ que aprende, crea mapas y se adapta a cada habitación.','roomba-j7.png',1),(6,'Xiaomi TV Q2',560.00,5,4,'Smart TV con panel QLED Quantum Dot Display de 55 pulgadas y resolución 4K UHD. Sonido Dolby VisionTM IQ y Dolby Atmos. Sistema operativo Google TV. 3 puertos HDMI 2.0, un puerto HDMI 2.1 eARC a 120 Hz, 2 USB 2.0, Wi-Fi 802.11, Bluetooth 5.0 y entrada de audio óptica','xiaomi-q2.jpg',1),(7,'Samsung TV Crystal UHD 2023',650.00,6,4,'Smart TV con panel LED de 65 pulgadas con resolución 4K, tasa de 50 Hz y retroiluminación LED. TizenOS integra altavoces de 20 W compatibles con Dolby Atmos. 3 puertos HDMI, 2 USB y salida óptica de audio, WiFi y Bluetooth.','samsung-crystal-65.png',1);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regiones`
--

DROP TABLE IF EXISTS `regiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `regiones` (
  `idRegion` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idRegion`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regiones`
--

LOCK TABLES `regiones` WRITE;
/*!40000 ALTER TABLE `regiones` DISABLE KEYS */;
INSERT INTO `regiones` VALUES (2,'América Central'),(4,'América del Norte'),(1,'América del Sur'),(7,'Asia'),(3,'Caribe y México'),(6,'Europa del Este'),(5,'Europa Occidental'),(8,'Oceanía');
/*!40000 ALTER TABLE `regiones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-19 17:06:58
