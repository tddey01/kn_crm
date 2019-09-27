-- MySQL dump 10.13  Distrib 8.0.17, for osx10.14 (x86_64)
--
-- Host: localhost    Database: kn_crm
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Current Database: `kn_crm`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `kn_crm` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `kn_crm`;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add class list',7,'add_classlist'),(26,'Can change class list',7,'change_classlist'),(27,'Can delete class list',7,'delete_classlist'),(28,'Can view class list',7,'view_classlist'),(29,'Can add course',8,'add_course'),(30,'Can change course',8,'change_course'),(31,'Can delete course',8,'delete_course'),(32,'Can view course',8,'view_course'),(33,'Can add course record',9,'add_courserecord'),(34,'Can change course record',9,'change_courserecord'),(35,'Can delete course record',9,'delete_courserecord'),(36,'Can view course record',9,'view_courserecord'),(37,'Can add customer',10,'add_customer'),(38,'Can change customer',10,'change_customer'),(39,'Can delete customer',10,'delete_customer'),(40,'Can view customer',10,'view_customer'),(41,'Can add department',11,'add_department'),(42,'Can change department',11,'change_department'),(43,'Can delete department',11,'delete_department'),(44,'Can view department',11,'view_department'),(45,'Can add school',12,'add_school'),(46,'Can change school',12,'change_school'),(47,'Can delete school',12,'delete_school'),(48,'Can view school',12,'view_school'),(49,'Can add student',13,'add_student'),(50,'Can change student',13,'change_student'),(51,'Can delete student',13,'delete_student'),(52,'Can view student',13,'view_student'),(53,'Can add user info',14,'add_userinfo'),(54,'Can change user info',14,'change_userinfo'),(55,'Can delete user info',14,'delete_userinfo'),(56,'Can view user info',14,'view_userinfo'),(57,'Can add study record',15,'add_studyrecord'),(58,'Can change study record',15,'change_studyrecord'),(59,'Can delete study record',15,'delete_studyrecord'),(60,'Can view study record',15,'view_studyrecord'),(61,'Can add score record',16,'add_scorerecord'),(62,'Can change score record',16,'change_scorerecord'),(63,'Can delete score record',16,'delete_scorerecord'),(64,'Can view score record',16,'view_scorerecord'),(65,'Can add payment record',17,'add_paymentrecord'),(66,'Can change payment record',17,'change_paymentrecord'),(67,'Can delete payment record',17,'delete_paymentrecord'),(68,'Can view payment record',17,'view_paymentrecord'),(69,'Can add consult record',18,'add_consultrecord'),(70,'Can change consult record',18,'change_consultrecord'),(71,'Can delete consult record',18,'delete_consultrecord'),(72,'Can view consult record',18,'view_consultrecord'),(73,'Can add menu',19,'add_menu'),(74,'Can change menu',19,'change_menu'),(75,'Can delete menu',19,'delete_menu'),(76,'Can view menu',19,'view_menu'),(77,'Can add permission',20,'add_permission'),(78,'Can change permission',20,'change_permission'),(79,'Can delete permission',20,'delete_permission'),(80,'Can view permission',20,'view_permission'),(81,'Can add role',21,'add_role'),(82,'Can change role',21,'change_role'),(83,'Can delete role',21,'delete_role'),(84,'Can view role',21,'view_role');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(19,'rbac','menu'),(20,'rbac','permission'),(21,'rbac','role'),(6,'sessions','session'),(7,'web','classlist'),(18,'web','consultrecord'),(8,'web','course'),(9,'web','courserecord'),(10,'web','customer'),(11,'web','department'),(17,'web','paymentrecord'),(12,'web','school'),(16,'web','scorerecord'),(13,'web','student'),(15,'web','studyrecord'),(14,'web','userinfo');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-09-25 08:57:44.067851'),(2,'auth','0001_initial','2019-09-25 08:57:44.129283'),(3,'admin','0001_initial','2019-09-25 08:57:44.279758'),(4,'admin','0002_logentry_remove_auto_add','2019-09-25 08:57:44.310451'),(5,'admin','0003_logentry_add_action_flag_choices','2019-09-25 08:57:44.317293'),(6,'contenttypes','0002_remove_content_type_name','2019-09-25 08:57:44.351817'),(7,'auth','0002_alter_permission_name_max_length','2019-09-25 08:57:44.369807'),(8,'auth','0003_alter_user_email_max_length','2019-09-25 08:57:44.393816'),(9,'auth','0004_alter_user_username_opts','2019-09-25 08:57:44.400753'),(10,'auth','0005_alter_user_last_login_null','2019-09-25 08:57:44.421047'),(11,'auth','0006_require_contenttypes_0002','2019-09-25 08:57:44.423180'),(12,'auth','0007_alter_validators_add_error_messages','2019-09-25 08:57:44.429721'),(13,'auth','0008_alter_user_username_max_length','2019-09-25 08:57:44.491195'),(14,'auth','0009_alter_user_last_name_max_length','2019-09-25 08:57:44.513389'),(15,'auth','0010_alter_group_name_max_length','2019-09-25 08:57:44.533020'),(16,'auth','0011_update_proxy_permissions','2019-09-25 08:57:44.539650'),(17,'rbac','0001_initial','2019-09-25 08:57:44.577251'),(18,'sessions','0001_initial','2019-09-25 08:57:44.634450'),(19,'web','0001_initial','2019-09-25 08:57:44.962352');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('9zn08uahqplw7fkh8zbu8d4fv8eq24ic','OWVhOGNmODNhNDNlYTczNDExOTA5NGQ0YWFmMDg4YTU2MWE4NjU2OTp7InVzZXJfaW5mbyI6eyJpZCI6NCwibmlja25hbWUiOiJcdTZiNmFcdTZiNmEifSwibHVmZnlfcGVybWlzc2lvbl91cmxfbGlzdF9rZXkiOnsid2ViX2N1c3RvbWVyX3B1Yl9saXN0Ijp7ImlkIjoyMiwidGl0bGUiOiJcdTUxNmNcdTYyMzdcdTUyMTdcdTg4NjgiLCJ1cmwiOiIvc3Rhcmsvd2ViL2N1c3RvbWVyL3B1Yi9saXN0LyIsInBpZCI6bnVsbCwicF90aXRsZSI6bnVsbCwicF91cmwiOm51bGx9LCJ3ZWJfY3VzdG9tZXJfcHJpdl9saXN0Ijp7ImlkIjoyNywidGl0bGUiOiJcdTYyMTFcdTc2ODRcdTViYTJcdTYyMzciLCJ1cmwiOiIvc3Rhcmsvd2ViL2N1c3RvbWVyL3ByaXYvbGlzdC8iLCJwaWQiOm51bGwsInBfdGl0bGUiOm51bGwsInBfdXJsIjpudWxsfSwid2ViX2N1c3RvbWVyX3ByaXZfYWRkIjp7ImlkIjoyOCwidGl0bGUiOiJcdTZkZmJcdTUyYTBcdTYyMTFcdTc2ODRcdTViYTJcdTYyMzciLCJ1cmwiOiIvc3Rhcmsvd2ViL2N1c3RvbWVyL3ByaXYvYWRkLyIsInBpZCI6MjcsInBfdGl0bGUiOiJcdTYyMTFcdTc2ODRcdTViYTJcdTYyMzciLCJwX3VybCI6Ii9zdGFyay93ZWIvY3VzdG9tZXIvcHJpdi9saXN0LyJ9LCJ3ZWJfY3VzdG9tZXJfcHJpdl9jaGFuZ2UiOnsiaWQiOjI5LCJ0aXRsZSI6Ilx1NGZlZVx1NjUzOVx1NjIxMVx1NzY4NFx1NWJhMlx1NjIzNyIsInVybCI6Ii9zdGFyay93ZWIvY3VzdG9tZXIvcHJpdi9jaGFuZ2UvKD9QPHBrPlxcZCspLyIsInBpZCI6MjcsInBfdGl0bGUiOiJcdTYyMTFcdTc2ODRcdTViYTJcdTYyMzciLCJwX3VybCI6Ii9zdGFyay93ZWIvY3VzdG9tZXIvcHJpdi9saXN0LyJ9LCJ3ZWJfY3VzdG9tZXJfcHJpdl9kZWxldGUiOnsiaWQiOjMwLCJ0aXRsZSI6Ilx1NTIyMFx1OTY2NFx1NjIxMVx1NzY4NFx1NWJhMlx1NjIzNyIsInVybCI6Ii9zdGFyay93ZWIvY3VzdG9tZXIvcHJpdi9kZWxldGUvKD9QPHBrPlxcZCspLyIsInBpZCI6MjcsInBfdGl0bGUiOiJcdTYyMTFcdTc2ODRcdTViYTJcdTYyMzciLCJwX3VybCI6Ii9zdGFyay93ZWIvY3VzdG9tZXIvcHJpdi9saXN0LyJ9LCJ3ZWJfY29uc3VsdHJlY29yZF9saXN0Ijp7ImlkIjozMSwidGl0bGUiOiJcdThkZGZcdThmZGJcdTUyMTdcdTg4NjgiLCJ1cmwiOiIvc3Rhcmsvd2ViL2NvbnN1bHRyZWNvcmQvbGlzdC8oP1A8Y3VzdG9tZXJfaWQ+XFxkKykvIiwicGlkIjoyNywicF90aXRsZSI6Ilx1NjIxMVx1NzY4NFx1NWJhMlx1NjIzNyIsInBfdXJsIjoiL3N0YXJrL3dlYi9jdXN0b21lci9wcml2L2xpc3QvIn0sIndlYl9jb25zdWx0cmVjb3JkX2FkZCI6eyJpZCI6MzIsInRpdGxlIjoiXHU2ZGZiXHU1MmEwXHU4ZGRmXHU4ZmRiXHU4YmIwXHU1ZjU1IiwidXJsIjoiL3N0YXJrL3dlYi9jb25zdWx0cmVjb3JkL2FkZC8oP1A8Y3VzdG9tZXJfaWQ+XFxkKykvIiwicGlkIjoyNywicF90aXRsZSI6Ilx1NjIxMVx1NzY4NFx1NWJhMlx1NjIzNyIsInBfdXJsIjoiL3N0YXJrL3dlYi9jdXN0b21lci9wcml2L2xpc3QvIn0sIndlYl9jb25zdWx0cmVjb3JkX2NoYW5nZSI6eyJpZCI6MzMsInRpdGxlIjoiXHU0ZmVlXHU2NTM5XHU4ZGRmXHU4ZmRiXHU4YmIwXHU1ZjU1IiwidXJsIjoiL3N0YXJrL3dlYi9jb25zdWx0cmVjb3JkL2NoYW5nZS8oP1A8Y3VzdG9tZXJfaWQ+XFxkKykvKD9QPHBrPlxcZCspLyIsInBpZCI6MjcsInBfdGl0bGUiOiJcdTYyMTFcdTc2ODRcdTViYTJcdTYyMzciLCJwX3VybCI6Ii9zdGFyay93ZWIvY3VzdG9tZXIvcHJpdi9saXN0LyJ9LCJ3ZWJfY29uc3VsdHJlY29yZF9kZWxldGUiOnsiaWQiOjM0LCJ0aXRsZSI6Ilx1NTIyMFx1OTY2NFx1OGRkZlx1OGZkYlx1OGJiMFx1NWY1NSIsInVybCI6Ii9zdGFyay93ZWIvY29uc3VsdHJlY29yZC9kZWxldGUvKD9QPGN1c3RvbWVyX2lkPlxcZCspLyg/UDxwaz5cXGQrKS8iLCJwaWQiOjI3LCJwX3RpdGxlIjoiXHU2MjExXHU3Njg0XHU1YmEyXHU2MjM3IiwicF91cmwiOiIvc3Rhcmsvd2ViL2N1c3RvbWVyL3ByaXYvbGlzdC8ifSwid2ViX3BheW1lbnRyZWNvcmRfbGlzdCI6eyJpZCI6MzUsInRpdGxlIjoiXHU3ZjM0XHU4ZDM5XHU4ZGRmXHU4ZmRiXHU4YmIwXHU1ZjU1IiwidXJsIjoiL3N0YXJrL3dlYi9wYXltZW50cmVjb3JkL2xpc3QvKD9QPGN1c3RvbWVyX2lkPlxcZCspLyIsInBpZCI6MjcsInBfdGl0bGUiOiJcdTYyMTFcdTc2ODRcdTViYTJcdTYyMzciLCJwX3VybCI6Ii9zdGFyay93ZWIvY3VzdG9tZXIvcHJpdi9saXN0LyJ9LCJ3ZWJfcGF5bWVudHJlY29yZF9hZGQiOnsiaWQiOjM2LCJ0aXRsZSI6Ilx1NmRmYlx1NTJhMFx1N2YzNFx1OGQzOVx1OGJiMFx1NWY1NSIsInVybCI6Ii9zdGFyay93ZWIvcGF5bWVudHJlY29yZC9hZGQvKD9QPGN1c3RvbWVyX2lkPlxcZCspLyIsInBpZCI6MjcsInBfdGl0bGUiOiJcdTYyMTFcdTc2ODRcdTViYTJcdTYyMzciLCJwX3VybCI6Ii9zdGFyay93ZWIvY3VzdG9tZXIvcHJpdi9saXN0LyJ9fSwibHVmZnlfcGVybWlzc2lvbl9tZW51X2tleSI6eyIyIjp7InRpdGxlIjoiXHU1YmEyXHU2MjM3XHU3YmExXHU3NDA2IiwiaWNvbiI6ImZhLWhhbmRzaGFrZS1vIiwiY2hpbGRyZW4iOlt7ImlkIjoyMiwidGl0bGUiOiJcdTUxNmNcdTYyMzdcdTUyMTdcdTg4NjgiLCJ1cmwiOiIvc3Rhcmsvd2ViL2N1c3RvbWVyL3B1Yi9saXN0LyJ9LHsiaWQiOjI3LCJ0aXRsZSI6Ilx1NjIxMVx1NzY4NFx1NWJhMlx1NjIzNyIsInVybCI6Ii9zdGFyay93ZWIvY3VzdG9tZXIvcHJpdi9saXN0LyJ9XX19fQ==','2019-10-10 10:07:23.948503');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rbac_menu`
--

DROP TABLE IF EXISTS `rbac_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rbac_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `icon` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rbac_menu`
--

LOCK TABLES `rbac_menu` WRITE;
/*!40000 ALTER TABLE `rbac_menu` DISABLE KEYS */;
INSERT INTO `rbac_menu` VALUES (1,'校区管理','fa-hand-scissors-o'),(2,'客户管理','fa-handshake-o'),(3,'学员管理','fa-retweet'),(4,'权限管理','fa-wrench');
/*!40000 ALTER TABLE `rbac_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rbac_permission`
--

DROP TABLE IF EXISTS `rbac_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rbac_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `url` varchar(128) NOT NULL,
  `name` varchar(32) NOT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `pid_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `rbac_permission_menu_id_3dcc68be_fk_rbac_menu_id` (`menu_id`),
  KEY `rbac_permission_pid_id_6939354d_fk_rbac_permission_id` (`pid_id`),
  CONSTRAINT `rbac_permission_menu_id_3dcc68be_fk_rbac_menu_id` FOREIGN KEY (`menu_id`) REFERENCES `rbac_menu` (`id`),
  CONSTRAINT `rbac_permission_pid_id_6939354d_fk_rbac_permission_id` FOREIGN KEY (`pid_id`) REFERENCES `rbac_permission` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rbac_permission`
--

LOCK TABLES `rbac_permission` WRITE;
/*!40000 ALTER TABLE `rbac_permission` DISABLE KEYS */;
INSERT INTO `rbac_permission` VALUES (1,'校区列表','/stark/web/school/list/','web_school_list',1,NULL),(2,'添加校区','/stark/web/school/add/','web_school_add',NULL,1),(3,'修改校区','/stark/web/school/change/(?P<pk>\\d+)/','web_school_change',NULL,1),(4,'删除校区','/stark/web/school/delete/(?P<pk>\\d+)/','web_school_delete',NULL,1),(5,'部门列表','/stark/web/department/list/','web_department_list',1,NULL),(6,'添加部门','/stark/web/department/add/','web_department_add',NULL,5),(7,'编辑部门','/stark/web/department/change/(?P<pk>\\d+)/','web_department_change',NULL,5),(8,'删除部门','/stark/web/department/delete/(?P<pk>\\d+)/','web_department_delete',NULL,5),(9,'用户列表','/stark/web/userinfo/list/','web_userinfo_list',4,NULL),(10,'添加用户','/stark/web/userinfo/add/','web_userinfo_add',NULL,9),(11,'修改用户','/stark/web/userinfo/change/(?P<pk>\\d+)/','web_userinfo_change',NULL,9),(12,'删除用户','/stark/web/userinfo/delete/(?P<pk>\\d+)/','web_userinfo_delete',NULL,9),(13,'重置密码','/stark/web/userinfo/reset/password/(?P<pk>\\d+)/','web_userinfo_reset_pwd',NULL,9),(14,'课程列表','/stark/web/course/list/','web_course_list',1,NULL),(15,'添加课程','/stark/web/course/add/','web_course_add',NULL,14),(16,'修改课程','/stark/web/course/change/(?P<pk>\\d+)/','web_course_change',NULL,14),(17,'删除课程','/stark/web/course/delete/(?P<pk>\\d+)/','web_course_delete',NULL,14),(18,'班级列表','/stark/web/classlist/list/','web_classlist_list',1,NULL),(19,'添加班级','/stark/web/classlist/add/','web_classlist_add',NULL,18),(20,'修改班级','/stark/web/classlist/change/(?P<pk>\\d+)/','web_classlist_change',NULL,18),(21,'删除编辑','/stark/web/classlist/delete/(?P<pk>\\d+)/','web_classlist_delete',NULL,18),(22,'公户列表','/stark/web/customer/pub/list/','web_customer_pub_list',2,NULL),(23,'添加公户','/stark/web/customer/pub/add/','web_customer_pub_add',NULL,22),(24,'修改公户','/stark/web/customer/pub/change/(?P<pk>\\d+)/','web_customer_pub_change',NULL,22),(25,'删除公户','/stark/web/customer/pub/delete/(?P<pk>\\d+)/','web_customer_pub_delete',NULL,22),(26,'查看公户跟进记录','/stark/web/customer/pub/record/(?P<pk>\\d+)/','web_customer_pub_record_view',NULL,22),(27,'我的客户','/stark/web/customer/priv/list/','web_customer_priv_list',2,NULL),(28,'添加我的客户','/stark/web/customer/priv/add/','web_customer_priv_add',NULL,27),(29,'修改我的客户','/stark/web/customer/priv/change/(?P<pk>\\d+)/','web_customer_priv_change',NULL,27),(30,'删除我的客户','/stark/web/customer/priv/delete/(?P<pk>\\d+)/','web_customer_priv_delete',NULL,27),(31,'跟进列表','/stark/web/consultrecord/list/(?P<customer_id>\\d+)/','web_consultrecord_list',NULL,27),(32,'添加跟进记录','/stark/web/consultrecord/add/(?P<customer_id>\\d+)/','web_consultrecord_add',NULL,27),(33,'修改跟进记录','/stark/web/consultrecord/change/(?P<customer_id>\\d+)/(?P<pk>\\d+)/','web_consultrecord_change',NULL,27),(34,'删除跟进记录','/stark/web/consultrecord/delete/(?P<customer_id>\\d+)/(?P<pk>\\d+)/','web_consultrecord_delete',NULL,27),(35,'缴费跟进记录','/stark/web/paymentrecord/list/(?P<customer_id>\\d+)/','web_paymentrecord_list',NULL,27),(36,'添加缴费记录','/stark/web/paymentrecord/add/(?P<customer_id>\\d+)/','web_paymentrecord_add',NULL,27),(37,'审核缴费记录','/stark/web/paymentrecord/check/list/','web_paymentrecord_check_list',2,NULL),(38,'学生列表','/stark/web/student/list/','web_student_list',3,NULL),(39,'修改学生信息','/stark/web/student/change/(?P<pk>\\d+)/','web_student_change',NULL,38),(40,'积分记录列表','/stark/web/scorerecord/list/(?P<student_id>\\d+)/','web_scorerecord_list',NULL,38),(41,'添加积分记录','/stark/web/scorerecord/add/(?P<student_id>\\d+)/','web_scorerecord_add',NULL,38),(42,'上课记录列表','/stark/web/courserecord/list/(?P<class_id>\\d+)/','web_courserecord_list',NULL,18),(43,'添加上课记录','/stark/web/courserecord/add/(?P<class_id>\\d+)/','web_courserecord_add',NULL,18),(44,'修改上课记录','/stark/web/courserecord/change/(?P<class_id>\\d+)/(?P<pk>\\d+)/','web_courserecord_change',NULL,18),(45,'删除上课记录','/stark/web/courserecord/delete/(?P<class_id>\\d+)/(?P<pk>\\d+)/','web_courserecord_delete',NULL,18),(46,'考勤管理','/stark/web/courserecord/attendance/(?P<course_record_id>\\d+)/','web_courserecord_attendance',NULL,18),(47,'角色列表','/rbac/role/list/','rbac:role_list',4,NULL),(48,'添加角色','/rbac/role/add/','rbac:role_add',NULL,47),(49,'修改角色','/rbac/role/edit/(?P<pk>\\d+)/','rbac:role_edit',NULL,47),(50,'删除角色','/rbac/role/del/(?P<pk>\\d+)/','rbac:role_del',NULL,47),(51,'菜单列表','/rbac/menu/list/','rbac:menu_list',4,NULL),(52,'添加菜单','/rbac/menu/add/','rbac:menu_add',NULL,51),(53,'编辑菜单','/rbac/menu/edit/(?P<pk>\\d+)/','rbac:menu_edit',NULL,51),(54,'删除菜单','/rbac/menu/del/(?P<pk>\\d+)/','rbac:menu_del',NULL,51),(55,'添加二级菜单','/rbac/second/menu/add/(?P<menu_id>\\d+)','rbac:second_menu_add',NULL,51),(56,'编辑二级菜单','/rbac/second/menu/edit/(?P<pk>\\d+)/','rbac:second_menu_edit',NULL,51),(57,'删除二级菜单','/rbac/second/menu/del/(?P<pk>\\d+)/','rbac:second_menu_del',NULL,51),(58,'添加权限','/rbac/permission/add/(?P<second_menu_id>\\d+)/','rbac:permission_add',NULL,51),(59,'编辑权限','/rbac/permission/edit/(?P<pk>\\d+)/','rbac:permission_edit',NULL,51),(60,'删除权限','/rbac/permission/del/(?P<pk>\\d+)/','rbac:permission_del',NULL,51),(61,'批量操作权限','/rbac/multi/permissions/','rbac:multi_permissions',NULL,51),(62,'批量删除权限','/rbac/multi/permissions/del/(?P<pk>\\d+)/','rbac:multi_permissions_del',NULL,51),(63,'分配权限','/rbac/distribute/permissions/','rbac:distribute_permissions',4,NULL);
/*!40000 ALTER TABLE `rbac_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rbac_role`
--

DROP TABLE IF EXISTS `rbac_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rbac_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rbac_role`
--

LOCK TABLES `rbac_role` WRITE;
/*!40000 ALTER TABLE `rbac_role` DISABLE KEYS */;
INSERT INTO `rbac_role` VALUES (1,'销售总监'),(2,'教质总监'),(3,'销售'),(4,'班主任'),(5,'CEO');
/*!40000 ALTER TABLE `rbac_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rbac_role_permissions`
--

DROP TABLE IF EXISTS `rbac_role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rbac_role_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rbac_role_permissions_role_id_permission_id_d01303da_uniq` (`role_id`,`permission_id`),
  KEY `rbac_role_permission_permission_id_f5e1e866_fk_rbac_perm` (`permission_id`),
  CONSTRAINT `rbac_role_permission_permission_id_f5e1e866_fk_rbac_perm` FOREIGN KEY (`permission_id`) REFERENCES `rbac_permission` (`id`),
  CONSTRAINT `rbac_role_permissions_role_id_d10416cb_fk_rbac_role_id` FOREIGN KEY (`role_id`) REFERENCES `rbac_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rbac_role_permissions`
--

LOCK TABLES `rbac_role_permissions` WRITE;
/*!40000 ALTER TABLE `rbac_role_permissions` DISABLE KEYS */;
INSERT INTO `rbac_role_permissions` VALUES (70,1,22),(66,1,23),(65,1,24),(73,1,25),(69,1,26),(74,1,27),(68,1,28),(79,1,29),(67,1,30),(64,1,31),(72,1,32),(77,1,33),(78,1,34),(71,1,35),(76,1,36),(75,1,37),(98,2,18),(101,2,19),(96,2,20),(99,2,21),(92,2,38),(103,2,39),(102,2,40),(97,2,41),(93,2,42),(94,2,43),(95,2,44),(100,2,45),(91,2,46),(83,3,22),(86,3,27),(82,3,28),(90,3,29),(81,3,30),(80,3,31),(85,3,32),(88,3,33),(89,3,34),(84,3,35),(87,3,36),(107,4,18),(108,4,19),(105,4,38),(109,4,40),(106,4,42),(104,4,46),(28,5,1),(13,5,2),(43,5,3),(56,5,4),(41,5,5),(24,5,6),(22,5,7),(44,5,8),(27,5,9),(62,5,10),(17,5,11),(7,5,12),(47,5,13),(9,5,14),(60,5,15),(19,5,16),(59,5,17),(12,5,18),(45,5,19),(25,5,20),(14,5,21),(36,5,22),(3,5,23),(2,5,24),(39,5,25),(21,5,26),(10,5,27),(5,5,28),(63,5,29),(50,5,30),(1,5,31),(38,5,32),(16,5,33),(29,5,34),(37,5,35),(58,5,36),(20,5,37),(33,5,38),(46,5,39),(31,5,40),(30,5,41),(52,5,42),(34,5,43),(54,5,44),(57,5,45),(48,5,46),(61,5,47),(32,5,48),(35,5,49),(55,5,50),(4,5,51),(23,5,52),(15,5,53),(8,5,54),(40,5,55),(6,5,56),(26,5,57),(49,5,58),(53,5,59),(42,5,60),(51,5,61),(11,5,62),(18,5,63);
/*!40000 ALTER TABLE `rbac_role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_classlist`
--

DROP TABLE IF EXISTS `web_classlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_classlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `semester` int(10) unsigned NOT NULL,
  `price` int(10) unsigned NOT NULL,
  `start_date` date NOT NULL,
  `graduate_date` date DEFAULT NULL,
  `memo` longtext,
  `class_teacher_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `web_classlist_class_teacher_id_adda1501_fk_web_userinfo_id` (`class_teacher_id`),
  KEY `web_classlist_course_id_0d0bb3df_fk_web_course_id` (`course_id`),
  KEY `web_classlist_school_id_cc9a49ba_fk_web_school_id` (`school_id`),
  CONSTRAINT `web_classlist_class_teacher_id_adda1501_fk_web_userinfo_id` FOREIGN KEY (`class_teacher_id`) REFERENCES `web_userinfo` (`id`),
  CONSTRAINT `web_classlist_course_id_0d0bb3df_fk_web_course_id` FOREIGN KEY (`course_id`) REFERENCES `web_course` (`id`),
  CONSTRAINT `web_classlist_school_id_cc9a49ba_fk_web_school_id` FOREIGN KEY (`school_id`) REFERENCES `web_school` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_classlist`
--

LOCK TABLES `web_classlist` WRITE;
/*!40000 ALTER TABLE `web_classlist` DISABLE KEYS */;
INSERT INTO `web_classlist` VALUES (1,1,10000,'2019-09-25',NULL,'',2,2,1),(2,2,111111,'2019-09-26',NULL,'',2,2,1),(3,1,1000,'2019-09-26',NULL,'',2,1,1);
/*!40000 ALTER TABLE `web_classlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_classlist_tech_teachers`
--

DROP TABLE IF EXISTS `web_classlist_tech_teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_classlist_tech_teachers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classlist_id` int(11) NOT NULL,
  `userinfo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `web_classlist_tech_teach_classlist_id_userinfo_id_b70ec689_uniq` (`classlist_id`,`userinfo_id`),
  KEY `web_classlist_tech_t_userinfo_id_7d6dfc5e_fk_web_useri` (`userinfo_id`),
  CONSTRAINT `web_classlist_tech_t_classlist_id_c24729e2_fk_web_class` FOREIGN KEY (`classlist_id`) REFERENCES `web_classlist` (`id`),
  CONSTRAINT `web_classlist_tech_t_userinfo_id_7d6dfc5e_fk_web_useri` FOREIGN KEY (`userinfo_id`) REFERENCES `web_userinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_classlist_tech_teachers`
--

LOCK TABLES `web_classlist_tech_teachers` WRITE;
/*!40000 ALTER TABLE `web_classlist_tech_teachers` DISABLE KEYS */;
INSERT INTO `web_classlist_tech_teachers` VALUES (1,1,1),(2,2,1),(3,3,3);
/*!40000 ALTER TABLE `web_classlist_tech_teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_consultrecord`
--

DROP TABLE IF EXISTS `web_consultrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_consultrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `note` longtext NOT NULL,
  `date` date NOT NULL,
  `consultant_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `web_consultrecord_consultant_id_914c38fa_fk_web_userinfo_id` (`consultant_id`),
  KEY `web_consultrecord_customer_id_befb7f7f_fk_web_customer_id` (`customer_id`),
  CONSTRAINT `web_consultrecord_consultant_id_914c38fa_fk_web_userinfo_id` FOREIGN KEY (`consultant_id`) REFERENCES `web_userinfo` (`id`),
  CONSTRAINT `web_consultrecord_customer_id_befb7f7f_fk_web_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `web_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_consultrecord`
--

LOCK TABLES `web_consultrecord` WRITE;
/*!40000 ALTER TABLE `web_consultrecord` DISABLE KEYS */;
INSERT INTO `web_consultrecord` VALUES (1,'第一次跟进，这是一个小睡个。','2019-09-20',4,3),(2,'第二次更新','2019-09-25',4,3),(3,'你好','2019-09-25',4,3),(4,'在更新','2019-09-25',4,3);
/*!40000 ALTER TABLE `web_consultrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_course`
--

DROP TABLE IF EXISTS `web_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_course`
--

LOCK TABLES `web_course` WRITE;
/*!40000 ALTER TABLE `web_course` DISABLE KEYS */;
INSERT INTO `web_course` VALUES (1,'Linux运维'),(2,'Python全栈'),(3,'Python架构师'),(4,'Java大数据');
/*!40000 ALTER TABLE `web_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_courserecord`
--

DROP TABLE IF EXISTS `web_courserecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_courserecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day_num` int(11) NOT NULL,
  `date` date NOT NULL,
  `class_object_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `web_courserecord_class_object_id_e107b311_fk_web_classlist_id` (`class_object_id`),
  KEY `web_courserecord_teacher_id_3d847927_fk_web_userinfo_id` (`teacher_id`),
  CONSTRAINT `web_courserecord_class_object_id_e107b311_fk_web_classlist_id` FOREIGN KEY (`class_object_id`) REFERENCES `web_classlist` (`id`),
  CONSTRAINT `web_courserecord_teacher_id_3d847927_fk_web_userinfo_id` FOREIGN KEY (`teacher_id`) REFERENCES `web_userinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_courserecord`
--

LOCK TABLES `web_courserecord` WRITE;
/*!40000 ALTER TABLE `web_courserecord` DISABLE KEYS */;
INSERT INTO `web_courserecord` VALUES (1,1,'2019-09-26',2,1);
/*!40000 ALTER TABLE `web_courserecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_customer`
--

DROP TABLE IF EXISTS `web_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `qq` varchar(64) NOT NULL,
  `status` int(11) NOT NULL,
  `gender` smallint(6) NOT NULL,
  `source` smallint(6) NOT NULL,
  `education` int(11) DEFAULT NULL,
  `graduation_school` varchar(64) DEFAULT NULL,
  `major` varchar(64) DEFAULT NULL,
  `experience` int(11) DEFAULT NULL,
  `work_status` int(11) DEFAULT NULL,
  `company` varchar(64) DEFAULT NULL,
  `salary` varchar(64) DEFAULT NULL,
  `date` date NOT NULL,
  `last_consult_date` date NOT NULL,
  `consultant_id` int(11) DEFAULT NULL,
  `referral_from_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `qq` (`qq`),
  KEY `web_customer_consultant_id_e3c377b3_fk_web_userinfo_id` (`consultant_id`),
  KEY `web_customer_referral_from_id_cba5a965_fk_web_customer_id` (`referral_from_id`),
  CONSTRAINT `web_customer_consultant_id_e3c377b3_fk_web_userinfo_id` FOREIGN KEY (`consultant_id`) REFERENCES `web_userinfo` (`id`),
  CONSTRAINT `web_customer_referral_from_id_cba5a965_fk_web_customer_id` FOREIGN KEY (`referral_from_id`) REFERENCES `web_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_customer`
--

LOCK TABLES `web_customer` WRITE;
/*!40000 ALTER TABLE `web_customer` DISABLE KEYS */;
INSERT INTO `web_customer` VALUES (1,'张三','1231231111',2,1,1,NULL,NULL,NULL,NULL,1,NULL,NULL,'2019-09-25','2019-09-25',4,NULL),(2,'李四','9871234',1,1,1,NULL,NULL,NULL,NULL,1,NULL,NULL,'2019-09-25','2019-09-25',4,NULL),(3,'小月月','98712341111',1,2,1,NULL,NULL,NULL,NULL,1,NULL,NULL,'2019-09-25','2019-09-25',4,NULL),(4,'王力宏','1231231234',2,1,1,NULL,NULL,NULL,NULL,1,NULL,NULL,'2019-09-25','2019-09-25',NULL,NULL);
/*!40000 ALTER TABLE `web_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_customer_course`
--

DROP TABLE IF EXISTS `web_customer_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_customer_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `web_customer_course_customer_id_course_id_4c572199_uniq` (`customer_id`,`course_id`),
  KEY `web_customer_course_course_id_7f7b8902_fk_web_course_id` (`course_id`),
  CONSTRAINT `web_customer_course_course_id_7f7b8902_fk_web_course_id` FOREIGN KEY (`course_id`) REFERENCES `web_course` (`id`),
  CONSTRAINT `web_customer_course_customer_id_8ce5dbc5_fk_web_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `web_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_customer_course`
--

LOCK TABLES `web_customer_course` WRITE;
/*!40000 ALTER TABLE `web_customer_course` DISABLE KEYS */;
INSERT INTO `web_customer_course` VALUES (1,1,2),(2,2,2),(3,3,2),(4,4,1),(5,4,2),(6,4,3);
/*!40000 ALTER TABLE `web_customer_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_department`
--

DROP TABLE IF EXISTS `web_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_department`
--

LOCK TABLES `web_department` WRITE;
/*!40000 ALTER TABLE `web_department` DISABLE KEYS */;
INSERT INTO `web_department` VALUES (1,'销售部'),(2,'运营部'),(3,'教质部'),(4,'Python教学部'),(5,'Linux教学部');
/*!40000 ALTER TABLE `web_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_paymentrecord`
--

DROP TABLE IF EXISTS `web_paymentrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_paymentrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pay_type` int(11) NOT NULL,
  `paid_fee` int(11) NOT NULL,
  `apply_date` datetime(6) NOT NULL,
  `confirm_status` int(11) NOT NULL,
  `confirm_date` datetime(6) DEFAULT NULL,
  `note` longtext,
  `class_list_id` int(11) NOT NULL,
  `confirm_user_id` int(11) DEFAULT NULL,
  `consultant_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `web_paymentrecord_class_list_id_9f0826ec_fk_web_classlist_id` (`class_list_id`),
  KEY `web_paymentrecord_confirm_user_id_1668de5d_fk_web_userinfo_id` (`confirm_user_id`),
  KEY `web_paymentrecord_consultant_id_3a7e9446_fk_web_userinfo_id` (`consultant_id`),
  KEY `web_paymentrecord_customer_id_da57a16c_fk_web_customer_id` (`customer_id`),
  CONSTRAINT `web_paymentrecord_class_list_id_9f0826ec_fk_web_classlist_id` FOREIGN KEY (`class_list_id`) REFERENCES `web_classlist` (`id`),
  CONSTRAINT `web_paymentrecord_confirm_user_id_1668de5d_fk_web_userinfo_id` FOREIGN KEY (`confirm_user_id`) REFERENCES `web_userinfo` (`id`),
  CONSTRAINT `web_paymentrecord_consultant_id_3a7e9446_fk_web_userinfo_id` FOREIGN KEY (`consultant_id`) REFERENCES `web_userinfo` (`id`),
  CONSTRAINT `web_paymentrecord_customer_id_da57a16c_fk_web_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `web_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_paymentrecord`
--

LOCK TABLES `web_paymentrecord` WRITE;
/*!40000 ALTER TABLE `web_paymentrecord` DISABLE KEYS */;
INSERT INTO `web_paymentrecord` VALUES (1,1,100,'2019-09-26 03:51:32.454770',2,NULL,'测试',1,NULL,4,3),(2,1,1,'2019-09-26 07:50:18.503279',2,NULL,'',2,NULL,4,2),(3,2,100,'2019-09-26 07:53:44.911366',2,NULL,'',2,NULL,4,3);
/*!40000 ALTER TABLE `web_paymentrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_school`
--

DROP TABLE IF EXISTS `web_school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_school` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_school`
--

LOCK TABLES `web_school` WRITE;
/*!40000 ALTER TABLE `web_school` DISABLE KEYS */;
INSERT INTO `web_school` VALUES (1,'北京沙河'),(2,'上海浦东'),(3,'深圳南山南');
/*!40000 ALTER TABLE `web_school` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_scorerecord`
--

DROP TABLE IF EXISTS `web_scorerecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_scorerecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext NOT NULL,
  `score` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `web_scorerecord_student_id_f8f7a771_fk_web_student_id` (`student_id`),
  KEY `web_scorerecord_user_id_179a77da_fk_web_userinfo_id` (`user_id`),
  CONSTRAINT `web_scorerecord_student_id_f8f7a771_fk_web_student_id` FOREIGN KEY (`student_id`) REFERENCES `web_student` (`id`),
  CONSTRAINT `web_scorerecord_user_id_179a77da_fk_web_userinfo_id` FOREIGN KEY (`user_id`) REFERENCES `web_userinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_scorerecord`
--

LOCK TABLES `web_scorerecord` WRITE;
/*!40000 ALTER TABLE `web_scorerecord` DISABLE KEYS */;
INSERT INTO `web_scorerecord` VALUES (1,'测试',10,1,4),(2,'册',-100,1,4);
/*!40000 ALTER TABLE `web_scorerecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_student`
--

DROP TABLE IF EXISTS `web_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `qq` varchar(32) NOT NULL,
  `mobile` varchar(32) NOT NULL,
  `emergency_contract` varchar(32) NOT NULL,
  `student_status` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `memo` longtext,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customer_id` (`customer_id`),
  CONSTRAINT `web_student_customer_id_10f0afe4_fk_web_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `web_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_student`
--

LOCK TABLES `web_student` WRITE;
/*!40000 ALTER TABLE `web_student` DISABLE KEYS */;
INSERT INTO `web_student` VALUES (1,'1231231231','15633732914','15633732911',2,10,NULL,3),(2,'1231231231','15633732914','15633732911',2,100,NULL,2);
/*!40000 ALTER TABLE `web_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_student_class_list`
--

DROP TABLE IF EXISTS `web_student_class_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_student_class_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `classlist_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `web_student_class_list_student_id_classlist_id_7937e885_uniq` (`student_id`,`classlist_id`),
  KEY `web_student_class_list_classlist_id_c9c47794_fk_web_classlist_id` (`classlist_id`),
  CONSTRAINT `web_student_class_list_classlist_id_c9c47794_fk_web_classlist_id` FOREIGN KEY (`classlist_id`) REFERENCES `web_classlist` (`id`),
  CONSTRAINT `web_student_class_list_student_id_76222b07_fk_web_student_id` FOREIGN KEY (`student_id`) REFERENCES `web_student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_student_class_list`
--

LOCK TABLES `web_student_class_list` WRITE;
/*!40000 ALTER TABLE `web_student_class_list` DISABLE KEYS */;
INSERT INTO `web_student_class_list` VALUES (1,1,1),(3,1,2),(2,2,2);
/*!40000 ALTER TABLE `web_student_class_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_studyrecord`
--

DROP TABLE IF EXISTS `web_studyrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_studyrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `record` varchar(64) NOT NULL,
  `course_record_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `web_studyrecord_course_record_id_a3162b0f_fk_web_courserecord_id` (`course_record_id`),
  KEY `web_studyrecord_student_id_a81eb429_fk_web_student_id` (`student_id`),
  CONSTRAINT `web_studyrecord_course_record_id_a3162b0f_fk_web_courserecord_id` FOREIGN KEY (`course_record_id`) REFERENCES `web_courserecord` (`id`),
  CONSTRAINT `web_studyrecord_student_id_a81eb429_fk_web_student_id` FOREIGN KEY (`student_id`) REFERENCES `web_student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_studyrecord`
--

LOCK TABLES `web_studyrecord` WRITE;
/*!40000 ALTER TABLE `web_studyrecord` DISABLE KEYS */;
INSERT INTO `web_studyrecord` VALUES (1,'checked',1,2);
/*!40000 ALTER TABLE `web_studyrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_userinfo`
--

DROP TABLE IF EXISTS `web_userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `email` varchar(32) NOT NULL,
  `nickname` varchar(16) NOT NULL,
  `phone` varchar(32) NOT NULL,
  `gender` int(11) NOT NULL,
  `depart_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `web_userinfo_depart_id_4df860bd_fk_web_department_id` (`depart_id`),
  CONSTRAINT `web_userinfo_depart_id_4df860bd_fk_web_department_id` FOREIGN KEY (`depart_id`) REFERENCES `web_department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_userinfo`
--

LOCK TABLES `web_userinfo` WRITE;
/*!40000 ALTER TABLE `web_userinfo` DISABLE KEYS */;
INSERT INTO `web_userinfo` VALUES (1,'wupeiqi','e36660c2858bb244e0b124931d00d5a0','wupeiqi@oldboyedu.com','武沛齐','15131255089',1,4),(2,'zhoujielun','e36660c2858bb244e0b124931d00d5a0','820293142@qq.com','周杰伦','15131255089',2,3),(3,'ritian','e36660c2858bb244e0b124931d00d5a0','820293142@qq.com','日天','15131255089',1,5),(4,'waiwai','e36660c2858bb244e0b124931d00d5a0','820293142@qq.com','歪歪','15131255089',2,1);
/*!40000 ALTER TABLE `web_userinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_userinfo_roles`
--

DROP TABLE IF EXISTS `web_userinfo_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_userinfo_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userinfo_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `web_userinfo_roles_userinfo_id_role_id_e0435f62_uniq` (`userinfo_id`,`role_id`),
  KEY `web_userinfo_roles_role_id_c9cdbf1d_fk_rbac_role_id` (`role_id`),
  CONSTRAINT `web_userinfo_roles_role_id_c9cdbf1d_fk_rbac_role_id` FOREIGN KEY (`role_id`) REFERENCES `rbac_role` (`id`),
  CONSTRAINT `web_userinfo_roles_userinfo_id_090d779f_fk_web_userinfo_id` FOREIGN KEY (`userinfo_id`) REFERENCES `web_userinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_userinfo_roles`
--

LOCK TABLES `web_userinfo_roles` WRITE;
/*!40000 ALTER TABLE `web_userinfo_roles` DISABLE KEYS */;
INSERT INTO `web_userinfo_roles` VALUES (1,1,5),(4,2,1),(2,3,5),(5,4,3);
/*!40000 ALTER TABLE `web_userinfo_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-27 15:29:18
