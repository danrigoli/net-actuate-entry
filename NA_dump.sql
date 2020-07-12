-- MySQL dump 10.13  Distrib 5.7.30, for Linux (x86_64)
--
-- Host: localhost    Database: netActuate
-- ------------------------------------------------------
-- Server version	5.7.30-0ubuntu0.18.04.1

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
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2020_07_11_222710_create_tasks_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES (8,'Amir Feil','TODO',NULL,'2020-07-12 02:56:05','2020-07-12 02:56:05'),(9,'Gail Kingdassda','In process',NULL,'2020-07-12 02:56:05','2020-07-12 21:51:52'),(14,'Richard Pagac','TODO',NULL,'2020-07-12 02:56:05','2020-07-12 02:56:05'),(16,'Modesta Stanton','In process',NULL,'2020-07-12 02:56:06','2020-07-12 02:56:06'),(20,'Christine Heaney I','TODO',NULL,'2020-07-12 02:56:06','2020-07-12 02:56:06'),(26,'Juan','In process',NULL,'2020-07-12 18:49:22','2020-07-12 18:49:22'),(27,'Dillon Murray','In process',1,'2020-07-12 19:21:08','2020-07-12 19:21:08'),(31,'Dillon Murray','In process',1,'2020-07-12 19:38:11','2020-07-12 19:38:11'),(32,'asdasdsa','TODO',1,'2020-07-12 19:44:06','2020-07-12 19:44:06'),(39,'Lorem Ipsum','Review',1,'2020-07-12 21:48:34','2020-07-12 21:59:17'),(43,'In laborum.','Review',NULL,'2020-07-12 21:53:52','2020-07-12 21:53:52'),(44,'Consequuntur.','In Progress',1,'2020-07-12 21:53:52','2020-07-12 22:59:19'),(46,'Optio est.','New',1,'2020-07-12 21:53:53','2020-07-12 22:19:17'),(47,'Est quidem.','New',1,'2020-07-12 21:53:53','2020-07-12 22:19:25'),(48,'Libero quo.','Done',NULL,'2020-07-12 21:53:53','2020-07-12 21:53:53'),(49,'Architecto.','Done',NULL,'2020-07-12 21:53:54','2020-07-12 21:53:54'),(50,'Dolorem dolor.','New',NULL,'2020-07-12 21:53:54','2020-07-12 21:53:54'),(51,'Ex quos modi.','In Progress',NULL,'2020-07-12 21:53:54','2020-07-12 21:53:54'),(52,'In omnis.','New',NULL,'2020-07-12 21:53:54','2020-07-12 21:53:54'),(53,'Occaecati vel.','Done',NULL,'2020-07-12 21:53:54','2020-07-12 21:53:54'),(54,'Sint iusto ex.','Done',NULL,'2020-07-12 21:53:55','2020-07-12 21:53:55'),(55,'Quam tempore.','Done',NULL,'2020-07-12 21:53:55','2020-07-12 21:53:55'),(56,'Eius aut aut.','Review',NULL,'2020-07-12 21:53:55','2020-07-12 21:53:55'),(57,'Vel sint culpa.','In Progress',NULL,'2020-07-12 21:53:55','2020-07-12 21:53:55'),(58,'Quia ut.','New',NULL,'2020-07-12 21:53:55','2020-07-12 21:53:55'),(59,'Ut qui ut.','Done',NULL,'2020-07-12 21:53:55','2020-07-12 21:53:55'),(60,'Sapiente.','Done',NULL,'2020-07-12 21:53:56','2020-07-12 21:53:56'),(61,'Corporis.','In Progress',NULL,'2020-07-12 21:53:56','2020-07-12 21:53:56'),(62,'Exercitationem.','In Progress',NULL,'2020-07-12 21:53:56','2020-07-12 21:53:56'),(63,'dasdassda','New',NULL,'2020-07-12 22:08:34','2020-07-12 22:08:34');
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) NOT NULL DEFAULT '1',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'admin','admin@netactuate.com',7,NULL,'$2y$10$0CfTmMzFe6kCxE5W290Ev.CQjG2B9ZS5.4PJh/98W.o.ebMUxCPjO',NULL,'2020-07-13 00:26:35','2020-07-13 00:26:35');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-12 18:30:08
