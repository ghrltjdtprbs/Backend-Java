-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: bus1
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
-- Current Database: `bus1`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `bus1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `bus1`;

--
-- Table structure for table `bus`
--

DROP TABLE IF EXISTS `bus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `busNo` varchar(45) NOT NULL,
  `firstStop` varchar(45) NOT NULL,
  `lastStop` varchar(45) NOT NULL,
  `categoryId` int NOT NULL,
  `firstBus` varchar(45) NOT NULL,
  `lastBus` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_bus_category_idx` (`categoryId`),
  CONSTRAINT `FK_bus_category` FOREIGN KEY (`categoryId`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus`
--

LOCK TABLES `bus` WRITE;
/*!40000 ALTER TABLE `bus` DISABLE KEYS */;
INSERT INTO `bus` VALUES (1,'6615','양천공영차고지','천왕역',1,'04:30','23:00'),(2,'27','삼미시장','천왕역',2,'05:30','22:50'),(3,'56-1','부천생태공원','고강동철탑',2,'05:00','23:50'),(4,'5200','시흥센트럴병원','구로역',4,'05:00','23:00'),(5,'5615','난곡','여의도',1,'04:10','23:00'),(6,'5714','광명공영차고지','이대입구',1,'04:15','22:10'),(7,'6512','구로동','서울대',1,'03:50','22:30'),(8,'160','도봉산역','온수동',3,'03:50','22:10'),(9,'600','온수동','광화문',3,'04:00','23:30'),(10,'660','온수동','가양역',3,'04:00','22:30'),(11,'662','외발산동','여의나루역',3,'04:00','23:10'),(12,'301','본오아파트','여의도환승센터',4,'04:30','22:30'),(13,'320','강원여객','여의도환승센터',4,'04:30','22:30'),(14,'643','양천공영차고지','강남역',3,'04:30','22:40'),(15,'651','방화동','관악구청',3,'04:30','22:50'),(16,'652','신월동','금천우체국',3,'04:30','22:40'),(17,'653','외발산동','가산디지털역',3,'04:30','22:50'),(18,'5012','가산동','용산역',1,'04:20','22:30'),(19,'503','광명공영차고지','서울역',3,'04:30','22:50'),(20,'5618','구로동','구로동',3,'04:20','22:30'),(21,'10','용못내공원','여의도환승센터',2,'04:30','22:40'),(22,'11-1','중앙하이츠아파트','여의도환승센터',2,'04:10','22:50'),(23,'11-2','광명동굴입구','여의도환승센터',2,'04:20','22:40'),(24,'530','능곡공영차고지','여의도환승센터',2,'04:30','22:50'),(25,'83','대장공영차고지','여의도환승센터',2,'04:20','22:40'),(26,'400','염곡동','시청',3,'04:10','23:10'),(27,'402','장지공영차고지','광화문',3,'04:20','23:10'),(28,'421','염곡동','옥수동',3,'04:10','22:50'),(29,'440','복정역','압구정한양아파트',3,'04:10','23:10'),(30,'441','월암차고지','신사사거리',3,'04:20','23:10'),(31,'452','복정역','중대병원',3,'04:10','22:50'),(32,'470','상암차고지','안골마을',3,'04:10','22:50');
/*!40000 ALTER TABLE `bus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'지선'),(2,'일반'),(3,'간선'),(4,'직행');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-29  9:59:21
