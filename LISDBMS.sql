create database LISDBMS;
use LISDBMS;

-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: LISDBMS
-- ------------------------------------------------------
-- Server version	5.5.62


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `STAFF_ID` char(6) NOT NULL,
  `STAFF_NAME` varchar(30) NOT NULL,
  `POST` varchar(20) NOT NULL,
  `DATE_OF_JOINING` date NOT NULL,
  `SALARY` int(11) NOT NULL,
  `password` char(10) NOT NULL,
  PRIMARY KEY (`STAFF_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES ('A0000','Ballam Pandey','PRINCIPAL','2018-12-25',100000,'PASS'),('A0001','Yashoda Bisht','VICE_PRINCIPAL','2017-11-20',100000,'vprincipal'),('A0002','G.C Thakur','HEAD_MASTER','2011-10-31',100000,'teacher'),('A0003','Vineet Tewari','HEAD_EXAMINER','2009-11-23',85000,'EXAM@23'),('L0001','S.S. Negi','LIBRARIAN','2010-10-20',81000,'LIB@42'),('O4503','Siddhant Sah','HEAD ACCOUNTANT','2014-08-21',80000,'OFF@69');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_details`
--

DROP TABLE IF EXISTS `student_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_details` (
  `ADM_NO` int(11) NOT NULL,
  `STUDENT_NAME` varchar(30) NOT NULL,
  `roll_no` int(11) DEFAULT NULL,
  `CLASS` char(6) NOT NULL,
  `CONTACT` bigint(20) NOT NULL,
  PRIMARY KEY (`ADM_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_details`
--

LOCK TABLES `student_details` WRITE;
/*!40000 ALTER TABLE `student_details` DISABLE KEYS */;
INSERT INTO `student_details` VALUES (553,'Dhruv Pant',36,'XII B',9776544212),(876,'Ashutosh Sign Rathore',11,'XII D',6789423625),(883,'Aishwani Kaira',10,'XII A',9876555431),(898,'Mohit Rawat',19,'XII C',9788944776),(899,'Jaishree Tewari',23,'XII C',9445622554),(901,'Rajshree Tewari',31,'XII C',8875488912),(964,'Shubham Aggarwal',11,'XII A',9477023599),(971,'Abhishek Singh',33,'XII A',8911089814),(984,'Manas Arya',30,'XI C',7980734244),(985,'Ujjwal Adhikari',18,'XII B',7888169992),(987,'Rahul Rawat',19,'XII A',9123678943);
/*!40000 ALTER TABLE `student_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher_details`
--

DROP TABLE IF EXISTS `teacher_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher_details` (
  `teacher_id` char(7) NOT NULL,
  `name_of_teacher` varchar(40) NOT NULL,
  `post` varchar(30) NOT NULL,
  `date_of_joining` date NOT NULL,
  `salary` int(11) NOT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher_details`
--

LOCK TABLES `teacher_details` WRITE;
/*!40000 ALTER TABLE `teacher_details` DISABLE KEYS */;
INSERT INTO `teacher_details` VALUES ('C0001','Beenu Joshi','PGT COMPUTER','2000-11-23',110000),('CH001','Priyanshi Bisht','TGT CHEMISTRY','2000-04-20',85000),('CM001','Rajesh Rawat','PGT COMMERCE','2015-10-10',80000),('E0001','Vivek Kumar','PGT ENGLISH','2018-08-14',85000),('G0123','Harshit Kumar','PGT SPORTS ','2018-12-23',70000),('H0001','Mohit Kumar','PGT HINDI','2005-08-21',85000),('H0002','Manish Gurrani','TGT Hindi','2016-06-15',80000),('H0022','Vaibhav Mehra','PGT HISTORY','2019-10-24',80000),('M0001','G.C Thakur','PGT MATHS','2006-07-22',90000),('P0001','Vineet TIWARI','PGT PHYSICS','2016-10-11',77800),('P0002','K.N Pandey','PGT PHYSICS','2000-03-15',85000),('PR012','Dipendra Bisht','PRT ENGLISH','2008-11-22',75000),('PR014','Sahil Khan','PRT HINDI','2010-12-12',70000);
/*!40000 ALTER TABLE `teacher_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
