CREATE DATABASE  IF NOT EXISTS `dac` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `dac`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: localhost    Database: dac
-- ------------------------------------------------------
-- Server version	5.6.21-log

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
-- Table structure for table `course_offerings`
--

DROP TABLE IF EXISTS `course_offerings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_offerings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `course_id` int(11) NOT NULL,
  `location` varchar(45) NOT NULL,
  `company` varchar(45) DEFAULT NULL,
  `instructor_id` int(11) DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `cancelled` int(11) DEFAULT NULL,
  `entity_id` int(11) DEFAULT NULL,
  `admin_notes` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_offerings`
--

LOCK TABLES `course_offerings` WRITE;
/*!40000 ALTER TABLE `course_offerings` DISABLE KEYS */;
INSERT INTO `course_offerings` VALUES (1,'2015-01-10',1,'IBM','',3,'2015-01-10',NULL,2,NULL),(2,'2015-01-19',2,'Downtown Toronto','TD Bank',1,'2015-01-20',NULL,1,NULL),(3,'2015-01-24',4,'Cambridge Conference Centre','',1,'2015-01-25',NULL,1,NULL),(4,'2015-01-24',4,'KW','',3,'2015-01-25',NULL,1,NULL),(5,'2015-02-02',1,'IBM Innovation Centre','',3,'2015-02-04',NULL,1,NULL),(6,'2015-02-09',4,'Spadina location','',4,'2015-02-09',NULL,3,''),(7,'2015-02-02',2,'Toronto','',3,'2015-02-04',NULL,1,NULL),(8,'2015-04-01',3,'OilSpringsOntario','',1,'2015-04-03',1,NULL,NULL),(9,'2015-04-01',3,'Petrolia Ontario','',5,'2015-04-03',NULL,2,NULL),(10,'2015-02-16',1,'London','',1,'2015-02-18',NULL,1,NULL),(11,'2015-04-06',1,'Capetown, SA','',6,'2015-04-08',NULL,4,'Co-teach with Indigo instructors.'),(12,'2015-05-04',1,'Spadina location','',6,'2015-05-06',NULL,2,'Open enrollment'),(13,'2015-03-31',3,'','',1,'2015-04-01',NULL,1,'');
/*!40000 ALTER TABLE `course_offerings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_code` varchar(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `typical_length_in_days` decimal(11,2) DEFAULT NULL,
  `PDUs` int(11) DEFAULT NULL,
  `pmi_accredited` varchar(1) DEFAULT NULL,
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `course_code_UNIQUE` (`course_code`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'DA101','The Disciplined Agile Delivery;Experience Workshop',3.00,21,''),(2,'DA103','Disciplined Agile Delivery for Executives',1.00,NULL,NULL),(3,'DA104','Introduction to Disciplined Agile Delivery',2.00,14,NULL),(4,'DA105','Disciplined Agile Delivery in a Nutshell',1.00,NULL,NULL),(5,'DA206','Product Owner Workshop',2.00,14,NULL),(6,'DA301','Disciplined Agile Delivery Master Class',1.00,7,NULL),(7,'DA303','Agile Enterprise Architecture - Disciplined and Pragmatic Strategies',1.00,7,NULL),(8,'DA305','Disciplined Agile Delivery + Advisor Coaches Clinic',3.00,21,NULL),(9,'AGILE101','Introduction to Agile Concepts',0.50,NULL,NULL);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrollments`
--

DROP TABLE IF EXISTS `enrollments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enrollments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL,
  `course_offering_id` int(11) NOT NULL,
  `enrollment_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name_on_certificate` varchar(255) DEFAULT NULL,
  `admin_notes` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollments`
--

LOCK TABLES `enrollments` WRITE;
/*!40000 ALTER TABLE `enrollments` DISABLE KEYS */;
INSERT INTO `enrollments` VALUES (1,1,1,'2015-01-10 00:00:00','roddy',NULL),(2,10,5,'2015-01-27 00:00:00',NULL,NULL),(3,11,5,'2015-01-29 00:00:00',NULL,NULL),(4,12,5,'2015-01-29 00:00:00',NULL,NULL),(5,13,5,'2015-01-30 00:00:00','J. Appleseed',NULL),(6,8,6,'2015-01-30 00:00:00','Connie Bray',NULL),(8,10,6,'2015-01-30 00:00:00','K10',NULL),(12,2,6,'2015-01-30 00:00:00','D Zimmerman',NULL),(13,15,6,'2015-02-02 00:00:00','Rod Bray',NULL),(15,23,6,'2015-02-02 00:00:00','Robert Betty',NULL),(17,24,6,'2015-02-17 00:00:00','S W Ambler',NULL),(18,25,11,'2015-02-18 00:00:00','Bill Dollar',NULL),(19,26,10,'2015-02-20 00:00:00','Test Subject',NULL),(20,27,10,'2015-02-20 00:00:00','John van Boxmeer',NULL),(21,1,11,'2015-02-24 00:00:00','Roderick Bray',NULL),(22,28,6,'2015-02-24 00:00:00',' James Olsen',NULL),(23,28,6,'2015-02-25 00:00:00','Jimmy Olsen',NULL),(25,14,6,'2015-02-25 00:00:00','Donna Betty',NULL),(26,38,10,'2015-02-27 00:00:00','Johnny Appleseed II',NULL),(27,16,10,'2015-02-27 00:00:00','Rod Bray',NULL),(28,15,10,'2015-02-27 00:00:00','Rod J Bray',NULL),(29,26,10,'2015-03-02 00:00:00','Test Subject',NULL),(30,39,10,'2015-03-02 00:00:00','Jim Brown',NULL),(31,27,12,'2015-03-03 00:00:00','John van Boxmeer',NULL),(32,37,12,'2015-03-03 00:00:00','Jim Banker',NULL),(33,41,12,'2015-03-03 00:00:00','Joe New',NULL),(34,15,12,'2015-03-03 00:00:00','Rod Bray',NULL),(35,41,12,'2015-03-05 00:00:00','Joe New',NULL),(36,41,12,'2015-03-05 00:00:00','Joe New',NULL),(37,41,12,'2015-03-05 00:00:00','Joe New',NULL),(38,42,12,'2015-03-05 00:00:00','Jim New',NULL),(39,18,13,'2015-03-10 00:00:00','John Doe',NULL);
/*!40000 ALTER TABLE `enrollments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entities`
--

DROP TABLE IF EXISTS `entities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `address1` varchar(45) DEFAULT NULL,
  `address2` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `prov_state` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `postal_code` varchar(45) DEFAULT NULL,
  `dac_training` int(11) DEFAULT NULL,
  `code` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entities`
--

LOCK TABLES `entities` WRITE;
/*!40000 ALTER TABLE `entities` DISABLE KEYS */;
INSERT INTO `entities` VALUES (1,'Disciplined Agile Consortium','','','','Toronto','Ontario','Canada','',1,'DAC'),(2,'Scott Ambler & Associates','','','','Toronto','Ontario','Canada','',1,'SA+A'),(3,'TD Bank','','','','','','','',1,'TDFG'),(4,'Indigo Cube','','','','','','','',1,'Indigo');
/*!40000 ALTER TABLE `entities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `expanded_enrollments`
--

DROP TABLE IF EXISTS `expanded_enrollments`;
/*!50001 DROP VIEW IF EXISTS `expanded_enrollments`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `expanded_enrollments` (
  `id` tinyint NOT NULL,
  `person_id` tinyint NOT NULL,
  `course_offering_id` tinyint NOT NULL,
  `enrollment_date` tinyint NOT NULL,
  `name_on_certificate` tinyint NOT NULL,
  `enroll_admin_notes` tinyint NOT NULL,
  `first_name` tinyint NOT NULL,
  `last_name` tinyint NOT NULL,
  `work_email` tinyint NOT NULL,
  `student_admin_notes` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `expanded_instructors`
--

DROP TABLE IF EXISTS `expanded_instructors`;
/*!50001 DROP VIEW IF EXISTS `expanded_instructors`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `expanded_instructors` (
  `id` tinyint NOT NULL,
  `first_name` tinyint NOT NULL,
  `last_name` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faqs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_code` varchar(45) NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `answer` longtext,
  `section_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='table to hold faq entities used to generate the FAQ page';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'10','How do I enroll students in a course?','There are two ways to do this.',1),(2,'20','How do I create an ad hoc report?','Use the Report Generator.',2),(3,'15','How do I assign an Instructor?','kfkgkgvkjvkjvkjv',1),(4,'25','How do I produce Certificates?','kjhvkvkjvkjvjvjvkjvhvkjvkjvkjfidutxyvicicv',2),(5,'17','What is the difference between Courses and Course Offerings?','lknnllnvjfcgjnlknkjbkjhvhgchfc',1),(6,'05','Overview','gdxhfdxjhbnhuyggcgxhfdx',1),(7,'07','What are Instructional Organizations?','kbgcxrtklknlkmlnjnkj',1),(8,'22','How do I produce Class Lists?','trsreskjnlkjjjhvhgc',2),(9,'27','How do I select Course Offerings for Reporting?','kjhvfxgvkjnlkmlmkbjgv',2),(10,'30','Some question about reporting.','lknhgcgxkjnl',2),(11,'40','Additional Reporting topics','kjbnfxtrdkllknbkblklkbkhgcjgfcjgjbknknlnlkjnlknlknlkblk',2),(12,'42','Reporting other info.','lkkjbkjvjfxtdhgvjhbkjn',2),(13,'45','Some more Reporting info.','tftrhkb;lkmkjblh',2),(14,'50','How do I create new Courses?','lkmkbhgctdfuyvuvhggfcdx',3),(15,'55','Selecting dates','kjnfihnfvdfk fk fv',3),(16,'60','Duplicates','fvrfvrfvrf\r\nvfrfvrfvrv\r\nrfvrfvrvfrvf\r\nrfvrvrfvrfv\r\nrvfrfvrfvrfv\r\nrfvrvrfvrfv\r\nrfvrfvrfvrvf\r\nrfvrfvrfvrfvfrv\r\nrfvrfvrffrvrfv\r\nrfvrfvrfvrfvrvf\r\n',3),(17,'65','Certifying Instructors','fnvoeicokdmcoiwejcorvhnfrmodcmodc',3),(18,'70','Miscellaneous','mcijnfkcmfkmcjv',3),(19,'75','Cancelling Course Offerings','jcniejcnfkcmclkx dc fh jfi',3);
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instructors`
--

DROP TABLE IF EXISTS `instructors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instructors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` varchar(45) NOT NULL,
  `inactive` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructors`
--

LOCK TABLES `instructors` WRITE;
/*!40000 ALTER TABLE `instructors` DISABLE KEYS */;
INSERT INTO `instructors` VALUES (1,'1',NULL),(3,'7',NULL),(4,'6',1),(5,'8',NULL),(6,'24',NULL);
/*!40000 ALTER TABLE `instructors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `people`
--

DROP TABLE IF EXISTS `people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `people` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(45) DEFAULT NULL,
  `first_name` varchar(45) NOT NULL,
  `middle_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) NOT NULL,
  `salutation` varchar(45) DEFAULT NULL,
  `work_phone` varchar(45) DEFAULT NULL,
  `home_phone` varchar(45) DEFAULT NULL,
  `mobile_phone` varchar(45) DEFAULT NULL,
  `work_email` varchar(255) DEFAULT NULL,
  `personal_email` varchar(255) DEFAULT NULL,
  `admin_notes` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  FULLTEXT KEY `text_index` (`first_name`,`middle_name`,`last_name`,`work_email`,`personal_email`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people`
--

LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;
INSERT INTO `people` VALUES (1,'','Rod','John','Bray','Mr.','','','','rbray@somedomain.ca','',''),(2,'','Rod','John','Zimmerman','Mr.','','','','dzim@hotmail.com','',''),(4,'','Rod','John','Manner','Mr.','','','','manners@bigcorp.com','',''),(5,'','Fred','','Fanacapan','Mr.','','','','fred@bedrock.edu','',''),(6,'','Bill','','Brandon','','','','','bbrandon@gmail.com','',NULL),(7,'','Glenny','David','Little','Mr.','','','','glen.little@scottambler.com','',NULL),(8,'','Connie','S','Bray','','','','','sbray@tvdsb.com','',NULL),(9,'','Siobhan','','Ye','','','','','sye&yahoo.ca','',NULL),(10,'','Kristen','Tracy','Betty','','','','','k10tb@gmail.com','',NULL),(11,'','Mary','Quite','Contrary','','','','','maryc@contrary.com','',NULL),(12,'','Peter','','Pepper','','','','','ppepper@peck.com','',NULL),(13,'','Johnny','','Appleseed','','','','','japple@seed.com','','Testing edit capability.\r\nAgain.'),(14,'','Donna','','Betty','','','','','donna.betty@gmail.com','',''),(15,'','Rod','John','Bray','','','','','rod.bray@scottambler.com','',''),(16,'','Rod','','Bray','','','','','rod.bray@yahoo.com','',''),(17,'','John','','Smith','','','','','smith@gmail.com','',NULL),(18,'','John','','Doe','','(519)444-1125','','','jdoe@gmail.com','',''),(19,'','Betty','','Boop','','(705)787-9900','','','bboop@hotmail.com','',NULL),(20,'','Siobhan','','Bray','','(519)455-3224','','','sbray@yahoo.ca','',NULL),(21,'','Sarah','','Bray','','(226)456-1876','','','sebray@yahoo.com','',NULL),(22,'','Bob','','Betty','','(519)444-1125','','','bbetty@gmail.com','','testing'),(23,'','Bob','','betty','','(226)456-1876','','','dbetty@gmail.com','',NULL),(24,'','Scott','','Ambler','','','','','scott@scottambler.com','',NULL),(25,'','Bill','','Dollar','','','','','bdollar@bigbank.com','',NULL),(26,'','Test','','Subject','','','','','tsubject@hotmail.com','',''),(27,'','John','','van Boxmeer','','','','','jvanboxmeer@hotmail.com','',''),(29,'','Alex','','Britain','','','','','alex.gray@radtac.co.uk','',NULL),(30,'','Vince','','Ryan','','','','','vince@valuedrivensoftware.com','',NULL),(31,'','Jimi','','Hendrix',NULL,'','','','jimi.hendrix@unknown.com','',''),(32,'','John','','Johnson',NULL,'','','','john@unknown.com','',''),(33,'','Jim','','Dummy',NULL,'','','','dummy@somedomain.co.ul','',''),(34,'','John','','Two',NULL,'','','','john2@unknown.com','',''),(35,'','Benjamin','','Franklin',NULL,'','','','bfranklin@revolutionary.com','','Trail add new with enrollment'),(37,'','Jim','','Banker',NULL,'','','','jim@td.com','','Test of email validation relaxation\r\nAnd now testing redirect from enrollment back to \'getWorkEmail\''),(38,'','Johnny','','Appleseed II',NULL,'','','','j2apple@seed.com','','More testing'),(39,'','Jim','','Brown',NULL,'','','','jbrown@gmail.com','','maybe the greatest running back of all time'),(40,'','Walter','','Payton',NULL,'','','','wpayton@nfl.com','','maybe better than Jim Brown'),(41,'','Joe','','New',NULL,'','','','joenew@somewhere.ca','','testing the redirect'),(42,'','Jim','','New',NULL,'','','','jimnew@someplace.ca','','testing notification of Existing vs New');
/*!40000 ALTER TABLE `people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_code` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sections`
--

LOCK TABLES `sections` WRITE;
/*!40000 ALTER TABLE `sections` DISABLE KEYS */;
INSERT INTO `sections` VALUES (1,'10','Basic'),(2,'20','Reports'),(3,'30','Administration');
/*!40000 ALTER TABLE `sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'dac'
--

--
-- Dumping routines for database 'dac'
--

--
-- Final view structure for view `expanded_enrollments`
--

/*!50001 DROP TABLE IF EXISTS `expanded_enrollments`*/;
/*!50001 DROP VIEW IF EXISTS `expanded_enrollments`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `expanded_enrollments` AS (select `enrollment`.`id` AS `id`,`enrollment`.`person_id` AS `person_id`,`enrollment`.`course_offering_id` AS `course_offering_id`,`enrollment`.`enrollment_date` AS `enrollment_date`,`enrollment`.`name_on_certificate` AS `name_on_certificate`,`enrollment`.`admin_notes` AS `enroll_admin_notes`,`student`.`first_name` AS `first_name`,`student`.`last_name` AS `last_name`,`student`.`work_email` AS `work_email`,`student`.`admin_notes` AS `student_admin_notes` from (`enrollments` `enrollment` left join `people` `student` on((`enrollment`.`person_id` = `student`.`id`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `expanded_instructors`
--

/*!50001 DROP TABLE IF EXISTS `expanded_instructors`*/;
/*!50001 DROP VIEW IF EXISTS `expanded_instructors`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `expanded_instructors` AS (select `instructor`.`id` AS `id`,`person`.`first_name` AS `first_name`,`person`.`last_name` AS `last_name` from (`instructors` `instructor` join `people` `person` on((`instructor`.`person_id` = `person`.`id`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-01 10:08:52
