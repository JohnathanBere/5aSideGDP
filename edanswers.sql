-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: 0.0.0.0    Database: c9
-- ------------------------------------------------------
-- Server version	5.5.44-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `gdp_quiz_answer`
--

DROP TABLE IF EXISTS `gdp_quiz_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gdp_quiz_answer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question_id` int(10) unsigned NOT NULL,
  `caption` text COLLATE utf8_unicode_ci,
  `flag` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gdp_quiz_answer_question_id_index` (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gdp_quiz_answer`
--

LOCK TABLES `gdp_quiz_answer` WRITE;
/*!40000 ALTER TABLE `gdp_quiz_answer` DISABLE KEYS */;
INSERT INTO `gdp_quiz_answer` VALUES (1,1,'Free kick',0),(2,1,'indirect free kick',0),(3,1,'Penalty',1),(4,1,'No action',0),(5,2,'He has a 5 minute time out',0),(6,2,'He\'s sent off',1),(7,2,'He must go in goal',0),(8,2,'He has to be subbed off for another player',0),(9,3,'1',0),(10,3,'2',1),(11,3,'3',0),(12,3,'4',0),(13,4,'Penalty',0),(14,4,'Drop ball',0),(15,4,'Free kick',1),(16,4,'Corner kick',0),(17,5,'2',1),(18,5,'3',0),(19,5,'4',0),(20,5,'6',0),(21,6,'90 minutes',0),(22,6,'40 minutes',0),(23,6,'35 minutes',0),(24,6,'45 minutes',1),(25,7,'30 minutes',1),(26,7,'15 minutes',0),(27,7,'45 minutes',0),(28,7,'20 minutes',0),(29,8,'Both teams draw',0),(30,8,'The first team to score wins',0),(31,8,'Game goes to penalties',1),(32,8,'Rematch takes place',0),(33,9,'5',1),(34,9,'4',0),(35,9,'2',0),(36,9,'6',0),(37,10,'16',0),(38,10,'11',0),(39,10,'20',0),(40,10,'22',1),(41,11,'Automatic yellow card',0),(42,11,'Penalty is given against his team no matter where on the pitch the foul was committed.',0),(43,11,'Automatic red card',1),(44,11,'Their team will concede a penalty goal',0),(45,12,'Gets a warning by the ref',0),(46,12,'Gets a yellow card',1),(47,12,'Goal is disallowed',0),(48,12,'Straight red card',0),(49,13,'When an attacking player is interfering with play/ receiving the ball when they are behind the last defender',0),(50,13,'When an attacking player is interfering with play/ receiving the ball when they are behind the second last defender',1),(51,13,'When an attacking player is interfering with play/ receiving the ball when they are in front of the last defender',0),(52,13,'When an attacking player is interfering with play/ receiving the ball when they are in front of the second last defender',0),(53,14,'Free kick to the other team',0),(54,14,'The player has to re take the throw in',0),(55,14,'Another player from their team has to take the throw in',0),(56,14,'The other team gets the throw in',1),(57,15,'Red card and penalty',0),(58,15,'No action needed',0),(59,15,'Indirect free kick is given',1),(60,15,'Direct free kick is given',0),(61,16,'Germany',1),(62,16,'Brazil',0),(63,16,'Argentina',0),(64,16,'Belgium',0),(65,17,'Germany',0),(66,17,'Brazil',1),(67,17,'South Africa',0),(68,17,'Chilli',0),(69,18,'England',0),(70,18,'Spain',0),(71,18,'Germany',0),(72,18,'Brazil',1),(73,19,'6',0),(74,19,'8',0),(75,19,'4',1),(76,19,'10',0),(77,20,'Ronaldo',0),(78,20,'Pele',1),(79,20,'Cafu',0),(80,20,'Passarella',0),(81,21,'2010',0),(82,21,'2002',0),(83,21,'2006',0),(84,21,'2014',1),(85,22,'Neymar',0),(86,22,'James Rodríguez',0),(87,22,'Thomas Müller',1),(88,22,'Lionel Messi',0),(89,23,'Ronaldo',0),(90,23,'Kloser',1),(91,23,'Pele',0),(92,23,'Maradona',0),(93,24,'Dutch East Indies',1),(94,24,'Japan',0),(95,24,'China',0),(96,24,'South Korea',0),(97,25,'6 countries',0),(98,25,'8 countries',0),(99,25,'10 countries',0),(100,25,'13 countries',1),(101,26,'Matthaus',1),(102,26,'Maradona',0),(103,26,'Klose',0),(104,26,'Maldini',0),(105,27,'1980',0),(106,27,'1974',1),(107,27,'2004',0),(108,27,'1960',0),(109,28,'Mario Zagallo',0),(110,28,'Pep Guardiola',0),(111,28,'Vittorio Pozzo',1),(112,28,'Sir Alex Ferguson',0),(113,29,'Italy 1990',0),(114,29,'USA 1994',1),(115,29,'France 1998',0),(116,29,'South Korea & Japan 2002',0),(117,30,'Carlos Alberto Parreira',0),(118,30,'Luiz Felipe Scolari',0),(119,30,'Dunga',0),(120,30,'Mario Zagallo',1);
/*!40000 ALTER TABLE `gdp_quiz_answer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-04 19:01:36
