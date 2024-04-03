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
-- Table structure for table `basic_details`
--

DROP TABLE IF EXISTS `basic_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `basic_details` (
  `emp_id` int NOT NULL DEFAULT '0',
  `f_name` varchar(45) DEFAULT NULL,
  `l_name` varchar(45) DEFAULT NULL,
  `desig` varchar(45) DEFAULT NULL,
  `add1` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `pin` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `rel_status` varchar(45) DEFAULT NULL,
  `dob` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basic_details`
--

LOCK TABLES `basic_details` WRITE;
/*!40000 ALTER TABLE `basic_details` DISABLE KEYS */;
INSERT INTO `basic_details` VALUES (1,'gulshan','pandey','sde','p81 bhestan','81gpandey@gmail.com','395023','9045678905','surat','Male','Gujarat','single','28/05/2002'),(2,'gulshan','pandey','sde','p81 bhestan','81gpandey@gmail.com','395023','9045678905','surat','Male','Gujarat','single','28/05/2002'),(3,'gulshan','pandey','sde','p81 bhestan','81gpandey@gmail.com','395023','9045678905','surat','Male','Gujarat','single','28/05/2002'),(4,'gulshan','pandey','asfaf','p81 bhestan','81gpandey@gmail.com','395023','9045678905','surat','Male','Gujarat','single','28/05/2002'),(5,'gulshan','pandey','sde','p81 bhestan','81gpandey@gmail.com','395023','9045678905','surat','Male','Gujarat','single','28/05/2002'),(6,'ravi','pandey','sde','p81 bhestan','81gpandey@gmail.com','395023','9045678905','surat','Male','Gujarat','single','28/05/2002'),(7,'gulshan','pandey','asfaf','p81 bhestan','81gpandey@gmail.com','395023','9045678905','surat','Male','Gujarat','single','28/05/2002'),(8,'gulshan','pandey','asfaf','p81 bhestan','81gpandey@gmail.com','395023','9045678905','surat','Male','Gujarat','single','28/05/2002'),(9,'gulshan','pandey','asfaf','p81 bhestan','81gpandey@gmail.com','395023','9045678905','surat','Male','Gujarat','single','28/05/2002'),(10,'gulshan','pandey','asfaf','p81 bhestan','81gpandey@gmail.com','395023','9045678905','surat','Male','Gujarat','single','28/05/2002'),(11,'gulshan','pandey','asfaf','p81 bhestan','81gpandey@gmail.com','395023','9045678905','surat','Male','Gujarat','single','28/05/2002'),(12,'gulshan','pandey','asfaf','p81 bhestan','81gpandey@gmail.com','395023','9045678905','surat','Male','Gujarat','single','28/05/2002'),(13,'gulshan','pandey','asfaf','p81 bhestan','81gpandey@gmail.com','395023','9045678905','surat','Male','Gujarat','single','28/05/2002'),(14,'gulshan','pandey','asfaf','p81 bhestan','81gpandey@gmail.com','395023','9045678905','surat','Male','Gujarat','single','28/05/2002'),(15,'gulshan','pandey','asfaf','p81 bhestan','81gpandey@gmail.com','395023','9045678905','surat','Male','Gujarat','single','28/05/2002'),(16,'Manish','Pandey','CTO','p81 bhestan','81Manishpandey@gmail.com','395023','9045678905','surat','Male','Gujarat','single','28/05/2002'),(17,'Manish','Pandey','CTO','p81 bhestan','81Manishpandey@gmail.com','395023','9045678905','surat','Male','Gujarat','single','28/05/2002'),(18,'ankit','Pandey','CTO','p81 bhestan','maisn@gmail.com','395023','9045678905','baroda','Male','Punjab','single','28/05/2002'),(19,'ankit','Pandey','CTO','p81 bhestan','maisn@gmail.com','395023','9045678905','baroda','Male','Punjab','single','28/05/2002'),(20,'ankit','Pandey','CTO','p81 bhestan','maisn@gmail.com','395023','9045678905','baroda','Male','Punjab','single','28/05/2002'),(21,'Roshan','Pandey','CTO','p81 bhestan','maisn@gmail.com','395023','9045678905','baroda','Male','Punjab','single','28/05/2002'),(22,'Utkarsh','pandey','ias','p 82 jammu','90uk@gmail.com','395023','5656565656','ahmedabad','Male','HP','single','28/05/2008'),(23,'Utkarsh','pandey','ias','p 82 jammu','90uk@gmail.com','395023','5656565656','ahmedabad','Male','HP','single','28/05/2008'),(24,'Utkarsh','pandey','ias','p 82 jammu','90uk@gmail.com','395023','5656565656','ahmedabad','Male','HP','single','28/05/2008'),(25,'Utkarsh','pandey','ias','p 82 jammu','90uk@gmail.com','395023','5656565656','ahmedabad','Male','HP','single','28/05/2008'),(26,'Utkarsh','pandey','ias','p 82 jammu','90uk@gmail.com','395023','5656565656','ahmedabad','Male','HP','single','28/05/2008'),(27,'Utkarsh','pandey','ias','p 82 jammu','90uk@gmail.com','395023','5656565656','ahmedabad','male','Gujarat','single','28/05/2008'),(28,'patil','parth','de','surat','patil@gmail.com','394210','9898714050','surat','Male','UP','divorced','02/11/2002'),(29,'arjun','Pandey','CTO','p81 bhestan','81gpandey@gmail.com','395023','5656565656','dehradun','Male','UP','single','28/05/2010'),(30,'anayan','pandey','CTO','p 82 jammu','90uk@gmail.com','395023','9045678905','varanasi','Male','MP','single','28/05/2010'),(31,'anayan','pandey','CTO','p 82 jammu','90uk@gmail.com','395023','9045678905','varanasi','Male','MP','single','28/05/2010'),(32,'aakansha','pandey','CTO','p 82 jammu','90uk@gmail.com','395023','9045678905','varanasi','Male','MP','single','28/05/2010'),(33,'gulshan','pandey','sde','p81 bhestan','81gpandey@gmail.com','395023','9045678905','baroda','Male','Gujarat','single','28/05/2002'),(34,'asvimha','pandey','asfaf','p81 bhestan','81gpandey@gmail.com','','5656565656','varanasi','Male','HP','single','28/05/2010'),(35,'gulshan','pandey','asfaf','p81 bhestan','81gpandey@gmail.com','395023','9045678905','dehradun','Male','Gujarat','single','28/05/2010'),(36,'gulshan','pandey','asfaf','p81 bhestan','81gpandey@gmail.com','395023','9045678905','dehradun','Male','Gujarat','single','28/05/2010'),(37,'gulshan','pandey','CTO','p81 bhestan','81gpandey@gmail.com','395023','9045678905','dehradun','Male','UP','single','28/05/2010'),(38,'gulshan','pandey','CTO','p81 bhestan','81gpandey@gmail.com','395023','9045678905','dehradun','Male','UP','single','28/05/2010'),(39,'Himanshu','Pandey','sde','p 81 Delhi','81himansh@gmail.com','395023','5656565656','varanasi','Male','UP','single','28/05/2002'),(40,'Himanshu','Pandey','sde','p 81 Delhi','81himansh@gmail.com','395023','5656565656','varanasi','Male','UP','single','28/05/2002'),(41,'Himanshu','Pandey','sde','p 81 Delhi','81himansh@gmail.com','395023','5656565656','varanasi','Male','UP','single','28/05/2002'),(42,'Himanshu2','undefined','sde','undefined','67@gmail.com','undefined','undefined','undefined','Female','undefined','undefined','undefined'),(43,'parth1','patuik','asfaf','p 82 jammu','90uk@gmail.com','395023','9045678905','surat','Male','MP','single','28/05/2002'),(44,'gsdfgadg','sdfgdfgdf','CTO','sdfgdfthgsdfg','81gpandey@gmail.com','395023','9045678905','dehradun','Female','UP','single','28/05/2011'),(45,'balwinder','kejrival','cm','p 97 delhi','arvind@gmail.com','676767','7878787878','delhi','Male','Delhi','single','28/05/1996');
/*!40000 ALTER TABLE `basic_details` ENABLE KEYS */;
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
