-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: trithuc
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `camgiac`
--

DROP TABLE IF EXISTS `camgiac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `camgiac` (
  `ID` varchar(255) NOT NULL,
  `RoiLoan` tinyint DEFAULT NULL,
  `CamGiacNong` varchar(255) DEFAULT NULL,
  `CamGiacSau` varchar(255) DEFAULT NULL,
  `ViTri` varchar(255) DEFAULT NULL,
  `CamGiacDau` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_CamGiacNong` (`CamGiacNong`),
  KEY `fk_CamGiacSau` (`CamGiacSau`),
  KEY `fk_ViTri` (`ViTri`),
  KEY `fk_CamGiacDau` (`CamGiacDau`),
  CONSTRAINT `fk_CamGiacDau` FOREIGN KEY (`CamGiacDau`) REFERENCES `mucdocamgiac` (`ID`),
  CONSTRAINT `fk_CamGiacNong` FOREIGN KEY (`CamGiacNong`) REFERENCES `mucdocamgiac` (`ID`),
  CONSTRAINT `fk_CamGiacSau` FOREIGN KEY (`CamGiacSau`) REFERENCES `mucdocamgiac` (`ID`),
  CONSTRAINT `fk_ViTri` FOREIGN KEY (`ViTri`) REFERENCES `vitribatthuong` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `camgiac`
--

LOCK TABLES `camgiac` WRITE;
/*!40000 ALTER TABLE `camgiac` DISABLE KEYS */;
INSERT INTO `camgiac` VALUES ('CG01',1,NULL,NULL,'BT07',NULL),('CG02',1,NULL,NULL,'BT06',NULL),('CG03',1,NULL,NULL,'BT04',NULL),('CG04',1,'MD1','MD1','BT06',NULL),('CG05',1,NULL,NULL,NULL,'MD3'),('CG06',1,'MD1','MD1',NULL,NULL),('CG07',1,'MD1','MD1','BT08',NULL),('CG08',1,NULL,NULL,NULL,'MD2'),('CG09',1,NULL,NULL,'BT05',NULL),('CG10',1,'MD1','MD0',NULL,NULL);
/*!40000 ALTER TABLE `camgiac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `case`
--

DROP TABLE IF EXISTS `case`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `case` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `GanXuong` varchar(255) DEFAULT NULL,
  `GX_BT` varchar(255) DEFAULT NULL,
  `CoLuc` varchar(255) DEFAULT NULL,
  `TeoCo` tinyint DEFAULT NULL,
  `PXTDT` tinyint DEFAULT NULL,
  `HoffMan` tinyint DEFAULT NULL,
  `Barbinski` tinyint DEFAULT NULL,
  `TLC` varchar(255) DEFAULT NULL,
  `RLCT` tinyint DEFAULT NULL,
  `DD` varchar(255) DEFAULT NULL,
  `Sot` varchar(255) DEFAULT NULL,
  `CG` varchar(255) DEFAULT NULL,
  `CM` varchar(255) DEFAULT NULL,
  `Benh` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_GanXuong` (`GanXuong`),
  KEY `fk_GX_BT` (`GX_BT`),
  KEY `fk_CoLuc` (`CoLuc`),
  KEY `fk_CG` (`CG`),
  KEY `fk_CM` (`CM`),
  CONSTRAINT `fk_CG` FOREIGN KEY (`CG`) REFERENCES `camgiac` (`ID`),
  CONSTRAINT `fk_CM` FOREIGN KEY (`CM`) REFERENCES `mucdocamgiac` (`ID`),
  CONSTRAINT `fk_CoLuc` FOREIGN KEY (`CoLuc`) REFERENCES `coluc` (`ID`),
  CONSTRAINT `fk_GanXuong` FOREIGN KEY (`GanXuong`) REFERENCES `ganxuong` (`ID`),
  CONSTRAINT `fk_GX_BT` FOREIGN KEY (`GX_BT`) REFERENCES `vitribatthuong` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `case`
--

LOCK TABLES `case` WRITE;
/*!40000 ALTER TABLE `case` DISABLE KEYS */;
INSERT INTO `case` VALUES (1,'GX02',NULL,'CL02',NULL,NULL,1,1,'tang',NULL,NULL,NULL,'CG01',NULL,'HOI CHUNG LIET CUNG NUA NGUOI'),(2,'GX03',NULL,'CL02',NULL,NULL,NULL,1,'giam',NULL,NULL,NULL,'CG01',NULL,'HOI CHUNG LIET MEM NUA NGUOI'),(3,'GX02',NULL,'CL06',NULL,NULL,NULL,1,'tang',NULL,NULL,NULL,'CG02',NULL,'HOI CHUNG LIET CUNG 2 CHI DUOI'),(4,'GX03',NULL,'CL07',1,NULL,NULL,0,'giam',0,NULL,NULL,'CG03',NULL,'HOI CHUNG LIET MEM 2 CHI DUOI(NGOAI BIEN)'),(5,'GX03',NULL,'CL07',0,NULL,NULL,1,'giam',1,NULL,NULL,'CG03',NULL,'HOI CHUNG LIET MEM 2 CHI DUOI(TRUNG UONG)'),(6,NULL,NULL,'CL03',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,'CG04',NULL,'HOI CHUNG CAT NGANG TUY'),(7,'GX03',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'CG05',NULL,'HOI CHUNG CHEN EP TUY(NOI TON THUONG)'),(8,'GX02','BT01','CL03',NULL,1,1,NULL,'tang',NULL,NULL,NULL,'CG06',NULL,'HOI CHUNG CHEN EP TUY(DUOI NOI TON THUONG)'),(9,'GX03','BT01','CL03',NULL,NULL,NULL,NULL,'giam',1,NULL,NULL,'CG07',NULL,'HOI CHUNG CHUM DUOI NGUA'),(10,'GX03',NULL,'CL03',NULL,NULL,NULL,0,NULL,0,NULL,NULL,'CG06',NULL,'HOI CHUNG Guillain Barre'),(11,'GX02',NULL,'CL03',NULL,1,NULL,1,'tang',1,NULL,NULL,'CG06',NULL,'VIEM TUY CAT NGANG CAP'),(12,'GX02',NULL,'CL02',NULL,NULL,NULL,1,'tang',NULL,'co','co','CG08',NULL,'HOI CHUNG MANG NAO'),(13,'GX02',NULL,'CL02',NULL,NULL,0,1,'tang',NULL,'co','co','CG08',NULL,'VIEM MANG NAO VO KHAN CAP'),(14,'GX03','BT02','CL05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'CG03','MD1','THOAI HOA TIEU NAO DO RUOU'),(15,'GX03','BT03','CL05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'CG09',NULL,'THOAI HOA DOT SONG CO'),(16,'GX03',NULL,'CL08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'BENH LIET CHU KY TANG KALI MAU'),(17,'GX01',NULL,'CL04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'MD2','BENH NHUOC CO'),(18,'GX03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'MD3','VIEM TIEU NAO'),(19,'GX04','BT04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'CG10',NULL,'NHOI MAU TUY');
/*!40000 ALTER TABLE `case` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coluc`
--

DROP TABLE IF EXISTS `coluc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coluc` (
  `ID` varchar(255) NOT NULL,
  `MoTa` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coluc`
--

LOCK TABLES `coluc` WRITE;
/*!40000 ALTER TABLE `coluc` DISABLE KEYS */;
INSERT INTO `coluc` VALUES ('CL01','binh thuong'),('CL02','yeu, liet nua nguoi'),('CL03','yeu, liet 2 chi duoi'),('CL04','yeu toan bo'),('CL05','yeu tay chan'),('CL06','giam hoac mat co gap va ngon chi'),('CL07','giam, can doi 2 ben '),('CL08','liet o ban chan, roi lan dan len toan than');
/*!40000 ALTER TABLE `coluc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ganxuong`
--

DROP TABLE IF EXISTS `ganxuong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ganxuong` (
  `ID` varchar(255) NOT NULL,
  `MucDo` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ganxuong`
--

LOCK TABLES `ganxuong` WRITE;
/*!40000 ALTER TABLE `ganxuong` DISABLE KEYS */;
INSERT INTO `ganxuong` VALUES ('GX01','binh thuong'),('GX02','tang'),('GX03','giam hay mat'),('GX04','mat. vai tuan sau lai tang');
/*!40000 ALTER TABLE `ganxuong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mat`
--

DROP TABLE IF EXISTS `mat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mat` (
  `ID` varchar(255) NOT NULL,
  `MoTa` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mat`
--

LOCK TABLES `mat` WRITE;
/*!40000 ALTER TABLE `mat` DISABLE KEYS */;
INSERT INTO `mat` VALUES ('M01','rung giat nhan cau'),('M02','sup mi haoc nhin doi'),('M03','liet van nhan ');
/*!40000 ALTER TABLE `mat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mucdocamgiac`
--

DROP TABLE IF EXISTS `mucdocamgiac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mucdocamgiac` (
  `ID` varchar(255) NOT NULL,
  `MoTa` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mucdocamgiac`
--

LOCK TABLES `mucdocamgiac` WRITE;
/*!40000 ALTER TABLE `mucdocamgiac` DISABLE KEYS */;
INSERT INTO `mucdocamgiac` VALUES ('MD0','binh thuong'),('MD1','giam hoac mat'),('MD2','tang'),('MD3','dau theo re nhu dao cat, hoac vong dai that chat');
/*!40000 ALTER TABLE `mucdocamgiac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vitribatthuong`
--

DROP TABLE IF EXISTS `vitribatthuong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vitribatthuong` (
  `ID` varchar(255) NOT NULL,
  `Mota` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vitribatthuong`
--

LOCK TABLES `vitribatthuong` WRITE;
/*!40000 ALTER TABLE `vitribatthuong` DISABLE KEYS */;
INSERT INTO `vitribatthuong` VALUES ('BT01','goi'),('BT02','got'),('BT03','co nhi dau va canh tay'),('BT04','hai chi duoi'),('BT05','vai va bo ngoai canh tay, cang tay'),('BT06','tu noi ton thuong tro xuong'),('BT07','ben liet'),('BT08','vung quanh hau mon, hoi am');
/*!40000 ALTER TABLE `vitribatthuong` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-07 22:41:06
