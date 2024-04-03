-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: stu_db
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.20.04.1

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
-- Table structure for table `education`
--

DROP TABLE IF EXISTS `education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `education` (
  `ed_id` int NOT NULL DEFAULT '0',
  `emp_id` varchar(45) DEFAULT NULL,
  `board` varchar(45) DEFAULT NULL,
  `passing_year` varchar(45) DEFAULT NULL,
  `percentage` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education`
--

LOCK TABLES `education` WRITE;
/*!40000 ALTER TABLE `education` DISABLE KEYS */;
INSERT INTO `education` VALUES (1,'2','iim','2022','92'),(2,'2','iim','2022','92'),(3,'2','iim','2022','92'),(4,'2','iim','2022','92'),(5,'3','iim','2022','92'),(6,'3','iim','2022','92'),(7,'3','iim','2022','92'),(8,'3','iim','2022','92'),(9,'4','iim','2022','92'),(10,'4','iim','2022','92'),(11,'4','iim','2022','92'),(12,'4','iim','2022','92'),(13,'5','iim','2022','92'),(14,'5','iim','2022','92'),(15,'5','iim','2022','92'),(16,'5','iim','2022','92'),(17,'6','iim','2022','92'),(18,'6','iim','2022','92'),(19,'6','iim','2022','92'),(20,'6','iim','2022','92'),(21,'7','iim','2022','92'),(22,'8','iim','2022','92'),(23,'9','iim','2022','92'),(24,'9','iim','2022','92'),(25,'9','iim','2022','92'),(26,'9','iim','2022','92'),(27,'10','iim','2022','92'),(28,'10','iim','2022','92'),(29,'10','iim','2022','92'),(30,'10','iim','2022','92'),(31,'11','iim','2022','92'),(32,'11','iim','2022','92'),(33,'11','iim','2022','92'),(34,'11','iim','2022','92'),(35,'12','iim','2022','92'),(36,'12','iim','2022','92'),(37,'12','iim','2022','92'),(38,'12','iim','2022','92'),(39,'13','iim','2022','92'),(40,'13','iim','2022','92'),(41,'13','iim','2022','92'),(42,'13','iim','2022','92'),(43,'14','iim','2022','92'),(44,'15','iim','2022','92'),(45,'22','iim','2022','92'),(46,'22','iim','2022','92'),(47,'22','iim','2022','92'),(48,'22','iim','2022','92'),(49,'23','iim','2022','92'),(50,'23','iim','2022','92'),(51,'23','iim','2022','92'),(52,'23','iim','2022','92'),(53,'24','iim','2022','92'),(54,'24','iim','2022','92'),(55,'24','iim','2022','92'),(56,'24','iim','2022','92'),(57,'25','iim','2022','92'),(58,'25','iim','2022','92'),(59,'25','iim','2022','92'),(60,'25','iim','2022','92'),(61,'26','iim','2022','92'),(62,'26','iim','2022','92'),(63,'26','iim','2022','92'),(64,'26','iim','2022','92'),(65,'27','i xcvbcbcb','2','9 '),(66,'27','i cvbcvbcv','0','2 '),(67,'27','m bcvbcvbcvbcv','2 ','sdfs '),(68,'27','undefined ','2 ','sdfsdfundefined '),(69,'28','ssc','20','20'),(70,'29','gseb','2018','89'),(71,'30','gseb','2018','89'),(72,'31','gseb','2018','89'),(73,'32','gseb ','2018 ','89 '),(74,'39','gseb','2018','89'),(75,'39','dseb','2026','89'),(76,'39','iim  mumbai','2020','89'),(77,'39','iim roorki','2018','67'),(78,'40','gseb','2018','89'),(79,'40','dseb','2026','89'),(80,'40','iim  mumbai','2020','89'),(81,'40','iim roorki','2018','67'),(82,'41','gseb','2018','89'),(83,'41','dseb','2026','89'),(84,'41','iim  mumbai','2020','89'),(85,'41','iim roorki','2018','67'),(86,'42','gseb','2018','89'),(87,'42','dseb','2026','89'),(88,'42','iim  mumbai','2020','89'),(89,'42','iim roorki','2018','67'),(90,'43','gseb','2018','89'),(91,'43','gseb','2018','89'),(92,'44','gseb','2018','89'),(93,'44','gseb','sgsag','dfgdfgdfg'),(94,'44','iim roorki','2026','89'),(95,'44','iim  mumbai','2020','89'),(96,'45','dseb','1998','67'),(97,'45','gseb','2000','89'),(98,'45','iit delhi','2024','76'),(99,'45','iim ahmedabad','2026','83');
/*!40000 ALTER TABLE `education` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-29 17:00:55
