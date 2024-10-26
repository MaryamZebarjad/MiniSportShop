-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: onlineshop
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add برند',7,'add_brand'),(26,'Can change برند',7,'change_brand'),(27,'Can delete برند',7,'delete_brand'),(28,'Can view برند',7,'view_brand'),(29,'Can add دسته بندی',8,'add_category'),(30,'Can change دسته بندی',8,'change_category'),(31,'Can delete دسته بندی',8,'delete_category'),(32,'Can view دسته بندی',8,'view_category'),(33,'Can add محصول',9,'add_product'),(34,'Can change محصول',9,'change_product'),(35,'Can delete محصول',9,'delete_product'),(36,'Can view محصول',9,'view_product'),(37,'Can add نقد و بررسی',10,'add_comment'),(38,'Can change نقد و بررسی',10,'change_comment'),(39,'Can delete نقد و بررسی',10,'delete_comment'),(40,'Can view نقد و بررسی',10,'view_comment'),(41,'Can add تصویر',11,'add_productimagegallary'),(42,'Can change تصویر',11,'change_productimagegallary'),(43,'Can delete تصویر',11,'delete_productimagegallary'),(44,'Can view تصویر',11,'view_productimagegallary'),(45,'Can add امتیاز',12,'add_rating'),(46,'Can change امتیاز',12,'change_rating'),(47,'Can delete امتیاز',12,'delete_rating'),(48,'Can view امتیاز',12,'view_rating'),(49,'Can add سبد خرید',13,'add_cart'),(50,'Can change سبد خرید',13,'change_cart'),(51,'Can delete سبد خرید',13,'delete_cart'),(52,'Can view سبد خرید',13,'view_cart'),(53,'Can add کالای سبد خرید',14,'add_cartitem'),(54,'Can change کالای سبد خرید',14,'change_cartitem'),(55,'Can delete کالای سبد خرید',14,'delete_cartitem'),(56,'Can view کالای سبد خرید',14,'view_cartitem'),(57,'Can add پرداخت',15,'add_payment'),(58,'Can change پرداخت',15,'change_payment'),(59,'Can delete پرداخت',15,'delete_payment'),(60,'Can view پرداخت',15,'view_payment'),(61,'Can add حمل و نقل',16,'add_shipping'),(62,'Can change حمل و نقل',16,'change_shipping'),(63,'Can delete حمل و نقل',16,'delete_shipping'),(64,'Can view حمل و نقل',16,'view_shipping'),(65,'Can add مشتری',17,'add_customer'),(66,'Can change مشتری',17,'change_customer'),(67,'Can delete مشتری',17,'delete_customer'),(68,'Can view مشتری',17,'view_customer'),(69,'Can add سفارش',18,'add_order'),(70,'Can change سفارش',18,'change_order'),(71,'Can delete سفارش',18,'delete_order'),(72,'Can view سفارش',18,'view_order'),(73,'Can add پیام',19,'add_message'),(74,'Can change پیام',19,'change_message'),(75,'Can delete پیام',19,'delete_message'),(76,'Can view پیام',19,'view_message');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$720000$WsvdWrJhMqRlu4dxo47T7s$h9yo9CeWFE5EjRixuuhPdp7nO859ucqi94xuqntcc0Q=','2024-07-21 11:02:45.794488',1,'admin','','','',1,1,'2024-05-21 23:28:26.531527'),(6,'pbkdf2_sha256$720000$6rhos7dfTOx5KStwhylVsZ$TTyOK4e3qfjM8um4Ls0BeFKA1fwJxNz8lgICpn9GPyE=','2024-07-20 14:38:50.313147',1,'maryam_zbr','','','',1,1,'2024-07-05 22:56:57.000000'),(9,'pbkdf2_sha256$720000$uMlu7lOQGGubrISfOljBoI$JY0NB2NgGeOXRxgs3stJFFSnUNiL5pNVz6Lv5unrkQ8=','2024-07-21 09:47:39.756710',0,'reza123','رضا','احمدی','',0,1,'2024-07-21 09:45:47.387636');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_cart`
--

DROP TABLE IF EXISTS `cart_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_cart` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `total_price` decimal(10,2) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_cart`
--

LOCK TABLES `cart_cart` WRITE;
/*!40000 ALTER TABLE `cart_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_cartitem`
--

DROP TABLE IF EXISTS `cart_cartitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_cartitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int unsigned NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `cart_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_cartitem_cart_id_370ad265_fk_cart_cart_id` (`cart_id`),
  KEY `cart_cartitem_product_id_b24e265a_fk_products_product_id` (`product_id`),
  CONSTRAINT `cart_cartitem_cart_id_370ad265_fk_cart_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `cart_cart` (`id`),
  CONSTRAINT `cart_cartitem_product_id_b24e265a_fk_products_product_id` FOREIGN KEY (`product_id`) REFERENCES `products_product` (`id`),
  CONSTRAINT `cart_cartitem_chk_1` CHECK ((`quantity` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_cartitem`
--

LOCK TABLES `cart_cartitem` WRITE;
/*!40000 ALTER TABLE `cart_cartitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart_cartitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_customer`
--

DROP TABLE IF EXISTS `customer_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_customer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `family` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `userName` varchar(11) NOT NULL,
  `password` varchar(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_customer`
--

LOCK TABLES `customer_customer` WRITE;
/*!40000 ALTER TABLE `customer_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=254 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-05-21 23:29:28.737608','1','نایک',1,'[{\"added\": {}}]',7,1),(2,'2024-05-21 23:29:35.377346','2','آدیداس',1,'[{\"added\": {}}]',7,1),(3,'2024-05-21 23:29:47.056851','3','اسکیچرز',1,'[{\"added\": {}}]',7,1),(4,'2024-05-21 23:29:59.825657','4','متفرقه',1,'[{\"added\": {}}]',7,1),(5,'2024-05-21 23:30:51.808300','1','ورزشی مردانه',1,'[{\"added\": {}}]',8,1),(6,'2024-05-21 23:30:58.897749','2','ورزشی زنانه',1,'[{\"added\": {}}]',8,1),(7,'2024-05-21 23:31:37.219158','3','جاگ و شیکر و ماگ',1,'[{\"added\": {}}]',8,1),(8,'2024-05-21 23:31:42.416822','4','اکسسوری',1,'[{\"added\": {}}]',8,1),(9,'2024-05-21 23:31:52.905092','5','لوازم ورزشی',1,'[{\"added\": {}}]',8,1),(10,'2024-05-21 23:31:57.706011','6','لوازم ورزشی و بدنسازی',1,'[{\"added\": {}}]',8,1),(11,'2024-05-21 23:32:15.634506','7','کفش ورزشی و دمپایی',1,'[{\"added\": {}}]',8,1),(12,'2024-05-21 23:32:19.928750','8','تغذیه رژیمی',1,'[{\"added\": {}}]',8,1),(13,'2024-05-21 23:32:28.808053','9','هدیه و کادویی',1,'[{\"added\": {}}]',8,1),(14,'2024-05-21 23:32:33.778862','10','ست و پکیج',1,'[{\"added\": {}}]',8,1),(15,'2024-05-21 23:33:00.072988','5','لوازم ورزشی',3,'',8,1),(16,'2024-05-21 23:39:15.003898','1','اوتمیل جودوسر پرک سیب و دارچین اونا سری G بدون گلوتن ۳۰۰ گرمی',1,'[{\"added\": {}}]',9,1),(17,'2024-05-21 23:46:39.173865','2','reza1234',1,'[{\"added\": {}}]',4,1),(18,'2024-05-21 23:46:57.602040','2','reza1234',2,'[]',4,1),(19,'2024-05-21 23:47:42.055512','3','ali1234',1,'[{\"added\": {}}]',4,1),(20,'2024-05-21 23:48:12.860744','4','ahmad1234',1,'[{\"added\": {}}]',4,1),(21,'2024-05-21 23:48:18.049414','4','ahmad1234',2,'[]',4,1),(22,'2024-05-21 23:49:45.991979','2','self.comment.text',2,'[{\"changed\": {\"fields\": [\"\\u0648\\u0636\\u0639\\u06cc\\u062a\"]}}]',10,1),(23,'2024-05-21 23:49:51.022752','1','self.comment.text',2,'[{\"changed\": {\"fields\": [\"\\u0648\\u0636\\u0639\\u06cc\\u062a\"]}}]',10,1),(24,'2024-05-21 23:50:59.172019','1','اوتمیل جودوسر پرک سیب و دارچین اونا سری G بدون گلوتن ۳۰۰ گرمی',2,'[{\"changed\": {\"fields\": [\"\\u0642\\u06cc\\u0645\\u062a \\u0645\\u062d\\u0635\\u0648\\u0644\", \"\\u0642\\u06cc\\u0645\\u062a \\u062a\\u062e\\u0641\\u06cc\\u0641 \\u062e\\u0648\\u0631\\u062f\\u0647 \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(25,'2024-05-21 23:51:23.241573','1','اوتمیل جودوسر پرک سیب و دارچین اونا سری G بدون گلوتن ۳۰۰ گرمی',2,'[{\"changed\": {\"fields\": [\"\\u0645\\u0648\\u062c\\u0648\\u062f\\u06cc \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(26,'2024-05-22 06:32:16.561956','2','پکیج-لوازم-ورزشی-فیتنس-مدل-HG-96083',1,'[{\"added\": {}}]',9,1),(27,'2024-05-22 06:33:06.502908','2','پکیج-لوازم-ورزشی-فیتنس-مدل-HG-96083',2,'[{\"changed\": {\"fields\": [\"\\u062f\\u0633\\u062a\\u0647 \\u0628\\u0646\\u062f\\u06cc \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(28,'2024-05-22 06:37:26.721920','3','ساق دست ورزشی نایک مدل OPT-88600 بسته دو عددی',1,'[{\"added\": {}}]',9,1),(29,'2024-05-22 06:38:04.704545','3','ساق دست ورزشی نایک مدل OPT-88600 بسته دو عددی',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0648\\u0636\\u06cc\\u062d\\u0627\\u062a \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(30,'2024-05-22 08:58:19.891350','2','لوازم تناسب اندام تی آر ایکس مدل TRX-Suspension 402M1080',2,'[{\"changed\": {\"fields\": [\"\\u0646\\u0627\\u0645 \\u0645\\u062d\\u0635\\u0648\\u0644\", \"\\u062a\\u0648\\u0636\\u06cc\\u062d\\u0627\\u062a \\u0645\\u062d\\u0635\\u0648\\u0644\", \"\\u0642\\u06cc\\u0645\\u062a \\u0645\\u062d\\u0635\\u0648\\u0644\", \"\\u062a\\u0635\\u0648\\u06cc\\u0631 \\u0645\\u062d\\u0635\\u0648\\u0644\", \"\\u0645\\u0648\\u062c\\u0648\\u062f\\u06cc \\u0645\\u062d\\u0635\\u0648\\u0644\", \"\\u062a\\u062e\\u0641\\u06cc\\u0641\", \"\\u0642\\u06cc\\u0645\\u062a \\u062a\\u062e\\u0641\\u06cc\\u0641 \\u062e\\u0648\\u0631\\u062f\\u0647 \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(31,'2024-05-22 09:07:52.617839','4','جاگ واتر و فلاسک استیل Jun Heng ظرفیت ۲.۵ لیتر',1,'[{\"added\": {}}]',9,1),(32,'2024-05-22 09:34:54.847823','5','کفش ورزشی زنانه آدیداس مدل Classic-15107 بنفش',1,'[{\"added\": {}}]',9,1),(33,'2024-05-22 09:35:08.231234','5','کفش ورزشی زنانه آدیداس مدل Classic-15107 بنفش',2,'[{\"changed\": {\"fields\": [\"\\u0645\\u0627\\u0631\\u06a9\"]}}]',9,1),(34,'2024-05-22 09:40:47.191223','6','کفش ورزشی مردانه نایک مدل Airzoom-010810 طوسی تیره',1,'[{\"added\": {}}]',9,1),(35,'2024-05-22 09:41:10.330374','6','کفش ورزشی مردانه نایک مدل Airzoom-010810 طوسی تیره',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u062e\\u0641\\u06cc\\u0641\"]}}]',9,1),(36,'2024-05-22 09:58:38.589684','11','کفش ورزشی و دمپایی',1,'[{\"added\": {}}]',8,1),(37,'2024-05-22 09:58:58.350004','7','کفش ورزشی و دمپایی',3,'',8,1),(38,'2024-05-22 10:21:18.208700','7','کفش-ورزشی-مردانه-نایک-مدل-Airzoom-010810-طوسی-تیره-1',1,'[{\"added\": {}}]',9,1),(39,'2024-05-22 10:26:48.327371','8','کفش-ورزشی-زنانه-آدیداس-مدل-Classic-15107-بنفش-3',1,'[{\"added\": {}}]',9,1),(40,'2024-05-22 10:30:46.538505','9','سوییشرت ورزشی مردانه نایک مدل ۸۱۲۰ مشکی',1,'[{\"added\": {}}]',9,1),(41,'2024-05-22 10:32:27.355809','8','کفش ورزشی زنانه آدیداس مدل Classic 15107 بنفش3',2,'[{\"changed\": {\"fields\": [\"\\u0646\\u0627\\u0645 \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(42,'2024-05-22 10:33:49.313214','3','جاگ و شیکر',2,'[{\"changed\": {\"fields\": [\"\\u0646\\u0627\\u0645 \\u062f\\u0633\\u062a\\u0647 \\u0628\\u0646\\u062f\\u06cc\"]}}]',8,1),(43,'2024-05-22 10:34:06.564144','4','جاگ واتر و فلاسک استیل Jun Heng ظرفیت ۲.۵ لیتر',2,'[]',9,1),(44,'2024-05-22 10:39:45.303768','7','کفش ورزشی مردانه نایک مدل Airzoom 010810 طوسی تیره',2,'[{\"changed\": {\"fields\": [\"\\u0646\\u0627\\u0645 \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(45,'2024-05-22 10:41:41.581660','10','ست تیشرت و شلوارک بیسبالی مردانه شیکاگو بولز مدل Nike 2B1856 مشکی-10',1,'[{\"added\": {}}]',9,1),(46,'2024-05-22 10:44:20.649581','10','ست تیشرت و شلوارک بیسبالی مردانه شیکاگو بولز مدل Nike 2B1856 مشکی',2,'[{\"changed\": {\"fields\": [\"\\u0646\\u0627\\u0645 \\u0645\\u062d\\u0635\\u0648\\u0644\", \"\\u062a\\u0648\\u0636\\u06cc\\u062d\\u0627\\u062a \\u0645\\u062d\\u0635\\u0648\\u0644\", \"\\u0642\\u06cc\\u0645\\u062a \\u0645\\u062d\\u0635\\u0648\\u0644\", \"\\u0645\\u0648\\u062c\\u0648\\u062f\\u06cc \\u0645\\u062d\\u0635\\u0648\\u0644\", \"\\u0648\\u0636\\u0639\\u06cc\\u062a \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(47,'2024-05-22 10:57:30.098486','5','پولو',1,'[{\"added\": {}}]',7,1),(48,'2024-05-22 11:25:03.922195','11','پلوشرت ورزشی مردانه پولو مدل SPL 2B1266مشکی',1,'[{\"added\": {}}]',9,1),(49,'2024-05-22 11:34:54.306334','12','ست تیشرت و شلوارک بیسبالی مردانه شیکاگو بولز مدل Nike 2B1856 مشکی',1,'[{\"added\": {}}]',9,1),(50,'2024-05-22 12:21:37.438507','13','دستکش بدنسازی مردانه جیم مدل 402M1035 طوسی روشن',1,'[{\"added\": {}}]',9,1),(51,'2024-05-22 12:26:53.307806','12','دمبل بدنسازی رادیس فیت وزن 2 کیلوگرم بسته دو عددی',2,'[{\"changed\": {\"fields\": [\"\\u0646\\u0627\\u0645 \\u0645\\u062d\\u0635\\u0648\\u0644\", \"\\u0645\\u0627\\u0631\\u06a9\", \"\\u062a\\u0648\\u0636\\u06cc\\u062d\\u0627\\u062a \\u0645\\u062d\\u0635\\u0648\\u0644\", \"\\u0642\\u06cc\\u0645\\u062a \\u0645\\u062d\\u0635\\u0648\\u0644\", \"\\u062f\\u0633\\u062a\\u0647 \\u0628\\u0646\\u062f\\u06cc \\u0645\\u062d\\u0635\\u0648\\u0644\", \"\\u062a\\u0635\\u0648\\u06cc\\u0631 \\u0645\\u062d\\u0635\\u0648\\u0644\", \"\\u0645\\u0648\\u062c\\u0648\\u062f\\u06cc \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(52,'2024-05-22 12:36:34.219024','14','مایو اسلیپ زنانه آرنا مدل 2A0656 مشکی',1,'[{\"added\": {}}]',9,1),(53,'2024-05-22 17:56:09.472820','2','لوازم تناسب اندام تی آر ایکس مدل TRX-Suspension 402M1080',2,'[{\"changed\": {\"fields\": [\"\\u062f\\u0633\\u062a\\u0647 \\u0628\\u0646\\u062f\\u06cc \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(54,'2024-05-22 18:23:42.610968','4','self.comment.text',2,'[{\"changed\": {\"fields\": [\"\\u0648\\u0636\\u0639\\u06cc\\u062a\"]}}]',10,1),(55,'2024-05-22 18:23:48.040483','3','self.comment.text',2,'[{\"changed\": {\"fields\": [\"\\u0648\\u0636\\u0639\\u06cc\\u062a\"]}}]',10,1),(56,'2024-05-22 18:36:12.829536','7','self.comment.text',3,'',10,1),(57,'2024-05-22 18:36:12.831535','6','self.comment.text',3,'',10,1),(58,'2024-05-22 18:36:12.833534','5','self.comment.text',3,'',10,1),(59,'2024-05-22 18:38:15.074089','8','self.comment.text',3,'',10,1),(60,'2024-05-22 19:52:40.907273','9','self.comment.text',2,'[{\"changed\": {\"fields\": [\"\\u0648\\u0636\\u0639\\u06cc\\u062a\"]}}]',10,1),(61,'2024-05-22 20:28:07.081863','10','self.comment.text',2,'[{\"changed\": {\"fields\": [\"\\u0648\\u0636\\u0639\\u06cc\\u062a\"]}}]',10,1),(62,'2024-05-22 20:52:12.321424','11','self.comment.text',2,'[{\"changed\": {\"fields\": [\"\\u0648\\u0636\\u0639\\u06cc\\u062a\"]}}]',10,1),(63,'2024-05-22 22:34:59.312941','12','self.comment.text',2,'[{\"changed\": {\"fields\": [\"\\u0648\\u0636\\u0639\\u06cc\\u062a\"]}}]',10,1),(64,'2024-05-22 22:41:15.592474','13','self.comment.text',2,'[{\"changed\": {\"fields\": [\"\\u0648\\u0636\\u0639\\u06cc\\u062a\"]}}]',10,1),(65,'2024-05-23 05:00:08.493722','14','self.comment.text',2,'[{\"changed\": {\"fields\": [\"\\u0648\\u0636\\u0639\\u06cc\\u062a\"]}}]',10,1),(66,'2024-05-23 05:36:56.479602','9','Rating object (9)',3,'',12,1),(67,'2024-05-23 05:36:56.482600','8','Rating object (8)',3,'',12,1),(68,'2024-05-23 05:36:56.483599','7','Rating object (7)',3,'',12,1),(69,'2024-05-23 05:36:56.487597','6','Rating object (6)',3,'',12,1),(70,'2024-05-23 05:36:56.489596','5','Rating object (5)',3,'',12,1),(71,'2024-05-23 05:36:56.491598','4','Rating object (4)',3,'',12,1),(72,'2024-05-23 05:36:56.492594','3','Rating object (3)',3,'',12,1),(73,'2024-05-23 05:36:56.494595','1','Rating object (1)',3,'',12,1),(74,'2024-05-23 05:43:47.022481','10','Rating object (10)',3,'',12,1),(75,'2024-05-23 05:43:47.025481','2','Rating object (2)',3,'',12,1),(76,'2024-05-23 05:46:11.464907','11','Rating object (11)',3,'',12,1),(77,'2024-05-23 05:50:23.891125','12','Rating object (12)',3,'',12,1),(78,'2024-05-23 05:57:18.006714','13','Rating object (13)',3,'',12,1),(79,'2024-05-23 06:06:20.458052','15','Rating object (15)',3,'',12,1),(80,'2024-05-23 06:06:20.462048','14','Rating object (14)',3,'',12,1),(81,'2024-05-23 06:16:55.180253','16','Rating object (16)',3,'',12,1),(82,'2024-05-23 08:30:26.178923','21','Rating object (21)',1,'[{\"added\": {}}]',12,1),(83,'2024-05-23 08:30:40.620669','22','Rating object (22)',1,'[{\"added\": {}}]',12,1),(84,'2024-05-23 08:30:56.093751','23','Rating object (23)',1,'[{\"added\": {}}]',12,1),(85,'2024-05-23 14:57:52.345226','15','self.comment.text',2,'[{\"changed\": {\"fields\": [\"\\u0648\\u0636\\u0639\\u06cc\\u062a\"]}}]',10,1),(86,'2024-05-23 17:19:58.042022','14','مایو اسلیپ زنانه آرنا مدل 2A0656 مشکی',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0648\\u0636\\u06cc\\u062d\\u0627\\u062a \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(87,'2024-05-23 17:21:43.485444','14','مایو اسلیپ زنانه آرنا مدل 2A0656 مشکی',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0648\\u0636\\u06cc\\u062d\\u0627\\u062a \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(88,'2024-05-23 17:24:30.724258','14','مایو اسلیپ زنانه آرنا مدل 2A0656 مشکی',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0648\\u0636\\u06cc\\u062d\\u0627\\u062a \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(89,'2024-05-23 17:31:10.094298','13','دستکش بدنسازی مردانه جیم مدل 402M1035 طوسی روشن',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0648\\u0636\\u06cc\\u062d\\u0627\\u062a \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(90,'2024-05-23 17:36:04.973308','12','دمبل بدنسازی رادیس فیت وزن 2 کیلوگرم بسته دو عددی',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0648\\u0636\\u06cc\\u062d\\u0627\\u062a \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(91,'2024-05-23 17:42:18.328020','11','پلوشرت ورزشی مردانه پولو مدل SPL 2B1266مشکی',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0648\\u0636\\u06cc\\u062d\\u0627\\u062a \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(92,'2024-05-23 17:42:37.847510','11','پلوشرت ورزشی مردانه پولو مدل SPL 2B1266مشکی',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0639\\u062f\\u0627\\u062f \\u0628\\u0627\\u0632\\u062f\\u06cc\\u062f\"]}}]',9,1),(93,'2024-05-23 17:47:44.840756','10','ست تیشرت و شلوارک بیسبالی مردانه شیکاگو بولز مدل Nike 2B1856 مشکی',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0648\\u0636\\u06cc\\u062d\\u0627\\u062a \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(94,'2024-05-23 17:48:51.330141','10','ست تیشرت و شلوارک بیسبالی مردانه شیکاگو بولز مدل Nike 2B1856 مشکی',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0648\\u0636\\u06cc\\u062d\\u0627\\u062a \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(95,'2024-05-23 18:03:32.181595','9','سوییشرت ورزشی مردانه نایک مدل ۸۱۲۰ مشکی',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0648\\u0636\\u06cc\\u062d\\u0627\\u062a \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(96,'2024-05-23 18:08:51.128179','8','کفش ورزشی زنانه آدیداس مدل Classic 15107 بنفش3',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0648\\u0636\\u06cc\\u062d\\u0627\\u062a \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(97,'2024-05-23 18:10:14.754581','8','کفش ورزشی زنانه آدیداس مدل Classic 15107 بنفش3',2,'[]',9,1),(98,'2024-05-23 18:11:33.875872','8','کفش ورزشی زنانه آدیداس مدل Classic 15107 بنفش3',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0648\\u0636\\u06cc\\u062d\\u0627\\u062a \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(99,'2024-05-23 18:17:13.701075','7','کفش ورزشی مردانه نایک مدل Airzoom 010810 طوسی تیره',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0648\\u0636\\u06cc\\u062d\\u0627\\u062a \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(100,'2024-05-23 18:18:54.468492','7','کفش ورزشی مردانه نایک مدل Airzoom 010810 طوسی تیره',2,'[]',9,1),(101,'2024-05-23 18:21:11.544638','7','کفش ورزشی مردانه نایک مدل Airzoom 010810 طوسی تیره',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0648\\u0636\\u06cc\\u062d\\u0627\\u062a \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(102,'2024-05-23 18:27:21.048819','4','جاگ واتر و فلاسک استیل Jun Heng ظرفیت ۲.۵ لیتر',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0648\\u0636\\u06cc\\u062d\\u0627\\u062a \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(103,'2024-05-23 18:30:03.905443','3','ساق دست ورزشی نایک مدل OPT-88600 بسته دو عددی',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0648\\u0636\\u06cc\\u062d\\u0627\\u062a \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(104,'2024-05-23 18:34:46.058609','2','لوازم تناسب اندام تی آر ایکس مدل TRX-Suspension 402M1080',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0648\\u0636\\u06cc\\u062d\\u0627\\u062a \\u0645\\u062d\\u0635\\u0648\\u0644\", \"\\u062a\\u0639\\u062f\\u0627\\u062f \\u0628\\u0627\\u0632\\u062f\\u06cc\\u062f\"]}}]',9,1),(105,'2024-05-23 18:36:25.386949','1','اوتمیل جودوسر پرک سیب و دارچین اونا سری G بدون گلوتن ۳۰۰ گرمی',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0648\\u0636\\u06cc\\u062d\\u0627\\u062a \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(106,'2024-05-23 19:27:46.653323','11','پلوشرت ورزشی مردانه پولو مدل SPL 2B1266مشکی',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0648\\u0636\\u06cc\\u062d\\u0627\\u062a \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(107,'2024-05-24 03:28:24.396226','13','دستکش بدنسازی مردانه جیم مدل 402M1035 طوسی روشن',2,'[{\"changed\": {\"fields\": [\"\\u0648\\u0636\\u0639\\u06cc\\u062a \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(108,'2024-05-24 03:33:46.540761','8','کفش ورزشی زنانه آدیداس مدل Classic 15107 بنفش3',2,'[{\"changed\": {\"fields\": [\"\\u0648\\u0636\\u0639\\u06cc\\u062a \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(109,'2024-05-24 03:34:10.547375','13','دستکش بدنسازی مردانه جیم مدل 402M1035 طوسی روشن',2,'[{\"changed\": {\"fields\": [\"\\u0648\\u0636\\u0639\\u06cc\\u062a \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(110,'2024-05-24 03:34:35.125622','8','کفش ورزشی زنانه آدیداس مدل Classic 15107 بنفش3',2,'[{\"changed\": {\"fields\": [\"\\u0648\\u0636\\u0639\\u06cc\\u062a \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(111,'2024-05-24 03:36:21.959152','8','کفش ورزشی زنانه آدیداس مدل Classic 15107 بنفش3',2,'[{\"changed\": {\"fields\": [\"\\u0648\\u0636\\u0639\\u06cc\\u062a \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(112,'2024-05-24 03:43:45.622803','7','کفش ورزشی مردانه نایک مدل Airzoom 010810 طوسی تیره',2,'[{\"changed\": {\"fields\": [\"\\u0648\\u0636\\u0639\\u06cc\\u062a \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(113,'2024-05-24 03:44:23.835313','4','جاگ واتر و فلاسک استیل Jun Heng ظرفیت ۲.۵ لیتر',2,'[{\"changed\": {\"fields\": [\"\\u0648\\u0636\\u0639\\u06cc\\u062a \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(114,'2024-05-24 03:45:02.029833','8','کفش ورزشی زنانه آدیداس مدل Classic 15107 بنفش3',2,'[{\"changed\": {\"fields\": [\"\\u0648\\u0636\\u0639\\u06cc\\u062a \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(115,'2024-05-24 03:45:07.891076','7','کفش ورزشی مردانه نایک مدل Airzoom 010810 طوسی تیره',2,'[{\"changed\": {\"fields\": [\"\\u0648\\u0636\\u0639\\u06cc\\u062a \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(116,'2024-05-24 03:45:13.525465','7','کفش ورزشی مردانه نایک مدل Airzoom 010810 طوسی تیره',2,'[]',9,1),(117,'2024-05-24 03:45:19.218816','7','کفش ورزشی مردانه نایک مدل Airzoom 010810 طوسی تیره',2,'[]',9,1),(118,'2024-05-24 03:45:28.921597','4','جاگ واتر و فلاسک استیل Jun Heng ظرفیت ۲.۵ لیتر',2,'[{\"changed\": {\"fields\": [\"\\u0648\\u0636\\u0639\\u06cc\\u062a \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(119,'2024-05-24 10:44:51.350259','14','مایو اسلیپ زنانه آرنا مدل 2A0656 مشکی',2,'[{\"changed\": {\"fields\": [\"\\u0645\\u0648\\u062c\\u0648\\u062f\\u06cc \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(120,'2024-05-24 10:44:59.640946','11','پلوشرت ورزشی مردانه پولو مدل SPL 2B1266مشکی',2,'[{\"changed\": {\"fields\": [\"\\u0645\\u0648\\u062c\\u0648\\u062f\\u06cc \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(121,'2024-05-24 10:45:08.666162','3','ساق دست ورزشی نایک مدل OPT-88600 بسته دو عددی',2,'[{\"changed\": {\"fields\": [\"\\u0645\\u0648\\u062c\\u0648\\u062f\\u06cc \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(122,'2024-05-24 10:45:19.273363','2','لوازم تناسب اندام تی آر ایکس مدل TRX-Suspension 402M1080',2,'[{\"changed\": {\"fields\": [\"\\u0645\\u0648\\u062c\\u0648\\u062f\\u06cc \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(123,'2024-05-24 17:02:47.651794','8','کفش ورزشی زنانه آدیداس مدل Classic 15107 بنفش3',2,'[]',9,1),(124,'2024-05-24 20:29:15.529355','16','self.comment.text',2,'[{\"changed\": {\"fields\": [\"\\u0648\\u0636\\u0639\\u06cc\\u062a\"]}}]',10,1),(125,'2024-05-26 13:46:23.565117','12','دمبل بدنسازی رادیس فیت وزن 2 کیلوگرم بسته دو عددی',2,'[]',9,1),(126,'2024-05-28 13:37:31.613411','12','متفرقه',1,'[{\"added\": {}}]',8,1),(127,'2024-05-28 17:02:05.256034','12','متفرقه',3,'',8,1),(128,'2024-05-28 17:50:27.466025','13','متفرقه',1,'[{\"added\": {}}]',8,1),(129,'2024-05-28 17:50:51.916363','13','متفرقه',3,'',8,1),(130,'2024-05-28 19:03:17.917584','9','هدیه و کادویی',3,'',8,1),(131,'2024-05-28 21:45:14.433693','4','جاگ واتر و فلاسک استیل Jun Heng ظرفیت ۲.۵ لیتر',2,'[]',9,1),(132,'2024-05-29 15:22:42.098504','1','Payment object (1)',1,'[{\"added\": {}}]',15,1),(133,'2024-05-29 15:23:10.331421','2','Payment object (2)',1,'[{\"added\": {}}]',15,1),(134,'2024-05-29 15:23:48.697844','3','Payment object (3)',1,'[{\"added\": {}}]',15,1),(135,'2024-05-29 15:24:07.129038','4','Payment object (4)',1,'[{\"added\": {}}]',15,1),(136,'2024-06-29 21:23:28.680535','1','مریم زبرجدتشکر',2,'[{\"changed\": {\"fields\": [\"\\u0648\\u0636\\u0639\\u06cc\\u062a \\u0645\\u0634\\u0627\\u0647\\u062f\\u0647 \\u062a\\u0648\\u0633\\u0637 \\u0645\\u062f\\u06cc\\u0631\"]}}]',19,1),(137,'2024-07-06 07:45:34.430582','18','self.comment.text',2,'[{\"changed\": {\"fields\": [\"\\u0648\\u0636\\u0639\\u06cc\\u062a\"]}}]',10,6),(138,'2024-07-06 07:45:43.346867','17','self.comment.text',2,'[{\"changed\": {\"fields\": [\"\\u0648\\u0636\\u0639\\u06cc\\u062a\"]}}]',10,6),(139,'2024-07-06 15:29:14.251676','13','دستکش بدنسازی مردانه جیم مدل 402M1035 طوسی روشن',2,'[{\"changed\": {\"fields\": [\"\\u0645\\u0648\\u062c\\u0648\\u062f\\u06cc \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,6),(140,'2024-07-06 15:29:33.132577','14','مایو اسلیپ زنانه آرنا مدل 2A0656 مشکی',2,'[{\"changed\": {\"fields\": [\"\\u0645\\u0648\\u062c\\u0648\\u062f\\u06cc \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,6),(141,'2024-07-06 20:37:36.247155','19','self.comment.text',2,'[{\"changed\": {\"fields\": [\"\\u0648\\u0636\\u0639\\u06cc\\u062a\"]}}]',10,6),(142,'2024-07-06 20:59:36.731242','8','کفش ورزشی زنانه آدیداس مدل Classic 15107 بنفش3',2,'[]',9,6),(143,'2024-07-08 15:32:09.551796','10','ست تیشرت و شلوارک بیسبالی مردانه شیکاگو بولز مدل Nike 2B1856 مشکی',2,'[{\"changed\": {\"fields\": [\"\\u0645\\u0648\\u062c\\u0648\\u062f\\u06cc \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,6),(144,'2024-07-12 16:11:34.595837','20','self.comment.text',2,'[{\"changed\": {\"fields\": [\"\\u0648\\u0636\\u0639\\u06cc\\u062a\"]}}]',10,1),(145,'2024-07-12 16:12:58.576083','6','361',1,'[{\"added\": {}}]',7,1),(146,'2024-07-12 16:13:07.652273','7','vdf,;',1,'[{\"added\": {}}]',7,1),(147,'2024-07-12 16:13:29.027592','7','ریبوک',2,'[{\"changed\": {\"fields\": [\"\\u0646\\u0627\\u0645 \\u0628\\u0631\\u0646\\u062f\"]}}]',7,1),(148,'2024-07-12 16:13:43.059610','8','ساکونی',1,'[{\"added\": {}}]',7,1),(149,'2024-07-12 16:13:56.648912','9','پوما',1,'[{\"added\": {}}]',7,1),(150,'2024-07-12 16:14:18.909663','10','اسکیچرز',1,'[{\"added\": {}}]',7,1),(151,'2024-07-12 16:16:05.706304','2','لوازم تناسب اندام تی آر ایکس مدل TRX-Suspension 402M1080',2,'[{\"changed\": {\"fields\": [\"\\u0645\\u0648\\u062c\\u0648\\u062f\\u06cc \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(152,'2024-07-12 18:32:36.134288','20','self.comment.text',3,'',10,1),(153,'2024-07-12 18:32:44.213116','21','self.comment.text',2,'[{\"changed\": {\"fields\": [\"\\u0648\\u0636\\u0639\\u06cc\\u062a\"]}}]',10,1),(154,'2024-07-17 16:19:14.537626','14','مایو اسلیپ زنانه آرنا مدل 2A0656 مشکی',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0635\\u0648\\u06cc\\u0631 \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(155,'2024-07-17 16:19:56.036297','13','دستکش بدنسازی مردانه جیم مدل 402M1035 طوسی روشن',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0635\\u0648\\u06cc\\u0631 \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(156,'2024-07-17 16:26:06.972808','12','دمبل بدنسازی رادیس فیت وزن 2 کیلوگرم بسته دو عددی',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0635\\u0648\\u06cc\\u0631 \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(157,'2024-07-17 16:26:17.877218','11','پلوشرت ورزشی مردانه پولو مدل SPL 2B1266مشکی',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0635\\u0648\\u06cc\\u0631 \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(158,'2024-07-17 16:26:26.922145','10','ست تیشرت و شلوارک بیسبالی مردانه شیکاگو بولز مدل Nike 2B1856 مشکی',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0635\\u0648\\u06cc\\u0631 \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(159,'2024-07-17 16:26:35.762259','9','سوییشرت ورزشی مردانه نایک مدل ۸۱۲۰ مشکی',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0635\\u0648\\u06cc\\u0631 \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(160,'2024-07-17 16:27:03.084735','8','کفش ورزشی زنانه آدیداس مدل Classic 15107 بنفش3',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0635\\u0648\\u06cc\\u0631 \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(161,'2024-07-17 16:27:18.511700','7','کفش ورزشی مردانه نایک مدل Airzoom 010810 طوسی تیره',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0635\\u0648\\u06cc\\u0631 \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(162,'2024-07-17 16:27:30.456592','4','جاگ واتر و فلاسک استیل Jun Heng ظرفیت ۲.۵ لیتر',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0635\\u0648\\u06cc\\u0631 \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(163,'2024-07-17 16:27:48.054473','3','ساق دست ورزشی نایک مدل OPT-88600 بسته دو عددی',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0635\\u0648\\u06cc\\u0631 \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(164,'2024-07-17 16:28:00.344776','1','اوتمیل جودوسر پرک سیب و دارچین اونا سری G بدون گلوتن ۳۰۰ گرمی',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0635\\u0648\\u06cc\\u0631 \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(165,'2024-07-17 16:28:23.258140','2','لوازم تناسب اندام تی آر ایکس مدل TRX-Suspension 402M1080',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0635\\u0648\\u06cc\\u0631 \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(166,'2024-07-18 15:46:37.987133','22','self.comment.text',2,'[{\"changed\": {\"fields\": [\"\\u0648\\u0636\\u0639\\u06cc\\u062a\"]}}]',10,1),(167,'2024-07-19 16:41:47.434250','14','شنا',1,'[{\"added\": {}}]',8,1),(168,'2024-07-19 16:42:12.448240','14','شنا',3,'',8,1),(169,'2024-07-19 16:42:44.730576','37','Rating object (37)',3,'',12,1),(170,'2024-07-19 16:42:44.733573','36','Rating object (36)',3,'',12,1),(171,'2024-07-19 16:42:44.734574','35','Rating object (35)',3,'',12,1),(172,'2024-07-19 16:42:44.736572','34','Rating object (34)',3,'',12,1),(173,'2024-07-19 16:42:44.738571','31','Rating object (31)',3,'',12,1),(174,'2024-07-19 16:42:44.739570','30','Rating object (30)',3,'',12,1),(175,'2024-07-19 16:42:44.740569','29','Rating object (29)',3,'',12,1),(176,'2024-07-19 16:42:44.742568','28','Rating object (28)',3,'',12,1),(177,'2024-07-19 16:42:44.745566','27','Rating object (27)',3,'',12,1),(178,'2024-07-19 16:42:44.748565','26','Rating object (26)',3,'',12,1),(179,'2024-07-19 16:42:44.750563','25','Rating object (25)',3,'',12,1),(180,'2024-07-19 16:42:44.752562','24','Rating object (24)',3,'',12,1),(181,'2024-07-19 16:42:44.754561','23','Rating object (23)',3,'',12,1),(182,'2024-07-19 16:42:44.756559','22','Rating object (22)',3,'',12,1),(183,'2024-07-19 16:42:44.758558','21','Rating object (21)',3,'',12,1),(184,'2024-07-19 16:42:44.760557','20','Rating object (20)',3,'',12,1),(185,'2024-07-19 16:42:44.763556','19','Rating object (19)',3,'',12,1),(186,'2024-07-19 16:42:44.766553','18','Rating object (18)',3,'',12,1),(187,'2024-07-19 16:42:44.767553','17','Rating object (17)',3,'',12,1),(188,'2024-07-19 16:42:54.527306','12','مریم زبرجدتشکر',3,'',19,1),(189,'2024-07-19 16:42:54.530304','11','مریم زبرجدتشکر',3,'',19,1),(190,'2024-07-19 16:42:54.532303','10','1تشکر',3,'',19,1),(191,'2024-07-19 16:42:54.534300','9','مریم زبرجدتشکر',3,'',19,1),(192,'2024-07-19 16:42:54.535300','7','مریم زبرجدتشکررررررررررررر',3,'',19,1),(193,'2024-07-19 16:42:54.536299','6','مریم زبرجدتشکر',3,'',19,1),(194,'2024-07-19 16:43:42.762431','22','self.comment.text',3,'',10,1),(195,'2024-07-19 16:43:42.765429','21','self.comment.text',3,'',10,1),(196,'2024-07-19 16:43:42.767427','19','self.comment.text',3,'',10,1),(197,'2024-07-19 16:43:42.769427','18','self.comment.text',3,'',10,1),(198,'2024-07-19 16:43:42.771425','17','self.comment.text',3,'',10,1),(199,'2024-07-19 16:43:42.774424','16','self.comment.text',3,'',10,1),(200,'2024-07-19 16:43:42.776422','15','self.comment.text',3,'',10,1),(201,'2024-07-19 16:43:42.778420','14','self.comment.text',3,'',10,1),(202,'2024-07-19 16:43:42.780420','13','self.comment.text',3,'',10,1),(203,'2024-07-19 16:43:42.781419','12','self.comment.text',3,'',10,1),(204,'2024-07-19 16:43:42.783417','11','self.comment.text',3,'',10,1),(205,'2024-07-19 16:43:42.785417','10','self.comment.text',3,'',10,1),(206,'2024-07-19 16:43:42.786416','9','self.comment.text',3,'',10,1),(207,'2024-07-19 16:43:42.789414','4','self.comment.text',3,'',10,1),(208,'2024-07-19 16:43:42.791413','3','self.comment.text',3,'',10,1),(209,'2024-07-19 16:43:42.793412','2','self.comment.text',3,'',10,1),(210,'2024-07-19 16:43:42.797409','1','self.comment.text',3,'',10,1),(211,'2024-07-19 16:44:32.305719','23','self.comment.text',2,'[{\"changed\": {\"fields\": [\"\\u0648\\u0636\\u0639\\u06cc\\u062a\"]}}]',10,1),(212,'2024-07-19 16:45:30.428516','10','ست تیشرت و شلوارک بیسبالی مردانه شیکاگو بولز مدل Nike 2B1856 مشکی',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u062e\\u0641\\u06cc\\u0641\", \"\\u0642\\u06cc\\u0645\\u062a \\u062a\\u062e\\u0641\\u06cc\\u0641 \\u062e\\u0648\\u0631\\u062f\\u0647 \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(213,'2024-07-19 16:45:49.079579','10','ست تیشرت و شلوارک بیسبالی مردانه شیکاگو بولز مدل Nike 2B1856 مشکی',2,'[{\"changed\": {\"fields\": [\"\\u0642\\u06cc\\u0645\\u062a \\u062a\\u062e\\u0641\\u06cc\\u0641 \\u062e\\u0648\\u0631\\u062f\\u0647 \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(214,'2024-07-19 16:46:46.776648','10','ست تیشرت و شلوارک بیسبالی مردانه شیکاگو بولز مدل Nike 2B1856 مشکی',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u062e\\u0641\\u06cc\\u0641\", \"\\u0642\\u06cc\\u0645\\u062a \\u062a\\u062e\\u0641\\u06cc\\u0641 \\u062e\\u0648\\u0631\\u062f\\u0647 \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(215,'2024-07-19 16:47:06.285160','10','ست تیشرت و شلوارک بیسبالی مردانه شیکاگو بولز مدل Nike 2B1856 مشکی',2,'[{\"changed\": {\"fields\": [\"\\u0648\\u0636\\u0639\\u06cc\\u062a \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(216,'2024-07-19 16:47:21.036719','10','ست تیشرت و شلوارک بیسبالی مردانه شیکاگو بولز مدل Nike 2B1856 مشکی',2,'[{\"changed\": {\"fields\": [\"\\u0648\\u0636\\u0639\\u06cc\\u062a \\u0645\\u062d\\u0635\\u0648\\u0644\"]}}]',9,1),(217,'2024-07-19 16:48:30.608186','24','self.comment.text',2,'[{\"changed\": {\"fields\": [\"\\u0648\\u0636\\u0639\\u06cc\\u062a\"]}}]',10,1),(218,'2024-07-19 16:50:23.657826','24','self.comment.text',3,'',10,1),(219,'2024-07-19 16:50:23.661823','23','self.comment.text',3,'',10,1),(220,'2024-07-19 16:50:35.249406','39','Rating object (39)',3,'',12,1),(221,'2024-07-19 16:50:35.252405','38','Rating object (38)',3,'',12,1),(222,'2024-07-19 16:50:43.095385','4','پرداخت در محل کارت اعتباری',3,'',15,1),(223,'2024-07-19 16:50:43.098382','3','پرداخت در محل نقدی',3,'',15,1),(224,'2024-07-19 16:50:43.099382','2','پرداخت اینترنتی انتقال بانکی',3,'',15,1),(225,'2024-07-19 16:50:43.101381','1','پرداخت اینترنتی کارت اعتباری',3,'',15,1),(226,'2024-07-19 16:50:54.936805','72','Order 72 by admin',3,'',18,1),(227,'2024-07-19 16:50:54.940802','71','Order 71 by admin',3,'',18,1),(228,'2024-07-19 16:50:54.943801','70','Order 70 by maryam_zbr',3,'',18,1),(229,'2024-07-19 16:50:54.944800','69','Order 69 by maryam_zbr',3,'',18,1),(230,'2024-07-19 16:50:54.946800','68','Order 68 by maryam_zbr',3,'',18,1),(231,'2024-07-19 16:50:54.948798','67','Order 67 by maryam_zbr',3,'',18,1),(232,'2024-07-19 16:50:54.950796','66','Order 66 by ali1234',3,'',18,1),(233,'2024-07-19 16:50:54.951796','65','Order 65 by ali1234',3,'',18,1),(234,'2024-07-19 16:50:54.953795','64','Order 64 by ali1234',3,'',18,1),(235,'2024-07-19 16:50:54.956793','63','Order 63 by ali1234',3,'',18,1),(236,'2024-07-19 16:50:54.959790','62','Order 62 by admin',3,'',18,1),(237,'2024-07-19 16:50:54.960790','61','Order 61 by admin',3,'',18,1),(238,'2024-07-19 16:50:54.962789','60','Order 60 by admin',3,'',18,1),(239,'2024-07-19 16:52:36.713661','8','0941',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',4,1),(240,'2024-07-19 20:43:03.470421','6','maryam',2,'[{\"changed\": {\"fields\": [\"Username\"]}}]',4,1),(241,'2024-07-19 20:43:20.817317','6','maryam',2,'[{\"changed\": {\"fields\": [\"Email address\"]}}]',4,1),(242,'2024-07-19 20:43:29.046051','6','maryam',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',4,1),(243,'2024-07-19 20:51:30.191079','13','مریم زبرجدتشکر',3,'',19,1),(244,'2024-07-20 08:17:54.892369','15','متفرقه',1,'[{\"added\": {}}]',8,1),(245,'2024-07-20 08:18:18.522244','15','متفرقه',3,'',8,1),(246,'2024-07-21 11:40:16.443892','5','نقدی انتقال بانکی',1,'[{\"added\": {}}]',15,1),(247,'2024-07-21 11:40:39.063414','6','نقدی در محل',1,'[{\"added\": {}}]',15,1),(248,'2024-07-21 11:40:53.548144','7','آنلاین انتقال بانکی',1,'[{\"added\": {}}]',15,1),(249,'2024-07-21 11:41:07.610142','8','آنلاین کارت اعتباری',1,'[{\"added\": {}}]',15,1),(250,'2024-07-21 11:46:53.528241','14','مریم زبرجدتشکر',2,'[{\"changed\": {\"fields\": [\"\\u0648\\u0636\\u0639\\u06cc\\u062a \\u0645\\u0634\\u0627\\u0647\\u062f\\u0647 \\u062a\\u0648\\u0633\\u0637 \\u0645\\u062f\\u06cc\\u0631\"]}}]',19,1),(251,'2024-07-21 11:47:01.226314','26','self.comment.text',2,'[{\"changed\": {\"fields\": [\"\\u0648\\u0636\\u0639\\u06cc\\u062a\"]}}]',10,1),(252,'2024-07-21 11:47:05.552545','25','self.comment.text',2,'[{\"changed\": {\"fields\": [\"\\u0648\\u0636\\u0639\\u06cc\\u062a\"]}}]',10,1),(253,'2024-07-21 11:48:11.068608','27','self.comment.text',2,'[{\"changed\": {\"fields\": [\"\\u0648\\u0636\\u0639\\u06cc\\u062a\"]}}]',10,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(13,'cart','cart'),(14,'cart','cartitem'),(5,'contenttypes','contenttype'),(17,'customer','customer'),(19,'main','message'),(18,'order','order'),(15,'payment','payment'),(7,'products','brand'),(8,'products','category'),(10,'products','comment'),(9,'products','product'),(11,'products','productimagegallary'),(12,'products','rating'),(6,'sessions','session'),(16,'shipping','shipping');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-05-21 23:25:46.000542'),(2,'auth','0001_initial','2024-05-21 23:25:46.665116'),(3,'admin','0001_initial','2024-05-21 23:25:46.833009'),(4,'admin','0002_logentry_remove_auto_add','2024-05-21 23:25:46.847999'),(5,'admin','0003_logentry_add_action_flag_choices','2024-05-21 23:25:46.862989'),(6,'contenttypes','0002_remove_content_type_name','2024-05-21 23:25:47.022885'),(7,'auth','0002_alter_permission_name_max_length','2024-05-21 23:25:47.116826'),(8,'auth','0003_alter_user_email_max_length','2024-05-21 23:25:47.160798'),(9,'auth','0004_alter_user_username_opts','2024-05-21 23:25:47.173790'),(10,'auth','0005_alter_user_last_login_null','2024-05-21 23:25:47.264731'),(11,'auth','0006_require_contenttypes_0002','2024-05-21 23:25:47.266729'),(12,'auth','0007_alter_validators_add_error_messages','2024-05-21 23:25:47.275723'),(13,'auth','0008_alter_user_username_max_length','2024-05-21 23:25:47.365666'),(14,'auth','0009_alter_user_last_name_max_length','2024-05-21 23:25:47.452611'),(15,'auth','0010_alter_group_name_max_length','2024-05-21 23:25:47.481593'),(16,'auth','0011_update_proxy_permissions','2024-05-21 23:25:47.501580'),(17,'auth','0012_alter_user_first_name_max_length','2024-05-21 23:25:47.600517'),(18,'products','0001_initial','2024-05-21 23:25:48.139170'),(20,'cart','0001_initial','2024-05-21 23:25:48.406997'),(22,'payment','0001_initial','2024-05-21 23:25:48.582885'),(23,'sessions','0001_initial','2024-05-21 23:25:48.634853'),(24,'shipping','0001_initial','2024-05-21 23:25:48.682822'),(25,'products','0002_comment_comment_number','2024-05-22 20:04:36.850838'),(26,'products','0003_rename_comment_number_comment_number','2024-05-22 20:11:26.131194'),(27,'products','0004_alter_rating_score','2024-05-23 05:45:55.845916'),(28,'order','0001_initial','2024-05-28 21:43:29.943625'),(29,'order','0002_alter_order_product','2024-05-28 21:51:28.467108'),(30,'order','0003_alter_order_product','2024-05-28 21:59:49.486180'),(31,'order','0004_order_payment_method','2024-05-29 15:17:20.036802'),(32,'main','0001_initial','2024-06-29 20:51:31.927021'),(33,'products','0005_alter_product_image','2024-07-19 17:22:30.140718');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0uytbfzedpswkk8j8nf71seauw4vid2k','.eJxVjMsOwiAQRf-FtSHA8Cgu3fsNBGZAqgaS0q6M_65NutDtPefcFwtxW2vYRl7CTOzMJDv9biniI7cd0D22W-fY27rMie8KP-jg1075eTncv4MaR_3WihyJyRe02bukvIgZpLRgSkFtoQAqo5VL6IRzckIAQm9AG5sMRqHY-wPW-DdF:1sBgN3:ubQ_xgAZxgMu580EyWybvQB-zQMPG9QKNkXeZQ_QjVo','2024-06-10 19:51:01.739371'),('1q0dl1ijgio9a5t2n9h9o2gidw1egjyj','.eJxVjEsKgzAUAO_y1hLiS_QlWXbfM4R8q21JwOiiiHcvghu3M8Ps0FJrcy32k35gduglmL4DBQY7IDDi6MC6bZ3s1tJi5wgGRrgx78InlVPEtyuvykIt6zJ7dibsso09a0zfx9XeBpNr07klHnISmkggqiFH6Yiyjpw49xId6qRwiCillnqMwlPOvQhBoPdKaQfHH_ToQOc:1sQA46:X1-0th2_4xkLEBclijJBtM6c3kYd4j4xcf-XgIlFo28','2024-07-20 18:23:18.055954'),('296ixi5gsmg2ct2a9hatxaavw1ues5qo','.eJxVjEsOgyAUAO_y1g3BBwq47L5nIHwe1dpAIrpojHdvSNy4nZnMAZVqnUu2C_1gPKCTMMrzAdbt22T3SqudI4wwwI15FxbKTcSPy-_CQsnbOnvWEnbZyl4l0vd5tbfB5OrUtoqHRMIoJRB1n6J0SiUTueLcS3RoSGMfUUojzRCFVyl1IgSB3mttHJx_H9M-wg:1sQW1O:TwWHWnS8DjbztGUGYW3ff6bXPqgZQHnVT21B6dP_txI','2024-07-21 17:49:58.687270'),('6y7fgf6vnbtv3wwyb52y1jmfxzfckmza','.eJxVjMEOgyAQBf-Fc0OAFZAee-83EFiWam0gET00xn9vTbx4fTPzNtaotbEWP9GX3bf9xnxYl8GvjWY_JnZnkl22GHCicoD0DuVVOdayzGPkh8JP2vizJvo8TvdyMIQ2_GuVbBK9y2jI2aicCARSGtA5Y2cgAyrdKRvRCmtljwAJnYZOm6gxCMX2H0k3PZM:1sV5Lp:PblD2o2iHOeseDR89bk4Vl89GlG8W5on6bzRXuqXEhA','2024-08-03 08:21:57.397146'),('7ap4rv1y01chaksm9rncj8b0u9kcvfus','.eJxVjMsKgzAUBf_lrkOIN9E8lt33G0Ke1bYkYHRRxH-vght3h5nhbNBSa1Mt9pN-YDboBBgkoMBwAscWBLqD7ASsW5fRri3NdopgYIAb8y58UjlFfLvyqjTUssyTp2dCL9vos8b0fVzt7WB0bTxvJQs5cS0lR1R9jsJJmXVkkjEv0KFOCvuIQmihh8i9zLnjIXD0XintYP8D5WxB9A:1sQ9if:QGYnsOAIrxs4vCEVOXvxeEAKoU3fYEZvI2bDiI8RTwY','2024-07-20 18:01:09.071036'),('7nk9qvvhiv5jynj2l11fv0b331i5pn9c','.eJxVjssOgyAURP-FdUN4CIjL7vsFTUPgcqn2AYnoojH-ezVx43bOzMkspGKtQ8nujT_SLeuFOD9PvZsrjm6IpCOcnLLg4Y15B_Hl87NQKHkah0D3Cj1opbcS8XM9uidB72u_rUU0kbU2gUZrgrDMo-RcS5USNFomCUI1wgQwzBjegpQRrJKN0kGBZ2KTljHuJyf8VtLdH-sfk0dDkg:1sLpki:CjxzWrxXWN911KvBxDuTKne7j1ekTzgCPMqxyYaIxzA','2024-07-08 19:53:24.027648'),('864nlb3m3jyyvotdihygtwsi2e3r8q1l','.eJyrVipOLS7OzM-Lz06tVLKqVjIBEQVFmcmpSlZKRpbGpgYGBkq1OkqGRsgSpiZwcQNkcUMjc4hEbS0Au1UZPA:1sHs81:wEhR-D7hq8DJs1URF0iC3JXu7C04PAn8E5FRkkqxDTw','2024-06-27 21:37:05.073546'),('88n6pifyzk6rtpmt0zdfsgba9nnhhzke','.eJxVjMsOgyAQAP9lzw2hC7rQY-_9BsJjqdYGEtFDY_z3xsSL15nJbNC4tbEWN_EPHtt-A-fXZXBr49mNCR7Qw4UFHycuh0gfX95VxFqWeQziSMRpm3jVxN_n2V4Gg2_DsSUZMytLpBBNl5P2RNkmSVIGjR4tG-wSam217ZMKlPNdxagwBGOsh_0PO-s9qw:1sQ8nv:nAUFYGxKJkIdNLHtbvbILTA9wFNfN_AfTngrYWR0ULA','2024-07-20 17:02:31.055122'),('8n7hsapar83gbvda2l3je856b3ef7uzy','.eJxVjMsOgyAQAP9lzw2hC7rQY-_9BsJjqdYGEtFDY_z3xsSL15nJbNC4tbEWN_EPHtt-A-fXZXBr49mNCR7Qw4UFHycuh0gfX95VxFqWeQziSMRpm3jVxN_n2V4Gg2_DsSUZMytLpBBNl5P2RNkmSVIGjR4tG-wSam217ZMKlPNdxagwBGOsh_0PO-s9qw:1sQ7S3:X0L6v-hupwBh84ANAfbPc5xL-AhGFbO42Hc9Dv4frGA','2024-07-20 15:35:51.535598'),('8wtx8jfmykc1zmead676otuu47jb4suc','eyJzZXNzaW9uX2tleSI6eyI4IjoxfX0:1sQA6E:RZv4xACKXetrUXFGV8FTRtEfNypYq7pscC6w9ASr3q8','2024-07-20 18:25:30.317188'),('cgdicvfhcmqsacbvn0sk2jmt8po6foxh','eyJzZXNzaW9uX2tleSI6e319:1sQ6V7:mW9ze9SO9wB79Gkn1IUCY6xM6Xk8FfbQiNSy7JGbLug','2024-07-20 14:34:57.820204'),('eo8hgrlb7e2nk2z3aqm2em0mukp34muk','.eJxVjssOgyAURP-FtTE8BMRl9_2CpiFwuVRrC4noojH-ezVx0W7nzJzMSqxb5t4uBSc7BNIRRqrfzDsYMR0gPF165BpymqfB10elPmmprzng63J2_wS9K_2-5kEH2poICo323FCHgjElZIzQKBEFcNlw7UFTrVkLQgQwUjRSeQmO8l1asJQhJzvih3TrVpE8heP1jO9Cutt9-wIBc0OS:1sVUxY:YSvhCsjHnT0hUZLB6lCJJm2fDhDB94L_m3ODcK3gRaU','2024-08-04 11:42:36.697120'),('f4igmdcqij60damn3t86x9ht092dmagx','.eJxVjEEOgyAURO_y14YgoB9cdt8zEOBDtTaQiC4a491bm27czCTzXmaHGmudSrZzfMOwg4ahbUD9suXfOhqwbltHu9W42IlggB4um3dhjvkE9HT5UVgoeV0mz06F_Wll90Lxdfu7l4PR1fG8RR5SlAZRCqG7RMohJkMcOfdKOGGiFh0JpYwyPUmPKbUyBCm819o4OD7t-UDd:1sQBvF:8qfSYyKsbz0I7iXT3tqQsv9rb-eydFIYzyrYV78GTrQ','2024-07-20 20:22:17.729851'),('g1axdtg0epptqktrai2a3nonfp8u8l8f','.eJxVjMEOgyAQBf-Fc0OAFZAee-83EFiWam0gET00xn9vTbx4fTPzNtaotbEWP9GX3bf9xnxYl8GvjWY_JnZnkl22GHCicoD0DuVVOdayzGPkh8JP2vizJvo8TvdyMIQ2_GuVbBK9y2jI2aicCARSGtA5Y2cgAyrdKRvRCmtljwAJnYZOm6gxCMX2H0k3PZM:1sSdEY:Y8BlZQYSZlrVTbqzsXin455fLEUMdWqXhOtHLQwj-Uo','2024-07-27 13:56:18.034438'),('g3oh2wavx5kjwcs8zm0b21yh0he2q5uv','eyJzZXNzaW9uX2tleSI6e319:1sRsec:yMrHIuUygK6Dywap8hB2ggMtXXVTXLDr9c66IbV0h8o','2024-07-25 12:12:06.817754'),('hf8zve73h4e91xguobtuh8hd56kp0ecq','.eJxVjMEOgyAQBf-Fc0OAFZAee-83EFiWam0gET00xn9vTbx4fTPzNtaotbEWP9GX3bf9xnxYl8GvjWY_JnZnkl22GHCicoD0DuVVOdayzGPkh8JP2vizJvo8TvdyMIQ2_GuVbBK9y2jI2aicCARSGtA5Y2cgAyrdKRvRCmtljwAJnYZOm6gxCMX2H0k3PZM:1sRcti:RiMpk5F-jV16KRhf5dLRqi1oZa0dN-PA3rgD7LCvvv0','2024-07-24 19:22:38.604226'),('jwcbl5a7ckqlha7h48c23km8assavzyw','.eJxVjkEOgyAUBe_CuiEUUMBl9z1B0xDgf6q1QiK6aIx3b0ncuH0zmbyNFCxlyMmO-CXdtl-IdevS27XgbAcgHWnJafMujJgqgLdLr0xDTss8eFoVetBC7xnwczvcU6B3pa9ZxUJEYZQSnOsmgnRKRQNMMeYld9yg5g1wKY00LQivYryKEAT3Xmvj_tE8Qz254FRI93juP4eTQ6o:1sRsbK:YkhxOlU96OL_fGguTC52t9UXO4gNJqblON4tMaSmfLY','2024-07-25 12:08:42.103330'),('kxa1zbxshrm8wd9o0dgj56g8rz7vt6le','.eJxVjMsKgzAUBf_lriXEm2gey-77DSHPai0JGF0U8d_bgBt3hzPDHFBjrXPJZolf0Af0HDR2IEH3Hfw3Ozswdt8ms9e4mjmAhhFun7N-ibmB8Lb5VYgveVtnR5pCLlrJs4T4eVzuLTDZOrWsoD5FpoRgiHJIgVshkgpUUOo4WlRR4hCQc8XVGJgTKfXMe4bOSaksnD_y3kDk:1sQBq8:5FGm-cCaEdhf4IFUNpQnYirtDsPNrWyVwgdcUhe08LM','2024-07-20 20:17:00.083437'),('lxqtfk5z1r0s7rgqwsj6t6cdbds0ara0','.eJxVjEsKgzAUAO_y1iXEl-hLXHbfM4R8q7UkYHRRxLuXgBu3M8McUGOtc8lmiT8YD5AwducDjN23yew1rmYOMMIAN-asX2JuInxsfhfmS97W2bGWsMtW9iohfp9XextMtk5tS9ynKDSRQFR9CtISJR04ce4kWtRRYR9QSi31EISjlDrhvUDnlNIWzj_1mT6O:1sQBwi:RDnUBphsmGfXiwBbUj4ShUz_ZECLAqll03RpNlBbVEQ','2024-07-20 20:23:48.013986'),('mueqjglwzudk1agwj43iykbqzenu6to8','.eJxdUcFuhCAQ_RXD2RgYRgGP7blf0DYGAbt2d6UVPDSb_feCmtr28ph5b3gzAzcSXAijn7qz-yLtjTDSQkkYpuNekk4v8dQtwc3daElLGvKH67U5uykL9l1Pb74yforz2Fe5pNrVUD156y4Pe-0fg5MOp2wrqBkcV0JwAFkPFrUQg7JUUNojaFBOQm0BUaFqLO_FMDBuDIe-l1LpZOpnm4eM7hpI-3wjH7O3i4nr2LL8SSd9danhy0IbrTIiy8ixWBO5JhsFm5DRmOKgsMkI4ohRrDKsMgzbjSPeSjnfWtSHgFg8XnR6flOwmtHdRf4y3ofjacHPRU9xjOmTWF5nNGkPAKwppRUtSfRRX7r__P31_g3lJpHT:1sRAhk:2qpOpAxxaylB038djDNqiFlR2TtnYi996ilGqhL-dlw','2024-07-23 13:16:24.733289'),('n20u4i18s6r9q8055w9qlb6js45suf6b','eyJzZXNzaW9uX2tleSI6eyI4IjoyLCI0IjozLCIxNCI6MX19:1sQAAy:V6Rabnt-Dl8cn4X1XuDykccnauxwcqMsHl05fGbt0oo','2024-07-20 18:30:24.389709'),('n78nklleipnvqqj1ngpvagbqg1unybao','.eJxVjMEOgyAQBf-Fc0OAFZAee-83EFiWam0gET00xn9vTbx4fTPzNtaotbEWP9GX3bf9xnxYl8GvjWY_JnZnkl22GHCicoD0DuVVOdayzGPkh8JP2vizJvo8TvdyMIQ2_GuVbBK9y2jI2aicCARSGtA5Y2cgAyrdKRvRCmtljwAJnYZOm6gxCMX2H0k3PZM:1sNh5s:mzo7e24j89Zv_uNnNiENo75UhIoEE0zSRQMcMazdZq4','2024-07-13 23:02:56.112889'),('njculjuuvt7bb4y6q96ipkd4c1hzarjd','.eJxVjMsOgyAQAP9lzw2hC7rgsfd-A-GxVNsGEtFDY_z3xsSL15nJbNC4takW9-EfDBsYGHC_gfPrMrq18eymBAP0cGHBxw-XQ6S3L68qYi3LPAVxJOK0TTxr4u_jbC-D0bfx2JKMmZUlUoimy0l7omyTJCmDRo-WDXYJtbba9kkFyvmuYlQYgjHWw_4H-QY-kw:1sQYiL:EG61IiKxzHHLUmgT0f8ahEnZsH-1_9BtG9_pHMVe6Ok','2024-07-21 20:42:29.127600'),('pfz9gplatf32nfcbo79rfz16d838rvel','.eJxVjLsKhDAURP_l1hLiTTSPcnu_IeS5ui4JGC0W8d9XwcZmBuYcZocaa51KNnP8gd5Bgm4baBE0ngWanclB8wbUSY4GjN3W0Ww1LmYKoKGHx-asn2O-QPjY_C7El7wukyOXQm5ayVBC_L5u93Ew2jpet4L6FJkSgiHKLgVuhUgqUEGp42hRRYldQM4VV31gTqTUMu8ZOielsnD8AQtZQzY:1sQCUG:N-fsK53GAa7lQiY0SpgLVDtmJ9N4JZdI6pQI_Y09LfI','2024-07-20 20:58:28.874733'),('qvym5czr2t1zg9l5ynx2a1jvkhtsg3kp','.eJxVjMEOgyAQBf-Fc0OAFZAee-83EFiWam0gET00xn9vTbx4fTPzNtaotbEWP9GX3bf9xnxYl8GvjWY_JnZnkl22GHCicoD0DuVVOdayzGPkh8JP2vizJvo8TvdyMIQ2_GuVbBK9y2jI2aicCARSGtA5Y2cgAyrdKRvRCmtljwAJnYZOm6gxCMX2H0k3PZM:1sRqoM:a4kcNBkPVXD7qdihEuu4vIIC1N-V8AJ2toTzvxfUyyI','2024-07-25 10:14:02.327783'),('rn2tvp947kgiik1q8p2erw316lyxau0x','.eJxVjEsOgyAUAO_y1obgA-Wz7L5nIMCDattAIrpojHdvTNy4nZnMDi21NtfiPukHdgcJtu9Ag8WjA-e3dXJbS4ubCSyMcGPBx08qp6C3L6_KYi3rMgd2JuyyjT0rpe_jam-Dybfp3CoecxJGKYGoh0zSK5UNccV5kOjRJI0DoZRGmpFEUDn3IkaBIWhtPBx_3M4_og:1sQjOI:pJOkhoiTd0lDWlRpa6R593Q7_3yWD20H2J3pJzaJGIo','2024-07-22 08:06:30.436377'),('s0nro889jrlcprh4cphdaud7htw0k6pj','eyJzZXNzaW9uX2tleSI6eyIxMCI6MX19:1sQ9UT:G-JgMDxFidgFvwudb17O-atTeHuQ0RfLrRE9c_6JpvA','2024-07-20 17:46:29.133432'),('uisly7nallwd8b0b99xgqxet7d7swlcb','.eJxVjM0OgjAQBt-lZ0OWbWG7Hr37DKS_ghowFA_G8O6KAUMve5j5dt6iMc-pbZ4pjE3nxVHU4rBn1rhb6Bfhr6a_DIUb-mnsbLFMitWm4jz4cD-t2yzQmtQuWQIXg2Qiiair6JUhiuyBAKxCgxw0Vh6VYsW1l5ZiLKVzEq3Vms03mkJK3dA3t_ASx7cocbmPsXPh269UBQBiPgi1x8hy4zrj-N-XsBcl0iY447JW20POYcWU9YnrH5_nD3GMZ8g:1sQ5O2:K_B-G9H-FqHjq2DOgbYgzQ8Oi5ga_dMuW43l9yBL6Ww','2024-07-20 13:23:34.569030'),('vhxgj3qpex1vfpvka6u2i4qqu9ewup85','.eJxVjMEOgyAQBf-Fc0OAFZAee-83EFiWam0gET00xn9vTbx4fTPzNtaotbEWP9GX3bf9xnxYl8GvjWY_JnZnkl22GHCicoD0DuVVOdayzGPkh8JP2vizJvo8TvdyMIQ2_GuVbBK9y2jI2aicCARSGtA5Y2cgAyrdKRvRCmtljwAJnYZOm6gxCMX2H0k3PZM:1sU7MO:H9o0Vpld7YSRc0KRv-9TB4q1IDrUSd42ebqEw8lKBlU','2024-07-31 16:18:32.769547'),('w789i0m99swrfbng3tm57uyrhbg20bx7','.eJxVjztuwzAQRO-ytSGQXH5ElelzgiAQyOXKkh2LgSgVhuG7WwxcKM0Wb2YesA_ow7aO_VZ46acEHUg4HVkMdOW5BukS5nNuKM_rMsWmVpp3WprPnPjn4939JxhDGfe1Si6J1g9k2buovAiMUlo0w0Da4oCkjFYukhPOyZYQE3mD2thoKAi1SwuXMuW5v_Idugfoen6XibjqPRohBDxP4I9cotV_fA_ykuqTK98KdF_fzxcnH0-C:1sIQIV:EeZX65rYo9GD2KmATusgNoj-xcQhYhz1_8d9xsS_j1c','2024-06-29 10:06:11.483515'),('x5njtftshj94ib4anrork6secdppm1md','eyJzZXNzaW9uX2tleSI6e319:1sVXOy:lFNKTqxMNw1Sy4bNLFqYT2d9146TVHR2p2YILb8qFw8','2024-08-04 14:19:04.262634'),('zcoiloi4ex4a9k9o98hg0ic6hxzwfoag','.eJxVjEsOgyAUAO_y1obgA-Wz7L5nIMCDattAIrpojHdvTNy4nZnMDi21NtfiPukHdocewWIHGmx_dOD8tk5ua2lxM4GFEW4s-PhJ5RT09uVVWaxlXebAzoRdtrFnpfR9XO1tMPk2nVvFY07CKCUQ9ZBJeqWyIa44DxI9mqRxIJTSSDOSCCrnXsQoMAStjYfjDwTBP9E:1sQC1N:94N0aNnsOKNQfT7eQElg3xFnWvs6Cwcy9aBqVp-cEXQ','2024-07-20 20:28:37.219629');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_message`
--

DROP TABLE IF EXISTS `main_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_message` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `full_name` varchar(60) NOT NULL,
  `email` varchar(250) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` longtext NOT NULL,
  `is_seen` tinyint(1) NOT NULL,
  `register_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_message`
--

LOCK TABLES `main_message` WRITE;
/*!40000 ALTER TABLE `main_message` DISABLE KEYS */;
INSERT INTO `main_message` VALUES (14,'مریم زبرجد','maryam.zbr@gmail.com','تشکر','خیلی ممنوووونم',1,'2024-07-21 09:48:33.000000');
/*!40000 ALTER TABLE `main_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_order`
--

DROP TABLE IF EXISTS `order_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_order` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int unsigned NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `order_date` datetime(6) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `product_id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `payment_method_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_order_product_id_fb1319ca_fk_products_product_id` (`product_id`),
  KEY `order_order_user_id_7cf9bc2b_fk_auth_user_id` (`user_id`),
  KEY `order_order_payment_method_id_edf8fb89_fk_payment_payment_id` (`payment_method_id`),
  CONSTRAINT `order_order_payment_method_id_edf8fb89_fk_payment_payment_id` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_payment` (`id`),
  CONSTRAINT `order_order_product_id_fb1319ca_fk_products_product_id` FOREIGN KEY (`product_id`) REFERENCES `products_product` (`id`),
  CONSTRAINT `order_order_user_id_7cf9bc2b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `order_order_chk_1` CHECK ((`quantity` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_order`
--

LOCK TABLES `order_order` WRITE;
/*!40000 ALTER TABLE `order_order` DISABLE KEYS */;
INSERT INTO `order_order` VALUES (73,2,130000.00,'2024-07-21 11:41:42.659709',1,1,1,NULL),(74,1,2728000.00,'2024-07-21 11:41:42.664704',1,9,1,NULL);
/*!40000 ALTER TABLE `order_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_payment`
--

DROP TABLE IF EXISTS `payment_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_payment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `method` varchar(100) NOT NULL,
  `description` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_payment`
--

LOCK TABLES `payment_payment` WRITE;
/*!40000 ALTER TABLE `payment_payment` DISABLE KEYS */;
INSERT INTO `payment_payment` VALUES (5,'نقدی','انتقال بانکی',''),(6,'نقدی','در محل',''),(7,'آنلاین','انتقال بانکی',''),(8,'آنلاین','کارت اعتباری','');
/*!40000 ALTER TABLE `payment_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_brand`
--

DROP TABLE IF EXISTS `products_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_brand` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_brand`
--

LOCK TABLES `products_brand` WRITE;
/*!40000 ALTER TABLE `products_brand` DISABLE KEYS */;
INSERT INTO `products_brand` VALUES (1,'نایک'),(2,'آدیداس'),(3,'اسکیچرز'),(4,'متفرقه'),(5,'پولو'),(6,'361'),(7,'ریبوک'),(8,'ساکونی'),(9,'پوما'),(10,'اسکیچرز');
/*!40000 ALTER TABLE `products_brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_category`
--

DROP TABLE IF EXISTS `products_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_category`
--

LOCK TABLES `products_category` WRITE;
/*!40000 ALTER TABLE `products_category` DISABLE KEYS */;
INSERT INTO `products_category` VALUES (1,'ورزشی مردانه'),(2,'ورزشی زنانه'),(3,'جاگ و شیکر'),(4,'اکسسوری'),(6,'لوازم ورزشی و بدنسازی'),(8,'تغذیه رژیمی'),(10,'ست و پکیج'),(11,'کفش ورزشی و دمپایی');
/*!40000 ALTER TABLE `products_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_comment`
--

DROP TABLE IF EXISTS `products_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_comment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `text` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `user_id` int NOT NULL,
  `product_id` bigint NOT NULL,
  `number` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `products_comment_user_id_01a779ad_fk_auth_user_id` (`user_id`),
  KEY `products_comment_product_id_b55b4f01_fk_products_product_id` (`product_id`),
  CONSTRAINT `products_comment_product_id_b55b4f01_fk_products_product_id` FOREIGN KEY (`product_id`) REFERENCES `products_product` (`id`),
  CONSTRAINT `products_comment_user_id_01a779ad_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_comment`
--

LOCK TABLES `products_comment` WRITE;
/*!40000 ALTER TABLE `products_comment` DISABLE KEYS */;
INSERT INTO `products_comment` VALUES (26,'خوب بود ممنون','2024-07-21 09:48:14.049760',1,9,8,0),(27,'دیر به دستم رسید','2024-07-21 11:47:55.383648',1,1,8,0);
/*!40000 ALTER TABLE `products_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_product`
--

DROP TABLE IF EXISTS `products_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` longtext,
  `price` decimal(10,0) NOT NULL,
  `image` varchar(100) NOT NULL,
  `stock` int NOT NULL,
  `is_sale` tinyint(1) NOT NULL,
  `sale_price` decimal(10,0) NOT NULL,
  `star` int NOT NULL,
  `view_number` int NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `brand_id` bigint DEFAULT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `products_product_brand_id_3e2e8fd1_fk_products_brand_id` (`brand_id`),
  KEY `products_product_category_id_9b594869_fk_products_category_id` (`category_id`),
  CONSTRAINT `products_product_brand_id_3e2e8fd1_fk_products_brand_id` FOREIGN KEY (`brand_id`) REFERENCES `products_brand` (`id`),
  CONSTRAINT `products_product_category_id_9b594869_fk_products_category_id` FOREIGN KEY (`category_id`) REFERENCES `products_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_product`
--

LOCK TABLES `products_product` WRITE;
/*!40000 ALTER TABLE `products_product` DISABLE KEYS */;
INSERT INTO `products_product` VALUES (1,'اوتمیل جودوسر پرک سیب و دارچین اونا سری G بدون گلوتن ۳۰۰ گرمی','<ul style=\"text-align:right;\">\r\n<li>اوتمیل جو دوسر پرک سیب و دارچین</li>\r\n<li>وزن: 300 گرم</li>\r\n<li>میان وعده سالم یا یک صبحانه‌ی خوشمزه و مغذی</li>\r\n<li>دارای ارزش غذایی بالا</li>\r\n<li>دارای 196.1 کیلوکالری و قند 2.23 گرم</li>\r\n<li>دارای 16% فیبر و 13% پروتئین</li>\r\n<li>بدون مواد افزودنی و گلوتن 100% طبیعی</li>\r\n<li>سرشار از ویتامین و مواد معدنی</li>\r\n</ul>',130000,'images/product/16b1ae8f-929e-4a8e-894f-eac56f4894a3.webp',5,1,100000,0,393,1,1,8),(2,'لوازم تناسب اندام تی آر ایکس مدل TRX-Suspension 402M1080','<ul style=\"text-align:right;\">\r\n<li>وارداتی: ساخت چین (تحت لیسانس انگلستان)</li>\r\n<li>پکیج اصلی و اورجینال (100% وارداتی)</li>\r\n<li> برای حمل راحت و آسان دارای کیف</li>\r\n<li>هوک 2 تکه جهت ثبات بیشتر تسمه</li>\r\n<li>بند اتصال به میله</li>\r\n<li>بالشتک پشت دری (لنگرگاه پشت در برای استفاده خانگی)</li>\r\n<li>دسته های فومی ضد سایش</li>\r\n<li>دارای یک تسمه افزایشی</li>\r\n<li>دارای یک افزایش دهنده طول بند</li>\r\n<li>تحمل وزن بالا</li>\r\n</ul>',1495000,'images/product/63a9a96f-5d6a-48ee-9699-1c705ea9021d.webp',10,1,1181000,0,49,1,4,10),(3,'ساق دست ورزشی نایک مدل OPT-88600 بسته دو عددی','<ul style=\"text-align:right;\">\r\n<li>جنس: ترکیب نخ و پلی استر</li>\r\n<li>ابعاد: 9*33 سانتی متر</li>\r\n<li>اسپرت: برای خانم‌ها و آقایان</li>\r\n<li>دارای کش بافت در دو طرف</li>\r\n<li>قابل استفاده به صورت بند انگشتی</li>\r\n<li>قابل استفاده برای ورزشکاران و عموم افراد</li>\r\n<li>قابل شستشو (دست و ماشین)</li>\r\n<li>بسته 2 عددی: یک جفت</li>\r\n<li>سایزبندی: فری سایز</li>\r\n</ul>',155000,'images/product/a58aed79-aaef-46af-93a6-d1bdae7b4785.webp',0,1,127000,0,50,1,1,4),(4,'جاگ واتر و فلاسک استیل Jun Heng ظرفیت ۲.۵ لیتر','<ul style=\"text-align:right;\">\r\n<li>جنس بدنه: پلاستیک فشرده درجه 1</li>\r\n<li>عاری از هرگونه مواد سمی (BPA FREE)</li>\r\n<li>جنس درب و لیوان: استیل ضد زنگ</li>\r\n<li>جنس داخلی: استیل ضد زنگ</li>\r\n<li>وارداتی: ساخت کشور چین</li>\r\n<li>ظرفیت: 2.5 لیتر</li>\r\n<li>ابعاد: 8*17*32 سانتی متر</li>\r\n<li>درب: پیچی و ضامنی</li>\r\n<li>دارای مقاومت حفظ دما: 24 ساعت</li>\r\n<li>دارای دو عدد صافی استیل</li>\r\n<li>دارای درب ضامنی و پیچی قفل دار</li>\r\n<li>دارای مقاومت در برابر ضربه</li>\r\n<li>دارای درب ضد نشت</li>\r\n<li>دارای چاپ و رنگ فوق العاده با کیفیت</li>\r\n<li>دارای دسته جهت حمل آسان و راحت</li>\r\n<li>دارای رنگبندی</li>',2935000,'images/product/dd41ff90-a9d5-4db5-8a92-42a52c1d77ee.jpg',9,0,0,0,175,1,1,3),(7,'کفش ورزشی مردانه نایک مدل Airzoom 010810 طوسی تیره','<ul style=\"text-align:right;\">\r\n<li>جنس: ترکیب نخ و فوم</li>\r\n<li>جنس زیره:پلی اورتان</li>\r\n<li>کشور تولید کننده: ویتنام</li>\r\n<li>نحوه بسته شدن کفش:بندی</li>\r\n<li>کفی:قابل تعویض، قابلیت ارتجاعی</li>\r\n<li>ارتفاع ساق:مچ پا</li>\r\n<li>اندازه لژ: 4 سانتی متر</li>\r\n<li>دارای کفی دو لایه بسیار بسیار منعطف و نرم</li>\r\n<li>دارای پد پشت پا و کفی نرم و راحت</li>\r\n<li>دارای کفی استپ دار مانع از لغزش</li>\r\n<li>دارای طرح Nike</li>\r\n<li>دارای سایز بندی</li>\r\n<li>راهنما سایز: آخرین عکس گالری هر محصول</li>\r\n</ul>',2796000,'images/product/f5f0270e-43fc-4b18-a095-a645b0b23779.jpg',8,0,0,0,40,1,1,11),(8,'کفش ورزشی زنانه آدیداس مدل Classic 15107 بنفش3','<ul style=\"text-align:right;\">\r\n<li>جنس: ترکیب نخ، پلی استر و فوم</li>\r\n<li>جنس زیره:پلی اورتان</li>\r\n<li>کشور تولید کننده: ویتنام</li>\r\n<li>نحوه بسته شدن کفش:بندی</li>\r\n<li>کفی:قابل تعویض، قابلیت ارتجاعی</li>\r\n<li>ارتفاع ساق:مچ پا</li>\r\n<li>اندازه لژ: 4 سانتی متر</li>\r\n<li>دارای کفی دو لایه بسیار بسیار منعطف و نرم</li>\r\n<li>دارای پد پشت پا و کفی نرم و راحت</li>\r\n<li>دارای کفی استپ دار مانع از لغزش</li>\r\n<li>دارای دوخت چندلایه</li>\r\n<li>دارای طرح Adidas</li>\r\n<li>دارای سایز بندی</li>\r\n<li>راهنما سایز: آخرین عکس گالری هر محصول</li>\r\n</ul>',2245000,'images/product/1b08fa81-a0f5-432d-ab64-37e64d1930e2.webp',12,1,1975000,0,155,1,2,11),(9,'سوییشرت ورزشی مردانه نایک مدل ۸۱۲۰ مشکی','<ul style=\"text-align:right;\">\r\n<li>جنس: ترکیب پلی استر و اسپاندکس</li>\r\n<li>وارداتی: ساخت کشور چین</li>\r\n<li>قواره: فیت</li>\r\n<li>دارای کلاه</li>\r\n<li>دارای یک لایه آستر داخل کلاه</li>\r\n<li>دارای بند جهت تنظیم سایز کلاه</li>\r\n<li>دارای دو عدد جیب زیپ دار مخفی در جلو سوییشرت</li>\r\n<li>دارای زیپ (به آسانی باز و بسته می شود)</li>\r\n<li>دارای چاپ و کیفیت بسیار بالا</li>\r\n<li>قابل شستشو با دمای آب حداکثر 30 درجه</li>\r\n<li>دارای سایز بندی</li>\r\n<li>دارای طرح Nike</li>\r\n<li>راهنما سایز: عکس آخر (گالری محصول)</li>\r\n</ul>',1364000,'images/product/28731517-5cf9-476f-868a-b8f74a38a93b.webp',5,0,0,0,41,1,1,1),(10,'ست تیشرت و شلوارک بیسبالی مردانه شیکاگو بولز مدل Nike 2B1856 مشکی','<ul style=\"text-align:right;\">\r\n<li>جنس: فلامنت سوزنی</li>\r\n<li>وارداتی: ساخت کشور تایلند</li>\r\n<li>قواره: آزاد</li>\r\n<li>نوع یقه: دکمه دار</li>\r\n<li>قد شلوارک: بلند (بالای زانو)</li>\r\n<li>دارای شلوارک کمر کش بند دار (جهت تنظیم سایز)</li>\r\n<li>دارای فاق بلند و راحت</li>\r\n<li>دارای جیب در جلو شلوارک</li>\r\n<li>دارای تیشرت دکمه دار دوردوزی شده</li>\r\n<li>دارای کشسانی بالا (قابلیت کشش 2 طرفه)</li>\r\n<li>دارای پارچه ی نرم و راحت</li>\r\n<li>دارای تکنولوژی Dri Fit</li>\r\n<li>دارای طرح CHicago Bulls</li>\r\n<li>دارای سایز بندی</li>\r\n<li>راهنما سایز: آخرین عکس گالری هر محصول</li>\r\n</ul>',1275000,'images/product/ae4e9ff8-3d9a-4beb-b420-d0af0ab9b220.jpg',29,0,0,0,94,1,1,1),(11,'پلوشرت ورزشی مردانه پولو مدل SPL 2B1266مشکی','<ul style=\"text-align:right;\">\r\n<li>جنس: 100% نخ</li>\r\n<li>قواره: فیت</li>\r\n<li>نوع یقه: دکمه دار</li>\r\n<li>دارای پارچه دوردورزی شده</li>\r\n<li>دارای چاپ و کیفیت بسیار بالا</li>\r\n<li>دارای پارچه بسیار نرم و لطیف</li>\r\n<li>دارای انعطاف پذیری بالا (ساختار کشش 4 طرفه)</li>\r\n<li>قابل شستشو با حداکثر دمای 30 درجه</li>\r\n<li>دارای سایزبندی</li>\r\n<li>دارای طرح POLO</li>\r\n<li>راهنما سایز: عکس آخر (گالری محصول)</li>\r\n</ul>',685000,'images/product/80380707-c65c-453c-b8c2-0b1bf195ee47.jpg',0,1,541000,0,24,1,5,1),(12,'دمبل بدنسازی رادیس فیت وزن 2 کیلوگرم بسته دو عددی','<ul style=\"text-align:right;\">\r\n<li>جنس روکش: روکش پلی اتیلنی</li>\r\n<li>جنس مغزی: نانو کامپوزیت</li>\r\n<li>اسپرت: مناسب خانم ها و آقایان</li>\r\n<li>ابعاد: 7*7*20 سانتی متر</li>\r\n<li>وزن هر دمبل: 3 کیلوگرم</li>\r\n<li>شکل وزنه: شش ضلعی</li>\r\n<li>تاثیر مهم بر روی عضلات هدف</li>\r\n<li>عامل تقویت استخوان و مفاصل</li>\r\n<li>امکان آسیب دیدگی کمتر در حین تمرین</li>\r\n<li>جلوگیری از آسیب دیدگی کف دست (به علت روکش)</li>\r\n<li>مناسب بر روی تمرینات هوازی</li>\r\n<li>مناسب برای باشگاه، خانه و سالن ورزشی</li>\r\n<li>بسته 2 عددی</li>\r\n</ul>',545000,'images/product/b98d81f3-7c86-4708-b0e5-9c97c310ebb7.jpg',9,0,0,0,83,1,4,6),(13,'دستکش بدنسازی مردانه جیم مدل 402M1035 طوسی روشن','<ul style=\"text-align:right;\">\r\n<li>جنس : ترکیب چرم مصنوعی و فوم</li>\r\n<li>اسپرت: مناسب خانم ها و آقایان</li>\r\n<li>وارداتی: ساخت کشور پاکستان</li>\r\n<li>دارای عمر بالا و کیفیت درجه 1</li>\r\n<li>دارای مچ بند و محافظت از مچ دست و کف دست</li>\r\n<li>دارای کف دست و بند انگشت‌های تقویت شده</li>\r\n<li>دارای چسب محکم و بادوام (لیزری)</li>\r\n<li>عامل افزایش گردش هوا (پارچه روی دست)</li>\r\n<li>محافظت از انگشتان و مچ در برابر آسیب های احتمالی</li>\r\n<li>کیفیت دوخت و ساخت فوق العاده با کیفیت</li>\r\n<li>مناسب برای ورزشکاران و عموم افراد</li>\r\n<li>مناسب برای تمرینات بدنسازی</li>\r\n<li>دارای طرح Gym</li>\r\n<li>دارای سایز بندی</li>\r\n<li>راهنما سایز: عکس آخر (گالری محصول)</li>\r\n</ul>',795000,'images/product/aaa429c2-0713-479b-be78-f2e240287549.webp',5,1,620000,0,60,1,1,6),(14,'مایو اسلیپ زنانه آرنا مدل 2A0656 مشکی','<ul style=\"text-align:right;\">\r\n<li>جنس: فلامنت غواصی</li>\r\n<li>قواره: جذب</li>\r\n<li>نوع مایو: اسلیپ</li>\r\n<li>مایو دوبنده پشت طرح دار</li>\r\n<li>دارای جنس و کیفیت بسیار بالا</li>\r\n<li>دارای کاپ در قسمت بالاتنه</li>\r\n<li>دارای پارچه های طرح دار</li>\r\n<li>دارای انعطاف پذیری بالا (قابلیت کشش 4 طرفه)</li>\r\n<li>بسیار سبک، راحت و خشک سریع</li>\r\n<li>قابل استفاده برای استخر، پلاژ و…\r\nقابل استفاده برای عموم افراد (خانم ها)</li>\r\n<li>دارای طرح Arena</li>\r\n<li>دارای سایز بندی</li>\r\n<li>راهنما سایز (آخرین عکس گالری محصول)</li>\r\n<li>عدم تعویض و مرجوعی (به علت شرایط بهداشتی)</li>\r\n</ul>',945000,'images/product/fe804306-d6b7-4f02-bb97-b1c3bc7f8a49.webp',10,1,746000,0,59,1,4,2);
/*!40000 ALTER TABLE `products_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_productimagegallary`
--

DROP TABLE IF EXISTS `products_productimagegallary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_productimagegallary` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `products_productimag_product_id_b57aa33a_fk_products_` (`product_id`),
  CONSTRAINT `products_productimag_product_id_b57aa33a_fk_products_` FOREIGN KEY (`product_id`) REFERENCES `products_product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_productimagegallary`
--

LOCK TABLES `products_productimagegallary` WRITE;
/*!40000 ALTER TABLE `products_productimagegallary` DISABLE KEYS */;
/*!40000 ALTER TABLE `products_productimagegallary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_rating`
--

DROP TABLE IF EXISTS `products_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_rating` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `score` int NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `product_id` bigint NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `products_rating_product_id_f60bd2d8_fk_products_product_id` (`product_id`),
  KEY `products_rating_user_id_f9283a7e_fk_auth_user_id` (`user_id`),
  CONSTRAINT `products_rating_product_id_f60bd2d8_fk_products_product_id` FOREIGN KEY (`product_id`) REFERENCES `products_product` (`id`),
  CONSTRAINT `products_rating_user_id_f9283a7e_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_rating`
--

LOCK TABLES `products_rating` WRITE;
/*!40000 ALTER TABLE `products_rating` DISABLE KEYS */;
INSERT INTO `products_rating` VALUES (40,5,'2024-07-21 09:47:04.522264',13,1),(41,5,'2024-07-21 09:47:52.961259',8,9),(42,3,'2024-07-21 11:47:22.886451',8,1);
/*!40000 ALTER TABLE `products_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_shipping`
--

DROP TABLE IF EXISTS `shipping_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping_shipping` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `cost` decimal(10,2) NOT NULL,
  `delivery_time` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_shipping`
--

LOCK TABLES `shipping_shipping` WRITE;
/*!40000 ALTER TABLE `shipping_shipping` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipping_shipping` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-21 18:16:47
