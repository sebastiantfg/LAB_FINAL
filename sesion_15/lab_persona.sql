-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: lab
-- ------------------------------------------------------
-- Server version	5.7.11

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
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona` (
  `idpersona` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `dni` varchar(45) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idpersona`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (1,'Neiser','Chavez','12345678',25,'neiser789@gmail.com'),(2,'jordan','gutierrez','546546',25,'jjjjjjj'),(3,'Smith','Domingues','11111111',20,'smith@gmail.com'),(4,'sebas','asmat','45678934',20,'sebasasmat22'),(6,'Omar','Orlandini','77777777',32,'omarorlandini123@gmail.com'),(7,'Leonardo','Huanaco','1232133',19,'leonardo@gmail.com'),(8,'Bryan','Mercado','73195826',20,'bm470017@gmail.com'),(9,'Mario','Gayy','21541',11,'UWU'),(14,'Pedro','Pelis',' 32165497',27,'pedro123@gmail.com'),(15,'Lucas','Films','12345678',56,'lucas@gmail.com'),(16,'Pedro','Pelis',' 32165497',27,'pedro123@gmail.com'),(17,'Lucas','Films','12345678',56,'lucas@gmail.com'),(18,'Pedro','Pelis',' 32165497',27,'pedro123@gmail.com'),(19,'Lucas','Films','12345678',56,'lucas@gmail.com'),(20,'Pedro','Pelis',' 32165497',27,'pedro123@gmail.com'),(29,'Lucas','Films','12345678',56,'lucas@gmail.com'),(32,'pepe','Quispe','435354',56,'pepe@gmail.com'),(33,'Lucas','Films','12345678',56,'lucas@gmail.com'),(35,'Marcos','Polos','12349874',95,'marquitos_tu_chibolo@gmail.com');
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-22 13:58:08
