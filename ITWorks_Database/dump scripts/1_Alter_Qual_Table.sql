-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: db_tafebuddy
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `qualification`
--

DROP TABLE IF EXISTS `qualification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qualification` (
  `QualCode` varchar(20) NOT NULL,
  `NationalQualCode` varchar(32) NOT NULL,
  `TafeQualCode` varchar(32) NOT NULL,
  `QualName` varchar(100) NOT NULL,
  `ProgramInformationDocument` varchar(200) NOT NULL,
  `TotalUnits` int(11) NOT NULL,
  `CoreUnits` int(11) NOT NULL,
  `ElectedUnits` int(11) NOT NULL DEFAULT '0',
  `ReqListedElectedUnits` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`QualCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qualification`
--

LOCK TABLES `qualification` WRITE;
/*!40000 ALTER TABLE `qualification` DISABLE KEYS */;
INSERT INTO `qualification` VALUES ('AD_CST11','ICA60511','TP00279','Advanced Diploma of Computer Systems Technology','',18,12,6,3),('AD_CST15','ICT60515','TP00754','Advanced Diploma of Computer Systems Technology','https://www.tafesa.edu.au/PDF/courses/2019/TP00754/Program_Information_ICT60515_Adv%20Dip%20CST_S219.pdf',18,12,3,3),('AD_NETSEC11','ICA60211','TP00124','Advanced Diploma of Network Security','',12,5,7,5),('AD_NETSEC15','ICT60215','TP00753','Advanced Diploma of Network Security','https://www.tafesa.edu.au/PDF/courses/2019/TP00753/PID_ADNS_Released.pdf',12,5,2,5),('C1_IDM11','ICA10111','TP00100','Certificate I in Information, Digital Media and Technology','',6,4,2,0),('C1_IDM15','ICT10115','TP00734','Certificate I in Information, Digital Media and Technology','https://www.tafesa.edu.au/PDF/courses/2019/TP00734/PID_ICT10115_2019.pdf',6,4,2,0),('C2_IDM11','ICA20111','TP00101','Certificate II in Information, Digital Media and Technology','',14,7,7,4),('C2_IDM15','ICT20115','TP00735','Certificate II in Information, Digital Media and Technology','https://www.tafesa.edu.au/PDF/courses/2020/TP00735/PID_ICT20115_2019.pdf',14,7,0,7),('C3_IDM11_APP','ICA30111','TP00102','Certificate III Prgm in Information, Digital Media and Technology (Applications)','',17,6,11,5),('C3_IDM11_DM','ICA30111','TP00102','Certificate III in Information, Digital Media and Technology - Digital Media Version','',17,6,11,5),('C3_IDM11_GEN','ICA30111','TP00102','Certificate III in Information, Digital Media and Technology - General Version','',17,6,11,5),('C3_IDM11_NET','ICA30111','TP00102','Certificate III in Information, Digital Media and Technology -  Networking Version','',17,6,11,5),('C3_IDM11_PRG','ICA30111','TP00102','Certificate III in Information, Digital Media and Technology - Programming Version','',17,6,11,5),('C3_IDM11_WEB','ICA30111','TP00102','Certificate III in Information, Digital Media and Technology - Web Technologies version','',17,6,11,5),('C3_IDM15','ICT30115','TP00736','Certificate III in Information, Digital Media and Technology','https://www.tafesa.edu.au/PDF/courses/2019/TP00736/PID_ICTC3_190530.pdf',17,6,2,9),('C3_IDM15_APP','ICT30115','TP00736','Certificate III Prgm in Information, Digital Media and Technology (Applications)','https://www.tafesa.edu.au/PDF/courses/2019/TP00736/PID_ICTC3_190530.pdf',17,6,11,5),('C3_IDM15_DM','ICT30115','TP00736','Certificate III Prgm in Information, Digital Media and Technology  (Digital Media)','https://www.tafesa.edu.au/PDF/courses/2019/TP00736/PID_ICTC3_190530.pdf',17,6,11,5),('C3_IDM15_GEN','ICT30115','TP00736','Certificate III Prgm in Information, Digital Media and Technology  (General)','https://www.tafesa.edu.au/PDF/courses/2019/TP00736/PID_ICTC3_190530.pdf',17,6,11,5),('C3_IDM15_NET','ICT30115','TP00736','Certificate III Prgm in Information, Digital Media and Technology  (Networking)','https://www.tafesa.edu.au/PDF/courses/2019/TP00736/PID_ICTC3_190530.pdf',17,6,11,5),('C3_IDM15_PRG','ICT30115','TP00736','Certificate III Prgm in Information, Digital Media and Technology  (Programming)','https://www.tafesa.edu.au/PDF/courses/2019/TP00736/PID_ICTC3_190530.pdf',17,6,11,5),('C3_IDM15_WEB','ICT30115','TP00736','Certificate III Prgm in Information, Digital Media and Technology  (Web Design)','https://www.tafesa.edu.au/PDF/courses/2019/TP00736/PID_ICTC3_190530.pdf',17,6,11,5),('C4_CST11','ICA41011','TP00652','Certificate IV in Computer System Technology','',20,12,8,4),('C4_CST15','ICT41015','TP00744','Certificate IV in Computer System Technology','',20,12,8,4),('C4_CySec18','22334VIC','22334VIC','Certificate IV in Cyber Security','https://www.tafesa.edu.au/PDF/courses/2020/AC00088/program-information-certificate-iv-cybersecurity.pdf',16,10,0,6),('C4_DM11','ICA40811','TP00119','Certificate IV in Digital Media Technologies','',17,7,10,5),('C4_DM15','ICT40815','TP00742','Certificate IV in Digital Media Technologies','',17,7,2,8),('C4_IT11','ICA40111','TP00114','Certificate IV in Information Technology','',20,5,15,5),('C4_IT15','ICT40115','TP00737','Certificate IV in Information Technology','https://www.tafesa.edu.au/PDF/courses/2019/TP00737/Program_Information_ICT40115_G4_S219.pdf',20,5,5,10),('C4_NET11','ICA40411','TP00117','Certificate IV in Information Technology Networking','',17,8,9,6),('C4_NET15','ICT40415','TP00740','Certificate IV in Information Technology Networking','https://www.tafesa.edu.au/PDF/courses/2019/TP00740/PID_C4_NETWORK_Released.pdf',17,8,3,6),('C4_PRG11','ICA40511','TP00118','Certificate IV in Programming','',18,10,8,0),('C4_PRG15','ICT40515','TP00741','Certificate IV in Programming','https://www.tafesa.edu.au/PDF/courses/2019/TP00741/Program_Information_Document_C4_Programming_Version_061118.pdf',18,10,3,5),('C4_WBT11','ICA40311','TP00116','Certificate IV in Web-Based Technologies','',22,8,14,5),('C4_WBT15','ICT40315','TP00739','Certificate IV in Web-Based Technologies','https://www.tafesa.edu.au/PDF/courses/2019/TP00739/Program_Information_ICT40315_WD_c4_190628.pdf',22,8,3,11),('D_DM11','ICA50911','TP00123','Diploma of Digital Media Technologies','',18,7,11,0),('D_DM15','ICT50915','TP00751','Diploma of Digital Media Technologies','https://www.tafesa.edu.au/PDF/courses/2020/TP00751/Program_Information_ICT50915_DM_Dip_19s2_190530.pdf',18,7,4,7),('D_NET11','ICA50411','TP00120','Diploma of Information Technology Networking','',16,5,11,0),('D_NET15','ICT50415','TP00748','Diploma of Information Technology Networking','https://www.tafesa.edu.au/PDF/courses/2020/TP00748/PID_DIP_NETWORK_Released.pdf',16,5,3,8),('D_SD11','ICA50711','TP00122','Diploma of Software Development','',16,10,6,0),('D_SD15','ICT50715','TP00750','Diploma of Software Development','https://www.tafesa.edu.au/PDF/courses/2020/TP00750/Program_Information_Document_Diploma_Programming_Version_181118.pdf',16,10,3,3),('D_WEB11','ICA50611','TP00121','Diploma of Website Development','',20,8,12,0),('D_WEB15','ICT50615','TP00749','Diploma of Website Development','https://www.tafesa.edu.au/PDF/courses/2020/TP00749/Program_Information_ICT50615_WD_Dip_190520.pdf',20,8,4,8),('SS_HWTech11','ICASS00019','SK00031','Hardware Technician Skill Set','',6,6,0,0),('SS_HWTech15','ICTSS00048','SK00066','Hardware Technician Skill Set','',6,6,0,0);
/*!40000 ALTER TABLE `qualification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'db_tafebuddy'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-06 13:03:00
