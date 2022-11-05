-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: myfavbank
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `transfers`
--

DROP TABLE IF EXISTS `transfers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transfers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_emisora` int NOT NULL,
  `monto` decimal(10,2) NOT NULL,
  `id_receptor` int NOT NULL,
  `ref` varchar(10) NOT NULL,
  `hora` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_id_emisora` (`id_emisora`),
  KEY `fk_id_receptor` (`id_receptor`),
  CONSTRAINT `fk_id_emisora` FOREIGN KEY (`id_emisora`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_id_receptor` FOREIGN KEY (`id_receptor`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transfers`
--

LOCK TABLES `transfers` WRITE;
/*!40000 ALTER TABLE `transfers` DISABLE KEYS */;
INSERT INTO `transfers` VALUES (1,1,23.00,1,'1754a4d988','2022-10-28 07:58:00'),(2,1,1.00,5,'c5ba9f8853','2022-10-28 07:59:00'),(3,1,1.00,5,'0c67102f5e','2022-10-28 08:00:00'),(4,1,1.00,5,'b502a71f70','2022-10-28 08:02:00'),(5,1,1.00,5,'1ef26b69b1','2022-10-28 08:04:00'),(6,5,23.00,1,'1bc29ec046','2022-10-28 08:06:00'),(7,1,20.00,5,'32319983ed','2022-10-28 08:09:00'),(8,1,10.00,5,'dd476d5c65','2022-10-28 08:10:00'),(9,1,20.00,5,'c3385ba2aa','2022-10-28 08:11:00'),(10,1,200.00,5,'81ab98a07a','2022-10-28 08:13:00'),(11,1,10.00,5,'d7bb30af21','2022-10-28 08:30:00'),(12,5,0.00,1,'e9894b31f8','2022-10-28 08:45:00'),(13,5,10.00,1,'8b12898fae','2022-10-28 08:45:00'),(14,5,0.22,1,'b01ecbe7c0','2022-10-28 08:46:00'),(15,6,1500.00,1,'7a14cec058','2022-10-28 09:17:00'),(16,1,50.33,6,'d5900f78dc','2022-10-28 11:10:00'),(17,6,50.33,1,'bf886a4e1b','2022-10-28 11:11:00'),(18,6,0.00,1,'d30876fa43','2022-10-28 11:11:00'),(19,1,200.20,5,'0fdbf2c9a4','2022-10-28 23:39:25'),(20,6,100.50,5,'cfd39f4fda','2022-10-29 13:05:23');
/*!40000 ALTER TABLE `transfers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-05 13:03:04
