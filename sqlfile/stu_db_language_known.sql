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
-- Table structure for table `language_known`
--

DROP TABLE IF EXISTS `language_known`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_known` (
  `lan_id` int NOT NULL DEFAULT '0',
  `emp_id` varchar(45) DEFAULT NULL,
  `language_name` varchar(45) DEFAULT NULL,
  `language_level` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_known`
--

LOCK TABLES `language_known` WRITE;
/*!40000 ALTER TABLE `language_known` DISABLE KEYS */;
INSERT INTO `language_known` VALUES (1,'9','hindi','read,write,speak'),(2,'9','gujarati','read,write,speak'),(3,'9','english','read,write,speak'),(4,'10','hindi','read,write,speak'),(5,'10','gujarati','read,write,speak'),(6,'10','english','read,write,speak'),(7,'11','hindi','read,write,speak'),(8,'11','gujarati','read,write,speak'),(9,'11','english','read,write,speak'),(10,'12','hindi','read,write,speak'),(11,'12','gujarati','read,write,speak'),(12,'12','english','read,write,speak'),(13,'13','hindi','read,write,speak'),(14,'13','gujarati','read,write,speak'),(15,'13','english','read,write,speak'),(16,'22','hindi','read,write,speak'),(17,'22','gujarati','read'),(18,'22','english','read,write,speak'),(19,'23','hindi','read,write,speak'),(20,'23','gujarati','read'),(21,'23','english','read,write,speak'),(22,'24','hindi','read,write,speak'),(23,'24','gujarati','read'),(24,'24','english','read,write,speak'),(25,'25','hindi','read,write,speak'),(26,'25','gujarati','read'),(27,'25','english','read,write,speak'),(28,'26','hindi','read,write,speak'),(29,'26','gujarati','read'),(30,'26','english','read,write,speak'),(31,'27','hindi','read,write,speak'),(32,'27','gujarati','read'),(33,'27','english','read,write,speak'),(34,'31','h','read,write,speak'),(35,'31','i','undefined'),(36,'31','n','undefined'),(37,'31','d','undefined'),(38,'31','i','undefined'),(39,'32','h','read,write,speak'),(40,'32','i','undefined'),(41,'32','n','undefined'),(42,'32','d','undefined'),(43,'32','i','undefined'),(44,'39','hindi','read,write'),(45,'39','gujarati','read'),(46,'39','english','read,write,speak'),(47,'40','hindi','read,write'),(48,'40','gujarati','read'),(49,'40','english','read,write,speak'),(50,'41','hindi','read,write'),(51,'41','gujarati','read'),(52,'41','english','read,write,speak'),(53,'42','hindi','read,write'),(54,'42','gujarati','read'),(55,'42','english','read,write,speak'),(56,'43','hindi','write'),(57,'44','hindi','read'),(58,'44','gujarati','write'),(59,'44','english','write'),(60,'45','hindi','read,write,speak'),(61,'45','gujarati','read'),(62,'45','english','read');
/*!40000 ALTER TABLE `language_known` ENABLE KEYS */;
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
