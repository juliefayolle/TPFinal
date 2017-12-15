-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: laravel
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

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
-- Table structure for table `availabilities`
--

DROP TABLE IF EXISTS `availabilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `availabilities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `availability` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `availabilities`
--

LOCK TABLES `availabilities` WRITE;
/*!40000 ALTER TABLE `availabilities` DISABLE KEYS */;
INSERT INTO `availabilities` VALUES (1,'Oui'),(2,'Non');
/*!40000 ALTER TABLE `availabilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gender_sound`
--

DROP TABLE IF EXISTS `gender_sound`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gender_sound` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gender_id` varchar(45) NOT NULL,
  `sound_id` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gender_sound`
--

LOCK TABLES `gender_sound` WRITE;
/*!40000 ALTER TABLE `gender_sound` DISABLE KEYS */;
INSERT INTO `gender_sound` VALUES (4,'4','9'),(5,'4','10'),(6,'31','11'),(8,'27','13'),(37,'25','20'),(38,'27','20'),(39,'9','21'),(40,'17','21'),(41,'25','22'),(42,'20','23'),(43,'25','24'),(44,'25','25'),(45,'25','26'),(46,'4','27'),(47,'31','27'),(48,'4','14'),(49,'25','28'),(50,'6','29'),(51,'7','29'),(52,'17','29'),(53,'25','30'),(54,'27','30');
/*!40000 ALTER TABLE `gender_sound` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genders`
--

DROP TABLE IF EXISTS `genders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gender` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genders`
--

LOCK TABLES `genders` WRITE;
/*!40000 ALTER TABLE `genders` DISABLE KEYS */;
INSERT INTO `genders` VALUES (1,'Blues'),(2,'Chants populaires'),(3,'Comédie Musicale'),(4,'Chanson francaise'),(5,'Chorale'),(6,'Country'),(7,'Dance'),(8,'Dub'),(9,'Electro'),(10,'Folk'),(11,'Funk'),(12,'Gospel'),(13,'Gothic'),(14,'Groove'),(15,'Hard rock'),(16,'Hardcore'),(17,'House'),(18,'Hip hop'),(19,'Jazz'),(20,'Latino'),(21,'Métal'),(22,'Classique'),(23,'Orientale'),(24,'Opéra'),(25,'Pop'),(26,'Reggae'),(27,'Rock'),(28,'Techno'),(29,'Slow'),(30,'Soul'),(31,'Variétés'),(32,'Zouk');
/*!40000 ALTER TABLE `genders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sounds`
--

DROP TABLE IF EXISTS `sounds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sounds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `singer` varchar(45) DEFAULT NULL,
  `release` int(11) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `availability_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sounds`
--

LOCK TABLES `sounds` WRITE;
/*!40000 ALTER TABLE `sounds` DISABLE KEYS */;
INSERT INTO `sounds` VALUES (9,'Ne me quitte pas','Jacques Brel',1972,'20',1),(10,'Mistral gagnant','Renaud',1985,'20',1),(11,'L\'hymne à l\'amour','Edith Piaf',1950,'20',1),(13,'Le vent nous portera','Noir Désir',2001,'20',1),(14,'La vie en rose','Edith Piaf',1945,'20',2),(20,'Love on the brain','Rihanna',2016,'20',1),(21,'Alone','Alan Walker',2016,'20',1),(22,'Chantaje','Shakira ft. Maluma',2016,'20',1),(23,'Despacito','Luis Fonsi ft. Daddy Yankee',2017,'20',1),(24,'Shape of you','Ed Sheeran',2017,'20',1),(25,'Perfect','Ed Sheeran',2017,'20',1),(26,'The greatest','Sia',2016,'20',1),(27,'Je m\'en vais','Vianney',2016,'20',1),(28,'Million eyes','Loïc Nottet',2017,'20',1),(29,'Be mine','Ofenbach',2017,'20',1),(30,'Believer','Imagine Dragons',2017,'20',1);
/*!40000 ALTER TABLE `sounds` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-15 15:18:17
-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: laravel
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

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
-- Table structure for table `availabilities`
--

DROP TABLE IF EXISTS `availabilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `availabilities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `availability` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `availabilities`
--

LOCK TABLES `availabilities` WRITE;
/*!40000 ALTER TABLE `availabilities` DISABLE KEYS */;
INSERT INTO `availabilities` VALUES (1,'Oui'),(2,'Non');
/*!40000 ALTER TABLE `availabilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gender_sound`
--

DROP TABLE IF EXISTS `gender_sound`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gender_sound` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gender_id` varchar(45) NOT NULL,
  `sound_id` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gender_sound`
--

LOCK TABLES `gender_sound` WRITE;
/*!40000 ALTER TABLE `gender_sound` DISABLE KEYS */;
INSERT INTO `gender_sound` VALUES (4,'4','9'),(5,'4','10'),(6,'31','11'),(8,'27','13'),(37,'25','20'),(38,'27','20'),(39,'9','21'),(40,'17','21'),(41,'25','22'),(42,'20','23'),(43,'25','24'),(44,'25','25'),(45,'25','26'),(46,'4','27'),(47,'31','27'),(48,'4','14'),(49,'25','28'),(50,'6','29'),(51,'7','29'),(52,'17','29'),(53,'25','30'),(54,'27','30');
/*!40000 ALTER TABLE `gender_sound` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genders`
--

DROP TABLE IF EXISTS `genders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gender` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genders`
--

LOCK TABLES `genders` WRITE;
/*!40000 ALTER TABLE `genders` DISABLE KEYS */;
INSERT INTO `genders` VALUES (1,'Blues'),(2,'Chants populaires'),(3,'Comédie Musicale'),(4,'Chanson francaise'),(5,'Chorale'),(6,'Country'),(7,'Dance'),(8,'Dub'),(9,'Electro'),(10,'Folk'),(11,'Funk'),(12,'Gospel'),(13,'Gothic'),(14,'Groove'),(15,'Hard rock'),(16,'Hardcore'),(17,'House'),(18,'Hip hop'),(19,'Jazz'),(20,'Latino'),(21,'Métal'),(22,'Classique'),(23,'Orientale'),(24,'Opéra'),(25,'Pop'),(26,'Reggae'),(27,'Rock'),(28,'Techno'),(29,'Slow'),(30,'Soul'),(31,'Variétés'),(32,'Zouk');
/*!40000 ALTER TABLE `genders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sounds`
--

DROP TABLE IF EXISTS `sounds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sounds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `singer` varchar(45) DEFAULT NULL,
  `release` int(11) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `availability_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sounds`
--

LOCK TABLES `sounds` WRITE;
/*!40000 ALTER TABLE `sounds` DISABLE KEYS */;
INSERT INTO `sounds` VALUES (9,'Ne me quitte pas','Jacques Brel',1972,'20',1),(10,'Mistral gagnant','Renaud',1985,'20',1),(11,'L\'hymne à l\'amour','Edith Piaf',1950,'20',1),(13,'Le vent nous portera','Noir Désir',2001,'20',1),(14,'La vie en rose','Edith Piaf',1945,'20',2),(20,'Love on the brain','Rihanna',2016,'20',1),(21,'Alone','Alan Walker',2016,'20',1),(22,'Chantaje','Shakira ft. Maluma',2016,'20',1),(23,'Despacito','Luis Fonsi ft. Daddy Yankee',2017,'20',1),(24,'Shape of you','Ed Sheeran',2017,'20',1),(25,'Perfect','Ed Sheeran',2017,'20',1),(26,'The greatest','Sia',2016,'20',1),(27,'Je m\'en vais','Vianney',2016,'20',1),(28,'Million eyes','Loïc Nottet',2017,'20',1),(29,'Be mine','Ofenbach',2017,'20',1),(30,'Believer','Imagine Dragons',2017,'20',1);
/*!40000 ALTER TABLE `sounds` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-15 15:18:31
