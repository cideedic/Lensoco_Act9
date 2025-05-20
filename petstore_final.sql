CREATE DATABASE  IF NOT EXISTS `petstoredb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `petstoredb`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: petstoredb
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Temporary view structure for view `activecustomers`
--

DROP TABLE IF EXISTS `activecustomers`;
/*!50001 DROP VIEW IF EXISTS `activecustomers`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `activecustomers` AS SELECT 
 1 AS `CustomerID`,
 1 AS `FirstName`,
 1 AS `LastName`,
 1 AS `Email`,
 1 AS `Phone`,
 1 AS `Address`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `AdminID` int NOT NULL AUTO_INCREMENT,
  `PasswordHash` varchar(255) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `motto` varchar(255) DEFAULT NULL,
  `CreatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`AdminID`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (5,'9d6c72ddbe5331ca92493145f9ccdc18ea6079b272f96baef6262b8cfee46a3d','cedrick@gmail.com','cedrick linsuco','aku ay sopot','2025-05-06 02:37:34'),(7,'9e8e52d5d42f207e71ece587654df56a398b36659cabc711a10fc517abfb1bb9','jclol@gmail.com','ced lensoco','motto ko','2025-05-12 04:22:52'),(9,'edd26bf2b1ba2afe07264e88332897513114a83be757fc9543d35080372629ac','lol@gmail.com','benedick  lensoco','cedrick motto','2025-05-12 04:45:38');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `availablepets`
--

DROP TABLE IF EXISTS `availablepets`;
/*!50001 DROP VIEW IF EXISTS `availablepets`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `availablepets` AS SELECT 
 1 AS `PetID`,
 1 AS `Name`,
 1 AS `Species`,
 1 AS `Breed`,
 1 AS `Age`,
 1 AS `Gender`,
 1 AS `Price`,
 1 AS `Status`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `CategoryID` int NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(50) NOT NULL,
  `Description` text,
  PRIMARY KEY (`CategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Food','Various pet food items'),(2,'Toys','Fun toys for pets'),(3,'Accessories','Leashes, collars, and more'),(4,'Grooming','Shampoos and grooming tools'),(5,'Health','Medicines and supplements'),(6,'Beds & Housing','Beds, cages, and tanks'),(7,'Training','Training kits and tools'),(8,'Clothing','Clothes for pets'),(9,'Cleaning','Litter boxes, pee pads, etc.'),(10,'Miscellaneous','Other pet-related items');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `CustomerID` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'john cedricks','Lensoco','jclensoco@gmail.com','09212814357','Cabangan Camalig Albay'),(2,'Vinz Russel','Palomillo','vrpalomillo@gmail.com','0925125122312','Inascan Guinobatan Albay'),(3,'Christian Dane','Ballon','cdballon@yahoo.com','09214642892','Rawis Legazpi City Albay'),(4,'Andreev Albert','Ataiza','andreev@gmail.com','09852721562','EM\'s Barrio Legazpi Albay'),(5,'Rouen','Obligacion','robligacion@yahoo.com','09524268821','Tagatay Camalig Albay'),(6,'Terrenze Josh','Binamira','tjbinamira@gmail.com',NULL,'Taysan Legazpi Albay'),(7,'Jay','Balane',NULL,'09992155421','San Francisco Sto. Domingo Albay'),(8,'Ken','Tominaga','ktominaga@gmail.com','09921542182','Washington Legazpi City Albay'),(9,'Karl Arman','De Vera','kadevera@yahoo.com','09221456552','Gogon Legazpi City Albay'),(10,'Fredrick John','Depante',NULL,'09228897899','Barriada Legazpi City Albay'),(11,'Sean Ashley','LLaguno','sallaguno@i-cloud.com','09221889859','Washington Legazpi City Albay'),(12,'Erricah Joyce','Braga','ejbraga@yahoo.com','09952885725','Rapu-Rapu Legazpi City Albay'),(13,'Ma. Alexa Nicole','Boroc','manboroc@gmail.com',NULL,'Joroan Tiwi Albay'),(14,'Carl Erick','Bagato','cebagato@yahoo.com','09986572854','Tamaoyan Legazpi City Albay'),(15,'Eric Jon','Tripulca',NULL,'09872819256','Victory Village Legazpi City Albay'),(16,'Jan Christian','Manganan','jcmanganan22@gmail.com','09652819292','Washingon Legazpi City Albay'),(17,'Rodyl','Imperial','rimperial1@gmail.com','09421825814','Old Airport Legazpi City Albay'),(18,'Justine Albert','Pecson','japecson9@gmail.com','09623125245','Malabog Daraga Albay'),(19,'Mary Grace','Condat','mgcondat1@yahoo.com','09325829124','Joroan Tiwi Albay'),(20,'Jun','Tominaga',NULL,NULL,'Washington Legazpi City Albay'),(21,'Freddie Butter','Fazbear','fbf20@gmail.com','09352216821','Grove Street Camalig Albay'),(23,'Erlinda','Moyo','em26@gmail.com','09241679753','Cabangan Camalig Albay'),(24,'Juanita','Linsoco','jlensoco@gmail.com','09252136313','Salugan Camalig Albay');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdetails` (
  `OrderDetailID` int NOT NULL AUTO_INCREMENT,
  `OrderID` int DEFAULT NULL,
  `PetID` int DEFAULT NULL,
  `ProductID` int DEFAULT NULL,
  `Quantity` int NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`OrderDetailID`),
  KEY `OrderID` (`OrderID`),
  KEY `PetID` (`PetID`),
  KEY `ProductID` (`ProductID`),
  CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (`PetID`) REFERENCES `pets` (`PetID`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `orderdetails_ibfk_3` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetails`
--

LOCK TABLES `orderdetails` WRITE;
/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
INSERT INTO `orderdetails` VALUES (11,1,NULL,NULL,1,699.99),(13,3,7,NULL,1,599.99),(14,4,6,NULL,1,99.99),(16,6,NULL,1,1,25.99),(17,7,NULL,6,1,9.99),(19,9,NULL,10,1,14.99),(20,10,NULL,2,1,5.99);
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderlogs`
--

DROP TABLE IF EXISTS `orderlogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderlogs` (
  `LogID` int NOT NULL AUTO_INCREMENT,
  `OrderID` int DEFAULT NULL,
  `CustomerID` int DEFAULT NULL,
  `OrderDate` datetime DEFAULT NULL,
  `ActionType` varchar(50) DEFAULT NULL,
  `LogTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`LogID`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderlogs`
--

LOCK TABLES `orderlogs` WRITE;
/*!40000 ALTER TABLE `orderlogs` DISABLE KEYS */;
INSERT INTO `orderlogs` VALUES (22,1,1,'2025-01-10 00:00:00','Reconstructed','2025-05-09 04:24:15'),(23,3,5,'2025-01-15 00:00:00','Reconstructed','2025-05-09 04:24:15'),(24,4,8,'2025-01-18 00:00:00','Reconstructed','2025-05-09 04:24:15'),(25,6,11,'2025-01-22 00:00:00','Reconstructed','2025-05-09 04:24:15'),(26,7,12,'2025-01-25 00:00:00','Reconstructed','2025-05-09 04:24:15'),(27,8,13,'2025-01-28 00:00:00','Reconstructed','2025-05-09 04:24:15'),(28,9,14,'2025-02-01 00:00:00','Reconstructed','2025-05-09 04:24:15'),(29,10,16,'2025-02-05 00:00:00','Reconstructed','2025-05-09 04:24:15'),(30,11,1,'2025-03-14 00:00:00','Reconstructed','2025-05-09 04:24:15'),(31,12,1,'2025-03-14 00:00:00','Reconstructed','2025-05-09 04:24:15'),(32,13,1,'2025-03-14 00:00:00','Reconstructed','2025-05-09 04:24:15'),(33,17,11,'2025-03-15 00:00:00','Reconstructed','2025-05-09 04:24:15'),(34,18,12,'2025-03-15 00:00:00','Reconstructed','2025-05-09 04:24:15'),(35,20,14,'2025-03-15 00:00:00','Reconstructed','2025-05-09 04:24:15'),(37,8,13,'2025-01-28 00:00:00','Updated Status: Completed → Pending','2025-05-09 06:10:03'),(38,13,1,'2025-03-14 00:00:00','Updated Status: Completed → Pending','2025-05-12 04:33:56'),(39,12,1,'2025-03-14 00:00:00','Updated Status: Completed → Pending','2025-05-12 04:53:16');
/*!40000 ALTER TABLE `orderlogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `OrderID` int NOT NULL AUTO_INCREMENT,
  `CustomerID` int DEFAULT NULL,
  `OrderDate` date NOT NULL,
  `TotalAmount` decimal(10,2) NOT NULL,
  `Status` enum('Pending','Completed','Canceled') NOT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `CustomerID` (`CustomerID`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,'2025-01-10',699.99,'Completed'),(3,5,'2025-01-15',599.99,'Completed'),(4,8,'2025-01-18',99.99,'Completed'),(6,11,'2025-01-22',25.99,'Completed'),(7,12,'2025-01-25',9.99,'Canceled'),(9,14,'2025-02-01',14.99,'Canceled'),(10,16,'2025-02-05',5.99,'Completed'),(11,1,'2025-03-14',150.00,'Completed'),(12,1,'2025-03-14',150.00,'Pending'),(17,11,'2025-03-15',300.00,'Canceled'),(18,12,'2025-03-15',400.00,'Canceled'),(20,14,'2025-03-15',100.00,'Completed');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `AfterInsert_OrderLog` AFTER INSERT ON `orders` FOR EACH ROW BEGIN
    INSERT INTO OrderLogs (OrderID, CustomerID, OrderDate, ActionType)
    VALUES (NEW.OrderID, NEW.CustomerID, NEW.OrderDate, 'Inserted');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `AfterUpdate_OrderStatusLog` AFTER UPDATE ON `orders` FOR EACH ROW BEGIN
    IF OLD.Status <> NEW.Status THEN
        INSERT INTO OrderLogs (OrderID, CustomerID, OrderDate, ActionType)
        VALUES (NEW.OrderID, NEW.CustomerID, NEW.OrderDate, CONCAT('Updated Status: ', OLD.Status, ' → ', NEW.Status));
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `BeforeDelete_PreventOrderDeletion` BEFORE DELETE ON `orders` FOR EACH ROW BEGIN
    IF OLD.Status = 'Completed' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot delete a completed order!';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `ordersummary`
--

DROP TABLE IF EXISTS `ordersummary`;
/*!50001 DROP VIEW IF EXISTS `ordersummary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ordersummary` AS SELECT 
 1 AS `OrderID`,
 1 AS `FirstName`,
 1 AS `LastName`,
 1 AS `OrderDate`,
 1 AS `TotalAmount`,
 1 AS `Status`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `petlogs`
--

DROP TABLE IF EXISTS `petlogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `petlogs` (
  `LogID` int NOT NULL AUTO_INCREMENT,
  `PetID` int DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Species` varchar(50) DEFAULT NULL,
  `Breed` varchar(50) DEFAULT NULL,
  `DeletedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`LogID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `petlogs`
--

LOCK TABLES `petlogs` WRITE;
/*!40000 ALTER TABLE `petlogs` DISABLE KEYS */;
INSERT INTO `petlogs` VALUES (1,2,'Mittens','Cat','Siamese','2025-03-14 14:01:25'),(2,1,'Buddy','Dog','Golden Retriever','2025-03-15 05:10:47'),(3,13,'cidwick','dog','askal','2025-05-10 04:22:37'),(4,14,'charizard','cat','cat breed','2025-05-12 04:36:05'),(5,15,'mouse','rat','breed','2025-05-12 04:54:34');
/*!40000 ALTER TABLE `petlogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pets`
--

DROP TABLE IF EXISTS `pets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pets` (
  `PetID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Species` varchar(50) NOT NULL,
  `Breed` varchar(50) DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `Gender` enum('Male','Female') DEFAULT NULL,
  `Price` decimal(10,2) NOT NULL,
  `ArrivalDate` date DEFAULT NULL,
  `Status` enum('Available','Sold') DEFAULT 'Available',
  `SupplierID` int DEFAULT NULL,
  PRIMARY KEY (`PetID`),
  KEY `SupplierID` (`SupplierID`),
  CONSTRAINT `pets_ibfk_1` FOREIGN KEY (`SupplierID`) REFERENCES `suppliers` (`SupplierID`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pets`
--

LOCK TABLES `pets` WRITE;
/*!40000 ALTER TABLE `pets` DISABLE KEYS */;
INSERT INTO `pets` VALUES (3,'Coco','Parrot','African Grey',3,'Male',349.99,'2025-01-10','Sold',3),(4,'Goldie','Fish','Goldfish',1,'Female',9.99,'2025-01-15','Available',4),(5,'Rocky','Dog','Bulldog',4,'Male',799.99,'2025-01-20','Sold',5),(6,'Snowball','Rabbit','Netherland Dwarf',2,'Female',99.99,'2025-01-25','Sold',6),(7,'Shadow','Cat','Persian',3,'Male',599.99,'2025-01-30','Sold',7),(8,'Tweety','Bird','Canary',2,'Female',49.99,'2025-02-01','Available',8),(9,'Hammy','Hamster','Syrian',1,'Male',29.99,'2025-02-05','Available',9),(10,'Bubbles','Fish','Betta',1,'Female',14.99,'2025-02-10','Available',10),(11,'Kyu','Dog','Labrador',3,'Male',300.00,'2025-01-31','Sold',3),(12,'cedi','dog','wews',1,'Male',89.00,'2025-05-10','Available',1);
/*!40000 ALTER TABLE `pets` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `BeforeInsert_CheckPetStock` BEFORE INSERT ON `pets` FOR EACH ROW BEGIN
    IF NEW.Price < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Pet price cannot be negative';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `AfterDelete_PetLog` AFTER DELETE ON `pets` FOR EACH ROW BEGIN
    INSERT INTO PetLogs (PetID, Name, Species, Breed)
    VALUES (OLD.PetID, OLD.Name, OLD.Species, OLD.Breed);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `ProductID` int NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(100) NOT NULL,
  `Description` text,
  `Price` decimal(10,2) NOT NULL,
  `StockQuantity` int NOT NULL,
  `CategoryID` int DEFAULT NULL,
  PRIMARY KEY (`ProductID`),
  KEY `CategoryID` (`CategoryID`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`CategoryID`) REFERENCES `categories` (`CategoryID`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Dog Food - Chicken','Nutritious chicken-flavored dog food',25.99,50,1),(2,'Cat Toy Mouse','Soft and interactive toy for cats',5.99,100,2),(3,'Bird Cage','Spacious bird cage with perches',79.99,10,6),(4,'Fish Tank 10 Gallon','Glass tank for small fish',49.99,15,6),(5,'Dog Shampoo','Anti-flea shampoo for dogs',12.99,30,4),(6,'Rabbit Pellets','High-protein pellets for rabbits',9.99,40,1),(7,'Leash & Collar Set','Adjustable leash and collar',19.99,25,3),(8,'Training Clicker','Clicker tool for pet training',4.99,60,7),(9,'Pet Bed','Comfortable bed for small pets',29.99,20,6),(10,'Hamster Wheel','Exercise wheel for hamsters',14.99,35,2),(11,'dog toy','its a toy hehehe',90.00,100,1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `BeforeUpdate_CheckStock` BEFORE UPDATE ON `products` FOR EACH ROW BEGIN
    IF NEW.StockQuantity < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Stock quantity cannot be negative';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `productsales`
--

DROP TABLE IF EXISTS `productsales`;
/*!50001 DROP VIEW IF EXISTS `productsales`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `productsales` AS SELECT 
 1 AS `ProductName`,
 1 AS `TotalSold`,
 1 AS `TotalRevenue`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `revenuecomparison`
--

DROP TABLE IF EXISTS `revenuecomparison`;
/*!50001 DROP VIEW IF EXISTS `revenuecomparison`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `revenuecomparison` AS SELECT 
 1 AS `Category`,
 1 AS `Revenue`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `SupplierID` int NOT NULL AUTO_INCREMENT,
  `SupplierName` varchar(100) NOT NULL,
  `ContactPerson` varchar(100) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SupplierID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (1,'Happy Pets Supply','Jeremy Lin','09252446523','jln@happypets.com','#6 Purok 1 Pet Street'),(2,'PetWorld','Kobe Bryant','09425421252','kbryant@petworld.com','#1 Camella Homes Zoo Lane'),(3,'Furry Friends Inc.','Lebron James','09242125624','lbj@furryfriends.com','#13 Street Paw Avenue'),(4,'Animal Kingdom','Erlinda Moyo','09888525829','emoyo@animalkingdom.com','#9 Purok 5 Wild Blvd'),(5,'Paws & Claws','Trebor Ocosnel','09582829169','treborocosnel@pawsclaws.com','#11 Street Fur Street'),(6,'Zoo Supplies Ltd.','Sandy Reaver','09686858295','sandyr@zoosupplies.com','#52 Pet Plaza'),(7,'Best Pet Products','Jett Castro','09586869529','jettc@bestpets.com','#12 Animal Ave'),(8,'Pet Essentials','Raze Lignon','09582372754','rlignon@petessentials.com','#20 Creature Road'),(9,'Friendly Pets Co.','Gemma Lyn Watson','09252221256','glwatson@friendlypets.com','#52 Beast Blvd'),(10,'Premium Pet Care','Dick Richardson','09216254823','dickr@premiumpets.com','#6 Purok 3Wildlife Way'),(11,'JC Pet Care','Benedict Lensoco','09325552216','blensoco@jcpet.com','#7 Purok 1 Salugan Camalig Albay');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'petstoredb'
--
/*!50106 SET @save_time_zone= @@TIME_ZONE */ ;
/*!50106 DROP EVENT IF EXISTS `ClearOldOrderLogs` */;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `ClearOldOrderLogs` ON SCHEDULE EVERY 30 SECOND STARTS '2025-04-01 14:28:17' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
    DELETE FROM OrderLogs WHERE LogTime < NOW() - INTERVAL 1 WEEK;
END */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
DELIMITER ;
/*!50106 SET TIME_ZONE= @save_time_zone */ ;

--
-- Dumping routines for database 'petstoredb'
--
/*!50003 DROP FUNCTION IF EXISTS `CalculateTotalOrderAmount` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `CalculateTotalOrderAmount`(order_id INT) RETURNS decimal(10,2)
    DETERMINISTIC
BEGIN
    DECLARE total_amount DECIMAL(10,2);
    
    SELECT SUM(Price * Quantity) INTO total_amount 
    FROM OrderDetails 
    WHERE OrderID = order_id;
    
    RETURN total_amount;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `CalculateTotalSpent` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `CalculateTotalSpent`(cust_id INT) RETURNS decimal(10,2)
    DETERMINISTIC
BEGIN
    DECLARE total_spent DECIMAL(10,2);
    
    SELECT SUM(TotalAmount) INTO total_spent 
    FROM Orders 
    WHERE CustomerID = cust_id;
    
    RETURN COALESCE(total_spent, 0);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetCustomerFullName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetCustomerFullName`(cust_id INT) RETURNS varchar(100) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE full_name VARCHAR(100);
    
    SELECT CONCAT(FirstName, ' ', LastName) INTO full_name 
    FROM Customers 
    WHERE CustomerID = cust_id;
    
    RETURN full_name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetPetStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetPetStatus`(pet_id INT) RETURNS char(20) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE pet_status CHAR(20);
    
    SELECT Status INTO pet_status 
    FROM Pets 
    WHERE PetID = pet_id;
    
    RETURN pet_status;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetTotalOrdersByCustomer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetTotalOrdersByCustomer`(cust_id INT) RETURNS int
    DETERMINISTIC
BEGIN
    DECLARE total_orders INT;
    
    SELECT COUNT(*) INTO total_orders 
    FROM Orders 
    WHERE CustomerID = cust_id;
    
    RETURN total_orders;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AddCustomer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AddCustomer`(
    IN fname VARCHAR(50), 
    IN lname VARCHAR(50), 
    IN email VARCHAR(100), 
    IN phone VARCHAR(15), 
    IN addr VARCHAR(255)
)
BEGIN
    INSERT INTO Customers (FirstName, LastName, Email, Phone, Address)
    VALUES (fname, lname, email, phone, addr);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AddPet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AddPet`(
    IN name VARCHAR(100),
    IN species VARCHAR(100),
    IN breed VARCHAR(100),
    IN age INT,
    IN gender VARCHAR(10),
    IN price DECIMAL(10, 2),
    IN supplierid INT
)
BEGIN
    INSERT INTO Pets (Name, Species, Breed, Age, Gender, Price, ArrivalDate, Status, SupplierID)
    VALUES (name, species, breed, age, gender, price, CURRENT_DATE, 'Available', supplierid);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AddProduct` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AddProduct`(
    IN p_ProductName VARCHAR(100),
    IN p_Description TEXT,
    IN p_Price DECIMAL(10,2),
    IN p_StockQuantity INT,
    IN p_CategoryID INT
)
BEGIN
    INSERT INTO Products (ProductName, Description, Price, StockQuantity, CategoryID)
    VALUES (p_ProductName, p_Description, p_Price, p_StockQuantity, p_CategoryID);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeleteProduct` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteProduct`(
    IN p_ProductID INT
)
BEGIN
    DELETE FROM Products WHERE ProductID = p_ProductID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetAvailablePets` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAvailablePets`()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE pet_name VARCHAR(50);
    DECLARE pet_cursor CURSOR FOR SELECT Name FROM Pets WHERE Status = 'Available';
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
    OPEN pet_cursor;
    pet_loop: LOOP
        FETCH pet_cursor INTO pet_name;
        IF done THEN
            LEAVE pet_loop;
        END IF;
        SELECT pet_name AS AvailablePet;
    END LOOP;
    CLOSE pet_cursor;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetCustomerOrders` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetCustomerOrders`(IN customer_id INT)
BEGIN
    SELECT * FROM Orders WHERE CustomerID = customer_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetCustomerOrderSummary` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetCustomerOrderSummary`()
BEGIN
    SELECT 
        CustomerID, 
        GetCustomerFullName(CustomerID) AS CustomerName, 
        COUNT(OrderID) AS TotalOrders, 
        CalculateTotalSpent(CustomerID) AS TotalSpent
    FROM Orders
    GROUP BY CustomerID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetTotalSpentByCustomer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetTotalSpentByCustomer`(IN customer_id INT, OUT total_spent DECIMAL(10,2))
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE order_total DECIMAL(10,2);
    DECLARE total_sum DECIMAL(10,2) DEFAULT 0;
    
    -- Cursor to fetch total amount from each order
    DECLARE order_cursor CURSOR FOR 
        SELECT TotalAmount FROM Orders WHERE CustomerID = customer_id;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
    OPEN order_cursor;
    
    order_loop: LOOP
        FETCH order_cursor INTO order_total;
        IF done THEN
            LEAVE order_loop;
        END IF;
        SET total_sum = total_sum + order_total;
    END LOOP;
    
    CLOSE order_cursor;
    
    -- Return total amount spent
    SET total_spent = total_sum;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListOrdersByCustomer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ListOrdersByCustomer`(IN customer_id INT)
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE order_id INT;
    DECLARE order_cursor CURSOR FOR SELECT OrderID FROM Orders WHERE CustomerID = customer_id;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN order_cursor;
    order_loop: LOOP
        FETCH order_cursor INTO order_id;
        IF done THEN
            LEAVE order_loop;
        END IF;
        SELECT * FROM Orders WHERE OrderID = order_id;
    END LOOP;
    CLOSE order_cursor;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateOrderStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateOrderStatus`(
    IN p_order_id INT,
    IN p_new_status VARCHAR(50)
)
BEGIN
    -- Ensure status is one of the allowed values
    IF p_new_status NOT IN ('Canceled', 'Pending', 'Completed') THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Invalid status. Allowed values: Canceled, Pending, Completed.';
    ELSE
        -- Check if order exists
        IF EXISTS (SELECT 1 FROM Orders WHERE OrderID = p_order_id) THEN
            UPDATE Orders
            SET Status = p_new_status
            WHERE OrderID = p_order_id;
        ELSE
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Order ID does not exist.';
        END IF;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `activecustomers`
--

/*!50001 DROP VIEW IF EXISTS `activecustomers`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `activecustomers` AS select `customers`.`CustomerID` AS `CustomerID`,`customers`.`FirstName` AS `FirstName`,`customers`.`LastName` AS `LastName`,`customers`.`Email` AS `Email`,`customers`.`Phone` AS `Phone`,`customers`.`Address` AS `Address` from `customers` where ((`customers`.`Email` is not null) and (`customers`.`Phone` is not null)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `availablepets`
--

/*!50001 DROP VIEW IF EXISTS `availablepets`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `availablepets` AS select `pets`.`PetID` AS `PetID`,`pets`.`Name` AS `Name`,`pets`.`Species` AS `Species`,`pets`.`Breed` AS `Breed`,`pets`.`Age` AS `Age`,`pets`.`Gender` AS `Gender`,`pets`.`Price` AS `Price`,`pets`.`Status` AS `Status` from `pets` where (`pets`.`Status` = 'Available') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ordersummary`
--

/*!50001 DROP VIEW IF EXISTS `ordersummary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ordersummary` AS select `o`.`OrderID` AS `OrderID`,`c`.`FirstName` AS `FirstName`,`c`.`LastName` AS `LastName`,`o`.`OrderDate` AS `OrderDate`,`CalculateTotalOrderAmount`(`o`.`OrderID`) AS `TotalAmount`,`o`.`Status` AS `Status` from (`orders` `o` join `customers` `c` on((`o`.`CustomerID` = `c`.`CustomerID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `productsales`
--

/*!50001 DROP VIEW IF EXISTS `productsales`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `productsales` AS select `p`.`ProductName` AS `ProductName`,sum(`od`.`Quantity`) AS `TotalSold`,sum(`od`.`Price`) AS `TotalRevenue` from (`orderdetails` `od` join `products` `p` on((`od`.`ProductID` = `p`.`ProductID`))) group by `p`.`ProductID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `revenuecomparison`
--

/*!50001 DROP VIEW IF EXISTS `revenuecomparison`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `revenuecomparison` AS select 'Pets' AS `Category`,sum(`od`.`Price`) AS `Revenue` from (`orderdetails` `od` join `pets` `p` on((`od`.`PetID` = `p`.`PetID`))) union select 'Products' AS `Category`,sum(`od`.`Price`) AS `Revenue` from (`orderdetails` `od` join `products` `pr` on((`od`.`ProductID` = `pr`.`ProductID`))) */;
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

-- Dump completed on 2025-05-15  0:53:26
