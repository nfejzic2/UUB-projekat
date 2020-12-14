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
-- Table structure for table `uposlenici`
--

DROP TABLE IF EXISTS `uposlenici`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uposlenici` (
  `ID_uposlenika` int(11) NOT NULL AUTO_INCREMENT,
  `ime_uposlenika` varchar(45) NOT NULL,
  `Prezime_uposlenika` varchar(45) NOT NULL,
  `datum_zaposlenja` varchar(45) NOT NULL,
  `Kontakt_telefon` varchar(45) NOT NULL,
  `E-mail` varchar(45) NOT NULL,
  `ID_radnog_mjesta` int(11) NOT NULL,
  `Titula_uposlenika` varchar(45) NOT NULL,
  `Plata_uposlenika` varchar(45) NOT NULL,
  `Nadlezni` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_uposlenika`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uposlenici`
--

LOCK TABLES `uposlenici` WRITE;
/*!40000 ALTER TABLE `uposlenici` DISABLE KEYS */;
INSERT INTO `uposlenici` VALUES (1,'Amina','Aminic','12.03.2010.','065 456 557','amina@gmail.com',1,'menadzer','1232.00 KM',NULL),(2,'Marinko ','Maric','12.04.2015','065 567 777','marinko@gmail.com',1,'uposlenik','1123.30 KM','1'),(3,'Marinko ','Amic','12.02.2015','065 567 777','marinkoa@gmail.com',1,'uposlenik','1123.30 KM','1'),(4,'Amko ','Amic','03.05.2014','064 234 444','amko@gmail.com',1,'uposlenik','1123.30 KM','1'),(5,'Jan','Janic','05.04.2016.','063 222 123','jan@gmail.com',1,'menadzer','1223.30 KM',NULL),(6,'Sara ','Saric','31.11.2018','065 777 8903','sara@gmail.com',1,'uposlenik','1123.30 KM','5'),(7,'Amko','Amikic','31.11.2018','064 443 3389','amikic@gmail.com',1,'uposlenik','1123.30 KM','5'),(8,'Darija','Daric','21.11.2018','062 334 456','darija@gmail.com',1,'menadzer','1223.30 KM',NULL),(9,'Mak ','Makic','21.06.2017','065 445 9764','makic@gmail.com',1,'uposlenik','1123.30 KM','8'),(10,'Zeljko ','Zeljic','12.03.2020','065 445 3321','zeljic@gmail.com',1,'uposlenik','1123.30 KM','8'),(11,'Nino ','Ninic','21.07.2019','065 445 9799','nimic@gmail.com',1,'menadzer','1223.30 KM',NULL),(12,'Hana ','Hanic','21.04.2019','065 445 9764','hana@gmail.com',1,'uposlenik','1123.30 KM','11'),(13,'Azra ','Aric','11.06.2019','065 445 5664','aric@gmail.com',1,'menadzer','1123.30 KM',NULL),(14,'Dino','Dinic','21.10.2017','065 445 8843','dino@gmail.com',1,'uposlenik','1123.30 KM','13'),(15,'Lejla ','Lelic','21.06.2017','065 897 9764','lelic@gmail.com',1,'menadzer','1223.30 KM',NULL),(16,'Semir','Semic','21.06.2017','065 123 9764','semir@gmail.com',1,'uposlenik','1123.30 KM','15'),(17,'Haris ','Haric','21.06.2017','065 445 9764','haric@gmail.com',1,'menadzer','1223.30 KM',NULL),(18,'Dani ','Ljaljic','21.06.2019','065 889 9764','ljajic@gmail.com',1,'uposlenik','1123.30 KM','17'),(19,'Nihad ','Nihicc','21.12.2017','065 445 5678','nihic@gmail.com',1,'menadzer','1223.30 KM',NULL),(20,'Amina','Lamic','13.06.2017','065 895 9764','lamic@gmail.com',1,'uposlenik','1123.30 KM','20');
/*!40000 ALTER TABLE `uposlenici` ENABLE KEYS */;
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
