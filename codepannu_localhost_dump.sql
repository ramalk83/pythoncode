-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: codepannu
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `assignments`
--

DROP TABLE IF EXISTS `assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assignments` (
  `assignment_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(1000) NOT NULL,
  `level` varchar(45) DEFAULT NULL,
  `day` int DEFAULT NULL,
  `answer1` varchar(2000) DEFAULT NULL,
  `answer2` varchar(2000) DEFAULT NULL,
  `answer3` varchar(2000) DEFAULT NULL,
  `email_sent` varchar(45) DEFAULT 'No',
  `corrected_on` datetime DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `email_sent_on` datetime DEFAULT NULL,
  PRIMARY KEY (`assignment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignments`
--

LOCK TABLES `assignments` WRITE;
/*!40000 ALTER TABLE `assignments` DISABLE KEYS */;
INSERT INTO `assignments` VALUES (1,'KUNJURAMAN','anitharaman@aol.in','1',1,'undefined','undefined','undefined','No',NULL,'2020-08-25 08:15:51',NULL),(2,'KUNJURAMAN','anitharaman@aol.in','1',7,'undefined','undefined','undefined','No',NULL,'2020-08-25 08:18:07',NULL),(3,'KUNJURAMAN','anitharaman@aol.in','1',7,'undefined','undefined','undefined','No',NULL,'2020-08-25 12:14:02',NULL),(4,'KUNJURAMAN','anitharaman@aol.in','1',1,'undefined','undefined','undefined','No',NULL,'2020-08-25 12:17:32',NULL),(5,'KUNJURAMAN','anitharaman@aol.in','1',5,'undefined','undefined','undefined','No',NULL,'2020-08-25 12:29:22',NULL),(6,'KUNJURAMAN','anitharaman@aol.in','2',3,'undefined','undefined','undefined','No',NULL,'2020-08-25 12:31:01',NULL),(7,'KUNJURAMAN','anitharaman@aol.in','1',1,'undefined','undefined','undefined','No',NULL,'2020-08-25 12:35:18',NULL),(8,'KUNJURAMAN','anitharaman@aol.in','2',7,'cat=1\r\ndog=2\r\npet=3\r\nprint(pet)','','','No',NULL,'2020-08-25 12:41:24',NULL),(9,'KUNJURAMAN','anitharaman@aol.in','1',7,'\'cat=1\r\ndog=2\r\npet=3\r\nprint(pet)\'','\'cat=1\r\ndog=2\r\npet=3\r\nprint(pet)\'','\'cat=1\r\ndog=2\r\npet=3\r\nprint(pet)\'','No',NULL,'2020-08-25 12:51:10',NULL),(10,'KUNJURAMAN Anitha','anitharaman@aol.in','1',7,'test','','','No',NULL,'2020-08-25 12:56:37',NULL),(11,'KUNJURAMAN Anitha','anitharaman@aol.in','2',6,'test',NULL,NULL,'No',NULL,'2020-08-28 18:30:50',NULL),(12,'KUNJURAMAN','anitharaman@aol.in','2',4,'test',NULL,NULL,'No',NULL,'2020-08-28 18:32:32',NULL),(13,'KUNJURAMAN','anitharaman@aol.in','2',3,'',NULL,NULL,'No',NULL,'2020-08-28 18:33:46',NULL),(14,'KUNJURAMAN Anitha','anitharaman@aol.in','2',3,'na',NULL,NULL,'No',NULL,'2020-08-28 18:50:05',NULL),(15,'KUNJURAMAN','anitharaman@aol.in','2',3,'',NULL,NULL,'No',NULL,'2020-08-28 18:51:33',NULL),(16,'KUNJURAMAN Anitha','anitharaman@aol.in','2',5,'',NULL,NULL,'No',NULL,'2020-08-28 18:56:05',NULL),(17,'KUNJURAMAN','anitharaman@aol.in','2',5,'na',NULL,NULL,'No',NULL,'2020-08-28 18:58:27',NULL),(18,'KUNJURAMAN','anitharaman@aol.in','2',7,'na',NULL,NULL,'No',NULL,'2020-08-28 19:00:07',NULL),(19,'KUNJURAMAN Anitha','anitharaman@aol.in','2',6,'na',NULL,NULL,'No',NULL,'2020-08-28 19:01:06',NULL),(20,'KUNJURAMAN','anitharaman@aol.in','1',4,'',NULL,NULL,'No',NULL,'2020-08-28 19:04:57',NULL),(21,'KUNJURAMAN Anitha','anitharaman@aol.in','2',4,'',NULL,NULL,'No',NULL,'2020-08-28 19:07:34',NULL),(22,'KUNJURAMAN Anitha','anitharaman@aol.in','1',1,'test',NULL,NULL,'No',NULL,'2020-09-18 17:10:48',NULL),(23,'KUNJURAMAN Anitha','anitharaman@aol.in','1',1,'test',NULL,NULL,'No',NULL,'2020-09-18 17:11:52',NULL),(24,'KUNJURAMAN Anitha','anitharaman@aol.in','2',2,'test',NULL,NULL,'No',NULL,'2020-09-18 17:13:39',NULL),(25,'KUNJURAMAN Anitha','anitharaman@aol.in','1',2,'test-4',NULL,NULL,'No',NULL,'2020-09-18 17:14:58',NULL),(26,'KUNJURAMAN Anitha','anitharaman@aol.in','1',3,'test',NULL,NULL,'No',NULL,'2020-09-18 17:15:36',NULL),(27,'KUNJURAMAN Anitha','anitharaman@aol.in','2',3,'test',NULL,NULL,'No',NULL,'2020-09-18 17:24:15',NULL),(28,'KUNJURAMAN Anitha','anitharaman@aol.in','1',1,'test-19',NULL,NULL,'No',NULL,'2020-09-18 17:27:48',NULL),(29,'KUNJURAMAN Anitha','anitharaman@aol.in','1',2,'test-20',NULL,NULL,'No',NULL,'2020-09-18 17:29:57',NULL),(30,'KUNJURAMAN Anitha','anitharaman@aol.in','1',2,'test-22',NULL,NULL,'No',NULL,'2020-09-18 17:31:05',NULL),(31,'KUNJURAMAN Anitha','anitharaman@aol.in','1',7,'test-24',NULL,NULL,'No',NULL,'2020-09-18 17:34:03',NULL),(32,'KUNJURAMAN Anitha','anitharaman@aol.in','1',1,'25',NULL,NULL,'No',NULL,'2020-09-18 17:39:13',NULL),(33,'KUNJURAMAN Anitha','anitharaman@aol.in','1',1,'test-27',NULL,NULL,'No',NULL,'2020-09-18 17:39:53',NULL),(34,'KUNJURAMAN Anitha','anitharaman@aol.in','1',6,'test',NULL,NULL,'No',NULL,'2020-09-18 17:59:46',NULL),(35,'KUNJURAMAN Anitha','anitharaman@aol.in','2',6,'test',NULL,NULL,'No',NULL,'2020-09-18 18:01:55',NULL),(36,'KUNJURAMAN Anitha','anitharaman@aol.in','1',7,'test',NULL,NULL,'No',NULL,'2020-09-18 18:02:50',NULL),(37,'KUNJURAMAN Anitha','anitharaman@aol.in','2',7,'test',NULL,NULL,'No',NULL,'2020-09-18 18:07:00',NULL),(38,'KUNJURAMAN Anitha','anitharaman@aol.in','1',3,'test',NULL,NULL,'No',NULL,'2020-09-18 18:07:32',NULL),(39,'KUNJURAMAN Anitha','anitharaman@aol.in','1',7,'test',NULL,NULL,'No',NULL,'2020-09-18 18:08:56',NULL),(40,'KUNJURAMAN Anitha','anitharaman@aol.in','2',5,'test',NULL,NULL,'No',NULL,'2020-09-18 18:10:14',NULL),(41,'KUNJURAMAN Anitha','anitharaman@aol.in','2',6,'test',NULL,NULL,'No',NULL,'2020-09-18 18:10:59',NULL),(42,'KUNJURAMAN Anitha','anitharaman@aol.in','2',7,'test',NULL,NULL,'No',NULL,'2020-09-18 18:12:28',NULL),(43,'KUNJURAMAN Anitha','anitharaman@aol.in','2',7,'test',NULL,NULL,'No',NULL,'2020-09-18 18:24:33',NULL),(44,'KUNJURAMAN Anitha','anitharaman@aol.in','2',7,'test',NULL,NULL,'No',NULL,'2020-09-18 18:25:42',NULL),(45,'KUNJURAMAN Anitha','anitharaman@aol.in','2',7,'test',NULL,NULL,'No',NULL,'2020-09-18 18:28:02',NULL),(46,'Ani','anitharaman@aol.in','1',2,'test',NULL,NULL,'No',NULL,'2020-09-25 17:24:17',NULL),(47,'Ani','a@a.com','1',2,'test',NULL,NULL,'No',NULL,'2020-09-25 17:32:55',NULL),(48,'Ani','a@a.com','1',4,'code',NULL,NULL,'No',NULL,'2020-09-25 17:38:26',NULL),(49,'Geethanjali','geethanjali@gmail.com','1',2,'aunty. I finished the code for my timetable',NULL,NULL,'No',NULL,'2020-09-25 17:40:20',NULL),(50,'Ani','ani@anithegreat.com','1',7,'you are just amazing',NULL,NULL,'No',NULL,'2020-09-25 17:50:41',NULL),(51,'Ani','ani@great.com','2',7,'test',NULL,NULL,'No',NULL,'2020-09-25 17:56:23',NULL),(52,'Ani','ani@ani.com','2',7,'test',NULL,NULL,'No',NULL,'2020-09-25 17:59:16',NULL),(53,'a','a@a.com','1',7,'test',NULL,NULL,'No',NULL,'2020-09-26 18:21:42',NULL),(54,'','','1',2,'1',NULL,NULL,'No',NULL,'2020-09-26 18:23:09',NULL),(55,'','','1',2,'sending email to Mona',NULL,NULL,'No',NULL,'2020-09-26 18:29:44',NULL),(56,'Ani','','1',2,'',NULL,NULL,'No',NULL,'2020-09-27 11:38:07',NULL),(57,'Ani','','2',3,'',NULL,NULL,'No',NULL,'2020-09-27 11:39:29',NULL),(58,'Geetanjali','','1',4,'',NULL,NULL,'No',NULL,'2020-09-27 11:42:52',NULL),(59,'V.Prabhanja','','2',7,'',NULL,NULL,'No',NULL,'2020-09-27 11:46:12',NULL),(60,'V.Prabhanjan','','2',7,'',NULL,NULL,'No',NULL,'2020-09-27 11:48:38',NULL),(61,'Anitha Raman','anitharaman@aol.in','2',7,'',NULL,NULL,'No',NULL,'2020-09-27 11:57:57',NULL),(62,'Ani','anitharaman@aol.in','1',7,'',NULL,NULL,'No',NULL,'2020-09-27 12:02:34',NULL),(63,'Indhumathy','anitharaman@aol.in','2',7,'',NULL,NULL,'No',NULL,'2020-09-27 12:27:04',NULL),(64,'Indhu','ani@ani.com','2',2,'',NULL,NULL,'No',NULL,'2020-09-27 12:28:58',NULL),(65,'Indhu & Viji','a@a.com','2',7,'',NULL,NULL,'No',NULL,'2020-09-27 12:31:37',NULL),(66,'Indhu & Viji','a@a.com','2',7,'',NULL,NULL,'No',NULL,'2020-09-27 12:33:33',NULL),(67,'viji','ani@ani.com','2',7,'',NULL,NULL,'No',NULL,'2020-09-27 12:39:33',NULL),(68,'ani','a@a.com','2',7,'',NULL,NULL,'No',NULL,'2020-09-27 13:00:27',NULL),(69,'ani','','2',7,'',NULL,NULL,'No',NULL,'2020-09-27 13:04:49',NULL),(70,'Ani','a@a.com','2',7,'test',NULL,NULL,'No',NULL,'2020-10-01 18:16:47',NULL),(71,'Ani','anitha.calibre@gmail.com','2',7,'testing for copying content and checkbox',NULL,NULL,'No',NULL,'2020-10-04 12:36:49',NULL);
/*!40000 ALTER TABLE `assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `message_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `created_on` datetime DEFAULT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,'KUNJURAMAN','anitharaman@aol.in','na',NULL),(2,'KUNJURAMAN','anitharaman@aol.in','na','2020-08-24 17:00:49'),(3,'Aki','aki@aki.com','test again','2020-08-24 17:03:10'),(4,'','','','2020-08-24 17:03:10'),(5,'Mona','mona@gmail.com','hi di','2020-08-24 17:04:05'),(6,'gayu','gayu@gmail.com','videos are excellent','2020-08-24 17:05:28'),(7,'KUNJURAMAN','anitharaman@aol.in','na','2020-08-25 08:17:30'),(8,'KUNJURAMAN','anitharaman@aol.in','','2020-08-26 15:48:57'),(9,'KUNJURAMAN','anitharaman@aol.in','','2020-08-26 15:51:31'),(10,'','','','2020-08-26 15:51:31'),(11,'KUNJURAMAN','anitharaman@aol.in','na','2020-08-26 15:52:04'),(12,'KUNJURAMAN','anitharaman@aol.in','test','2020-08-26 16:01:34'),(13,'KUNJURAMAN','anitharaman@aol.in','','2020-08-26 16:03:38'),(14,'KUNJURAMAN','anitharaman@aol.in','talk','2020-08-26 16:03:53'),(15,'','','','2020-08-26 16:03:53'),(16,'KUNJURAMAN','anitharaman@aol.in','work more','2020-08-26 16:04:15'),(17,'KUNJURAMAN','anitharaman@aol.in','work hard','2020-08-26 16:08:11'),(18,'KUNJURAMAN','anitharaman@aol.in','work now','2020-08-26 16:08:42'),(19,'KUNJURAMAN','anitharaman@aol.in','work easy','2020-08-26 16:10:04'),(20,'KUNJURAMAN','anitharaman@aol.in','coding is fun','2020-08-26 16:11:10'),(21,'KUNJURAMAN','anitharaman@aol.in','na','2020-08-26 16:12:57'),(22,'KUNJURAMAN','anitharaman@aol.in','coding is heaven','2020-08-26 16:16:31'),(23,'KUNJURAMAN','anitharaman@aol.in','fun fun fun','2020-08-26 16:16:58'),(24,'KUNJURAMAN','anitharaman@aol.in','fun fun fun','2020-08-26 16:17:03'),(25,'KUNJURAMAN','anitharaman@aol.in','so interesting','2020-08-26 16:17:29'),(26,'KUNJURAMAN','anitharaman@aol.in','gotcha','2020-08-26 16:20:15'),(27,'KUNJURAMAN','anitharaman@aol.in','yay','2020-08-26 16:21:03'),(28,'KUNJURAMAN','anitharaman@aol.in','yay','2020-08-26 16:21:47'),(29,'KUNJURAMAN','anitharaman@aol.in','getting close','2020-08-26 16:22:16'),(30,'KUNJURAMAN','anitharaman@aol.in','let\'s see now','2020-08-26 16:23:43'),(31,'','','','2020-08-26 16:23:45'),(32,'','','','2020-08-26 16:23:45'),(33,'KUNJURAMAN','anitharaman@aol.in','what now','2020-08-26 16:24:06'),(34,'KUNJURAMAN','anitharaman@aol.in','how how how','2020-08-26 16:24:49'),(35,'KUNJURAMAN','anitharaman@aol.in','much closer','2020-08-26 16:25:09'),(36,'KUNJURAMAN','anitharaman@aol.in','OK','2020-08-26 16:25:21'),(37,'KUNJURAMAN','anitharaman@aol.in','finally!!!','2020-08-26 16:25:51'),(38,'KUNJURAMAN','anitharaman@aol.in','success will be mine','2020-08-26 16:26:03'),(39,'','','','2020-08-26 16:26:04'),(40,'KUNJURAMAN','anitharaman@aol.in','modal','2020-08-26 17:08:07'),(41,'KUNJURAMAN','anitharaman@aol.in','modal','2020-08-26 17:09:03'),(42,'KUNJURAMAN','anitharaman@aol.in','test','2020-08-26 17:13:39'),(43,'KUNJURAMAN','anitharaman@aol.in','modal works','2020-08-26 17:20:32'),(44,'KUNJURAMAN','anitharaman@aol.in','I knew you can work it','2020-08-26 17:21:01'),(45,'KUNJURAMAN','anitharaman@aol.in','thank you god','2020-08-26 17:29:16'),(46,'KUNJURAMAN','anitharaman@aol.in','thanks again','2020-08-26 17:29:25'),(47,'','','','2020-08-26 17:29:25'),(48,'KUNJURAMAN Anitha','anitharaman@aol.in','test','2020-09-05 13:00:38'),(49,'KUNJURAMAN Anitha','anitharaman@aol.in','test','2020-09-18 18:41:33'),(50,'','a@a.com','','2020-09-26 10:07:20'),(51,'','','','2020-09-26 10:07:26'),(52,'','','','2020-09-26 10:07:26'),(53,'','','','2020-09-26 10:07:35'),(54,'','','','2020-09-26 10:07:35'),(55,'','','','2020-09-26 10:07:35'),(56,'','','','2020-09-26 10:07:42'),(57,'','','','2020-09-26 10:07:42'),(58,'','','','2020-09-26 10:07:42'),(59,'','','','2020-09-26 10:07:42'),(60,'a','a@a.com','a','2020-09-26 10:10:43'),(61,'','','','2020-09-26 10:10:47'),(62,'','','','2020-09-26 10:10:47'),(63,'','','','2020-09-26 10:10:47'),(64,'','','','2020-09-26 10:10:48'),(65,'','','','2020-09-26 10:10:48'),(66,'','','','2020-09-26 10:10:49'),(67,'','','','2020-09-26 10:10:49'),(68,'','','','2020-09-26 10:24:48'),(69,'','','','2020-09-26 10:24:55'),(70,'','','','2020-09-26 10:26:01'),(71,'','','','2020-09-26 10:26:28'),(72,'','','','2020-09-26 10:26:31'),(73,'','','','2020-09-26 10:26:32'),(74,'','','','2020-09-26 10:27:22'),(75,'','','','2020-09-26 10:27:37'),(76,'a','a@a.com','a','2020-09-26 11:41:56'),(77,'','','','2020-09-26 11:41:56');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `videos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `level` varchar(45) NOT NULL,
  `day` varchar(45) NOT NULL,
  `video` varchar(45) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `link` varchar(45) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `link_UNIQUE` (`link`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videos`
--

LOCK TABLES `videos` WRITE;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;
INSERT INTO `videos` VALUES (1,'1','0','1','Download and Install Python','https://youtu.be/YDzaPFOQUzI',NULL),(2,'1','0','2','Introduction to Programming','https://youtu.be/gXkgCyxyBCY',NULL),(3,'1','1','1','Print Statment - Print single statement','https://youtu.be/9x0JDdPbakU',NULL),(4,'1','1','2','Print Statement - Print multiple statements','https://youtu.be/fMIHG4kr6EU',NULL),(5,'1','1','3','Print Statement - Print Marks card','https://youtu.be/yfvPnOLcutk',NULL),(6,'1','1','4','Print Statement - Assignment','https://youtu.be/w5qUQp94PBQ',NULL),(7,'1','1','5','How to submit assignments','https://youtu.be/dYyLDsoemxI',NULL),(8,'1','2','1','Variables & Datatypes - What is a variable','https://youtu.be/nrZs76nNeNc',NULL),(9,'1','2','2','Variables & Datatypes - More about variables','https://youtu.be/0iuWpWQ0k8I',NULL),(10,'1','2','3','Variables & Datatypes - Data & Datatypes','https://youtu.be/8ywqBt41jAg',NULL),(11,'1','2','4','Variables & Datatypes - Print variables','https://youtu.be/3iEvOh1cajQ',NULL),(12,'1','2','5','Variables & Datatypes - Assignment','https://youtu.be/F_fmTPTbDMQ',NULL);
/*!40000 ALTER TABLE `videos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-04 15:31:04
