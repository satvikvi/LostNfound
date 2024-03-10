-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: lost_and_found
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.23.10.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `User_Cred`
--

DROP TABLE IF EXISTS `User_Cred`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User_Cred` (
  `UID` int NOT NULL,
  `passkey` varchar(255) NOT NULL,
  PRIMARY KEY (`UID`),
  CONSTRAINT `User_Cred_ibfk_1` FOREIGN KEY (`UID`) REFERENCES `User_Info` (`UID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User_Cred`
--

LOCK TABLES `User_Cred` WRITE;
/*!40000 ALTER TABLE `User_Cred` DISABLE KEYS */;
INSERT INTO `User_Cred` VALUES (10000005,'default_password');
/*!40000 ALTER TABLE `User_Cred` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User_Details`
--

DROP TABLE IF EXISTS `User_Details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User_Details` (
  `UID` int NOT NULL,
  `Department` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`UID`),
  CONSTRAINT `User_Details_ibfk_1` FOREIGN KEY (`UID`) REFERENCES `User_Info` (`UID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User_Details`
--

LOCK TABLES `User_Details` WRITE;
/*!40000 ALTER TABLE `User_Details` DISABLE KEYS */;
INSERT INTO `User_Details` VALUES (10000003,'Hollywood'),(10000004,NULL),(10000005,NULL);
/*!40000 ALTER TABLE `User_Details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User_Info`
--

DROP TABLE IF EXISTS `User_Info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User_Info` (
  `UID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `PhoneNumber` varchar(10) NOT NULL,
  `Privilege` tinyint NOT NULL,
  PRIMARY KEY (`UID`),
  CONSTRAINT `User_Info_chk_1` CHECK ((length(`PhoneNumber`) = 10)),
  CONSTRAINT `User_Info_chk_2` CHECK ((`Privilege` in (0,1)))
) ENGINE=InnoDB AUTO_INCREMENT=10000006 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User_Info`
--

LOCK TABLES `User_Info` WRITE;
/*!40000 ALTER TABLE `User_Info` DISABLE KEYS */;
INSERT INTO `User_Info` VALUES (10000000,'John Doe','john.doe@example.com','1234567890',0),(10000001,'Admin User','admin@example.com','9876543210',1),(10000002,'Yogesh Fawade','john.doe@example.com','1234567890',0),(10000003,'Johnyy','johny.doe@example.com','1234567890',0),(10000004,'JohnyBhoi','john.doe@example.com','1234567890',0),(10000005,'Yogya','john.doe@example.com','1234567890',0);
/*!40000 ALTER TABLE `User_Info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image_db`
--

DROP TABLE IF EXISTS `image_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image_db` (
  `UID` int NOT NULL,
  `ImageID` int NOT NULL AUTO_INCREMENT,
  `image` longblob NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text,
  PRIMARY KEY (`UID`,`ImageID`),
  UNIQUE KEY `ImageID_UNIQUE` (`ImageID`),
  CONSTRAINT `image_db_ibfk_1` FOREIGN KEY (`UID`) REFERENCES `User_Info` (`UID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image_db`
--

LOCK TABLES `image_db` WRITE;
/*!40000 ALTER TABLE `image_db` DISABLE KEYS */;
/*!40000 ALTER TABLE `image_db` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-10 19:31:02
