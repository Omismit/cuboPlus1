CREATE DATABASE  IF NOT EXISTS `easy_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `easy_db`;
-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: 192.168.0.105    Database: easy_db
-- ------------------------------------------------------
-- Server version	8.0.33-0ubuntu0.22.04.2

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
-- Dumping data for table `balances`
--

LOCK TABLES `balances` WRITE;
/*!40000 ALTER TABLE `balances` DISABLE KEYS */;
INSERT INTO `balances` VALUES (2,1,0,10000,1),(3,2,50,0,1),(4,4,0,0,1),(5,5,0,9700,1),(6,6,0,0,1),(7,7,0,29000,1),(8,8,0,0,1),(9,9,0,0,1),(10,10,0,0,1),(11,11,40,0,1),(12,12,0,0,1),(13,13,0,0,1),(14,14,0,0,1),(15,15,0,0,1),(16,16,0,0,1),(17,17,0,0,1);
/*!40000 ALTER TABLE `balances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `transsactions`
--

LOCK TABLES `transsactions` WRITE;
/*!40000 ALTER TABLE `transsactions` DISABLE KEYS */;
INSERT INTO `transsactions` VALUES (1,1,1,50,0,'2023-07-12 19:34:04',3,1,1),(2,1,1,50,0,'2023-07-12 21:55:32',3,1,0),(3,1,1,50,0,'2023-07-12 22:59:25',3,1,0),(4,1,2,10,9700,'2023-07-12 22:59:25',1,1,0),(5,1,1,50,0,'2023-07-12 23:02:14',3,1,0),(6,1,2,10,9700,'2023-07-12 23:02:14',1,1,0),(7,1,2,10,9700,'2023-07-12 23:02:32',1,1,0),(8,1,2,10,9700,'2023-07-12 23:12:54',1,1,0),(9,1,2,10,9700,'2023-07-12 23:14:27',1,1,0),(10,1,2,10,9700,'2023-07-12 23:17:12',1,1,0),(11,1,2,10,9700,'2023-07-12 23:17:52',1,1,0),(12,1,2,10,9700,'2023-07-12 23:18:33',1,1,0),(13,2,2,0,19400,'2023-07-12 23:39:21',2,2,0),(14,1,2,10,9700,'2023-07-12 23:40:10',1,1,0),(15,2,2,0,9700,'2023-07-12 23:40:26',2,2,0),(16,1,5,10,9700,'2023-07-14 17:57:57',1,1,0),(17,1,2,10,9700,'2023-07-14 18:07:12',1,1,0),(18,1,2,19,18430,'2023-07-14 21:00:52',1,1,0),(19,1,2,19,18430,'2023-07-14 21:05:04',1,1,0),(20,11,11,0,500000,'2023-07-14 21:19:44',2,2,0),(21,2,2,0,46860,'2023-07-14 21:22:04',2,2,0),(22,1,1,0,100000,'2023-07-14 21:25:23',2,2,0),(23,1,1,0,0,'2023-07-14 21:25:24',2,2,0),(24,1,1,0,0,'2023-07-14 21:25:27',2,2,0),(25,1,2,20,19400,'2023-07-14 21:27:11',1,1,0),(26,1,2,20,19400,'2023-07-14 21:27:15',1,1,0),(27,1,2,20,19400,'2023-07-14 21:27:20',1,1,0),(28,2,2,0,10000,'2023-07-14 22:20:55',2,2,0),(29,2,2,0,0,'2023-07-14 22:20:57',2,2,0),(30,2,2,0,0,'2023-07-14 22:20:58',2,2,0),(31,2,2,0,0,'2023-07-14 22:21:01',2,2,0),(32,2,2,0,0,'2023-07-14 22:21:02',2,2,0),(33,2,2,0,0,'2023-07-14 22:21:04',2,2,0),(34,1,2,20,19400,'2023-07-14 22:24:15',1,1,0),(35,1,2,20,19400,'2023-07-14 22:36:37',1,1,0),(36,2,2,0,38000,'2023-07-14 22:38:26',2,2,0),(37,2,2,0,0,'2023-07-14 22:38:28',2,2,0),(38,2,2,0,0,'2023-07-14 22:38:30',2,2,0),(39,2,2,0,0,'2023-07-14 22:38:32',2,2,0),(40,2,2,0,0,'2023-07-14 22:38:34',2,2,0),(41,2,2,0,0,'2023-07-14 22:38:36',2,2,0),(42,2,2,0,0,'2023-07-14 22:38:38',2,2,0),(43,2,2,0,0,'2023-07-14 22:38:40',2,2,0),(44,2,2,0,0,'2023-07-14 22:38:42',2,2,0),(45,2,2,0,0,'2023-07-14 22:38:44',2,2,0),(46,2,2,0,0,'2023-07-14 22:38:46',2,2,0),(47,2,2,0,0,'2023-07-14 22:38:48',2,2,0),(48,2,2,0,0,'2023-07-14 22:38:50',2,2,0),(49,2,2,0,0,'2023-07-14 22:38:52',2,2,0),(50,2,2,0,0,'2023-07-14 22:38:54',2,2,0),(51,2,2,0,0,'2023-07-14 22:38:56',2,2,0),(52,2,2,0,0,'2023-07-14 22:38:58',2,2,0),(53,2,2,0,0,'2023-07-14 22:39:00',2,2,0),(54,2,2,0,0,'2023-07-14 22:39:02',2,2,0),(55,11,11,10,0,'2023-07-15 03:23:35',3,1,0),(56,11,11,10,0,'2023-07-15 03:23:57',3,1,0),(57,11,11,10,0,'2023-07-15 03:24:39',3,1,0),(58,11,11,10,0,'2023-07-15 03:25:09',3,1,0),(59,11,11,0,10000,'2023-07-15 03:33:39',2,2,0),(60,11,11,0,0,'2023-07-15 03:33:43',2,2,0),(61,11,11,0,0,'2023-07-15 03:33:45',2,2,0),(62,11,11,0,0,'2023-07-15 03:33:47',2,2,0),(63,11,11,0,0,'2023-07-15 03:33:49',2,2,0),(64,11,11,0,0,'2023-07-15 03:33:49',2,2,0),(65,11,11,0,0,'2023-07-15 03:33:52',2,2,0),(66,11,11,0,0,'2023-07-15 03:33:53',2,2,0),(67,11,11,0,0,'2023-07-15 03:33:55',2,2,0),(68,11,11,0,0,'2023-07-15 03:33:58',2,2,0),(69,11,11,0,0,'2023-07-15 03:34:01',2,2,0),(70,11,11,0,0,'2023-07-15 03:34:03',2,2,0),(71,11,11,0,0,'2023-07-15 03:34:04',2,2,0),(72,11,11,0,0,'2023-07-15 03:34:06',2,2,0),(73,11,11,0,0,'2023-07-15 03:34:09',2,2,0),(74,11,11,0,0,'2023-07-15 03:34:12',2,2,0),(75,11,11,0,0,'2023-07-15 03:34:14',2,2,0),(76,11,11,0,0,'2023-07-15 03:34:17',2,2,0),(77,11,11,0,0,'2023-07-15 03:34:19',2,2,0),(78,11,11,0,0,'2023-07-15 03:34:21',2,2,0),(79,11,11,0,0,'2023-07-15 03:34:22',2,2,0),(80,11,11,0,0,'2023-07-15 03:34:24',2,2,0),(81,11,11,0,0,'2023-07-15 03:34:25',2,2,0),(82,11,11,0,0,'2023-07-15 03:34:25',2,2,0),(83,11,11,0,0,'2023-07-15 03:34:27',2,2,0),(84,11,11,0,0,'2023-07-15 03:34:32',2,2,0),(85,11,11,0,0,'2023-07-15 03:34:32',2,2,0),(86,11,11,0,0,'2023-07-15 03:34:34',2,2,0),(87,11,11,0,0,'2023-07-15 03:34:37',2,2,0),(88,11,11,0,0,'2023-07-15 03:34:40',2,2,0),(89,11,11,0,0,'2023-07-15 03:34:42',2,2,0),(90,11,11,0,0,'2023-07-15 03:34:43',2,2,0),(91,11,11,0,0,'2023-07-15 03:34:44',2,2,0),(92,11,11,0,0,'2023-07-15 03:34:45',2,2,0),(93,11,11,0,0,'2023-07-15 03:34:49',2,2,0),(94,11,11,0,0,'2023-07-15 03:35:06',2,2,0),(95,11,11,0,0,'2023-07-15 03:35:07',2,2,0),(96,11,11,0,10000,'2023-07-15 03:36:06',2,2,0),(97,11,11,0,0,'2023-07-15 03:36:09',2,2,0),(98,11,11,0,0,'2023-07-15 03:36:09',2,2,0),(99,11,11,0,0,'2023-07-15 03:36:13',2,2,0),(100,11,11,0,0,'2023-07-15 03:36:14',2,2,0),(101,11,11,0,0,'2023-07-15 03:36:16',2,2,0),(102,11,11,0,0,'2023-07-15 03:36:19',2,2,0),(103,11,11,0,0,'2023-07-15 03:36:21',2,2,0),(104,11,11,0,0,'2023-07-15 03:36:25',2,2,0),(105,11,11,0,0,'2023-07-15 03:36:27',2,2,0),(106,11,11,0,0,'2023-07-15 03:36:29',2,2,0),(107,11,11,0,0,'2023-07-15 03:36:30',2,2,0),(108,11,11,0,0,'2023-07-15 03:36:31',2,2,0),(109,11,11,0,0,'2023-07-15 03:36:32',2,2,0),(110,11,11,0,0,'2023-07-15 03:36:36',2,2,0),(111,11,11,0,0,'2023-07-15 03:36:38',2,2,0),(112,11,11,0,0,'2023-07-15 03:36:39',2,2,0),(113,11,11,0,0,'2023-07-15 03:36:42',2,2,0),(114,11,11,0,0,'2023-07-15 03:36:44',2,2,0),(115,11,11,0,0,'2023-07-15 03:36:47',2,2,0),(116,11,11,0,0,'2023-07-15 03:36:49',2,2,0),(117,11,11,0,0,'2023-07-15 03:36:51',2,2,0),(118,11,11,0,0,'2023-07-15 03:36:52',2,2,0),(119,11,11,0,0,'2023-07-15 03:36:53',2,2,0),(120,11,11,0,0,'2023-07-15 03:36:54',2,2,0),(121,11,11,0,0,'2023-07-15 03:36:56',2,2,0),(122,11,11,0,0,'2023-07-15 03:36:59',2,2,0),(123,11,11,0,0,'2023-07-15 03:37:01',2,2,0),(124,11,11,0,0,'2023-07-15 03:37:04',2,2,0),(125,11,11,0,0,'2023-07-15 03:37:06',2,2,0),(126,11,11,0,0,'2023-07-15 03:37:06',2,2,0),(127,11,11,0,0,'2023-07-15 03:37:10',2,2,0),(128,11,11,0,0,'2023-07-15 03:37:12',2,2,0),(129,11,11,0,0,'2023-07-15 03:37:14',2,2,0),(130,11,11,0,0,'2023-07-15 03:37:16',2,2,0),(131,11,11,0,0,'2023-07-15 03:37:19',2,2,0),(132,11,11,0,0,'2023-07-15 03:37:20',2,2,0),(133,11,11,0,0,'2023-07-15 03:37:21',2,2,0),(134,11,11,0,0,'2023-07-15 03:37:28',2,2,0),(135,11,11,0,0,'2023-07-15 03:38:15',2,2,0),(136,11,11,0,0,'2023-07-15 03:38:15',2,2,0),(137,11,11,0,10000,'2023-07-15 03:38:55',2,2,0),(138,11,11,0,0,'2023-07-15 03:38:57',2,2,0),(139,11,11,0,0,'2023-07-15 03:38:58',2,2,0),(140,11,11,0,0,'2023-07-15 03:39:02',2,2,0),(141,11,11,0,0,'2023-07-15 03:39:04',2,2,0),(142,11,11,0,0,'2023-07-15 03:39:06',2,2,0),(143,11,11,0,0,'2023-07-15 03:39:07',2,2,0),(144,11,11,0,0,'2023-07-15 03:39:09',2,2,0),(145,11,11,0,0,'2023-07-15 03:39:10',2,2,0),(146,11,11,0,0,'2023-07-15 03:39:12',2,2,0),(147,11,11,0,0,'2023-07-15 03:39:16',2,2,0),(148,11,11,0,0,'2023-07-15 03:39:18',2,2,0),(149,11,11,0,0,'2023-07-15 03:39:20',2,2,0),(150,11,11,0,10000,'2023-07-15 03:41:07',2,2,0),(151,11,11,0,0,'2023-07-15 03:41:08',2,2,0),(152,11,11,0,10000,'2023-07-15 03:44:49',2,2,0),(153,11,11,0,0,'2023-07-15 03:44:52',2,2,0),(154,11,11,0,0,'2023-07-15 03:44:55',2,2,0),(155,11,11,0,0,'2023-07-15 03:44:56',2,2,0),(156,11,11,0,0,'2023-07-15 03:44:58',2,2,0),(157,11,11,0,0,'2023-07-15 03:45:00',2,2,0),(158,11,11,0,0,'2023-07-15 03:45:03',2,2,0),(159,11,11,0,0,'2023-07-15 03:45:05',2,2,0),(160,11,11,0,0,'2023-07-15 03:45:06',2,2,0),(161,11,11,0,0,'2023-07-15 03:45:06',2,2,0),(162,11,11,0,0,'2023-07-15 03:45:09',2,2,0),(163,11,11,0,0,'2023-07-15 03:45:10',2,2,0),(164,11,11,0,0,'2023-07-15 03:45:14',2,2,0),(165,11,11,0,0,'2023-07-15 03:45:17',2,2,0),(166,11,11,0,0,'2023-07-15 03:45:18',2,2,0),(167,11,11,0,0,'2023-07-15 03:45:20',2,2,0),(168,11,11,0,0,'2023-07-15 03:45:22',2,2,0),(169,11,11,0,0,'2023-07-15 03:45:24',2,2,0),(170,11,11,0,0,'2023-07-15 03:45:26',2,2,0),(171,11,11,0,0,'2023-07-15 03:45:27',2,2,0),(172,11,11,0,0,'2023-07-15 03:45:29',2,2,0),(173,11,11,0,0,'2023-07-15 03:45:30',2,2,0),(174,11,11,0,0,'2023-07-15 03:45:36',2,2,0),(175,11,11,0,0,'2023-07-15 03:45:36',2,2,0),(176,11,11,0,0,'2023-07-15 03:45:37',2,2,0),(177,11,11,0,0,'2023-07-15 03:45:39',2,2,0),(178,11,11,0,0,'2023-07-15 03:45:40',2,2,0),(179,11,11,0,0,'2023-07-15 03:45:46',2,2,0),(180,11,11,0,0,'2023-07-15 03:45:48',2,2,0),(181,11,11,0,0,'2023-07-15 03:45:48',2,2,0),(182,11,11,0,0,'2023-07-15 03:45:50',2,2,0),(183,11,11,0,0,'2023-07-15 03:45:51',2,2,0),(184,11,11,0,0,'2023-07-15 03:45:52',2,2,0),(185,11,11,0,0,'2023-07-15 03:45:56',2,2,0),(186,11,11,0,0,'2023-07-15 03:45:56',2,2,0),(187,11,11,0,0,'2023-07-15 03:45:59',2,2,0),(188,11,11,0,0,'2023-07-15 03:46:02',2,2,0),(189,11,11,0,0,'2023-07-15 03:46:04',2,2,0),(190,11,11,0,10000,'2023-07-15 03:48:48',2,2,0),(191,11,11,0,0,'2023-07-15 03:48:50',2,2,0),(192,11,11,0,0,'2023-07-15 03:48:51',2,2,0),(193,11,11,0,0,'2023-07-15 03:48:52',2,2,0),(194,11,11,0,0,'2023-07-15 03:48:55',2,2,0),(195,11,11,0,0,'2023-07-15 03:48:57',2,2,0),(196,11,11,0,0,'2023-07-15 03:49:00',2,2,0),(197,11,11,0,0,'2023-07-15 03:49:02',2,2,0),(198,11,11,0,0,'2023-07-15 03:49:04',2,2,0),(199,11,11,0,0,'2023-07-15 03:49:05',2,2,0),(200,11,11,0,0,'2023-07-15 03:49:08',2,2,0),(201,11,11,0,0,'2023-07-15 03:49:10',2,2,0),(202,11,11,0,0,'2023-07-15 03:49:11',2,2,0),(203,11,11,0,0,'2023-07-15 03:49:14',2,2,0),(204,11,11,0,0,'2023-07-15 03:49:14',2,2,0),(205,11,11,0,0,'2023-07-15 03:49:18',2,2,0),(206,11,11,0,0,'2023-07-15 03:49:21',2,2,0),(207,11,11,0,0,'2023-07-15 03:49:23',2,2,0),(208,11,11,0,0,'2023-07-15 03:49:25',2,2,0),(209,11,11,0,0,'2023-07-15 03:49:27',2,2,0),(210,11,11,0,0,'2023-07-15 03:49:28',2,2,0),(211,11,11,0,0,'2023-07-15 03:49:29',2,2,0),(212,11,11,0,0,'2023-07-15 03:49:32',2,2,0),(213,11,11,0,0,'2023-07-15 03:49:33',2,2,0),(214,11,11,0,0,'2023-07-15 03:49:37',2,2,0),(215,11,11,0,0,'2023-07-15 03:49:38',2,2,0),(216,11,11,0,0,'2023-07-15 03:49:40',2,2,0),(217,11,11,0,0,'2023-07-15 03:49:41',2,2,0),(218,11,11,0,0,'2023-07-15 03:49:42',2,2,0),(219,11,11,0,0,'2023-07-15 03:49:44',2,2,0),(220,11,11,0,0,'2023-07-15 03:49:47',2,2,0),(221,11,11,0,0,'2023-07-15 03:49:50',2,2,0),(222,11,11,0,0,'2023-07-15 03:49:51',2,2,0),(223,11,11,0,0,'2023-07-15 03:49:54',2,2,0),(224,11,11,0,0,'2023-07-15 03:49:56',2,2,0),(225,11,11,0,0,'2023-07-15 03:49:58',2,2,0),(226,11,11,0,0,'2023-07-15 03:50:01',2,2,0),(227,11,11,0,0,'2023-07-15 03:50:02',2,2,0),(228,11,11,0,0,'2023-07-15 03:50:05',2,2,0),(229,11,11,0,0,'2023-07-15 03:50:06',2,2,0),(230,11,11,0,0,'2023-07-15 03:50:07',2,2,0),(231,11,11,0,0,'2023-07-15 03:50:11',2,2,0),(232,11,11,0,0,'2023-07-15 03:50:13',2,2,0),(233,11,11,0,0,'2023-07-15 03:50:14',2,2,0),(234,11,11,0,0,'2023-07-15 03:50:15',2,2,0),(235,11,11,0,0,'2023-07-15 03:50:19',2,2,0),(236,11,11,0,0,'2023-07-15 03:50:21',2,2,0),(237,11,11,0,0,'2023-07-15 03:50:22',2,2,0),(238,11,11,0,0,'2023-07-15 03:50:23',2,2,0),(239,11,11,0,0,'2023-07-15 03:50:26',2,2,0),(240,11,11,0,0,'2023-07-15 03:50:27',2,2,0),(241,11,11,0,0,'2023-07-15 03:50:30',2,2,0),(242,11,11,0,0,'2023-07-15 03:50:31',2,2,0),(243,11,11,0,0,'2023-07-15 03:50:34',2,2,0),(244,11,11,0,0,'2023-07-15 03:50:35',2,2,0),(245,11,11,0,0,'2023-07-15 03:50:38',2,2,0),(246,11,11,0,0,'2023-07-15 03:50:40',2,2,0),(247,11,11,0,0,'2023-07-15 03:50:42',2,2,0),(248,11,11,0,0,'2023-07-15 03:50:44',2,2,0),(249,11,11,0,0,'2023-07-15 03:50:45',2,2,0),(250,11,11,0,0,'2023-07-15 03:50:48',2,2,0),(251,11,11,0,0,'2023-07-15 03:50:51',2,2,0),(252,11,11,0,0,'2023-07-15 03:50:52',2,2,0),(253,11,11,0,0,'2023-07-15 03:50:54',2,2,0),(254,11,11,0,0,'2023-07-15 03:50:54',2,2,0),(255,11,11,0,0,'2023-07-15 03:50:58',2,2,0),(256,11,11,0,0,'2023-07-15 03:51:00',2,2,0),(257,11,11,0,0,'2023-07-15 03:51:03',2,2,0),(258,11,11,0,0,'2023-07-15 03:51:05',2,2,0),(259,11,11,0,0,'2023-07-15 03:51:07',2,2,0),(260,11,11,0,10000,'2023-07-15 04:24:28',2,2,0),(261,11,11,0,0,'2023-07-15 04:24:30',2,2,0),(262,11,11,0,0,'2023-07-15 04:24:32',2,2,0),(263,11,11,0,0,'2023-07-15 04:24:34',2,2,0),(264,11,11,0,0,'2023-07-15 04:24:36',2,2,0),(265,11,11,0,0,'2023-07-15 04:24:38',2,2,0),(266,2,2,80,0,'2023-07-15 04:44:12',3,1,0),(267,2,7,30,29000,'2023-07-15 04:45:04',1,1,0);
/*!40000 ALTER TABLE `transsactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `typeAmount`
--

LOCK TABLES `typeAmount` WRITE;
/*!40000 ALTER TABLE `typeAmount` DISABLE KEYS */;
INSERT INTO `typeAmount` VALUES (1,'USD'),(2,'sats');
/*!40000 ALTER TABLE `typeAmount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `typeFiat`
--

LOCK TABLES `typeFiat` WRITE;
/*!40000 ALTER TABLE `typeFiat` DISABLE KEYS */;
INSERT INTO `typeFiat` VALUES (1,'UDS');
/*!40000 ALTER TABLE `typeFiat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `typeTx`
--

LOCK TABLES `typeTx` WRITE;
/*!40000 ALTER TABLE `typeTx` DISABLE KEYS */;
INSERT INTO `typeTx` VALUES (1,'send'),(2,'withdrawal'),(3,'recharge');
/*!40000 ALTER TABLE `typeTx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'usuario','prueba','uss1','usuario@gmail.com','7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),(2,'usuario2','prueba','uss2','usuario2@gmail.com','7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),(3,'usuario3','testing',NULL,'correo1@gmail.com','7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),(4,'usuario4','testing',NULL,'correo2@gmail.com','7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),(5,'Mauricio','Roberto',NULL,'MR@gmail.com','711383a59fda05336fd2ccf70c8059d1523eb41a'),(6,'juan','Jose',NULL,'jj@gmail.com','1e92fe8eaf618e1456574e5e4aa5edcf16906c70'),(7,'Edgar','Bonilla',NULL,'arnoldo@hotmail.com','40bd001563085fc35165329ea1ff5c5ecbdbbeef'),(8,'Edgar','Bonilla',NULL,'arnoldo2@hotmail.com','7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),(9,'Roberto','Bonilla',NULL,'arnoldo2@gmail.com','7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),(10,'Juan','Jose',NULL,'JJ5@gmail.com','7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),(11,'Mauricio','Fuentes',NULL,'mf@hotmail.com','7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),(12,'Nacho','libre',NULL,'nl@hjalksja','7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),(13,'Nacho','Fuerte',NULL,'nc1@hjalksja','7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),(14,'','',NULL,'','da39a3ee5e6b4b0d3255bfef95601890afd80709'),(15,'Edgar','Roberto',NULL,'EB@arnoldo.com','7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),(16,'Edgar','Allan',NULL,'arnoldo1729@hotmail.com','7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),(17,'prueba de nombre','testing',NULL,'prueba@hotmail.com','8cb2237d0679ca88db6464eac60da96345513964');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-14 23:13:43