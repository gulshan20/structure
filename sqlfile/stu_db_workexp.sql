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
-- Table structure for table `workexp`
--

DROP TABLE IF EXISTS `workexp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workexp` (
  `work_id` int NOT NULL DEFAULT '0',
  `emp_id` varchar(45) DEFAULT NULL,
  `company` varchar(45) DEFAULT NULL,
  `designation` varchar(45) DEFAULT NULL,
  `from_date` varchar(45) DEFAULT NULL,
  `to_date` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workexp`
--

LOCK TABLES `workexp` WRITE;
/*!40000 ALTER TABLE `workexp` DISABLE KEYS */;
INSERT INTO `workexp` VALUES (1,'6','esaprk','sde','20/02/2020','20/03/2021'),(2,'6','gsa','sde','20/02/2021','20/03/2022'),(3,'6','dsa','sdl','20/02/2025','20/03/2028'),(4,'9','esaprk','sde','20/02/2020','20/03/2021'),(5,'9','gsa','sde','20/02/2020','20/03/2021'),(6,'9','esaprk','sde','20/02/2020','20/03/2021'),(7,'10','esaprk','sde','20/02/2020','20/03/2021'),(8,'10','gsa','sde','20/02/2020','20/03/2021'),(9,'10','esaprk','sde','20/02/2020','20/03/2021'),(10,'11','esaprk','sde','20/02/2020','20/03/2021'),(11,'11','gsa','sde','20/02/2020','20/03/2021'),(12,'11','esaprk','sde','20/02/2020','20/03/2021'),(13,'12','esaprk','sde','20/02/2020','20/03/2021'),(14,'12','gsa','sde','20/02/2020','20/03/2021'),(15,'12','esaprk','sde','20/02/2020','20/03/2021'),(16,'13','esaprk','sde','20/02/2020','20/03/2021'),(17,'13','gsa','sde','20/02/2020','20/03/2021'),(18,'13','esaprk','sde','20/02/2020','20/03/2021'),(19,'22','google','sde','20/02/2020','20/03/2021'),(20,'22','gsa','trainee','20/02/2022','20/03/2023'),(21,'22','esaprk','trainee','20/03/2024','20/03/2025'),(22,'23','google','sde','20/02/2020','20/03/2021'),(23,'23','gsa','trainee','20/02/2022','20/03/2023'),(24,'23','esaprk','trainee','20/03/2024','20/03/2025'),(25,'24','google','sde','20/02/2020','20/03/2021'),(26,'24','gsa','trainee','20/02/2022','20/03/2023'),(27,'24','esaprk','trainee','20/03/2024','20/03/2025'),(28,'25','google','sde','20/02/2020','20/03/2021'),(29,'25','gsa','trainee','20/02/2022','20/03/2023'),(30,'25','esaprk','trainee','20/03/2024','20/03/2025'),(31,'26','google','sde','20/02/2020','20/03/2021'),(32,'26','gsa','trainee','20/02/2022','20/03/2023'),(33,'26','esaprk','trainee','20/03/2024','20/03/2025'),(34,'27','google','sde','20/02/2020','20/03/2021'),(35,'27','gsa','trainee','20/02/2022','20/03/2023'),(36,'27','esaprk','trainee','20/03/2024','20/03/2025'),(37,'31','gsa','sde','20/02/2020','20/03/2021'),(38,'32','gsa','sde','20/02/2020','20/03/2021'),(39,'39','gsa','sde','20/02/2020','20/03/2021'),(40,'39','esaprk','trainee','20/02/2020','20/03/2021'),(41,'39','google','trainee','20/02/2022','20/03/2023'),(42,'40','gsa','sde','20/02/2020','20/03/2021'),(43,'40','esaprk','trainee','20/02/2020','20/03/2021'),(44,'40','google','trainee','20/02/2022','20/03/2023'),(45,'41','gsa','sde','20/02/2020','20/03/2021'),(46,'41','esaprk','trainee','20/02/2020','20/03/2021'),(47,'41','google','trainee','20/02/2022','20/03/2023'),(48,'42','gsa','sde','20/02/2020','20/03/2021'),(49,'42','esaprk','trainee','20/02/2020','20/03/2021'),(50,'42','google','trainee','20/02/2022','20/03/2023'),(51,'43','esaprk','trainee','20/02/2020','20/03/2021'),(52,'44','esaprk','sde','20/02/2020','20/03/2021'),(53,'44','esaprk','trainee','20/02/2022','20/03/2021'),(54,'44','esaprk','trainee','20/02/2020','20/03/2021'),(55,'45','microsoft','trainee','20/02/2020','20/03/2021'),(56,'45','google','sde','20/02/2022','20/03/2023'),(57,'45','gsa','trainee','20/02/2026','20/03/2027');
/*!40000 ALTER TABLE `workexp` ENABLE KEYS */;
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
