-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: ezbanking
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `primary_transaction`
--

DROP TABLE IF EXISTS `primary_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `primary_transaction` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `amount` double NOT NULL,
  `available_balance` decimal(19,2) DEFAULT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `description` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `primary_account_id` bigint DEFAULT NULL,
  `primary_account_id1` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `primary_account_id_idx` (`primary_account_id`),
  KEY `fk_primary_transaction_primary_account1_idx` (`primary_account_id1`),
  CONSTRAINT `fk_primary_transaction_primary_account1` FOREIGN KEY (`primary_account_id1`) REFERENCES `primary_account` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `primary_transaction`
--

LOCK TABLES `primary_transaction` WRITE;
/*!40000 ALTER TABLE `primary_transaction` DISABLE KEYS */;
INSERT INTO `primary_transaction` VALUES (11,5000,5000.00,'2021-06-01 00:00:00','Deposite to Primary Account','done','primary',1,0),(12,1500,3500.00,'2021-06-02 00:00:00','Withdraw from Primary account','done','primary',1,0),(13,1300,2200.00,'2021-06-03 00:00:00','Transfer from Primary to Savings','done','both',1,0),(14,500,1700.00,'2021-06-04 00:00:00','Send to Jake Ruth','done','Person',1,0),(15,2300,4000.00,'2021-06-06 00:00:00','Deposite to primary','done','primary',1,0),(16,5000,5000.00,'2017-01-13 00:57:16','Deposit to Primary Account','Finished','Account',1,0),(17,1500,3500.00,'2017-01-13 00:57:31','Withdraw from Primary Account','Finished','Account',1,0),(18,1300,2200.00,'2017-01-13 00:58:03','Between account transfer from Primary to Savings','Finished','Account',1,0),(19,500,1700.00,'2017-01-13 00:59:08','Transfer to recipient Mr. Tomson','Finished','Transfer',1,0),(20,1500,3200.00,'2017-01-13 01:11:38','Deposit to Primary Account','Finished','Account',1,0),(21,400,2800.00,'2017-01-13 01:11:46','Withdraw from Primary Account','Finished','Account',1,0),(22,2300,2000.00,'2017-01-13 01:13:48','Between account transfer from Primary to Savings','Finished','Account',1,0),(23,300,1700.00,'2017-01-13 01:14:14','Transfer to recipient TaxSystem','Finished','Transfer',1,0);
/*!40000 ALTER TABLE `primary_transaction` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-25 23:08:44
