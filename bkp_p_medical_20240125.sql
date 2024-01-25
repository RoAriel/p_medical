-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
--
-- Host: localhost    Database: p_medical
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branch` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `location` varchar(20) NOT NULL,
  `address` varchar(35) NOT NULL,
  `phone` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch`
--

LOCK TABLES `branch` WRITE;
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` VALUES (1,'Consultorio La Esmeralda','Zona Oeste','Ctra. de Fuentenueva 9','1529231373'),(2,'Consultorio Villa Espania','Zona Sur','Fuente del Gallo 68','1557340592'),(3,'Consultorio Loreto','Zona Norte','C/ Andalucia 62','1518569446'),(4,'Consultorio San Isidro','Zona Norte','Puerto Lugar 24','1588804546'),(5,'Consultorio Monaco','Zona Oeste','Bellavista 12','1539131925'),(6,'Consultorio Manarata','Zona Sur','Cercas Bajas 76','1589371878'),(7,'Consultorio Cruz de Plata','Zona Norte','Padre Caro 45','1506072502'),(8,'Consultorio La Madrid','Zona Sur','Avda. Alameda Sundheim 86','1542400884'),(9,'Consultorio Zona Sur','Zona Sur','Ctra. de la Puerta 66','1559777876'),(10,'Clinica Mother','Zona Sur','Atamaria 11','1560002788'),(11,'Clinica Nilo','Zona Sur','Prolongacion San Sebastian 96','1540796611'),(12,'Clinica Del Renacimiento','Zona Este','Av. Zumalakarregi 37','1590132216'),(13,'Clinica Monroue','Zona Este','Cartagena 87','1595266130'),(14,'Clinica Tres Cruces','Zona Sur','Calvo Sotelo 52','1513792105'),(15,'Clinica Matris','Zona Norte','C/ Manuel Iradier 50','1509604324');
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `f_name` varchar(25) NOT NULL,
  `l_name` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (1,'Josue','Rico'),(2,'Eduardo','Santos'),(3,'Antonio','Gago'),(4,'Iris','Lema'),(5,'Monica','Carranza'),(6,'Asuncion','Falcon'),(7,'Mariana','Uriarte'),(8,'Olatz','Vazquez'),(9,'Eduardo','Santos'),(10,'Olatz','Vazquez');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medical_history`
--

DROP TABLE IF EXISTS `medical_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medical_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `partner_id` int NOT NULL,
  `speciality_id` int NOT NULL,
  `md_history` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `partner_id` (`partner_id`),
  KEY `speciality_id` (`speciality_id`),
  CONSTRAINT `medical_history_ibfk_1` FOREIGN KEY (`partner_id`) REFERENCES `partner` (`id`),
  CONSTRAINT `medical_history_ibfk_2` FOREIGN KEY (`speciality_id`) REFERENCES `medical_speciality` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical_history`
--

LOCK TABLES `medical_history` WRITE;
/*!40000 ALTER TABLE `medical_history` DISABLE KEYS */;
INSERT INTO `medical_history` VALUES (1,1,4,'n/a'),(2,2,10,'n/a'),(3,3,7,'n/a');
/*!40000 ALTER TABLE `medical_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medical_speciality`
--

DROP TABLE IF EXISTS `medical_speciality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medical_speciality` (
  `id` int NOT NULL AUTO_INCREMENT,
  `speciality` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical_speciality`
--

LOCK TABLES `medical_speciality` WRITE;
/*!40000 ALTER TABLE `medical_speciality` DISABLE KEYS */;
INSERT INTO `medical_speciality` VALUES (1,'Clinico'),(2,'Ginecologo'),(3,'Cardiologo'),(4,'Urologo'),(5,'Nutricionista'),(6,'Oftamologo'),(7,'Odontologo'),(8,'Kinesiologo'),(9,'Radiologo'),(10,'Dermatologia'),(11,'Tramautologia'),(12,'Remautologia'),(13,'Neurologia'),(14,'Cirujano'),(15,'Obstetra'),(17,'Oncologo');
/*!40000 ALTER TABLE `medical_speciality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partner`
--

DROP TABLE IF EXISTS `partner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partner` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dni` int NOT NULL,
  `f_name` varchar(25) NOT NULL,
  `l_name` varchar(25) NOT NULL,
  `date_of_birth` date NOT NULL,
  `sex` enum('M','F') NOT NULL,
  `plan_id` int NOT NULL,
  `address` varchar(30) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `plan_id` (`plan_id`),
  CONSTRAINT `partner_ibfk_1` FOREIGN KEY (`plan_id`) REFERENCES `plan` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partner`
--

LOCK TABLES `partner` WRITE;
/*!40000 ALTER TABLE `partner` DISABLE KEYS */;
INSERT INTO `partner` VALUES (1,22739776,'Eduardo','Haro','1975-10-17','M',3,'Rio Segura 5','1577139025','eduardo_haro@gmail.com'),(2,20868229,'Paul','Centeno','1976-03-15','M',2,'Quevedo 79','1538972286','paul_centeno@gmail.com'),(3,24114741,'Maria Candelaria','Espinoza','1978-03-07','F',1,'Caminio Ancho 64','1528967013','candelaria_espinoza@gmail.com'),(4,23263793,'Iker','Bellido','1982-03-30','F',3,'Granada 1234','1555317488','iker_bellido@gmail.com'),(5,28245441,'Maria','Sanjuan','1984-12-02','M',2,'Cadiz 64','1588657255','maria_sanjuan@gmail.com'),(6,21687525,'Jorge','Freire','1985-01-07','M',3,'C/ Andalucia 62','1568105376','jorge_freire@gmail.com'),(7,23615961,'Julia','Benavente','1988-08-09','F',2,'Plazuela do Porto 53','1539864017','julia_benavente@gmail.com'),(8,28930493,'Francisco','Fernndez','1988-11-18','M',1,'Visitacion de la Encina 63','1539134259','francisco_fernndez@gmail.com'),(9,24350619,'Octavio','Galvez','1989-03-31','M',1,'Calle Proc. San Sebastian 60','1555147251','octavio_galvez@gmail.com'),(10,21544467,'Ana','Cerezo','1989-07-20','F',1,'Reyes Catolicos 30','1559226716','ana_cerezo@gmail.com'),(11,24600991,'Claudia','Galera','1992-09-27','F',3,'Boucinia 45','1502951937','claudia_galera@gmail.com'),(12,24792215,'Marian','Pardo','1994-06-12','F',1,'Avda. Generalisimo 61','1580988220','marian_pardo@gmail.com'),(13,29593566,'Saul','Climent','1995-02-15','M',3,'Antonio Vazquez 5','1554045950','saul_climent@gmail.com'),(14,26595549,'Amparo','Santana','1995-09-17','F',2,'Avda. Enrique Peinador 75','1586888030','amparo_santana@gmail.com'),(15,29235535,'Xabier','Baeza','2000-12-08','M',2,'Pl. Virgen Blanca 67','1558274483','xabier_baeza@gmail.com'),(20,22739776,'Micaela','Haro','1975-10-17','M',3,'Rio Negro 5','1577319025','micaela_haro@gmail.com');
/*!40000 ALTER TABLE `partner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partner_audit_logs`
--

DROP TABLE IF EXISTS `partner_audit_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partner_audit_logs` (
  `ID_LOG` int NOT NULL AUTO_INCREMENT,
  `id_user` int NOT NULL,
  `changes` varchar(100) DEFAULT NULL,
  `user_mod` varchar(100) DEFAULT NULL,
  `date_UPD_INS_DEL` timestamp NULL DEFAULT NULL,
  `acction_UPD_INS_DEL` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`ID_LOG`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partner_audit_logs`
--

LOCK TABLES `partner_audit_logs` WRITE;
/*!40000 ALTER TABLE `partner_audit_logs` DISABLE KEYS */;
INSERT INTO `partner_audit_logs` VALUES (1,16,'Se inserto el PARTNER_ID: 16 con el PLAN_ID: 3','root@localhost','2024-01-17 02:16:17','INS'),(2,16,'Update el PLAN_ID: 16 con el PLAN_ID: 2','root@localhost','2024-01-17 02:16:30','UPD'),(3,20,'Se inserto el PARTNER_ID: 20 con el PLAN_ID: 3','root@localhost','2024-01-17 02:34:11','INS'),(4,20,'Update el PLAN_ID: 3 con el PLAN_ID: 3','root@localhost','2024-01-17 02:34:20','UPD');
/*!40000 ALTER TABLE `partner_audit_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plan`
--

DROP TABLE IF EXISTS `plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` enum('B1','B2','EM') NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan`
--

LOCK TABLES `plan` WRITE;
/*!40000 ALTER TABLE `plan` DISABLE KEYS */;
INSERT INTO `plan` VALUES (1,'B1','Descuento en todo 10%'),(2,'B2','Descuento en todo 20%'),(3,'EM','Descuento en todo 40%');
/*!40000 ALTER TABLE `plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relation_speciality_branch`
--

DROP TABLE IF EXISTS `relation_speciality_branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relation_speciality_branch` (
  `id` int NOT NULL AUTO_INCREMENT,
  `speciality_id` int NOT NULL,
  `branch_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `speciality_id` (`speciality_id`),
  KEY `branch_id` (`branch_id`),
  CONSTRAINT `relation_speciality_branch_ibfk_1` FOREIGN KEY (`speciality_id`) REFERENCES `medical_speciality` (`id`),
  CONSTRAINT `relation_speciality_branch_ibfk_2` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relation_speciality_branch`
--

LOCK TABLES `relation_speciality_branch` WRITE;
/*!40000 ALTER TABLE `relation_speciality_branch` DISABLE KEYS */;
INSERT INTO `relation_speciality_branch` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,5,11),(12,8,12),(13,2,13),(14,1,14),(15,7,15),(16,13,5);
/*!40000 ALTER TABLE `relation_speciality_branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relation_speciality_doc`
--

DROP TABLE IF EXISTS `relation_speciality_doc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relation_speciality_doc` (
  `id` int NOT NULL AUTO_INCREMENT,
  `speciality_id` int NOT NULL,
  `doctor_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `speciality_id` (`speciality_id`),
  KEY `doctor_id` (`doctor_id`),
  CONSTRAINT `relation_speciality_doc_ibfk_1` FOREIGN KEY (`speciality_id`) REFERENCES `medical_speciality` (`id`),
  CONSTRAINT `relation_speciality_doc_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relation_speciality_doc`
--

LOCK TABLES `relation_speciality_doc` WRITE;
/*!40000 ALTER TABLE `relation_speciality_doc` DISABLE KEYS */;
INSERT INTO `relation_speciality_doc` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,3,3),(12,8,1),(13,9,3),(14,15,5),(15,14,4),(16,14,4);
/*!40000 ALTER TABLE `relation_speciality_doc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shift`
--

DROP TABLE IF EXISTS `shift`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shift` (
  `id` int NOT NULL AUTO_INCREMENT,
  `partner_id` int NOT NULL,
  `speciality_rel_id` int NOT NULL,
  `relation_speciality_branch_id` int NOT NULL,
  `date_s` date NOT NULL,
  `time_s` time NOT NULL,
  `is_confirm` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `partner_id` (`partner_id`),
  KEY `speciality_rel_id` (`speciality_rel_id`),
  KEY `relation_speciality_branch_id` (`relation_speciality_branch_id`),
  CONSTRAINT `shift_ibfk_1` FOREIGN KEY (`partner_id`) REFERENCES `partner` (`id`),
  CONSTRAINT `shift_ibfk_2` FOREIGN KEY (`speciality_rel_id`) REFERENCES `relation_speciality_doc` (`id`),
  CONSTRAINT `shift_ibfk_3` FOREIGN KEY (`relation_speciality_branch_id`) REFERENCES `relation_speciality_branch` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shift`
--

LOCK TABLES `shift` WRITE;
/*!40000 ALTER TABLE `shift` DISABLE KEYS */;
INSERT INTO `shift` VALUES (1,3,1,1,'2024-01-10','09:00:00',1),(2,1,2,5,'2024-01-21','16:30:00',1),(3,2,3,7,'2024-01-15','12:40:00',1),(4,12,4,1,'2024-01-11','09:00:00',0),(5,7,5,5,'2024-01-15','16:30:00',1),(6,4,6,7,'2024-01-15','12:40:00',1),(7,5,7,1,'2024-01-10','09:00:00',1),(8,3,8,5,'2024-01-21','16:30:00',1),(9,2,15,7,'2024-01-15','12:40:00',0),(10,1,16,5,'2024-01-21','18:30:00',0);
/*!40000 ALTER TABLE `shift` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shift_audit_logs`
--

DROP TABLE IF EXISTS `shift_audit_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shift_audit_logs` (
  `ID_LOG` int NOT NULL AUTO_INCREMENT,
  `id_shift` int NOT NULL,
  `changes` varchar(200) DEFAULT NULL,
  `user_mod` varchar(100) DEFAULT NULL,
  `date_UPD_INS_DEL` date DEFAULT NULL,
  `acction_UPD_INS_DEL` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`ID_LOG`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shift_audit_logs`
--

LOCK TABLES `shift_audit_logs` WRITE;
/*!40000 ALTER TABLE `shift_audit_logs` DISABLE KEYS */;
INSERT INTO `shift_audit_logs` VALUES (1,11,'Update SHIFT_ID: 11 al PARTNER_ID: 2 old_date: 2024-01-15 new_date: 2024-02-15old_time: 12:40:00 new_time: 13:00:00','root@localhost','2024-01-16','INS');
/*!40000 ALTER TABLE `shift_audit_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_amount_per_gender`
--

DROP TABLE IF EXISTS `vw_amount_per_gender`;
/*!50001 DROP VIEW IF EXISTS `vw_amount_per_gender`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_amount_per_gender` AS SELECT 
 1 AS `sex`,
 1 AS `catidad`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_eastern_zone_branches`
--

DROP TABLE IF EXISTS `vw_eastern_zone_branches`;
/*!50001 DROP VIEW IF EXISTS `vw_eastern_zone_branches`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_eastern_zone_branches` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `location`,
 1 AS `address`,
 1 AS `phone`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_list_of_partner_per_doctor`
--

DROP TABLE IF EXISTS `vw_list_of_partner_per_doctor`;
/*!50001 DROP VIEW IF EXISTS `vw_list_of_partner_per_doctor`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_list_of_partner_per_doctor` AS SELECT 
 1 AS `doc_name`,
 1 AS `doc_lastname`,
 1 AS `speciality`,
 1 AS `partner_name`,
 1 AS `partner_lastname`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_medical_history`
--

DROP TABLE IF EXISTS `vw_medical_history`;
/*!50001 DROP VIEW IF EXISTS `vw_medical_history`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_medical_history` AS SELECT 
 1 AS `f_name`,
 1 AS `l_name`,
 1 AS `speciality`,
 1 AS `md_history`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_northern_zone_branches`
--

DROP TABLE IF EXISTS `vw_northern_zone_branches`;
/*!50001 DROP VIEW IF EXISTS `vw_northern_zone_branches`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_northern_zone_branches` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `location`,
 1 AS `address`,
 1 AS `phone`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_number_of_shifts_per_specialty`
--

DROP TABLE IF EXISTS `vw_number_of_shifts_per_specialty`;
/*!50001 DROP VIEW IF EXISTS `vw_number_of_shifts_per_specialty`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_number_of_shifts_per_specialty` AS SELECT 
 1 AS `speciality`,
 1 AS `count(*)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_rel_speciality_branch`
--

DROP TABLE IF EXISTS `vw_rel_speciality_branch`;
/*!50001 DROP VIEW IF EXISTS `vw_rel_speciality_branch`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_rel_speciality_branch` AS SELECT 
 1 AS `speciality`,
 1 AS `name`,
 1 AS `location`,
 1 AS `address`,
 1 AS `phone`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_rel_speciality_doc`
--

DROP TABLE IF EXISTS `vw_rel_speciality_doc`;
/*!50001 DROP VIEW IF EXISTS `vw_rel_speciality_doc`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_rel_speciality_doc` AS SELECT 
 1 AS `doc_name`,
 1 AS `speciality`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_shift_detail`
--

DROP TABLE IF EXISTS `vw_shift_detail`;
/*!50001 DROP VIEW IF EXISTS `vw_shift_detail`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_shift_detail` AS SELECT 
 1 AS `Partner_name`,
 1 AS `Partner_Lastname`,
 1 AS `speciality`,
 1 AS `Doc_name`,
 1 AS `Doc_Lastname`,
 1 AS `location`,
 1 AS `address`,
 1 AS `date_s`,
 1 AS `time_s`,
 1 AS `confirmado?`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_south_zone_branches`
--

DROP TABLE IF EXISTS `vw_south_zone_branches`;
/*!50001 DROP VIEW IF EXISTS `vw_south_zone_branches`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_south_zone_branches` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `location`,
 1 AS `address`,
 1 AS `phone`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_west_zone_branches`
--

DROP TABLE IF EXISTS `vw_west_zone_branches`;
/*!50001 DROP VIEW IF EXISTS `vw_west_zone_branches`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_west_zone_branches` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `location`,
 1 AS `address`,
 1 AS `phone`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_amount_per_gender`
--

/*!50001 DROP VIEW IF EXISTS `vw_amount_per_gender`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_amount_per_gender` AS select `partner`.`sex` AS `sex`,count(0) AS `catidad` from `partner` group by `partner`.`sex` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_eastern_zone_branches`
--

/*!50001 DROP VIEW IF EXISTS `vw_eastern_zone_branches`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_eastern_zone_branches` AS select `branch`.`id` AS `id`,`branch`.`name` AS `name`,`branch`.`location` AS `location`,`branch`.`address` AS `address`,`branch`.`phone` AS `phone` from `branch` where (lower(`branch`.`location`) = 'zona este') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_list_of_partner_per_doctor`
--

/*!50001 DROP VIEW IF EXISTS `vw_list_of_partner_per_doctor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_list_of_partner_per_doctor` AS select `vw_shift_detail`.`Doc_name` AS `doc_name`,`vw_shift_detail`.`Doc_Lastname` AS `doc_lastname`,`vw_shift_detail`.`speciality` AS `speciality`,`vw_shift_detail`.`Partner_name` AS `partner_name`,`vw_shift_detail`.`Partner_Lastname` AS `partner_lastname` from `vw_shift_detail` order by `vw_shift_detail`.`Doc_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_medical_history`
--

/*!50001 DROP VIEW IF EXISTS `vw_medical_history`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_medical_history` AS select `p`.`f_name` AS `f_name`,`p`.`l_name` AS `l_name`,`ms`.`speciality` AS `speciality`,`h`.`md_history` AS `md_history` from ((`medical_history` `h` join `partner` `p` on((`p`.`id` = `h`.`partner_id`))) join `medical_speciality` `ms` on((`ms`.`id` = `h`.`speciality_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_northern_zone_branches`
--

/*!50001 DROP VIEW IF EXISTS `vw_northern_zone_branches`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_northern_zone_branches` AS select `branch`.`id` AS `id`,`branch`.`name` AS `name`,`branch`.`location` AS `location`,`branch`.`address` AS `address`,`branch`.`phone` AS `phone` from `branch` where (lower(`branch`.`location`) = 'zona norte') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_number_of_shifts_per_specialty`
--

/*!50001 DROP VIEW IF EXISTS `vw_number_of_shifts_per_specialty`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_number_of_shifts_per_specialty` AS select `vw_shift_detail`.`speciality` AS `speciality`,count(0) AS `count(*)` from `vw_shift_detail` group by `vw_shift_detail`.`speciality` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_rel_speciality_branch`
--

/*!50001 DROP VIEW IF EXISTS `vw_rel_speciality_branch`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_rel_speciality_branch` AS select `ms`.`speciality` AS `speciality`,`b`.`name` AS `name`,`b`.`location` AS `location`,`b`.`address` AS `address`,`b`.`phone` AS `phone` from ((`relation_speciality_branch` `sb` join `branch` `b` on((`b`.`id` = `sb`.`branch_id`))) join `medical_speciality` `ms` on((`sb`.`speciality_id` = `ms`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_rel_speciality_doc`
--

/*!50001 DROP VIEW IF EXISTS `vw_rel_speciality_doc`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_rel_speciality_doc` AS select concat(`d`.`f_name`,' ',`d`.`l_name`) AS `doc_name`,`ms`.`speciality` AS `speciality` from ((`relation_speciality_doc` `sp` join `doctor` `d` on((`d`.`id` = `sp`.`doctor_id`))) join `medical_speciality` `ms` on((`sp`.`speciality_id` = `ms`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_shift_detail`
--

/*!50001 DROP VIEW IF EXISTS `vw_shift_detail`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_shift_detail` AS select `p`.`f_name` AS `Partner_name`,`p`.`l_name` AS `Partner_Lastname`,`ms`.`speciality` AS `speciality`,`doc`.`f_name` AS `Doc_name`,`doc`.`l_name` AS `Doc_Lastname`,`br`.`location` AS `location`,`br`.`address` AS `address`,`s`.`date_s` AS `date_s`,`s`.`time_s` AS `time_s`,(case when (`s`.`is_confirm` = true) then 'Confirmado' else 'Sin Confirmar' end) AS `confirmado?` from ((((((`shift` `s` join `partner` `p` on((`s`.`partner_id` = `p`.`id`))) join `relation_speciality_doc` `sd` on((`s`.`speciality_rel_id` = `sd`.`id`))) join `medical_speciality` `ms` on((`ms`.`id` = `sd`.`speciality_id`))) join `doctor` `doc` on((`sd`.`doctor_id` = `doc`.`id`))) join `relation_speciality_branch` `sb` on((`s`.`relation_speciality_branch_id` = `sb`.`id`))) join `branch` `br` on((`br`.`id` = `sb`.`branch_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_south_zone_branches`
--

/*!50001 DROP VIEW IF EXISTS `vw_south_zone_branches`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_south_zone_branches` AS select `branch`.`id` AS `id`,`branch`.`name` AS `name`,`branch`.`location` AS `location`,`branch`.`address` AS `address`,`branch`.`phone` AS `phone` from `branch` where (lower(`branch`.`location`) = 'zona sur') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_west_zone_branches`
--

/*!50001 DROP VIEW IF EXISTS `vw_west_zone_branches`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_west_zone_branches` AS select `branch`.`id` AS `id`,`branch`.`name` AS `name`,`branch`.`location` AS `location`,`branch`.`address` AS `address`,`branch`.`phone` AS `phone` from `branch` where (lower(`branch`.`location`) = 'zona oeste') */;
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

-- Dump completed on 2024-01-25 20:19:35
