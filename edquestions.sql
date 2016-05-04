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
-- Table structure for table `gdp_quiz_question`
--

DROP TABLE IF EXISTS `gdp_quiz_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gdp_quiz_question` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `quiz_id` int(10) unsigned NOT NULL,
  `sentence` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `gdp_quiz_question_quiz_id_index` (`quiz_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gdp_quiz_question`
--

LOCK TABLES `gdp_quiz_question` WRITE;
/*!40000 ALTER TABLE `gdp_quiz_question` DISABLE KEYS */;
INSERT INTO `gdp_quiz_question` VALUES (1,1,'<p>​What happens if a player intentionally touches the ball with his hands inside his own 18 yard box?</p>'),(2,1,'<p>​</p><p>What is the result of a player receiving a red card?</p><p></p>'),(3,1,'<p><span>How many yellow cards must a player receive for him to be sent off?</span></p>'),(4,1,'<p>​If a foul is committed anywhere outside the 18 yard box what is the consequence?</p>'),(5,1,'<p>​How many linesmen are in a regular premier league game?</p>'),(6,1,'<p><span>How many minutes are in single half?</span></p>'),(7,1,'<p>​In total how many minutes is extra time?</p>'),(8,1,'<p>​</p><p>If a game finishes at extra time and both teams are drawing what happens?</p><p></p>'),(9,1,'<p>For the game to be forfeited how many red cards must one team receive?</p>'),(10,1,'<p>​What is the maximum amount of players on the football pitch at one time during a professional premier league game?</p>'),(11,1,'<p>​A player is through on goal, he\r\nhas beaten the last defender and is fouled in an obvious goal scoring\r\nsituation. What is the consequence for the player committing the foul?</p>'),(12,1,'<p>​What is the automatic penalty if\r\na player was to take their shirt off in a celebration of a goal?</p>'),(13,1,'<p>​What is the offside rule?</p>'),(14,1,'<p>​A player commits a foul throw, what happens?&nbsp;</p>'),(15,1,'<p>​If the goal keeper is given a\r\ndeliberate back pass and they pick the ball up or touch the ball with their\r\nhands, what happens?&nbsp;</p>'),(16,2,'<p>​Who was the winner of the 2014 world cup?</p>'),(17,2,'<p>​Which country was the 2014 World\r\nCup hosted in?</p>'),(18,2,'<p>​Which team has won the world cup the most amount of times?&nbsp;</p>'),(19,2,'<p>​How many teams participate in a single group in the group stage?</p>'),(20,2,'<p>​Which player has won the world cup the most times?</p>'),(21,2,'<p>​Which world cup first introduced “Goal Line Technology”?</p>  <p><br></p>'),(22,2,'<p>​Who was the top scorer in the\r\n2014 world cup?</p>'),(23,2,'<p>​Who is the all-time top goal scorer in the World Cup?</p>'),(24,2,'<p>​What was the first Asian country to appear in a World Cup?</p>'),(25,2,'<p>​How many countries participated in the first World Cup in 1930?</p>'),(26,2,'<p>​Which player has the most World\r\nCup appearances?</p>'),(27,2,'<p>​What year did the World Cup trophy design change?</p>'),(28,2,'<p>​Who was the only manager won the world cup twice?&nbsp;</p>'),(29,2,'<p>​During what World Cup the number of teams was expanded to 32?</p>'),(30,2,'<p>​Aside from Franz Beckenbauer, who is the only person to have won the World Cup as both player and head coach?</p>');
/*!40000 ALTER TABLE `gdp_quiz_question` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-04 19:00:12
