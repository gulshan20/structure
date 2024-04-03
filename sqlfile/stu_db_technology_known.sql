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
-- Table structure for table `technology_known`
--

DROP TABLE IF EXISTS `technology_known`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `technology_known` (
  `tech_id` int NOT NULL DEFAULT '0',
  `emp_id` varchar(45) DEFAULT NULL,
  `technology` varchar(45) DEFAULT NULL,
  `technology_level` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `technology_known`
--

LOCK TABLES `technology_known` WRITE;
/*!40000 ALTER TABLE `technology_known` DISABLE KEYS */;
INSERT INTO `technology_known` VALUES (1,'13','php','mediator'),(2,'13','oracle','beginner'),(3,'13','mysql','beginner'),(4,'13','laravel','beginner'),(5,'22','php','expert'),(6,'22','oracle','mediator'),(7,'22','mysql','expert'),(8,'22','laravel','expert'),(9,'23','php','expert'),(10,'23','oracle','mediator'),(11,'23','mysql','expert'),(12,'23','laravel','expert'),(13,'24','php','expert'),(14,'24','oracle','mediator'),(15,'24','mysql','expert'),(16,'24','laravel','expert'),(17,'25','php','expert'),(18,'25','oracle','mediator'),(19,'25','mysql','expert'),(20,'25','laravel','expert'),(21,'26','php','expert'),(22,'26','oracle','mediator'),(23,'26','mysql','expert'),(24,'26','laravel','expert'),(25,'27','php','expert'),(26,'27','oracle','mediator'),(27,'27','mysql','expert'),(28,'27','laravel','expert'),(29,'32','php','beginner'),(30,'32','oracle','beginner'),(31,'32','mysql','beginner'),(32,'32','laravel','beginner'),(33,'39','php','beginner'),(34,'39','oracle','mediator'),(35,'39','mysql','mediator'),(36,'39','laravel','expert'),(37,'40','php','beginner'),(38,'40','oracle','mediator'),(39,'40','mysql','mediator'),(40,'40','laravel','expert'),(41,'41','php','beginner'),(42,'41','oracle','mediator'),(43,'41','mysql','mediator'),(44,'41','laravel','expert'),(45,'42','php','beginner'),(46,'42','oracle','mediator'),(47,'42','mysql','mediator'),(48,'42','laravel','expert'),(49,'43','php','beginner'),(50,'44','php','mediator'),(51,'44','oracle','mediator'),(52,'44','mysql','mediator'),(53,'44','laravel','mediator'),(54,'45','php','beginner'),(55,'45','oracle','beginner'),(56,'45','mysql','beginner'),(57,'45','laravel','beginner');
/*!40000 ALTER TABLE `technology_known` ENABLE KEYS */;
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
