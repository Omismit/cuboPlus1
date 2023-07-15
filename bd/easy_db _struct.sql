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
-- Table structure for table `balances`
--

DROP TABLE IF EXISTS `balances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `balances` (
  `idbalance` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `iduser` mediumint unsigned NOT NULL,
  `fiatBalance` mediumint unsigned DEFAULT '0',
  `satsBalance` mediumint unsigned NOT NULL DEFAULT '0',
  `idtypeFiat` tinyint unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`idbalance`),
  UNIQUE KEY `idbalance_UNIQUE` (`idbalance`),
  UNIQUE KEY `iduser_UNIQUE` (`iduser`),
  KEY `idtypeFiat` (`idtypeFiat`),
  CONSTRAINT `balances_ibfk_1` FOREIGN KEY (`iduser`) REFERENCES `users` (`iduser`),
  CONSTRAINT `balances_ibfk_2` FOREIGN KEY (`idtypeFiat`) REFERENCES `typeFiat` (`idtypeFiat`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `transsactions`
--

DROP TABLE IF EXISTS `transsactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transsactions` (
  `idtx` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `sender` mediumint unsigned NOT NULL,
  `reciever` mediumint unsigned NOT NULL,
  `fiatAmount` mediumint unsigned NOT NULL DEFAULT '0',
  `satsAmount` mediumint unsigned NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `idtypeTx` tinyint unsigned NOT NULL DEFAULT '1',
  `idtypeAmount` tinyint unsigned NOT NULL DEFAULT '1',
  `state` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`idtx`),
  UNIQUE KEY `idtx_UNIQUE` (`idtx`),
  KEY `sender` (`sender`),
  KEY `reciever` (`reciever`),
  KEY `idtypeTx` (`idtypeTx`),
  KEY `idtypeAmount` (`idtypeAmount`),
  CONSTRAINT `transsactions_ibfk_1` FOREIGN KEY (`sender`) REFERENCES `users` (`iduser`),
  CONSTRAINT `transsactions_ibfk_2` FOREIGN KEY (`reciever`) REFERENCES `users` (`iduser`),
  CONSTRAINT `transsactions_ibfk_3` FOREIGN KEY (`idtypeTx`) REFERENCES `typeTx` (`idtypeTx`),
  CONSTRAINT `transsactions_ibfk_4` FOREIGN KEY (`idtypeAmount`) REFERENCES `typeAmount` (`idtypeAmount`)
) ENGINE=InnoDB AUTO_INCREMENT=268 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `typeAmount`
--

DROP TABLE IF EXISTS `typeAmount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `typeAmount` (
  `idtypeAmount` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`idtypeAmount`),
  UNIQUE KEY `idtypeAmount_UNIQUE` (`idtypeAmount`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `typeFiat`
--

DROP TABLE IF EXISTS `typeFiat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `typeFiat` (
  `idtypeFiat` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`idtypeFiat`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `typeTx`
--

DROP TABLE IF EXISTS `typeTx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `typeTx` (
  `idtypeTx` tinyint unsigned NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtypeTx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `iduser` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `user_tag` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(455) DEFAULT NULL,
  PRIMARY KEY (`iduser`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'easy_db'
--

--
-- Dumping routines for database 'easy_db'
--
/*!50003 DROP PROCEDURE IF EXISTS `insert_assets` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`user3`@`127.0.0.1` PROCEDURE `insert_assets`(IN iduser mediumint,IN amount mediumint, out valid int)
BEGIN
 Declare idusuario mediumint default 0;
 Declare idbalance mediumint default 0;
 declare currentB mediumint default 0;
  set idbalance = (select balances.idbalance from easy_db.balances where balances.iduser = iduser);
  set currentB = (select balances.fiatBalance from easy_db.balances where balances.iduser = iduser);
     UPDATE `easy_db`.`balances` SET `fiatBalance` = (amount+currentB) WHERE balances.idbalance = idbalance;
     INSERT INTO easy_db.transsactions(`sender`,`reciever`,`fiatAmount`,`idtypeTx`,`idtypeAmount`) VALUES (iduser,iduser,amount,3,1);
    
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`user3`@`127.0.0.1` PROCEDURE `insert_user`(IN nameu varchar(255),IN lastname varchar(255), IN email varchar(255),IN pass varchar(455),out valid int)
BEGIN
 Declare idusuario mediumint default 0;
 Declare repetido int default 0;
  set repetido = (select count(*) from easy_db.users where users.email like email);
  if repetido = 0 then
    INSERT INTO easy_db.users (`name`,`lastname`,`email`,`password`) VALUES(nameu,lastname,email,sha1(pass)); 
    SET idusuario = LAST_INSERT_ID();
    INSERT INTO easy_db.balances(`idbalance`,`iduser`,`fiatBalance`,`satsBalance`,`idtypeFiat`) VALUES (null,idusuario,0,0,1);
    set valid = 1;
  else
    set valid = 0;
    ROLLBACK;
   END IF;
   select @valid;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sent_assets` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`user2`@`%` PROCEDURE `sent_assets`(IN iduserS mediumint,IN iduserR mediumint, IN amount mediumint,IN percent int)
BEGIN
 Declare balance1 mediumint default 0;
 Declare balance2 mediumint default 0;
 declare nbalance1 mediumint default 0;
 declare nbalance2 mediumint default 0;
 Declare satsC mediumint default 0;
  set balance1 = (select balances.fiatBalance from easy_db.balances where balances.iduser=iduserS);
  set balance2 = (select balances.satsBalance from easy_db.balances where balances.iduser=iduserR);
  set satsC = (select (amount*1000));
  set nbalance1= (select (balance1-amount));
  set nbalance2=(select ((satsC-1000)+balance2));
    UPDATE `easy_db`.`balances` SET `fiatBalance` = nbalance1 WHERE balances.iduser = iduserS;
    UPDATE `easy_db`.`balances` SET `satsBalance` = nbalance2 WHERE balances.iduser = iduserR;
    INSERT INTO easy_db.transsactions(`sender`,`reciever`,`fiatAmount`,`satsAmount`,`idtypeTx`,`idtypeAmount`) VALUES (iduserS,iduserR,amount,(satsC-1000),1,1);
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `withdraw_assets` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`user3`@`127.0.0.1` PROCEDURE `withdraw_assets`(IN iduser mediumint)
BEGIN
 Declare balance mediumint default 0;
 Declare balance2 mediumint default 0;
 declare nbalance1 mediumint default 0;
 declare nbalance2 mediumint default 0;
 Declare satsC mediumint default 0;
  set balance = (select balances.satsBalance from easy_db.balances where balances.iduser=iduser);
    UPDATE `easy_db`.`balances` SET `satsBalance` = 0 WHERE balances.iduser = iduser;
    INSERT INTO easy_db.transsactions(`sender`,`reciever`,`satsAmount`,`idtypeTx`,`idtypeAmount`) VALUES (iduser,iduser,balance,2,2);
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-14 23:14:07
