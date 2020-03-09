-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: opmanager
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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1001,'praveen','admin1234');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drug_stock`
--

DROP TABLE IF EXISTS `drug_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_stock` (
  `drg_id` int NOT NULL AUTO_INCREMENT,
  `drg_name` varchar(255) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`drg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drug_stock`
--

LOCK TABLES `drug_stock` WRITE;
/*!40000 ALTER TABLE `drug_stock` DISABLE KEYS */;
INSERT INTO `drug_stock` VALUES (1,'paracetamol',14,500);
/*!40000 ALTER TABLE `drug_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_history`
--

DROP TABLE IF EXISTS `patient_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_history` (
  `his_id` int NOT NULL AUTO_INCREMENT,
  `p_id` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `viewdate` date DEFAULT NULL,
  `doctor` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `desease` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`his_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_history`
--

LOCK TABLES `patient_history` WRITE;
/*!40000 ALTER TABLE `patient_history` DISABLE KEYS */;
INSERT INTO `patient_history` VALUES (2,1117,'Rahul',54,'2020-03-06','Dr.K. Vinayachandran Nair','dream vally','cold');
/*!40000 ALTER TABLE `patient_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `viewdate` date DEFAULT NULL,
  `age` int DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` int DEFAULT NULL,
  `doctorname` varchar(255) DEFAULT NULL,
  `doctorid` int DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `done` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (1112,'sugumar','2020-03-02',45,'sjgygys',987655,'Dr.K. Vinayachandran Nair',10,'cold',1),(1113,'sidharth','2020-03-02',45,'dkjiojoi',9838776,'Dr.K. Vinayachandran Nair',10,'kalady',1),(1114,'Raju','2020-03-02',45,'dghj',88655,'Dr.K. Vinayachandran Nair',10,'malappuram',1),(1115,'Ramya','2020-03-06',23,'sweet ville',98765644,'Dr.K. Vinayachandran Nair',10,'manjeri',1),(1116,'Rahul','2020-03-06',65,'down town',9876554,'Dr.K. Vinayachandran Nair',10,'poozhikunn',1),(1117,'Rahul','2020-03-06',54,'dream vally',9876554,'Dr.K. Vinayachandran Nair',10,'kodungallur',1);
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `priscription`
--

DROP TABLE IF EXISTS `priscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `priscription` (
  `pric_id` int NOT NULL AUTO_INCREMENT,
  `p_id` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `desease` varchar(255) DEFAULT NULL,
  `priscription` varchar(255) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `viewdate` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `done` int DEFAULT NULL,
  `doctor_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pric_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `priscription`
--

LOCK TABLES `priscription` WRITE;
/*!40000 ALTER TABLE `priscription` DISABLE KEYS */;
INSERT INTO `priscription` VALUES (1,1113,'sidharth',45,'cold','paracetamol 650','9838776','2020-03-02','dkjiojoi',1,NULL),(2,1112,'sugumar',45,'cold','para','987655','2020-03-02','sjgygys',1,NULL),(3,1112,'sugumar',45,'cold','para','987655','2020-03-02','sjgygys',1,NULL),(4,1112,'sugumar',45,'cold','para','987655','2020-03-02','sjgygys',1,NULL),(5,1114,'Raju',45,'cold','para','88655','2020-03-02','dghj',NULL,NULL),(6,1114,'Raju',45,'cold','ccc','88655','2020-03-02','dghj',NULL,NULL),(7,1114,'Raju',45,'cold','paracetamol 650,panadol 350,cough sirup','88655','2020-03-02','dghj',NULL,NULL),(8,1115,'Ramya',23,'cold','para','98765644','2020-03-06','sweet ville',NULL,'Dr.K. Vinayachandran Nair'),(9,1116,'Rahul',65,'cold','paracetamol 650','9876554','2020-03-06','down town',NULL,'Dr.K. Vinayachandran Nair'),(10,1117,'Rahul',54,'cold','paracetamol 650','9876554','2020-03-06','dream vally',1,'Dr.K. Vinayachandran Nair');
/*!40000 ALTER TABLE `priscription` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_insert_on_priscription` AFTER INSERT ON `priscription` FOR EACH ROW begin
insert into patient_history(p_id,name,age,viewdate,doctor,address,desease) values(new.p_id,new.name,new.age,new.viewdate,new.doctor_name,new.address,new.desease);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `specialization` varchar(255) DEFAULT NULL,
  `usertype` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `security` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (8,'Abishek',28,'accounting','accounting','Receptionist','a1234','abi','What Is Your Pet\'s Name ?','tingu'),(10,'Dr.K. Vinayachandran Nair',48,'MBBS, MD, DM, FACG','Gastroenterologist','Doctor','v1234','vinay','What Is Your Favourite Footbal Player ?','ronaldo'),(11,'Ramdas',45,'accountancy','accounting','Pharmasist','r1234','ram','What Is Your Pet\'s Name ?','tinu');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-09 22:46:07
