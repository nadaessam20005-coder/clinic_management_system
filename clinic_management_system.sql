-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: clinic_management_system
-- ------------------------------------------------------
-- Server version	8.0.43

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
  `appointment_id` int NOT NULL AUTO_INCREMENT,
  `appointment_date` date NOT NULL,
  `patient_id` int DEFAULT NULL,
  `doctor_id` int DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `diagnosis` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`appointment_id`),
  KEY `patient_id` (`patient_id`),
  KEY `doctor_id` (`doctor_id`),
  CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`),
  CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`doctor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES (1,'2023-01-10',1,1,'09:00:00','09:30:00',150.00,'Hypertension'),(2,'2023-01-12',2,2,'10:00:00','10:45:00',200.00,'Migraine'),(3,'2023-01-15',3,3,'14:00:00','14:30:00',175.00,'Knee pain'),(4,'2023-01-18',4,4,'11:00:00','11:30:00',125.00,'Childhood vaccination'),(5,'2023-01-20',5,5,'13:00:00','13:45:00',300.00,'Follow-up treatment'),(6,'2023-01-22',6,6,'15:00:00','15:30:00',150.00,'Skin rash'),(7,'2023-01-25',7,7,'10:30:00','11:15:00',225.00,'Acid reflux'),(8,'2023-01-28',8,8,'08:00:00','08:45:00',250.00,'Diabetes check'),(9,'2023-02-01',9,9,'16:00:00','16:30:00',175.00,'Joint pain'),(10,'2023-02-05',10,10,'09:30:00','10:15:00',200.00,'Asthma'),(11,'2025-02-14',11,7,'10:00:00','10:30:00',180.00,'Fatty liver disease'),(12,'2025-05-14',12,7,'11:00:00','11:45:00',220.00,'Severe fatty liver'),(13,'2024-11-14',13,7,'14:00:00','14:30:00',195.00,'Early stage fatty liver'),(14,'2024-07-14',11,7,'15:00:00','15:30:00',180.00,'Fatty liver checkup'),(15,'2025-02-14',11,7,'10:00:00','10:30:00',180.00,'Fatty liver disease'),(16,'2025-05-14',12,7,'11:00:00','11:45:00',220.00,'Severe fatty liver'),(17,'2024-11-14',13,7,'14:00:00','14:30:00',195.00,'Early stage fatty liver'),(18,'2024-07-14',11,7,'15:00:00','15:30:00',180.00,'Fatty liver checkup'),(19,'2025-02-14',12527,1,'09:00:00','09:45:00',300.00,'Cardiac checkup'),(20,'2024-02-14',12527,1,'10:00:00','10:30:00',250.00,'Follow-up'),(21,'2023-02-14',12527,1,'11:00:00','11:45:00',350.00,'Initial consultation'),(22,'2022-08-14',12527,1,'13:00:00','13:30:00',200.00,'Routine checkup');
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clinic`
--

DROP TABLE IF EXISTS `clinic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinic` (
  `clinic_id` int NOT NULL AUTO_INCREMENT,
  `clinic_name` varchar(100) NOT NULL,
  `clinic_address` varchar(255) NOT NULL,
  `department_id` int DEFAULT NULL,
  PRIMARY KEY (`clinic_id`),
  KEY `department_id` (`department_id`),
  CONSTRAINT `clinic_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinic`
--

LOCK TABLES `clinic` WRITE;
/*!40000 ALTER TABLE `clinic` DISABLE KEYS */;
INSERT INTO `clinic` VALUES (1,'Heart Care Center','100 Cardiac Way, Anytown',1),(2,'Neuro Specialists','200 Brain Blvd, Somewhere',2),(3,'Bone & Joint Clinic','300 Skeletal St, Nowhere',3),(4,'Children\'s Health','400 Pediatric Pl, Anywhere',4),(5,'Cancer Treatment Center','500 Oncology Dr, Everywhere',5),(6,'Skin Health Clinic','600 Dermatology Ln, Anytown',6),(7,'Digestive Wellness','700 Stomach St, Somewhere',7),(8,'Hormone Health','800 Endocrine Ave, Nowhere',8),(9,'Arthritis Center','900 Joint Jct, Anywhere',9),(10,'Lung Health Institute','1000 Pulmonary Pl, Everywhere',10),(11,'Advanced Cardiac Center','111 Heart Way, Cardiotown',1),(12,'Metro Heart Clinic','222 Pulse Avenue, Coronary City',1),(13,'Vascular Specialists','333 Artery Road, Circulville',1);
/*!40000 ALTER TABLE `clinic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `department_id` int NOT NULL AUTO_INCREMENT,
  `department_name` varchar(100) NOT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'Cardiology'),(2,'Neurology'),(3,'Orthopedics'),(4,'Pediatrics'),(5,'Oncology'),(6,'Dermatology'),(7,'Gastroenterology'),(8,'Endocrinology'),(9,'Rheumatology'),(10,'Pulmonology');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `doctor_id` int NOT NULL AUTO_INCREMENT,
  `doctor_first_name` varchar(50) NOT NULL,
  `doctor_last_name` varchar(50) NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `department_id` int DEFAULT NULL,
  PRIMARY KEY (`doctor_id`),
  KEY `department_id` (`department_id`),
  CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (1,'James','Wilson','555-111-2222','111 Doctor Ln, Medtown',1),(2,'Patricia','Moore','555-222-3333','222 Physician Ave, Healthville',2),(3,'Richard','Taylor','555-333-4444','333 Specialist St, Carecity',3),(4,'Mary','Anderson','555-444-5555','444 Surgeon Rd, Wellburg',4),(5,'Charles','Thomas','555-555-6666','555 Medic Blvd, Healtown',5),(6,'Susan','Jackson','555-666-7777','666 Clinic Ct, Medville',6),(7,'Daniel','White','555-777-8888','777 Hospital Dr, Caretown',7),(8,'Karen','Harris','555-888-9999','888 Practice Ln, Wellcity',8),(9,'Matthew','Martin','555-999-0000','999 Health Ave, Medburg',9),(10,'Nancy','Thompson','555-000-1111','1010 Wellness St, Healville',10);
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `followup`
--

DROP TABLE IF EXISTS `followup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `followup` (
  `followup_id` int NOT NULL AUTO_INCREMENT,
  `appointment_id` int NOT NULL,
  `followup_date` date NOT NULL,
  `notes` text,
  `status` enum('scheduled','pending','completed','cancelled') DEFAULT NULL,
  PRIMARY KEY (`followup_id`),
  KEY `appointment_id` (`appointment_id`),
  CONSTRAINT `followup_ibfk_1` FOREIGN KEY (`appointment_id`) REFERENCES `appointment` (`appointment_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `followup`
--

LOCK TABLES `followup` WRITE;
/*!40000 ALTER TABLE `followup` DISABLE KEYS */;
INSERT INTO `followup` VALUES (1,1,'2023-04-10','Patient needs to monitor blood pressure daily','scheduled'),(2,2,'2023-04-15','New medication prescribed, monitor side effects','pending'),(3,3,'2023-05-01','Physical therapy recommended','cancelled'),(4,4,'2023-06-20','Next vaccination due','scheduled'),(5,5,'2023-03-15','Continue current treatment plan','completed'),(6,6,'2023-02-28','Reschedule due to cancellation','pending'),(7,7,'2023-04-05','Assess effectiveness of new medication','scheduled'),(8,8,'2023-05-10','Annual diabetes checkup','pending'),(9,9,'2023-03-20','Evaluate response to treatment','scheduled'),(10,10,'2023-05-15','Lung function test needed','pending');
/*!40000 ALTER TABLE `followup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `patient_id` int NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `job` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,'John','Smith','555-123-4567','123 Main St, Anytown','1980-05-15','Teacher'),(2,'Emily','Johnson','555-234-5678','456 Oak Ave, Somewhere','1992-08-22','Nurse'),(3,'Michael','Williams','555-345-6789','789 Pine Rd, Nowhere','1975-11-30','Engineer'),(4,'Sarah','Brown','555-456-7890','321 Elm Ln, Anywhere','1988-03-10','Accountant'),(5,'David','Jones','555-567-8901','654 Maple Dr, Everywhere','1995-07-18','Student'),(6,'Jennifer','Garcia','555-678-9012','987 Cedar Blvd, Somewhere','1983-09-25','Lawyer'),(7,'Robert','Miller','555-789-0123','135 Birch Ct, Nowhere','1970-12-05','Retired'),(8,'Lisa','Davis','555-890-1234','246 Walnut St, Anywhere','1990-04-12','Marketing'),(9,'Thomas','Rodriguez','555-901-2345','369 Spruce Ave, Everywhere','1986-06-20','Developer'),(10,'Jessica','Martinez','555-012-3456','480 Ash Rd, Anytown','1998-01-08','Waitress'),(11,'William','Anderson','555-112-2334','789 Liver Lane, Healthville','1985-09-12','Chef'),(12,'Amanda','Clark','555-223-3445','456 Hepatic Street, Nutritown','1978-11-25','Bartender'),(13,'Daniel','White','555-334-4556','123 Fatty Road, Dietcity','1990-03-18','Food Critic'),(12527,'Robert','Johnson','555-125-2727','12527 Payment Blvd, Financetown','1972-07-15','Accountant');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-14 15:07:41
