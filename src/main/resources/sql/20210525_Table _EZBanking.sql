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
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `confirmed` bit(1) NOT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `description` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_idx` (`user_id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES (5,_binary '','2021-05-25 14:01:00','Want to see someone','Seattle',1),(6,_binary '\0','2021-05-25 15:01:00','Take credit','Seattle',1),(7,_binary '','2021-05-25 15:02:00','Consultation','Seattle',1),(8,_binary '','2021-05-25 19:45:52','open account','Seattle',1),(9,_binary '\0','2021-05-25 19:47:39','close account','Seattle',1);
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `primary_account`
--

DROP TABLE IF EXISTS `primary_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `primary_account` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `account_balance` decimal(19,2) DEFAULT NULL,
  `account_number` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `primary_account`
--

LOCK TABLES `primary_account` WRITE;
/*!40000 ALTER TABLE `primary_account` DISABLE KEYS */;
INSERT INTO `primary_account` VALUES (4,1700.00,11223146),(5,0.00,11223150);
/*!40000 ALTER TABLE `primary_account` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `recipient`
--

DROP TABLE IF EXISTS `recipient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipient` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `account_number` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `user_user_id` bigint NOT NULL,
  `user_primary_account_id1` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_idx` (`user_id`),
  KEY `fk_recipient_user1_idx` (`user_user_id`,`user_primary_account_id1`),
  CONSTRAINT `fk_recipient_user1` FOREIGN KEY (`user_user_id`, `user_primary_account_id1`) REFERENCES `user` (`user_id`, `primary_account_id1`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipient`
--

LOCK TABLES `recipient` WRITE;
/*!40000 ALTER TABLE `recipient` DISABLE KEYS */;
INSERT INTO `recipient` VALUES (1,'213425635454','Rent payment','tomson@gmail.com','Mr. Tomson','1112223333',1,0,0),(2,'453452341324','Gym payment','fitness@gmail.com','LtdFitness','323245345',1,0,0),(3,'5465464234542','Tax payment 20%','taxes@mail.fi','TaxSystem','34254353',1,0,0);
/*!40000 ALTER TABLE `recipient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `role_id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `user_role_user_role_id` bigint NOT NULL,
  PRIMARY KEY (`role_id`,`user_role_user_role_id`),
  KEY `fk_role_user_role1_idx` (`user_role_user_role_id`),
  CONSTRAINT `fk_role_user_role1` FOREIGN KEY (`user_role_user_role_id`) REFERENCES `user_role` (`user_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (0,'ROLE_USER',0),(1,'ROLE_ADMIN',0);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `savings__transaction`
--

DROP TABLE IF EXISTS `savings__transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `savings__transaction` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `amount` double NOT NULL,
  `available_balance` decimal(19,2) DEFAULT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `description` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `savings_account_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `savings_account_id_idx` (`savings_account_id`),
  CONSTRAINT `savings_account_id` FOREIGN KEY (`savings_account_id`) REFERENCES `savings_account` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `savings__transaction`
--

LOCK TABLES `savings__transaction` WRITE;
/*!40000 ALTER TABLE `savings__transaction` DISABLE KEYS */;
INSERT INTO `savings__transaction` VALUES (1,1000,1000.00,'2021-05-25 19:21:07','Deposit to savings Account','Finished','Account',1),(2,150,2150.00,'2021-05-25 19:21:07','Withdraw from savings Account','Finished','Account',1),(3,400,1750.00,'2021-05-25 19:21:07','Withdraw from savings Account','Finished','Account',1),(4,2000,3750.00,'2021-05-25 19:21:07','Deposit to savings Account','Finished','Account',1),(5,1500,2250.00,'2021-05-25 19:21:07','Between account transfer from Savings to Primary','Finished','Transfer',1),(6,300,4250.00,'2021-05-25 19:21:07','Transfer to recipient LtdFitness','Finished','Transfer',1);
/*!40000 ALTER TABLE `savings__transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `savings_account`
--

DROP TABLE IF EXISTS `savings_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `savings_account` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `account_balance` decimal(19,2) DEFAULT NULL,
  `account_number` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `savings_account`
--

LOCK TABLES `savings_account` WRITE;
/*!40000 ALTER TABLE `savings_account` DISABLE KEYS */;
INSERT INTO `savings_account` VALUES (1,4250.00,11223147),(2,0.00,11223151);
/*!40000 ALTER TABLE `savings_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `enabled` bit(1) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `primary_account_id` bigint DEFAULT NULL,
  `savings_account_id` bigint DEFAULT NULL,
  `primary_account_id1` bigint NOT NULL,
  `savings_account_id1` bigint NOT NULL,
  `user_role_user_role_id` bigint NOT NULL,
  PRIMARY KEY (`user_id`,`primary_account_id1`),
  KEY `fk_user_primary_account1_idx` (`primary_account_id1`),
  KEY `fk_user_savings_account1_idx` (`savings_account_id1`),
  KEY `fk_user_user_role1_idx` (`user_role_user_role_id`),
  CONSTRAINT `fk_user_primary_account1` FOREIGN KEY (`primary_account_id1`) REFERENCES `primary_account` (`id`),
  CONSTRAINT `fk_user_savings_account1` FOREIGN KEY (`savings_account_id1`) REFERENCES `savings_account` (`id`),
  CONSTRAINT `fk_user_user_role1` FOREIGN KEY (`user_role_user_role_id`) REFERENCES `user_role` (`user_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'atpbay@yahoo.com',_binary '','Alex','Thompson','$2a$12$DWCry','5551112345','User',1,1,0,0,0),(2,'jakebiggy@hotmail.com',_binary '','Jake','Hunter','$2a$12$hZR7F','1111111111','Admin',2,2,0,0,0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `user_role_id` bigint NOT NULL AUTO_INCREMENT,
  `role_id` int DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`user_role_id`),
  KEY `role_id_idx` (`role_id`),
  KEY `user_id_idx` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,0,1),(2,1,2);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-25 21:38:58
