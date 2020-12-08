-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: apoteka_projekat
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `lijekovi`
--

DROP TABLE IF EXISTS `lijekovi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lijekovi` (
  `idLijekovi` int NOT NULL,
  `idproizvodjaci` varchar(45) DEFAULT NULL,
  `Naziv_lijeka` varchar(45) DEFAULT NULL,
  `Cijena_lijeka` varchar(45) DEFAULT NULL,
  `Datum_dostupnosti_lijeka` varchar(45) DEFAULT NULL,
  `Datum_povlacenja_lijeka` varchar(45) DEFAULT NULL,
  `Opis_lijeka` varchar(45) DEFAULT NULL,
  `Nuspojave` varchar(45) DEFAULT NULL,
  `Recept` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idLijekovi`),
  KEY `id_lijekovi_idx` (`idproizvodjaci`),
  KEY `id_lijekovi` (`idLijekovi`) /*!80000 INVISIBLE */
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lijekovi`
--

LOCK TABLES `lijekovi` WRITE;
/*!40000 ALTER TABLE `lijekovi` DISABLE KEYS */;
INSERT INTO `lijekovi` VALUES (1,'BAYER','Aspirin','5,00KM','12.05.2015.','12.05.2022.','Tablete za bolov','Srcani udar',NULL),(2,'BAYER','BEPANTHOL','10,55KM','30.02.2019.','30.02.2025.','Losion za suhu kozu','Svrabez',NULL),(3,'PLIVA','Xarelto','11,65KM','09.11.2018.','09.11.2026.','Tablete za krvnoI pritisak','Krvarenje iz nosa','DA'),(4,'BAYER','Rupurut','20,45KM','18.07.2018.','18.7.2022.','Tablete za umanjenje zgaravice','Unutrasnje krvarenje',NULL),(5,'GABBIANO COMPANY','Fero forte','36,20KM','27.09.2015.','27.9.2027.','Tablete za anemiju','Povracanje','DA'),(6,'PLIVA','Andol pro','12,00KM','30.05.2016.','30.5.2024.','Tablete za prevenciju mozdanog udara','Mucnina','DA'),(7,'GABBIANO COMPANY',' IMUNOALFA','9,55KM','02.02.2018.','02.02.2024.','Tablete za jacanje imuniteta','Dijareja',NULL),(8,'GABBIANO COMPANY','HIPER HAMA ','6,45KM','20.12.2012.','20.12.2025.','Gel za iritaciju koze','Crvenilo koze',NULL),(9,'PLIVA','Rinolan Alerg','7,65KM','04.05.2017.','04.05.2027.','Tablete za ublazavanje simptoma alergije','Crvenilo koze','DA'),(10,'HEMOFARM','Ranitidin','19,95KM','16.04.2018.','16.4.2028.','Tablete za bolove u zeludcu','Cir na zeludcu',NULL),(11,'HEMOFARM','Indipamid','20,00KM','11.12.2019.','11.12.2023.','Tablete za sprjecavanje oticanja pluca','Zatajenje bubrega','DA'),(12,'HEMOFARM','Gastal','14,20KM','18.05.2017.','18.05.2024.','Tablete za kiselinu zeludca','Dijareja','DA'),(13,'PLIVA','Betrion','13,35KM','19.05.2018.','19.05.2022.','Mast za lijecenje koznih bolesti','Lustenje koze','DA'),(14,'BOSNALIJEK','Merot','10,25KM','21.09.2016.','21.09.2026.','Tablete za izmokravanje','Infekcija','DA'),(15,'BOSNALIJEK','Bospyrin','18,35KM','06.05.2018.','06.05.2026.','Tablete za sprjecavanje mozdanog udara','Unutrasnje krvarenje','DA'),(16,'PHARMANOVA','Gynkgobil','19,25KM','14.06.2019.','14.06.2026.','Tablete za regulisanje cirkulacije','Epilepsija','DA'),(17,'PHARMANOVA','Nem','9,25KM','18.12.2019.','18.12.2022.','Tablete za odrzavanje zdravlja zglobova','Dijareja',NULL),(18,'PHARMANOVA','Magnezijum 300','12,45KM','25.06.2016.','25.06.2026.','Tablete za nadoknadu magnezijuma','Iritacija koze',NULL),(19,'KRKA-FARMA','Nalgesin','11,00KM','18.05.2018.','18.05.2026.','Tablete za bolove ','Gusenje',NULL);
/*!40000 ALTER TABLE `lijekovi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proizvodjaci`
--

DROP TABLE IF EXISTS `proizvodjaci`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proizvodjaci` (
  `idproizvodjaci` int NOT NULL,
  `Naziv_proizvodjaca` varchar(45) DEFAULT NULL,
  `Sjediste_proizvodjaca` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idproizvodjaci`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proizvodjaci`
--

LOCK TABLES `proizvodjaci` WRITE;
/*!40000 ALTER TABLE `proizvodjaci` DISABLE KEYS */;
INSERT INTO `proizvodjaci` VALUES (1,'PLIVA','Zagreb'),(2,'PHARMANOVA','Beograd'),(3,'BAYER','Leverkusen'),(4,'BOSNALIJEK','Sarajevo'),(5,'KRKA-FARMA','Zagreb'),(6,'HEMOFARM','Vršac'),(7,'GABBIANO COMPANY','Sarajevo');
/*!40000 ALTER TABLE `proizvodjaci` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-08 18:04:25
