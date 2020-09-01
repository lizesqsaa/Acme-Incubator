-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: acme-incubator
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `accounting_record`
--

DROP TABLE IF EXISTS `accounting_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounting_record` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `body` varchar(255) DEFAULT NULL,
  `creation_moment` datetime(6) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `bookkeeper_id` int(11) NOT NULL,
  `investment_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK41jm4vk7runvmg5tderffrele` (`bookkeeper_id`),
  KEY `FKcggg8hcmhohhlaeka6ov3thfh` (`investment_id`),
  CONSTRAINT `FK41jm4vk7runvmg5tderffrele` FOREIGN KEY (`bookkeeper_id`) REFERENCES `bookkeeper` (`id`),
  CONSTRAINT `FKcggg8hcmhohhlaeka6ov3thfh` FOREIGN KEY (`investment_id`) REFERENCES `investment` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounting_record`
--

LOCK TABLES `accounting_record` WRITE;
/*!40000 ALTER TABLE `accounting_record` DISABLE KEYS */;
INSERT INTO `accounting_record` VALUES (244,0,'This is a body: ヾ｜*￣ー￣｜*￣ー￣｜/”　　ヾ｜*￣∇￣*｜','2000-11-11 13:30:00.000000','PUBLISHED','Accounting Record 01',239,233),(245,0,'This is the same body: ヾ｜*￣ー￣｜*￣ー￣｜/”　　ヾ｜*￣∇￣*｜','2010-11-10 23:30:00.000000','DRAFT','Accounting Record 02',242,234);
/*!40000 ALTER TABLE `accounting_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `budget_amount` double DEFAULT NULL,
  `budget_currency` varchar(255) DEFAULT NULL,
  `end` datetime(6) DEFAULT NULL,
  `start` datetime(6) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `investment_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8cnxt6m91noqrbuk63luhvebv` (`investment_id`),
  CONSTRAINT `FK8cnxt6m91noqrbuk63luhvebv` FOREIGN KEY (`investment_id`) REFERENCES `investment` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity`
--

LOCK TABLES `activity` WRITE;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
INSERT INTO `activity` VALUES (246,0,234.99,'€','2020-09-22 22:00:00.000000','2020-07-26 22:00:00.000000','Activity 1',233),(247,0,156,'€','2020-09-29 22:00:00.000000','2020-06-11 22:00:00.000000','Activity 2',233),(248,0,234.99,'€','2020-09-22 22:00:00.000000','2020-07-26 22:00:00.000000','Activity 3',234),(249,0,156,'€','2020-09-29 22:00:00.000000','2020-06-11 22:00:00.000000','Activity 4',234);
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administrator`
--

DROP TABLE IF EXISTS `administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrator` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `user_account_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_2a5vcjo3stlfcwadosjfq49l1` (`user_account_id`),
  CONSTRAINT `FK_2a5vcjo3stlfcwadosjfq49l1` FOREIGN KEY (`user_account_id`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator`
--

LOCK TABLES `administrator` WRITE;
/*!40000 ALTER TABLE `administrator` DISABLE KEYS */;
INSERT INTO `administrator` VALUES (4,0,3);
/*!40000 ALTER TABLE `administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anonymous`
--

DROP TABLE IF EXISTS `anonymous`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anonymous` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `user_account_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_6lnbc6fo3om54vugoh8icg78m` (`user_account_id`),
  CONSTRAINT `FK_6lnbc6fo3om54vugoh8icg78m` FOREIGN KEY (`user_account_id`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anonymous`
--

LOCK TABLES `anonymous` WRITE;
/*!40000 ALTER TABLE `anonymous` DISABLE KEYS */;
INSERT INTO `anonymous` VALUES (2,0,1);
/*!40000 ALTER TABLE `anonymous` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `application`
--

DROP TABLE IF EXISTS `application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `application` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `creation_moment` datetime(6) DEFAULT NULL,
  `offer_amount` double DEFAULT NULL,
  `offer_currency` varchar(255) DEFAULT NULL,
  `statement` varchar(255) DEFAULT NULL,
  `ticker` varchar(255) DEFAULT NULL,
  `investment_round_id` int(11) NOT NULL,
  `investor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK30l9w5a7tidtoccodjps8rane` (`investment_round_id`),
  KEY `FKl4fp0cd8c008ma79n6w58xhk9` (`investor_id`),
  CONSTRAINT `FK30l9w5a7tidtoccodjps8rane` FOREIGN KEY (`investment_round_id`) REFERENCES `investment` (`id`),
  CONSTRAINT `FKl4fp0cd8c008ma79n6w58xhk9` FOREIGN KEY (`investor_id`) REFERENCES `investor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application`
--

LOCK TABLES `application` WRITE;
/*!40000 ALTER TABLE `application` DISABLE KEYS */;
INSERT INTO `application` VALUES (250,0,'2000-11-11 13:30:00.000000',15000.5,'€','Statement 1','AAA-99-090909',233,236),(251,0,'2000-11-11 13:30:00.000000',15000.5,'€','Statement 1','AAB-99-090909',234,236);
/*!40000 ALTER TABLE `application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authenticated`
--

DROP TABLE IF EXISTS `authenticated`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authenticated` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `user_account_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_h52w0f3wjoi68b63wv9vwon57` (`user_account_id`),
  CONSTRAINT `FK_h52w0f3wjoi68b63wv9vwon57` FOREIGN KEY (`user_account_id`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authenticated`
--

LOCK TABLES `authenticated` WRITE;
/*!40000 ALTER TABLE `authenticated` DISABLE KEYS */;
INSERT INTO `authenticated` VALUES (5,0,3);
/*!40000 ALTER TABLE `authenticated` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `cvv` varchar(255) DEFAULT NULL,
  `expiration_date` varchar(255) DEFAULT NULL,
  `holder` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `slogan` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner`
--

LOCK TABLES `banner` WRITE;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_keeper_request`
--

DROP TABLE IF EXISTS `book_keeper_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_keeper_request` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `firm_name` varchar(255) DEFAULT NULL,
  `responsibility_statement` varchar(3000) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `user_account_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_sljl5qffng42pku9vux2t2fp0` (`user_account_id`),
  CONSTRAINT `FK5ix9bq8a7nw05wh16k3cua620` FOREIGN KEY (`user_account_id`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_keeper_request`
--

LOCK TABLES `book_keeper_request` WRITE;
/*!40000 ALTER TABLE `book_keeper_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `book_keeper_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookkeeper`
--

DROP TABLE IF EXISTS `bookkeeper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookkeeper` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `user_account_id` int(11) DEFAULT NULL,
  `firm_name` varchar(255) DEFAULT NULL,
  `responsability_statement` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_krvjp9eaqyapewl2igugbo9o8` (`user_account_id`),
  CONSTRAINT `FK_krvjp9eaqyapewl2igugbo9o8` FOREIGN KEY (`user_account_id`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookkeeper`
--

LOCK TABLES `bookkeeper` WRITE;
/*!40000 ALTER TABLE `bookkeeper` DISABLE KEYS */;
INSERT INTO `bookkeeper` VALUES (239,0,238,'Bookkeeper co.','It\'s my responsability, it\'s my war'),(242,0,241,'Bookkeeper 2 co.','It\'s my responsability, it\'s my war, again...');
/*!40000 ALTER TABLE `bookkeeper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `challenge`
--

DROP TABLE IF EXISTS `challenge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `challenge` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `average_goal` varchar(255) DEFAULT NULL,
  `average_reward_amount` double DEFAULT NULL,
  `average_reward_currency` varchar(255) DEFAULT NULL,
  `deadline` datetime(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `expert_goal` varchar(255) DEFAULT NULL,
  `expert_reward_amount` double DEFAULT NULL,
  `expert_reward_currency` varchar(255) DEFAULT NULL,
  `rookie_goal` varchar(255) DEFAULT NULL,
  `rookie_reward_amount` double DEFAULT NULL,
  `rookie_reward_currency` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `challenge`
--

LOCK TABLES `challenge` WRITE;
/*!40000 ALTER TABLE `challenge` DISABLE KEYS */;
/*!40000 ALTER TABLE `challenge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumer`
--

DROP TABLE IF EXISTS `consumer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consumer` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `user_account_id` int(11) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `sector` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_6cyha9f1wpj0dpbxrrjddrqed` (`user_account_id`),
  CONSTRAINT `FK_6cyha9f1wpj0dpbxrrjddrqed` FOREIGN KEY (`user_account_id`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumer`
--

LOCK TABLES `consumer` WRITE;
/*!40000 ALTER TABLE `consumer` DISABLE KEYS */;
/*!40000 ALTER TABLE `consumer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customisation`
--

DROP TABLE IF EXISTS `customisation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customisation` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `activity_sectors` varchar(255) DEFAULT NULL,
  `spam` varchar(255) DEFAULT NULL,
  `threshold` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customisation`
--

LOCK TABLES `customisation` WRITE;
/*!40000 ALTER TABLE `customisation` DISABLE KEYS */;
/*!40000 ALTER TABLE `customisation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donaire_bulletin`
--

DROP TABLE IF EXISTS `donaire_bulletin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donaire_bulletin` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `moment` datetime(6) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donaire_bulletin`
--

LOCK TABLES `donaire_bulletin` WRITE;
/*!40000 ALTER TABLE `donaire_bulletin` DISABLE KEYS */;
INSERT INTO `donaire_bulletin` VALUES (7,0,'Carlos Ruiz Zafón','2020-05-01 19:00:00.000000','La sombra del viento');
/*!40000 ALTER TABLE `donaire_bulletin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entrepreneur`
--

DROP TABLE IF EXISTS `entrepreneur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entrepreneur` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `user_account_id` int(11) DEFAULT NULL,
  `qualifications` varchar(255) DEFAULT NULL,
  `sector` varchar(255) DEFAULT NULL,
  `skills` varchar(255) DEFAULT NULL,
  `start_up_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_r6tqltqvrlh1cyy8rsj5pev1q` (`user_account_id`),
  CONSTRAINT `FK_r6tqltqvrlh1cyy8rsj5pev1q` FOREIGN KEY (`user_account_id`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrepreneur`
--

LOCK TABLES `entrepreneur` WRITE;
/*!40000 ALTER TABLE `entrepreneur` DISABLE KEYS */;
INSERT INTO `entrepreneur` VALUES (226,0,225,'Qualifications 1','Sector 1','Skills 1','Entrepreneur 1, Inc.'),(229,0,228,'Qualifications 2','Sector 2','Skills 2','Entrepreneur 2, Inc.'),(231,0,224,'University','Informatic','Too high','Entrepreneur01');
/*!40000 ALTER TABLE `entrepreneur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fernandez_bulletin`
--

DROP TABLE IF EXISTS `fernandez_bulletin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fernandez_bulletin` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `moment` datetime(6) DEFAULT NULL,
  `name_character` varchar(255) DEFAULT NULL,
  `skills` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fernandez_bulletin`
--

LOCK TABLES `fernandez_bulletin` WRITE;
/*!40000 ALTER TABLE `fernandez_bulletin` DISABLE KEYS */;
INSERT INTO `fernandez_bulletin` VALUES (8,0,'2020-03-01 20:00:00.000000','Solaire','The power of sunlight');
/*!40000 ALTER TABLE `fernandez_bulletin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forum` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `users` varchar(255) DEFAULT NULL,
  `investment_round_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKq8ggcjgl5by5gf6l5bji632hu` (`investment_round_id`),
  CONSTRAINT `FKq8ggcjgl5by5gf6l5bji632hu` FOREIGN KEY (`investment_round_id`) REFERENCES `investment_round` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (69,0,'Forum 1','entrepreneur1,investor2',49),(70,0,'Forum 2','entrepreneur2,investor1',50),(71,0,'Forum 3','entrepreneur1,entrepreneur2,investor1,investor2',51);
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gonzalez_bulletin`
--

DROP TABLE IF EXISTS `gonzalez_bulletin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gonzalez_bulletin` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `director` varchar(255) DEFAULT NULL,
  `moment` datetime(6) DEFAULT NULL,
  `movie` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gonzalez_bulletin`
--

LOCK TABLES `gonzalez_bulletin` WRITE;
/*!40000 ALTER TABLE `gonzalez_bulletin` DISABLE KEYS */;
INSERT INTO `gonzalez_bulletin` VALUES (10,0,'Christopher Nolan','2020-07-10 15:00:00.000000','Interstellar');
/*!40000 ALTER TABLE `gonzalez_bulletin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (6);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inquire`
--

DROP TABLE IF EXISTS `inquire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inquire` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `creation_moment` datetime(6) DEFAULT NULL,
  `deadline` datetime(6) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `max_money_amount` double DEFAULT NULL,
  `max_money_currency` varchar(255) DEFAULT NULL,
  `min_money_amount` double DEFAULT NULL,
  `min_money_currency` varchar(255) DEFAULT NULL,
  `paragraphs` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inquire`
--

LOCK TABLES `inquire` WRITE;
/*!40000 ALTER TABLE `inquire` DISABLE KEYS */;
/*!40000 ALTER TABLE `inquire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inquirie`
--

DROP TABLE IF EXISTS `inquirie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inquirie` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `creation_date` datetime(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `end_date` datetime(6) DEFAULT NULL,
  `max_money_amount` double DEFAULT NULL,
  `max_money_currency` varchar(255) DEFAULT NULL,
  `min_money_amount` double DEFAULT NULL,
  `min_money_currency` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inquirie`
--

LOCK TABLES `inquirie` WRITE;
/*!40000 ALTER TABLE `inquirie` DISABLE KEYS */;
INSERT INTO `inquirie` VALUES (16,0,'2020-07-20 15:00:00.000000','this is the first inquire.','inquire@gmail.com','2020-12-10 16:00:00.000000',100.23,'€',20.23,'€','my first inquirie'),(17,0,'2020-06-20 15:00:00.000000','this is the second inquire.','inquire2@gmail.com','2020-12-11 16:00:00.000000',400.23,'€',20.24,'€','my second inquirie');
/*!40000 ALTER TABLE `inquirie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `investment`
--

DROP TABLE IF EXISTS `investment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `investment` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `additional_information` varchar(255) DEFAULT NULL,
  `amount_amount` double DEFAULT NULL,
  `amount_currency` varchar(255) DEFAULT NULL,
  `creation_moment` datetime(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `round_kind` int(11) DEFAULT NULL,
  `ticker` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `entrepreneur_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDXrk46ejdphqrewdo2fqltdufux` (`ticker`),
  KEY `FKk1kua11epb11pnocw4pcgndn1` (`entrepreneur_id`),
  CONSTRAINT `FKk1kua11epb11pnocw4pcgndn1` FOREIGN KEY (`entrepreneur_id`) REFERENCES `entrepreneur` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `investment`
--

LOCK TABLES `investment` WRITE;
/*!40000 ALTER TABLE `investment` DISABLE KEYS */;
INSERT INTO `investment` VALUES (233,0,'http://additionalexample.com',300,'€','2020-07-26 22:00:00.000000','This is the description of the investment',1,'FNB-09-732312','Sample investment 01',231),(234,0,'http://additionalexample.com',300,'€','2020-01-26 23:00:00.000000','This is the description of the investment',1,'FNA-09-732312','Sample investment 02',231);
/*!40000 ALTER TABLE `investment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `investment_round`
--

DROP TABLE IF EXISTS `investment_round`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `investment_round` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `amount_money_amount` double DEFAULT NULL,
  `amount_money_currency` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `final_mode` bit(1) DEFAULT NULL,
  `kind_round` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `moment` datetime(6) DEFAULT NULL,
  `ticker` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `entrepreneur_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_g31yqkckem05dgslpjk4my8t9` (`title`),
  KEY `FKkj1l8c2ftn9c65y061me6t37j` (`entrepreneur_id`),
  CONSTRAINT `FKkj1l8c2ftn9c65y061me6t37j` FOREIGN KEY (`entrepreneur_id`) REFERENCES `entrepreneur` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `investment_round`
--

LOCK TABLES `investment_round` WRITE;
/*!40000 ALTER TABLE `investment_round` DISABLE KEYS */;
INSERT INTO `investment_round` VALUES (49,0,1000,'€','Description 1',_binary '\0','ANGEL','','2018-12-11 11:20:00.000000','SCI-18-135790','Title 1',38),(50,0,500,'€','Description 2',_binary '','SEED','','2019-10-11 08:00:00.000000','SCI-19-654321','Title 2',38),(51,0,800,'€','Description 3',_binary '','BRIDGE','','2020-01-10 08:30:00.000000','TEC-20-147038','Title 3',41),(52,0,700,'€','Description 4',NULL,'BRIDGE','','2019-01-10 08:30:00.000000','SCI-20-124538','Title 4',41);
/*!40000 ALTER TABLE `investment_round` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `investor`
--

DROP TABLE IF EXISTS `investor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `investor` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `user_account_id` int(11) DEFAULT NULL,
  `firm_name` varchar(255) DEFAULT NULL,
  `profile` varchar(255) DEFAULT NULL,
  `sector` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_dcek5rr514s3rww0yy57vvnpq` (`user_account_id`),
  CONSTRAINT `FK_dcek5rr514s3rww0yy57vvnpq` FOREIGN KEY (`user_account_id`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `investor`
--

LOCK TABLES `investor` WRITE;
/*!40000 ALTER TABLE `investor` DISABLE KEYS */;
INSERT INTO `investor` VALUES (236,0,235,'Investor co.','profile 1','Sector 1');
/*!40000 ALTER TABLE `investor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jimenez_bulletin`
--

DROP TABLE IF EXISTS `jimenez_bulletin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jimenez_bulletin` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `hero_name` varchar(255) DEFAULT NULL,
  `moment` datetime(6) DEFAULT NULL,
  `phrase` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jimenez_bulletin`
--

LOCK TABLES `jimenez_bulletin` WRITE;
/*!40000 ALTER TABLE `jimenez_bulletin` DISABLE KEYS */;
INSERT INTO `jimenez_bulletin` VALUES (6,0,'Thanos','2020-01-20 09:00:00.000000','Yo soy inevitable');
/*!40000 ALTER TABLE `jimenez_bulletin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marin_bulletin`
--

DROP TABLE IF EXISTS `marin_bulletin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marin_bulletin` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `moment` datetime(6) DEFAULT NULL,
  `web` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marin_bulletin`
--

LOCK TABLES `marin_bulletin` WRITE;
/*!40000 ALTER TABLE `marin_bulletin` DISABLE KEYS */;
INSERT INTO `marin_bulletin` VALUES (9,0,'Página de una tienda de videojuegos.','2020-02-01 20:00:00.000000','https://www.game.es/');
/*!40000 ALTER TABLE `marin_bulletin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `body` varchar(255) DEFAULT NULL,
  `moment` datetime(6) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `forum_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKfwwpivgx5j4vw4594dgrw884q` (`forum_id`),
  KEY `FKik4epe9dp5q6uenarfyia7xin` (`user_id`),
  CONSTRAINT `FKfwwpivgx5j4vw4594dgrw884q` FOREIGN KEY (`forum_id`) REFERENCES `forum` (`id`),
  CONSTRAINT `FKik4epe9dp5q6uenarfyia7xin` FOREIGN KEY (`user_id`) REFERENCES `authenticated` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (72,0,'Body message 1','2020-01-01 19:00:00.000000','','Message 1',69,39),(73,0,'Body message 2','2020-01-02 09:00:00.000000','tag1','Message 2',69,48),(74,0,'Body message 3','2020-01-02 19:00:00.000000','','Message 3',69,42),(75,0,'Body message 1','2019-10-20 09:00:00.000000','','Message 1',70,45),(76,0,'Body message 2','2019-11-10 14:00:00.000000','','Message 2',70,42),(77,0,'Body message 1','2020-03-01 09:00:00.000000','','Message 1',71,39),(78,0,'Body message 2','2020-03-02 19:30:00.000000','','Message 2',71,48),(79,0,'Body message 3','2020-03-06 08:00:00.000000','','Message 3',71,42),(80,0,'Body message 4','2020-03-20 10:00:00.000000','','Message 4',71,45),(81,0,'Body message 5','2020-03-23 14:00:00.000000','','Message 5',71,42);
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `body` varchar(255) DEFAULT NULL,
  `deadline` datetime(6) DEFAULT NULL,
  `header_picture` varchar(255) DEFAULT NULL,
  `related_notices` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `overture`
--

DROP TABLE IF EXISTS `overture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `overture` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `creation_date` datetime(6) DEFAULT NULL,
  `deadline` datetime(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `max_money_amount` double DEFAULT NULL,
  `max_money_currency` varchar(255) DEFAULT NULL,
  `min_money_amount` double DEFAULT NULL,
  `min_money_currency` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `overture`
--

LOCK TABLES `overture` WRITE;
/*!40000 ALTER TABLE `overture` DISABLE KEYS */;
/*!40000 ALTER TABLE `overture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patron`
--

DROP TABLE IF EXISTS `patron`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patron` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `user_account_id` int(11) DEFAULT NULL,
  `cvv` varchar(255) DEFAULT NULL,
  `month_expiration` int(11) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `organisation` varchar(255) DEFAULT NULL,
  `year_expiration` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_8xx5nujhuio3advxc2freyu65` (`user_account_id`),
  CONSTRAINT `FK_8xx5nujhuio3advxc2freyu65` FOREIGN KEY (`user_account_id`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patron`
--

LOCK TABLES `patron` WRITE;
/*!40000 ALTER TABLE `patron` DISABLE KEYS */;
INSERT INTO `patron` VALUES (30,0,29,'0325',7,'4532967236138706','Organisation 1',2022),(33,0,32,'639',12,'4508471412089379','Organisation 2',2023);
/*!40000 ALTER TABLE `patron` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provider`
--

DROP TABLE IF EXISTS `provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provider` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `user_account_id` int(11) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `sector` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_b1gwnjqm6ggy9yuiqm0o4rlmd` (`user_account_id`),
  CONSTRAINT `FK_b1gwnjqm6ggy9yuiqm0o4rlmd` FOREIGN KEY (`user_account_id`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provider`
--

LOCK TABLES `provider` WRITE;
/*!40000 ALTER TABLE `provider` DISABLE KEYS */;
/*!40000 ALTER TABLE `provider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `technology`
--

DROP TABLE IF EXISTS `technology`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `technology` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `activity_sector` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `indication` varchar(255) DEFAULT NULL,
  `inventor_name` varchar(255) DEFAULT NULL,
  `stars` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `web_site` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `technology`
--

LOCK TABLES `technology` WRITE;
/*!40000 ALTER TABLE `technology` DISABLE KEYS */;
INSERT INTO `technology` VALUES (11,0,'Sector 1','Description 1','email1@gmail.com','closed-source','Name 1',3,'Title 1','https://www.website1.com/'),(12,0,'Sector 2','Description 2','email2@gmail.com','open-source','Name 2',-5,'Title 2','https://www.website2.com/'),(13,0,'Sector 3','Description 3','email3@gmail.com','open-source','Name 3',NULL,'Title 3','https://www.website3.com/');
/*!40000 ALTER TABLE `technology` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `technology_record`
--

DROP TABLE IF EXISTS `technology_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `technology_record` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `activity_sector` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `inventor` varchar(255) DEFAULT NULL,
  `source` bit(1) DEFAULT NULL,
  `stars` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `web` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `technology_record`
--

LOCK TABLES `technology_record` WRITE;
/*!40000 ALTER TABLE `technology_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `technology_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tool`
--

DROP TABLE IF EXISTS `tool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tool` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `inventor_name` varchar(255) DEFAULT NULL,
  `is_open_source` bit(1) DEFAULT NULL,
  `sector` varchar(255) DEFAULT NULL,
  `stars_number` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tool`
--

LOCK TABLES `tool` WRITE;
/*!40000 ALTER TABLE `tool` DISABLE KEYS */;
/*!40000 ALTER TABLE `tool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tool_record`
--

DROP TABLE IF EXISTS `tool_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tool_record` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `indication` varchar(255) DEFAULT NULL,
  `inventor` varchar(255) DEFAULT NULL,
  `sector` varchar(255) DEFAULT NULL,
  `stars` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `web` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tool_record`
--

LOCK TABLES `tool_record` WRITE;
/*!40000 ALTER TABLE `tool_record` DISABLE KEYS */;
INSERT INTO `tool_record` VALUES (24,0,'This is a description 1','email1@gmail.com','open-source','Inventor 1','Sector 1',2,'Tool Record 1','https://www.website1.com/'),(25,0,'This is a description 2','email2@gmail.com','closed-source','Inventor 2','Sector 2',-3,'Tool Record 2','https://www.website2.com/'),(26,0,'This is a description 3','email3@gmail.com','open-source','Inventor 3','Sector 3',5,'Tool Record 3','https://www.website3.com/'),(27,0,'This is a description 4','email4@gmail.com','closed-source','Inventor 2','Sector 1',2,'Tool Record 4','https://www.website4.com/'),(28,0,'This is a description 5','email5@gmail.com','open-source','Inventor 1','Sector 3',5,'Tool Record 5','https://www.website5.com/');
/*!40000 ALTER TABLE `tool_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_account`
--

DROP TABLE IF EXISTS `user_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_account` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `enabled` bit(1) NOT NULL,
  `identity_email` varchar(255) DEFAULT NULL,
  `identity_name` varchar(255) DEFAULT NULL,
  `identity_surname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_castjbvpeeus0r8lbpehiu0e4` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_account`
--

LOCK TABLES `user_account` WRITE;
/*!40000 ALTER TABLE `user_account` DISABLE KEYS */;
INSERT INTO `user_account` VALUES (1,0,_binary '\0','john.doe@acme.com','John','Doe','$2a$05$8H0E.GjA2EmVXRtrnZWP4.mkcHYU0mm7gZzvYYcnocHeVQZIM.YJC','anonymous'),(3,0,_binary '','administrator@acme.com','Administrator','Acme.com','$2a$05$aLX21KGR9fPwmQuA10UaiOFQr6qQYCGDoeWZ7Fk6HS82//riNg/Hi','administrator');
/*!40000 ALTER TABLE `user_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_programme`
--

DROP TABLE IF EXISTS `work_programme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `work_programme` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `budget_amount` double DEFAULT NULL,
  `budget_currency` varchar(255) DEFAULT NULL,
  `deadline` datetime(6) DEFAULT NULL,
  `moment` datetime(6) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `investment_round_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3nxyaik1cnvfdg02p9a8ibiko` (`investment_round_id`),
  CONSTRAINT `FK3nxyaik1cnvfdg02p9a8ibiko` FOREIGN KEY (`investment_round_id`) REFERENCES `investment_round` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_programme`
--

LOCK TABLES `work_programme` WRITE;
/*!40000 ALTER TABLE `work_programme` DISABLE KEYS */;
INSERT INTO `work_programme` VALUES (53,0,500,'€','2020-12-11 14:00:00.000000','2019-10-11 08:00:00.000000','Title 1',49),(54,0,400,'€','2021-12-01 19:00:00.000000','2019-01-20 10:00:00.000000','Title 2',49),(55,0,500,'€','2020-11-28 12:00:00.000000','2018-11-11 07:00:00.000000','Title 3',50),(56,0,200,'€','2021-12-10 17:00:00.000000','2018-07-05 09:00:00.000000','Title 4',51),(57,0,600,'€','2021-04-10 14:00:00.000000','2018-12-25 22:00:00.000000','Title 5',51);
/*!40000 ALTER TABLE `work_programme` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-01 13:23:28
