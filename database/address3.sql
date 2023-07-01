-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: address2
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `address3`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `address3` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `address3`;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `code` int NOT NULL AUTO_INCREMENT,
  `title` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'직장'),(2,'동호회'),(3,'동창'),(4,'친구');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `categoryCode` int NOT NULL,
  `phone` varchar(45) NOT NULL,
  `gender` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `email` varchar(45) NOT NULL,
  `title` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `FK_Student_Department_idx` (`categoryCode`),
  CONSTRAINT `FK_Student_Department` FOREIGN KEY (`categoryCode`) REFERENCES `category` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,'최하은',1,'010-4361-1145','여','choi064@skhu.ac.kr',3),(2,'김진영',3,'010-3415-1238','남','kim073@skhu.ac.kr',2),(3,'나철진',3,'010-8703-1239','남','na088@skhu.ac.kr',1),(4,'이익수',4,'010-7875-1251','남','lee097@skhu.ac.kr',1),(5,'이제문',1,'010-7700-1333','남','lee107@skhu.ac.kr',1),(6,'김영우',2,'010-2090-1421','남','kim112@skhu.ac.kr',2),(7,'주한요',3,'010-4624-1467','남','joo124@skhu.ac.kr',1),(8,'김숙홍',1,'010-3791-1522','남','kim133@skhu.ac.kr',1),(9,'홍영수',4,'010-2897-1525','남','hong142@skhu.ac.kr',1),(10,'박원종',1,'010-7655-1724','남','park157@skhu.ac.kr',1),(11,'변준호',1,'010-2245-1750','남','byeon152@skhu.ac.kr',3),(12,'고희정',3,'010-5691-1943','여','ko165@skhu.ac.kr',1),(13,'신철대',4,'010-3221-1956','남','sin163@skhu.ac.kr',1),(14,'서윤정',3,'010-4310-1965','여','seo174@skhu.ac.kr',1),(15,'오화순',3,'010-8527-2048','여','oh178@skhu.ac.kr',2),(16,'박재인',1,'010-2616-2144','남','park182@skhu.ac.kr',2),(17,'최현복',2,'010-7312-2171','남','choi197@skhu.ac.kr',1),(18,'임봉영',2,'010-7475-2192','남','lim197@skhu.ac.kr',1),(19,'장영만',2,'010-1527-2270','남','jang201@skhu.ac.kr',1),(20,'박주용',4,'010-1640-2396','남','park201@skhu.ac.kr',2),(21,'황하지',2,'010-6682-2463','남','hwang216@skhu.ac.kr',3),(22,'유환치',4,'010-3951-2464','남','yu223@skhu.ac.kr',1),(23,'성희지',1,'010-4267-2555','남','seong234@skhu.ac.kr',1),(24,'박철용',3,'010-2135-2585','남','park242@skhu.ac.kr',3),(25,'이주연',4,'010-7775-2588','남','lee257@skhu.ac.kr',2),(26,'김철지',2,'010-1611-2712','남','kim261@skhu.ac.kr',1),(27,'이화상',4,'010-2703-2794','남','lee272@skhu.ac.kr',1),(28,'백영규',3,'010-6971-2845','남','pak286@skhu.ac.kr',1),(29,'김화인',4,'010-6683-2856','여','kim296@skhu.ac.kr',1),(30,'김만기',1,'010-4194-2860','남','kim304@skhu.ac.kr',1),(31,'김진우',4,'010-3031-2894','남','kim063@skhu.ac.kr',2),(32,'박남영',2,'010-8388-2997','남','park078@skhu.ac.kr',1),(33,'이식동',2,'010-7392-3031','남','lee087@skhu.ac.kr',1),(34,'박하정',4,'010-2627-3076','여','park092@skhu.ac.kr',1),(35,'박룡성',3,'010-7687-3083','남','park107@skhu.ac.kr',2),(36,'곽구인',4,'010-8131-3172','남','kwak118@skhu.ac.kr',1),(37,'김균진',4,'010-5786-3182','남','kim125@skhu.ac.kr',1),(38,'김정희',3,'010-1691-3403','여','kim131@skhu.ac.kr',1),(39,'황찬금',1,'010-5535-3424','남','hwang145@skhu.ac.kr',1),(40,'고영은',2,'010-4005-3498','여','ko154@skhu.ac.kr',1),(41,'정정유',4,'010-8983-3530','남','jeong158@skhu.ac.kr',2),(42,'최영유',2,'010-5208-3577','남','choi165@skhu.ac.kr',1),(43,'김명진',2,'010-5930-3594','여','kim165@skhu.ac.kr',1),(44,'황숙인',3,'010-8300-3661','여','hwang178@skhu.ac.kr',1),(45,'서나윤',2,'010-6760-3792','여','seo176@skhu.ac.kr',3);
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-24 14:47:03
