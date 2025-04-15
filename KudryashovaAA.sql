/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.7.2-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: kudryashovaaa
-- ------------------------------------------------------
-- Server version	11.7.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `farm`
--

DROP TABLE IF EXISTS `farm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `farm` (
  `ID` int(11) NOT NULL,
  `Code_KFX` varchar(50) DEFAULT NULL,
  `Name_Farm` varchar(150) DEFAULT NULL,
  `FIO_Farmer` varchar(150) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `telephone` varchar(150) DEFAULT NULL,
  `Specialization` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Specialization` (`Specialization`),
  CONSTRAINT `farm_ibfk_1` FOREIGN KEY (`Specialization`) REFERENCES `specialization` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `farm`
--

LOCK TABLES `farm` WRITE;
/*!40000 ALTER TABLE `farm` DISABLE KEYS */;
INSERT INTO `farm` VALUES
(1,'500','Урожайное','Иванов Иван Иванович','г. Орск, ул. Урожайная 15 - 10','+79998887777',1),
(2,'501','Дивное','Петров Павел Александрович','г. Новотроицк, ул. Дивная 34 - 15','+79520548193',2),
(3,'502','Сытное','Сидоров Сергей Викторович','г. Орск, ул. Советская 23 - 4','+79617623952',3),
(4,'503','Рябушкино','Кузнецова Ольга Ивановна','г. Гай, ул. Крайняя 44 - 3','+79228450374',4),
(5,'504','Усадьба','Попов Александр Анатольевич','г. Новотроицк, ул. Попова 25 - 34','+79056732456',5),
(6,'505','Банное','Орлов Павел Иванович','г. Новотроицк, ул. Краснознамённая 45 - 23','+79878758214',6),
(7,'506','Степное','Зайцева Марина Александровна','г. Орск, ул. Тагильская 28 - 2','+79228553343',7),
(8,'507','Яблоневая','Морозова Светлана Викторовна','г. Орск, ул. Московская 12','+79056842349',8),
(9,'508','Маргаритка','Волков Алексей Александрович','г. Гай, ул. Новосибирская 35','+79458604984',9),
(10,'509','Ромашка','Воробьёв Сергей Юрьевич','г. Новотроицк, ул. Пацаева 90 - 25','+79444163011',10);
/*!40000 ALTER TABLE `farm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `ID` int(11) NOT NULL,
  `Produced_goods` varchar(50) DEFAULT NULL,
  `Units_measurements` varchar(50) DEFAULT NULL,
  `Price` varchar(50) DEFAULT NULL,
  `Quantity` varchar(50) DEFAULT NULL,
  `Code_KFX` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Code_KFX` (`Code_KFX`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`Code_KFX`) REFERENCES `farm` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES
(2,'Мясо \"Свинина\"','килограммы','360/1кг','200кг',2),
(3,'Виноград','килограммы','170/1кг','50кг',3),
(4,'Рыба \"Щука\"','килограммы','289/1кг','90кг',4),
(5,'Мёд','литры','600/1л','50л',5),
(6,'Грибы \"Шампиньоны\"','килограммы','450/1кг','50кг',6),
(7,'Водоросли','килограммы','500/1кг','15кг',7),
(8,'Курица','килограммы','289/1кг','100кг',8),
(9,'Розы','штуки','289/1шт','150шт',9),
(10,'Удобрение','килограммы','199/1кг','50кг',10);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specialization`
--

DROP TABLE IF EXISTS `specialization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `specialization` (
  `ID` int(11) NOT NULL,
  `Name_specialization` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specialization`
--

LOCK TABLES `specialization` WRITE;
/*!40000 ALTER TABLE `specialization` DISABLE KEYS */;
INSERT INTO `specialization` VALUES
(1,'Овощеводство'),
(2,'Животноводство'),
(3,'Виноградарство'),
(4,'Рыбоводство'),
(5,'Пчеловодство'),
(6,'Грибоводство'),
(7,'Аквакультура'),
(8,'Птицеводство'),
(9,'Растениеводство'),
(10,'Садоводство');
/*!40000 ALTER TABLE `specialization` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2025-04-10 14:56:45
