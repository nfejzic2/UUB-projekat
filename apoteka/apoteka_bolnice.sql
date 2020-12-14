-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: apoteka
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `bolnice`
--

DROP TABLE IF EXISTS `bolnice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bolnice` (
  `ID_bolnice` int(11) NOT NULL AUTO_INCREMENT,
  `Bolnica` varchar(45) NOT NULL,
  `Kontakt_telefon` varchar(45) NOT NULL,
  `Adresa` varchar(45) NOT NULL,
  `E-mail` varchar(45) NOT NULL,
  PRIMARY KEY (`ID_bolnice`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bolnice`
--

LOCK TABLES `bolnice` WRITE;
/*!40000 ALTER TABLE `bolnice` DISABLE KEYS */;
INSERT INTO `bolnice` VALUES (1,'Univerzitetski klinicki centar Sarajevo','+ 387 33 29 70 00','Bolnicka 25','info@kcus.ba'),(2,'Univerzitetski klinicki centar Tuzla','00387 35 303 300','Trnovac bb','info@ukctuzla.ba'),(3,'Opca bolnica Sanski Most','+387 654 456','Prijedorska 111','bolnicasanskimost@bih.net.ba'),(4,'Univerzitetska bolnica Foca','387 (0) 58 222 500','Studentska bb','bolnicaf@bolnicafoca.com'),(5,'Opca bolnica Jajce','+387 (30) 658-106','Kraljice Jelene bb 70101','bolnicajajce@hotmail.com'),(6,'Kantonalna bolnica Zenica','032 447-000','Crkvice 67, Zenica 72000','kbzenica@kbze.ba'),(7,'Opca bolnica Konjic',' 036 712-511','Bolnicka b.b.','info@bolnicakonjic.com'),(8,'Univerzitetska klinicka bolnica Mostar','+387 36 336 000','Ulica Kralja Tvrtka bb, 88000 Mostar','ravnateljstvo@skbm.ba'),(9,'Kantonalna bolnica Orasje','031 712-703','Treca ul.','orasjebol@gmail.com');
/*!40000 ALTER TABLE `bolnice` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-14 11:39:39
