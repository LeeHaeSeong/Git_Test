-- MySQL dump 10.13  Distrib 8.0.26, for Linux (x86_64)
--
-- Host: localhost    Database: easy
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','production','2021-08-23 17:10:04.956246','2021-08-23 17:10:04.956246');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attachment_versions`
--

DROP TABLE IF EXISTS `attachment_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attachment_versions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `container_id` int NOT NULL,
  `container_type` varchar(30) NOT NULL DEFAULT '',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `disk_filename` varchar(255) NOT NULL DEFAULT '',
  `filesize` int NOT NULL DEFAULT '0',
  `content_type` varchar(120) DEFAULT '',
  `digest` varchar(64) NOT NULL DEFAULT '',
  `author_id` int NOT NULL DEFAULT '0',
  `created_on` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `attachment_id` int NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `version` int NOT NULL,
  `easy_external_id` varchar(255) DEFAULT NULL,
  `disk_directory` varchar(255) DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_attachment_versions_on_attachment_id` (`attachment_id`),
  KEY `index_attachment_versions_on_project_id` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachment_versions`
--

LOCK TABLES `attachment_versions` WRITE;
/*!40000 ALTER TABLE `attachment_versions` DISABLE KEYS */;
INSERT INTO `attachment_versions` VALUES (4,2,'EasyThemeDesign','Logo_Easy_Project--inverted.png','190715142437_Logo_Easy_Project--inverted.png',5128,'image/png','3794e9db86e41154e93fe97488b1c547e57fc5df7aa6a9803062397767af72bb',4,'2019-07-15 12:24:37','2019-07-15 12:24:37',1,'inverted_logo',1,NULL,'2019/07',NULL),(5,2,'EasyThemeDesign','Mark_Easy_Project.png','190715142437_Mark_Easy_Project.png',2263,'image/png','2ec5011d3e7a4111df190c70909617640bb60d3b4fedaef7a40a5a306f3e885c',4,'2019-07-15 12:24:37','2019-07-15 12:24:37',2,'brand',1,NULL,'2019/07',NULL),(6,2,'EasyThemeDesign','Mark_Easy_Project--inverted.png','190715142437_Mark_Easy_Project--inverted.png',2128,'image/png','ffe2d8f4a48ff2e7bda011fec6be59de4829a3109cb12c368dc227ae0fb4a70a',4,'2019-07-15 12:24:37','2019-07-15 12:24:37',3,'inverted_brand',1,NULL,'2019/07',NULL);
/*!40000 ALTER TABLE `attachment_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attachments`
--

DROP TABLE IF EXISTS `attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attachments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `container_id` int DEFAULT NULL,
  `container_type` varchar(30) DEFAULT NULL,
  `filename` varchar(255) NOT NULL DEFAULT '',
  `disk_filename` varchar(255) NOT NULL DEFAULT '',
  `filesize` bigint NOT NULL DEFAULT '0',
  `content_type` varchar(255) DEFAULT '',
  `digest` varchar(64) NOT NULL DEFAULT '',
  `downloads` int NOT NULL DEFAULT '0',
  `author_id` int NOT NULL DEFAULT '0',
  `created_on` timestamp NULL DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `disk_directory` varchar(255) DEFAULT NULL,
  `version` int NOT NULL DEFAULT '0',
  `category` varchar(255) DEFAULT NULL,
  `easy_external_id` varchar(255) DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_attachments_on_author_id` (`author_id`),
  KEY `index_attachments_on_created_on` (`created_on`),
  KEY `index_attachments_on_container_id_and_container_type` (`container_id`,`container_type`),
  KEY `index_attachments_on_disk_filename` (`disk_filename`),
  KEY `index_attachments_on_project_id` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachments`
--

LOCK TABLES `attachments` WRITE;
/*!40000 ALTER TABLE `attachments` DISABLE KEYS */;
INSERT INTO `attachments` VALUES (1,2,'EasyThemeDesign','Logo_Easy_Project--inverted.png','190715142437_Logo_Easy_Project--inverted.png',5128,'image/png','3794e9db86e41154e93fe97488b1c547e57fc5df7aa6a9803062397767af72bb',0,4,'2019-07-15 12:24:37','inverted_logo','2019/07',1,NULL,NULL,NULL),(2,2,'EasyThemeDesign','Mark_Easy_Project.png','190715142437_Mark_Easy_Project.png',2263,'image/png','2ec5011d3e7a4111df190c70909617640bb60d3b4fedaef7a40a5a306f3e885c',0,4,'2019-07-15 12:24:37','brand','2019/07',1,NULL,NULL,NULL),(3,2,'EasyThemeDesign','Mark_Easy_Project--inverted.png','190715142437_Mark_Easy_Project--inverted.png',2128,'image/png','ffe2d8f4a48ff2e7bda011fec6be59de4829a3109cb12c368dc227ae0fb4a70a',0,4,'2019-07-15 12:24:37','inverted_brand','2019/07',1,NULL,NULL,NULL),(4,NULL,NULL,'프로젝트 및 일감 생성,수정 방법.pdf','210824105724_4849a445fb15eafca002520dffc0a893.pdf',1297076,'application/pdf','7f51dad359beed115b227095e2563b7f4a8487e731045542d1af03bed9d8cbea',0,1,'2021-08-24 01:57:24',NULL,'2021/08',1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_sources`
--

DROP TABLE IF EXISTS `auth_sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_sources` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(60) NOT NULL DEFAULT '',
  `host` varchar(60) DEFAULT NULL,
  `port` int DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `account_password` varchar(255) DEFAULT '',
  `base_dn` varchar(255) DEFAULT NULL,
  `attr_login` varchar(30) DEFAULT NULL,
  `attr_firstname` varchar(30) DEFAULT NULL,
  `attr_lastname` varchar(30) DEFAULT NULL,
  `attr_mail` varchar(30) DEFAULT NULL,
  `onthefly_register` tinyint(1) NOT NULL DEFAULT '0',
  `tls` tinyint(1) NOT NULL DEFAULT '0',
  `filter` text,
  `timeout` int DEFAULT NULL,
  `verify_peer` tinyint(1) NOT NULL DEFAULT '1',
  `easy_wsdl` varchar(255) DEFAULT NULL,
  `easy_options` text,
  PRIMARY KEY (`id`),
  KEY `index_auth_sources_on_id_and_type` (`id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_sources`
--

LOCK TABLES `auth_sources` WRITE;
/*!40000 ALTER TABLE `auth_sources` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_sources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boards`
--

DROP TABLE IF EXISTS `boards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `boards` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_id` int NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  `position` int DEFAULT NULL,
  `topics_count` int NOT NULL DEFAULT '0',
  `messages_count` int NOT NULL DEFAULT '0',
  `last_message_id` int DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `boards_project_id` (`project_id`),
  KEY `index_boards_on_last_message_id` (`last_message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boards`
--

LOCK TABLES `boards` WRITE;
/*!40000 ALTER TABLE `boards` DISABLE KEYS */;
/*!40000 ALTER TABLE `boards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `changes`
--

DROP TABLE IF EXISTS `changes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `changes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `changeset_id` int NOT NULL,
  `action` varchar(1) NOT NULL DEFAULT '',
  `path` text NOT NULL,
  `from_path` text,
  `from_revision` varchar(255) DEFAULT NULL,
  `revision` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `changesets_changeset_id` (`changeset_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changes`
--

LOCK TABLES `changes` WRITE;
/*!40000 ALTER TABLE `changes` DISABLE KEYS */;
/*!40000 ALTER TABLE `changes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `changeset_parents`
--

DROP TABLE IF EXISTS `changeset_parents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `changeset_parents` (
  `changeset_id` int NOT NULL,
  `parent_id` int NOT NULL,
  KEY `changeset_parents_changeset_ids` (`changeset_id`),
  KEY `changeset_parents_parent_ids` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changeset_parents`
--

LOCK TABLES `changeset_parents` WRITE;
/*!40000 ALTER TABLE `changeset_parents` DISABLE KEYS */;
/*!40000 ALTER TABLE `changeset_parents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `changesets`
--

DROP TABLE IF EXISTS `changesets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `changesets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `repository_id` int NOT NULL,
  `revision` varchar(255) NOT NULL,
  `committer` varchar(255) DEFAULT NULL,
  `committed_on` datetime NOT NULL,
  `comments` longtext,
  `commit_date` date DEFAULT NULL,
  `scmid` varchar(255) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `changesets_repos_rev` (`repository_id`,`revision`),
  KEY `index_changesets_on_user_id` (`user_id`),
  KEY `index_changesets_on_repository_id` (`repository_id`),
  KEY `index_changesets_on_committed_on` (`committed_on`),
  KEY `changesets_repos_scmid` (`repository_id`,`scmid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changesets`
--

LOCK TABLES `changesets` WRITE;
/*!40000 ALTER TABLE `changesets` DISABLE KEYS */;
/*!40000 ALTER TABLE `changesets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `changesets_issues`
--

DROP TABLE IF EXISTS `changesets_issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `changesets_issues` (
  `changeset_id` int NOT NULL,
  `issue_id` int NOT NULL,
  UNIQUE KEY `changesets_issues_ids` (`changeset_id`,`issue_id`),
  KEY `index_changesets_issues_on_issue_id` (`issue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changesets_issues`
--

LOCK TABLES `changesets_issues` WRITE;
/*!40000 ALTER TABLE `changesets_issues` DISABLE KEYS */;
/*!40000 ALTER TABLE `changesets_issues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `commented_type` varchar(30) NOT NULL DEFAULT '',
  `commented_id` int NOT NULL DEFAULT '0',
  `author_id` int NOT NULL DEFAULT '0',
  `content` text,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_comments_on_commented_id_and_commented_type` (`commented_id`,`commented_type`),
  KEY `index_comments_on_author_id` (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_field_enumerations`
--

DROP TABLE IF EXISTS `custom_field_enumerations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_field_enumerations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `custom_field_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `position` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_field_enumerations`
--

LOCK TABLES `custom_field_enumerations` WRITE;
/*!40000 ALTER TABLE `custom_field_enumerations` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_field_enumerations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_field_mappings`
--

DROP TABLE IF EXISTS `custom_field_mappings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_field_mappings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `custom_field_id` int NOT NULL,
  `format_type` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_field_mappings`
--

LOCK TABLES `custom_field_mappings` WRITE;
/*!40000 ALTER TABLE `custom_field_mappings` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_field_mappings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_fields` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `field_format` varchar(30) NOT NULL DEFAULT '',
  `possible_values` text,
  `regexp` varchar(255) DEFAULT '',
  `min_length` int DEFAULT NULL,
  `max_length` int DEFAULT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT '0',
  `is_for_all` tinyint(1) NOT NULL DEFAULT '0',
  `is_filter` tinyint(1) NOT NULL DEFAULT '0',
  `position` int DEFAULT NULL,
  `searchable` tinyint(1) DEFAULT '0',
  `default_value` text,
  `editable` tinyint(1) DEFAULT '1',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `multiple` tinyint(1) DEFAULT '0',
  `format_store` text,
  `description` text,
  `is_primary` tinyint(1) NOT NULL DEFAULT '1',
  `show_empty` tinyint(1) NOT NULL DEFAULT '1',
  `show_on_list` tinyint(1) NOT NULL DEFAULT '0',
  `easy_computed_token` varchar(255) DEFAULT NULL,
  `settings` text,
  `non_deletable` tinyint(1) NOT NULL DEFAULT '0',
  `non_editable` tinyint(1) NOT NULL DEFAULT '0',
  `internal_name` varchar(255) DEFAULT NULL,
  `show_on_more_form` tinyint(1) NOT NULL DEFAULT '1',
  `easy_external_id` varchar(255) DEFAULT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  `easy_min_value` float DEFAULT NULL,
  `easy_max_value` float DEFAULT NULL,
  `mail_notification` tinyint(1) DEFAULT '1',
  `easy_group_id` int DEFAULT NULL,
  `clear_when_anonymize` tinyint(1) DEFAULT '0',
  `easy_custom_permissions` text,
  `dmsf_not_inheritable` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_custom_fields_on_internal_name` (`internal_name`),
  KEY `index_custom_fields_on_id_and_type` (`id`,`type`),
  KEY `idx_cf_20210318` (`type`,`disabled`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields`
--

LOCK TABLES `custom_fields` WRITE;
/*!40000 ALTER TABLE `custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields_easy_user_types`
--

DROP TABLE IF EXISTS `custom_fields_easy_user_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_fields_easy_user_types` (
  `custom_field_id` bigint NOT NULL,
  `easy_user_type_id` bigint NOT NULL,
  PRIMARY KEY (`custom_field_id`,`easy_user_type_id`),
  KEY `idx_cfeut_custom_field_id` (`custom_field_id`),
  KEY `idx_cfeut_easy_user_type_id` (`easy_user_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields_easy_user_types`
--

LOCK TABLES `custom_fields_easy_user_types` WRITE;
/*!40000 ALTER TABLE `custom_fields_easy_user_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields_easy_user_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields_enumerations`
--

DROP TABLE IF EXISTS `custom_fields_enumerations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_fields_enumerations` (
  `custom_field_id` bigint NOT NULL,
  `enumeration_id` bigint NOT NULL,
  PRIMARY KEY (`custom_field_id`,`enumeration_id`),
  KEY `index_custom_fields_enumerations_on_custom_field_id` (`custom_field_id`),
  KEY `index_custom_fields_enumerations_on_enumeration_id` (`enumeration_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields_enumerations`
--

LOCK TABLES `custom_fields_enumerations` WRITE;
/*!40000 ALTER TABLE `custom_fields_enumerations` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields_enumerations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields_projects`
--

DROP TABLE IF EXISTS `custom_fields_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_fields_projects` (
  `custom_field_id` int NOT NULL DEFAULT '0',
  `project_id` int NOT NULL DEFAULT '0',
  UNIQUE KEY `index_custom_fields_projects_on_custom_field_id_and_project_id` (`custom_field_id`,`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields_projects`
--

LOCK TABLES `custom_fields_projects` WRITE;
/*!40000 ALTER TABLE `custom_fields_projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields_roles`
--

DROP TABLE IF EXISTS `custom_fields_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_fields_roles` (
  `custom_field_id` int NOT NULL,
  `role_id` int NOT NULL,
  UNIQUE KEY `custom_fields_roles_ids` (`custom_field_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields_roles`
--

LOCK TABLES `custom_fields_roles` WRITE;
/*!40000 ALTER TABLE `custom_fields_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields_trackers`
--

DROP TABLE IF EXISTS `custom_fields_trackers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_fields_trackers` (
  `custom_field_id` int NOT NULL DEFAULT '0',
  `tracker_id` int NOT NULL DEFAULT '0',
  UNIQUE KEY `index_custom_fields_trackers_on_custom_field_id_and_tracker_id` (`custom_field_id`,`tracker_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields_trackers`
--

LOCK TABLES `custom_fields_trackers` WRITE;
/*!40000 ALTER TABLE `custom_fields_trackers` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields_trackers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_values`
--

DROP TABLE IF EXISTS `custom_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_values` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customized_type` varchar(30) NOT NULL DEFAULT '',
  `customized_id` int NOT NULL DEFAULT '0',
  `custom_field_id` int NOT NULL DEFAULT '0',
  `value` text,
  `easy_external_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `custom_values_customized` (`customized_type`,`customized_id`),
  KEY `index_custom_values_on_custom_field_id` (`custom_field_id`),
  KEY `easy_idx_custom_values_value` (`value`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_values`
--

LOCK TABLES `custom_values` WRITE;
/*!40000 ALTER TABLE `custom_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dmsf_file_revision_accesses`
--

DROP TABLE IF EXISTS `dmsf_file_revision_accesses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dmsf_file_revision_accesses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dmsf_file_revision_id` int NOT NULL,
  `action` int NOT NULL DEFAULT '0',
  `user_id` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_dmsf_file_revision_accesses_on_dmsf_file_revision_id` (`dmsf_file_revision_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dmsf_file_revision_accesses`
--

LOCK TABLES `dmsf_file_revision_accesses` WRITE;
/*!40000 ALTER TABLE `dmsf_file_revision_accesses` DISABLE KEYS */;
/*!40000 ALTER TABLE `dmsf_file_revision_accesses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dmsf_file_revisions`
--

DROP TABLE IF EXISTS `dmsf_file_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dmsf_file_revisions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dmsf_file_id` int NOT NULL,
  `source_dmsf_file_revision_id` int DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `disk_filename` varchar(255) NOT NULL,
  `size` bigint DEFAULT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `workflow` int DEFAULT NULL,
  `major_version` int NOT NULL,
  `minor_version` int NOT NULL,
  `comment` text,
  `deleted` int NOT NULL DEFAULT '0',
  `deleted_by_user_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `dmsf_workflow_id` int DEFAULT NULL,
  `dmsf_workflow_assigned_by_user_id` int DEFAULT NULL,
  `dmsf_workflow_assigned_at` datetime DEFAULT NULL,
  `dmsf_workflow_started_by_user_id` int DEFAULT NULL,
  `dmsf_workflow_started_at` datetime DEFAULT NULL,
  `digest` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `index_dmsf_file_revisions_on_dmsf_file_id` (`dmsf_file_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dmsf_file_revisions`
--

LOCK TABLES `dmsf_file_revisions` WRITE;
/*!40000 ALTER TABLE `dmsf_file_revisions` DISABLE KEYS */;
INSERT INTO `dmsf_file_revisions` VALUES (1,1,NULL,'프로젝트 및 일감 생성,수정 방법.pdf','210824015741_1___________________.pdf',1297076,'application/pdf','프로젝트 및 일감 생성,수정 방법','210824_설명서',NULL,0,1,'',0,NULL,1,'2021-08-24 10:57:41','2021-08-24 10:57:41',NULL,NULL,NULL,NULL,NULL,'7f51dad359beed115b227095e2563b7f4a8487e731045542d1af03bed9d8cbea');
/*!40000 ALTER TABLE `dmsf_file_revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dmsf_files`
--

DROP TABLE IF EXISTS `dmsf_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dmsf_files` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_id` int NOT NULL,
  `dmsf_folder_id` int DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `notification` tinyint(1) DEFAULT '0',
  `deleted` int NOT NULL DEFAULT '0',
  `deleted_by_user_id` int DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_dmsf_files_on_project_id` (`project_id`),
  KEY `index_dmsf_files_on_dmsf_folder_id` (`dmsf_folder_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dmsf_files`
--

LOCK TABLES `dmsf_files` WRITE;
/*!40000 ALTER TABLE `dmsf_files` DISABLE KEYS */;
INSERT INTO `dmsf_files` VALUES (1,1,1,'프로젝트 및 일감 생성,수정 방법.pdf',0,0,NULL,'2021-08-24 10:57:41','2021-08-24 10:57:41');
/*!40000 ALTER TABLE `dmsf_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dmsf_folder_permissions`
--

DROP TABLE IF EXISTS `dmsf_folder_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dmsf_folder_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dmsf_folder_id` int DEFAULT NULL,
  `object_id` int NOT NULL,
  `object_type` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_dmsf_folder_permissions_on_dmsf_folder_id` (`dmsf_folder_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dmsf_folder_permissions`
--

LOCK TABLES `dmsf_folder_permissions` WRITE;
/*!40000 ALTER TABLE `dmsf_folder_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `dmsf_folder_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dmsf_folders`
--

DROP TABLE IF EXISTS `dmsf_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dmsf_folders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_id` int NOT NULL,
  `dmsf_folder_id` int DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `notification` tinyint(1) DEFAULT '0',
  `user_id` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted` int NOT NULL DEFAULT '0',
  `deleted_by_user_id` int DEFAULT NULL,
  `system` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_dmsf_folders_on_project_id` (`project_id`),
  KEY `index_dmsf_folders_on_dmsf_folder_id` (`dmsf_folder_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dmsf_folders`
--

LOCK TABLES `dmsf_folders` WRITE;
/*!40000 ALTER TABLE `dmsf_folders` DISABLE KEYS */;
INSERT INTO `dmsf_folders` VALUES (1,1,NULL,'210824_업무일지','작성한 업무일지 파일 업로드 하는 폴더',0,1,'2021-08-24 10:56:11','2021-08-24 10:56:11',0,NULL,0);
/*!40000 ALTER TABLE `dmsf_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dmsf_links`
--

DROP TABLE IF EXISTS `dmsf_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dmsf_links` (
  `id` int NOT NULL AUTO_INCREMENT,
  `target_project_id` int NOT NULL,
  `target_id` int DEFAULT NULL,
  `target_type` varchar(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `project_id` int NOT NULL,
  `dmsf_folder_id` int DEFAULT NULL,
  `deleted` int NOT NULL DEFAULT '0',
  `deleted_by_user_id` int DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `external_url` varchar(255) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_dmsf_links_on_project_id` (`project_id`),
  KEY `index_dmsf_links_on_dmsf_folder_id` (`dmsf_folder_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dmsf_links`
--

LOCK TABLES `dmsf_links` WRITE;
/*!40000 ALTER TABLE `dmsf_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `dmsf_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dmsf_locks`
--

DROP TABLE IF EXISTS `dmsf_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dmsf_locks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `entity_id` int NOT NULL,
  `user_id` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `entity_type` int NOT NULL,
  `lock_type_cd` int NOT NULL,
  `lock_scope_cd` int NOT NULL,
  `uuid` varchar(36) DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `dmsf_file_last_revision_id` int DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_dmsf_locks_on_entity_id_and_entity_type` (`entity_id`,`entity_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dmsf_locks`
--

LOCK TABLES `dmsf_locks` WRITE;
/*!40000 ALTER TABLE `dmsf_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `dmsf_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dmsf_public_urls`
--

DROP TABLE IF EXISTS `dmsf_public_urls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dmsf_public_urls` (
  `id` int NOT NULL AUTO_INCREMENT,
  `token` varchar(32) NOT NULL,
  `dmsf_file_id` int NOT NULL,
  `user_id` int NOT NULL,
  `expire_at` datetime NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_dmsf_public_urls_on_token` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dmsf_public_urls`
--

LOCK TABLES `dmsf_public_urls` WRITE;
/*!40000 ALTER TABLE `dmsf_public_urls` DISABLE KEYS */;
/*!40000 ALTER TABLE `dmsf_public_urls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dmsf_workflow_step_actions`
--

DROP TABLE IF EXISTS `dmsf_workflow_step_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dmsf_workflow_step_actions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dmsf_workflow_step_assignment_id` int NOT NULL,
  `action` int NOT NULL,
  `note` text,
  `created_at` timestamp NOT NULL,
  `author_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_dmsf_wfstepact_on_wfstepassign_id` (`dmsf_workflow_step_assignment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dmsf_workflow_step_actions`
--

LOCK TABLES `dmsf_workflow_step_actions` WRITE;
/*!40000 ALTER TABLE `dmsf_workflow_step_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `dmsf_workflow_step_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dmsf_workflow_step_assignments`
--

DROP TABLE IF EXISTS `dmsf_workflow_step_assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dmsf_workflow_step_assignments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dmsf_workflow_step_id` int NOT NULL,
  `user_id` int NOT NULL,
  `dmsf_file_revision_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_dmsf_wrkfl_step_assigns_on_wrkfl_step_id_and_frev_id` (`dmsf_workflow_step_id`,`dmsf_file_revision_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dmsf_workflow_step_assignments`
--

LOCK TABLES `dmsf_workflow_step_assignments` WRITE;
/*!40000 ALTER TABLE `dmsf_workflow_step_assignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `dmsf_workflow_step_assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dmsf_workflow_steps`
--

DROP TABLE IF EXISTS `dmsf_workflow_steps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dmsf_workflow_steps` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dmsf_workflow_id` int NOT NULL,
  `step` int NOT NULL,
  `user_id` int NOT NULL,
  `operator` int NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_dmsf_workflow_steps_on_dmsf_workflow_id` (`dmsf_workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dmsf_workflow_steps`
--

LOCK TABLES `dmsf_workflow_steps` WRITE;
/*!40000 ALTER TABLE `dmsf_workflow_steps` DISABLE KEYS */;
/*!40000 ALTER TABLE `dmsf_workflow_steps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dmsf_workflows`
--

DROP TABLE IF EXISTS `dmsf_workflows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dmsf_workflows` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `project_id` int DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `updated_on` timestamp NULL DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `author_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dmsf_workflows`
--

LOCK TABLES `dmsf_workflows` WRITE;
/*!40000 ALTER TABLE `dmsf_workflows` DISABLE KEYS */;
/*!40000 ALTER TABLE `dmsf_workflows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_id` int NOT NULL DEFAULT '0',
  `category_id` int NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` longtext,
  `created_on` timestamp NULL DEFAULT NULL,
  `easy_external_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_project_id` (`project_id`),
  KEY `index_documents_on_category_id` (`category_id`),
  KEY `index_documents_on_created_on` (`created_on`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_active_job_statistics`
--

DROP TABLE IF EXISTS `easy_active_job_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_active_job_statistics` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `planned_at` datetime DEFAULT NULL,
  `started_at` datetime DEFAULT NULL,
  `finished_at` datetime DEFAULT NULL,
  `duration` int NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_easy_active_job_statistics_on_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_active_job_statistics`
--

LOCK TABLES `easy_active_job_statistics` WRITE;
/*!40000 ALTER TABLE `easy_active_job_statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_active_job_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_agile_backlog_relations`
--

DROP TABLE IF EXISTS `easy_agile_backlog_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_agile_backlog_relations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_id` int DEFAULT NULL,
  `issue_id` int DEFAULT NULL,
  `position` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_easy_agile_backlog_relations_on_project_id` (`project_id`),
  KEY `index_easy_agile_backlog_relations_on_issue_id` (`issue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_agile_backlog_relations`
--

LOCK TABLES `easy_agile_backlog_relations` WRITE;
/*!40000 ALTER TABLE `easy_agile_backlog_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_agile_backlog_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_async_exports`
--

DROP TABLE IF EXISTS `easy_async_exports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_async_exports` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `author_id` bigint NOT NULL,
  `format` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `query_settings` longtext NOT NULL,
  `job_id` varchar(255) DEFAULT NULL,
  `status` int DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `project_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_easy_async_exports_on_author_id` (`author_id`),
  KEY `index_easy_async_exports_on_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_async_exports`
--

LOCK TABLES `easy_async_exports` WRITE;
/*!40000 ALTER TABLE `easy_async_exports` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_async_exports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_attendance_activities`
--

DROP TABLE IF EXISTS `easy_attendance_activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_attendance_activities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `position` int DEFAULT NULL,
  `at_work` tinyint(1) DEFAULT '0',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `internal_name` varchar(255) DEFAULT NULL,
  `non_deletable` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `project_mapping` tinyint(1) NOT NULL DEFAULT '0',
  `mapped_project_id` int DEFAULT NULL,
  `mapped_time_entry_activity_id` int DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `color_schema` varchar(255) DEFAULT NULL,
  `approval_required` tinyint(1) DEFAULT '0',
  `use_specify_time` tinyint(1) DEFAULT NULL,
  `system_activity` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_attendance_activities`
--

LOCK TABLES `easy_attendance_activities` WRITE;
/*!40000 ALTER TABLE `easy_attendance_activities` DISABLE KEYS */;
INSERT INTO `easy_attendance_activities` VALUES (1,'Kancelář',0,1,1,'office',1,'2021-08-23 17:10:38','2021-08-23 17:10:38',0,NULL,NULL,NULL,NULL,0,NULL,0),(2,'Home office',1,1,0,NULL,0,'2021-08-23 17:10:38','2021-08-23 17:10:38',0,NULL,NULL,NULL,NULL,0,NULL,0),(3,'Dovolená',2,0,0,NULL,0,'2021-08-23 17:10:38','2021-08-23 17:10:38',0,NULL,NULL,NULL,NULL,0,NULL,0),(4,'Nemoc',4,0,0,NULL,0,'2021-08-23 17:10:38','2021-08-23 17:10:38',0,NULL,NULL,NULL,NULL,0,NULL,0);
/*!40000 ALTER TABLE `easy_attendance_activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_attendance_activity_user_limits`
--

DROP TABLE IF EXISTS `easy_attendance_activity_user_limits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_attendance_activity_user_limits` (
  `id` int NOT NULL AUTO_INCREMENT,
  `easy_attendance_activity_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `days` float NOT NULL,
  `accumulated_days` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `eaaul_eaa_id` (`easy_attendance_activity_id`,`user_id`),
  KEY `eaaul_u_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_attendance_activity_user_limits`
--

LOCK TABLES `easy_attendance_activity_user_limits` WRITE;
/*!40000 ALTER TABLE `easy_attendance_activity_user_limits` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_attendance_activity_user_limits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_attendance_user_arrival_notifies`
--

DROP TABLE IF EXISTS `easy_attendance_user_arrival_notifies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_attendance_user_arrival_notifies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `notify_to_id` int DEFAULT NULL,
  `message` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `easy_attendance_user_arrival_notify_notify_id_x_user_id` (`user_id`,`notify_to_id`),
  KEY `easy_attendance_user_arrival_notify_user_id_x_notify_id` (`notify_to_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_attendance_user_arrival_notifies`
--

LOCK TABLES `easy_attendance_user_arrival_notifies` WRITE;
/*!40000 ALTER TABLE `easy_attendance_user_arrival_notifies` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_attendance_user_arrival_notifies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_attendances`
--

DROP TABLE IF EXISTS `easy_attendances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_attendances` (
  `id` int NOT NULL AUTO_INCREMENT,
  `arrival` datetime DEFAULT NULL,
  `departure` datetime DEFAULT NULL,
  `user_id` int NOT NULL,
  `easy_attendance_activity_id` int DEFAULT NULL,
  `edited_by_id` int DEFAULT NULL,
  `edited_when` datetime DEFAULT NULL,
  `locked` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `arrival_user_ip` varchar(255) NOT NULL DEFAULT '',
  `time_entry_id` int DEFAULT NULL,
  `departure_user_ip` varchar(255) NOT NULL DEFAULT '',
  `range` int DEFAULT NULL,
  `description` text,
  `approval_status` int DEFAULT NULL,
  `approved_by_id` int DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `previous_approval_status` tinyint DEFAULT NULL,
  `arrival_latitude` float DEFAULT NULL,
  `arrival_longitude` float DEFAULT NULL,
  `departure_latitude` float DEFAULT NULL,
  `departure_longitude` float DEFAULT NULL,
  `time_zone` varchar(6) DEFAULT NULL,
  `easy_external_id` varchar(255) DEFAULT NULL,
  `hours` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_easy_attendances_on_user_id` (`user_id`),
  KEY `index_easy_attendances_on_user_id_and_departure` (`user_id`,`departure`),
  KEY `idx_ea_ab_id` (`approved_by_id`),
  KEY `idx_ea_ar_de` (`arrival`,`departure`),
  KEY `idx_ea_time_entry_id` (`time_entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_attendances`
--

LOCK TABLES `easy_attendances` WRITE;
/*!40000 ALTER TABLE `easy_attendances` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_attendances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_avatars`
--

DROP TABLE IF EXISTS `easy_avatars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_avatars` (
  `id` int NOT NULL AUTO_INCREMENT,
  `entity_type` varchar(255) NOT NULL,
  `entity_id` int NOT NULL,
  `image_file_name` varchar(255) DEFAULT NULL,
  `image_content_type` varchar(255) DEFAULT NULL,
  `image_file_size` bigint DEFAULT NULL,
  `image_updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_easy_avatars_on_entity_type_and_entity_id` (`entity_type`,`entity_id`),
  KEY `index_easy_avatars_on_entity_id` (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_avatars`
--

LOCK TABLES `easy_avatars` WRITE;
/*!40000 ALTER TABLE `easy_avatars` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_avatars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_baseline_sources`
--

DROP TABLE IF EXISTS `easy_baseline_sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_baseline_sources` (
  `id` int NOT NULL AUTO_INCREMENT,
  `baseline_id` int DEFAULT NULL,
  `source_id` int DEFAULT NULL,
  `destination_id` int DEFAULT NULL,
  `relation_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_easy_baseline_sources_on_baseline_id` (`baseline_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_baseline_sources`
--

LOCK TABLES `easy_baseline_sources` WRITE;
/*!40000 ALTER TABLE `easy_baseline_sources` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_baseline_sources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_broadcasts`
--

DROP TABLE IF EXISTS `easy_broadcasts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_broadcasts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `message` text NOT NULL,
  `start_at` datetime NOT NULL,
  `end_at` datetime NOT NULL,
  `author_id` int DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_easy_broadcasts_on_start_at` (`start_at`),
  KEY `index_easy_broadcasts_on_end_at` (`end_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_broadcasts`
--

LOCK TABLES `easy_broadcasts` WRITE;
/*!40000 ALTER TABLE `easy_broadcasts` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_broadcasts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_broadcasts_user_types`
--

DROP TABLE IF EXISTS `easy_broadcasts_user_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_broadcasts_user_types` (
  `easy_broadcast_id` int NOT NULL,
  `easy_user_type_id` int NOT NULL,
  PRIMARY KEY (`easy_broadcast_id`,`easy_user_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_broadcasts_user_types`
--

LOCK TABLES `easy_broadcasts_user_types` WRITE;
/*!40000 ALTER TABLE `easy_broadcasts_user_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_broadcasts_user_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_buttons`
--

DROP TABLE IF EXISTS `easy_buttons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_buttons` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `entity_type` varchar(255) NOT NULL,
  `project_id` int DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `conditions` longtext,
  `actions` longtext,
  `conditions_cache` longtext,
  `actions_cache` longtext,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `author_id` int DEFAULT NULL,
  `is_private` tinyint(1) DEFAULT '0',
  `silent_mode` tinyint(1) DEFAULT '1',
  `color` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `entity_note` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_buttons`
--

LOCK TABLES `easy_buttons` WRITE;
/*!40000 ALTER TABLE `easy_buttons` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_buttons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_callback_actions`
--

DROP TABLE IF EXISTS `easy_callback_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_callback_actions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `source_entity_class` varchar(255) DEFAULT NULL,
  `callback` varchar(255) NOT NULL,
  `action_class` varchar(255) NOT NULL,
  `action_serialized` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_eca_2021_01` (`source_entity_class`,`callback`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_callback_actions`
--

LOCK TABLES `easy_callback_actions` WRITE;
/*!40000 ALTER TABLE `easy_callback_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_callback_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_chart_baselines`
--

DROP TABLE IF EXISTS `easy_chart_baselines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_chart_baselines` (
  `id` int NOT NULL AUTO_INCREMENT,
  `page_module_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `chart_type` varchar(255) DEFAULT NULL,
  `data` text,
  `ticks` text,
  `options` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_chart_baselines`
--

LOCK TABLES `easy_chart_baselines` WRITE;
/*!40000 ALTER TABLE `easy_chart_baselines` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_chart_baselines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_checklist_items`
--

DROP TABLE IF EXISTS `easy_checklist_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_checklist_items` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) DEFAULT NULL,
  `position` int DEFAULT NULL,
  `done` tinyint(1) DEFAULT '0',
  `author_id` bigint DEFAULT NULL,
  `changed_by_id` bigint DEFAULT NULL,
  `last_done_change` datetime DEFAULT NULL,
  `easy_checklist_id` bigint DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_easy_checklist_items_on_author_id` (`author_id`),
  KEY `index_easy_checklist_items_on_changed_by_id` (`changed_by_id`),
  KEY `index_easy_checklist_items_on_easy_checklist_id` (`easy_checklist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_checklist_items`
--

LOCK TABLES `easy_checklist_items` WRITE;
/*!40000 ALTER TABLE `easy_checklist_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_checklist_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_checklists`
--

DROP TABLE IF EXISTS `easy_checklists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_checklists` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `author_id` bigint DEFAULT NULL,
  `entity_type` varchar(255) DEFAULT NULL,
  `entity_id` bigint DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `settings` longtext,
  `is_default_for_new_projects` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_easy_checklists_on_author_id` (`author_id`),
  KEY `index_easy_checklists_on_entity` (`entity_type`,`entity_id`),
  KEY `index_easy_checklists_on_id_and_type` (`id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_checklists`
--

LOCK TABLES `easy_checklists` WRITE;
/*!40000 ALTER TABLE `easy_checklists` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_checklists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_currencies`
--

DROP TABLE IF EXISTS `easy_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_currencies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `iso_code` varchar(3) NOT NULL,
  `digits_after_decimal_separator` int DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `activated` tinyint(1) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_easy_currencies_on_iso_code` (`iso_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_currencies`
--

LOCK TABLES `easy_currencies` WRITE;
/*!40000 ALTER TABLE `easy_currencies` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_currency_exchange_rates`
--

DROP TABLE IF EXISTS `easy_currency_exchange_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_currency_exchange_rates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rate` decimal(18,6) NOT NULL DEFAULT '1.000000',
  `base_id` int DEFAULT NULL,
  `to_id` int DEFAULT NULL,
  `valid_on` date DEFAULT NULL,
  `base_code` varchar(3) DEFAULT NULL,
  `to_code` varchar(3) DEFAULT NULL,
  `created_at` datetime DEFAULT '2021-08-23 17:11:17',
  `updated_at` datetime DEFAULT '2021-08-23 17:11:17',
  PRIMARY KEY (`id`),
  KEY `idx_easy_exch_rates` (`base_code`,`to_code`),
  KEY `idx_easy_exch_rates_valid_on` (`valid_on`,`base_code`,`to_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_currency_exchange_rates`
--

LOCK TABLES `easy_currency_exchange_rates` WRITE;
/*!40000 ALTER TABLE `easy_currency_exchange_rates` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_currency_exchange_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_custom_field_ratings`
--

DROP TABLE IF EXISTS `easy_custom_field_ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_custom_field_ratings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `custom_value_id` int NOT NULL,
  `rating` int DEFAULT NULL,
  `description` text,
  `user_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_custom_field_ratings`
--

LOCK TABLES `easy_custom_field_ratings` WRITE;
/*!40000 ALTER TABLE `easy_custom_field_ratings` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_custom_field_ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_custom_menus`
--

DROP TABLE IF EXISTS `easy_custom_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_custom_menus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `url` varchar(2000) NOT NULL,
  `easy_user_type_id` int NOT NULL,
  `root_id` int DEFAULT NULL,
  `easy_icon` varchar(255) DEFAULT NULL,
  `position` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_easy_custom_menus_on_easy_user_type_id` (`easy_user_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_custom_menus`
--

LOCK TABLES `easy_custom_menus` WRITE;
/*!40000 ALTER TABLE `easy_custom_menus` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_custom_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_custom_project_menus`
--

DROP TABLE IF EXISTS `easy_custom_project_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_custom_project_menus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `menu_item` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(2000) DEFAULT NULL,
  `position` int DEFAULT '1',
  `project_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_custom_project_menus`
--

LOCK TABLES `easy_custom_project_menus` WRITE;
/*!40000 ALTER TABLE `easy_custom_project_menus` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_custom_project_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_data_template_assignments`
--

DROP TABLE IF EXISTS `easy_data_template_assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_data_template_assignments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `easy_data_template_id` int NOT NULL,
  `entity_attribute_name` varchar(255) NOT NULL,
  `file_column_position` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_data_template_assignments`
--

LOCK TABLES `easy_data_template_assignments` WRITE;
/*!40000 ALTER TABLE `easy_data_template_assignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_data_template_assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_data_templates`
--

DROP TABLE IF EXISTS `easy_data_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_data_templates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `user_id` int DEFAULT NULL,
  `template_type` varchar(50) NOT NULL,
  `settings` text,
  `author_id` int NOT NULL,
  `created_on` timestamp NULL DEFAULT NULL,
  `updated_on` timestamp NULL DEFAULT NULL,
  `format_type` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_data_templates`
--

LOCK TABLES `easy_data_templates` WRITE;
/*!40000 ALTER TABLE `easy_data_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_data_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_default_query_mappings`
--

DROP TABLE IF EXISTS `easy_default_query_mappings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_default_query_mappings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_id` int DEFAULT NULL,
  `entity_type` varchar(255) NOT NULL,
  `position` int DEFAULT NULL,
  `easy_query_id` int DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `edqm_role_type` (`entity_type`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_default_query_mappings`
--

LOCK TABLES `easy_default_query_mappings` WRITE;
/*!40000 ALTER TABLE `easy_default_query_mappings` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_default_query_mappings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_email_templates`
--

DROP TABLE IF EXISTS `easy_email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_email_templates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `internal_name` varchar(255) DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `body_html` text,
  `body_plain` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_email_templates`
--

LOCK TABLES `easy_email_templates` WRITE;
/*!40000 ALTER TABLE `easy_email_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_entities_with_currencies`
--

DROP TABLE IF EXISTS `easy_entities_with_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_entities_with_currencies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `entity_class` varchar(255) DEFAULT NULL,
  `initializaed_at` date DEFAULT NULL,
  `recalculated_at` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_entities_with_currencies`
--

LOCK TABLES `easy_entities_with_currencies` WRITE;
/*!40000 ALTER TABLE `easy_entities_with_currencies` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_entities_with_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_entity_action_histories`
--

DROP TABLE IF EXISTS `easy_entity_action_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_entity_action_histories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `easy_entity_action_id` int NOT NULL,
  `entity_type` varchar(255) NOT NULL,
  `entity_id` int NOT NULL,
  `text` longtext,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_eea_action_id` (`easy_entity_action_id`),
  KEY `index_eea_entity_id_and_type` (`entity_id`,`entity_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_entity_action_histories`
--

LOCK TABLES `easy_entity_action_histories` WRITE;
/*!40000 ALTER TABLE `easy_entity_action_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_entity_action_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_entity_actions`
--

DROP TABLE IF EXISTS `easy_entity_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_entity_actions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `action_name` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `author_id` int NOT NULL,
  `entity_type` varchar(255) DEFAULT NULL,
  `entity_id` int DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  `use_journal` tinyint(1) NOT NULL DEFAULT '0',
  `mail` tinyint(1) NOT NULL DEFAULT '0',
  `mail_sender` varchar(255) DEFAULT NULL,
  `mail_cc` varchar(255) DEFAULT NULL,
  `mail_bcc` varchar(255) DEFAULT NULL,
  `mail_subject` varchar(255) DEFAULT NULL,
  `mail_html_body` longtext,
  `easy_query_settings` longtext,
  `execute_as` varchar(255) NOT NULL,
  `execute_as_user_id` int DEFAULT NULL,
  `repeatedly` tinyint(1) NOT NULL DEFAULT '0',
  `period_options` longtext,
  `last_executed` datetime DEFAULT NULL,
  `nextrun_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `settings` text,
  `setup_actions` text,
  PRIMARY KEY (`id`),
  KEY `index_easy_entity_actions_on_type` (`type`),
  KEY `index_easy_entity_actions_on_entity_type_and_entity_id` (`entity_type`,`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_entity_actions`
--

LOCK TABLES `easy_entity_actions` WRITE;
/*!40000 ALTER TABLE `easy_entity_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_entity_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_entity_activities`
--

DROP TABLE IF EXISTS `easy_entity_activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_entity_activities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `entity_type` varchar(255) NOT NULL,
  `entity_id` int NOT NULL,
  `author_id` int DEFAULT NULL,
  `category_id` int NOT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `description` text,
  `start_time` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `all_day` tinyint(1) DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_eea_on_entity` (`entity_type`,`entity_id`),
  KEY `index_eea_on_author_id` (`author_id`),
  KEY `idx_eea_on_start_time` (`start_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_entity_activities`
--

LOCK TABLES `easy_entity_activities` WRITE;
/*!40000 ALTER TABLE `easy_entity_activities` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_entity_activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_entity_activity_attendees`
--

DROP TABLE IF EXISTS `easy_entity_activity_attendees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_entity_activity_attendees` (
  `id` int NOT NULL AUTO_INCREMENT,
  `easy_entity_activity_id` int DEFAULT NULL,
  `entity_type` varchar(255) DEFAULT NULL,
  `entity_id` int DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_eeaa_on_entity` (`entity_type`,`entity_id`),
  KEY `index_eeaa_on_activity_id` (`easy_entity_activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_entity_activity_attendees`
--

LOCK TABLES `easy_entity_activity_attendees` WRITE;
/*!40000 ALTER TABLE `easy_entity_activity_attendees` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_entity_activity_attendees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_entity_assignments`
--

DROP TABLE IF EXISTS `easy_entity_assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_entity_assignments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `entity_from_type` varchar(255) DEFAULT NULL,
  `entity_from_id` int DEFAULT NULL,
  `entity_to_type` varchar(255) DEFAULT NULL,
  `entity_to_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entity_assignment_idx` (`entity_from_type`,`entity_from_id`,`entity_to_type`,`entity_to_id`),
  KEY `entity_assignment_idx_from` (`entity_from_id`),
  KEY `entity_assignment_idx_to` (`entity_to_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_entity_assignments`
--

LOCK TABLES `easy_entity_assignments` WRITE;
/*!40000 ALTER TABLE `easy_entity_assignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_entity_assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_entity_attribute_maps`
--

DROP TABLE IF EXISTS `easy_entity_attribute_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_entity_attribute_maps` (
  `id` int NOT NULL AUTO_INCREMENT,
  `entity_from_type` varchar(255) NOT NULL,
  `entity_from_attribute` varchar(255) NOT NULL,
  `entity_to_type` varchar(255) NOT NULL,
  `entity_to_attribute` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_map_from_entity` (`entity_from_type`,`entity_from_attribute`,`entity_to_type`),
  UNIQUE KEY `i_map_to_entity` (`entity_from_type`,`entity_to_type`,`entity_to_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_entity_attribute_maps`
--

LOCK TABLES `easy_entity_attribute_maps` WRITE;
/*!40000 ALTER TABLE `easy_entity_attribute_maps` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_entity_attribute_maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_entity_import_attributes_assignments`
--

DROP TABLE IF EXISTS `easy_entity_import_attributes_assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_entity_import_attributes_assignments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `easy_entity_import_id` bigint NOT NULL,
  `source_attribute` varchar(255) DEFAULT NULL,
  `entity_attribute` varchar(255) NOT NULL,
  `is_custom` tinyint(1) NOT NULL DEFAULT '0',
  `value` varchar(255) DEFAULT NULL,
  `default_value` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `allow_find_by_external_id` tinyint(1) NOT NULL DEFAULT '0',
  `format` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ee_import_att_ass_source_entity` (`source_attribute`,`entity_attribute`),
  KEY `ee_import_att_ass_entity_importer` (`easy_entity_import_id`,`entity_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_entity_import_attributes_assignments`
--

LOCK TABLES `easy_entity_import_attributes_assignments` WRITE;
/*!40000 ALTER TABLE `easy_entity_import_attributes_assignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_entity_import_attributes_assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_entity_imports`
--

DROP TABLE IF EXISTS `easy_entity_imports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_entity_imports` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `entity_type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_automatic` tinyint(1) NOT NULL DEFAULT '0',
  `settings` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `merge_by` varchar(255) DEFAULT 'easy_external_id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_entity_imports`
--

LOCK TABLES `easy_entity_imports` WRITE;
/*!40000 ALTER TABLE `easy_entity_imports` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_entity_imports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_external_authentications`
--

DROP TABLE IF EXISTS `easy_external_authentications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_external_authentications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `access_token` varchar(255) DEFAULT NULL,
  `access_secret` varchar(255) DEFAULT NULL,
  `refresh_token` varchar(255) DEFAULT NULL,
  `expires_in` int DEFAULT NULL,
  `issued_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_easy_external_authentications_on_uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_external_authentications`
--

LOCK TABLES `easy_external_authentications` WRITE;
/*!40000 ALTER TABLE `easy_external_authentications` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_external_authentications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_favorites`
--

DROP TABLE IF EXISTS `easy_favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_favorites` (
  `id` int NOT NULL AUTO_INCREMENT,
  `entity_type` varchar(255) NOT NULL,
  `entity_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `favorite_idx` (`entity_type`,`entity_id`,`user_id`),
  KEY `index_easy_favorites_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_favorites`
--

LOCK TABLES `easy_favorites` WRITE;
/*!40000 ALTER TABLE `easy_favorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_gantt_resources`
--

DROP TABLE IF EXISTS `easy_gantt_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_gantt_resources` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `issue_id` int NOT NULL,
  `date` date NOT NULL,
  `hours` decimal(7,2) NOT NULL,
  `custom` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `start` time DEFAULT NULL,
  `original_hours` decimal(7,2) DEFAULT '0.00',
  `full_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_index_user_id_and_issue_id_and_date_and_start` (`user_id`,`issue_id`,`date`,`start`),
  KEY `index_easy_gantt_resources_on_user_id` (`user_id`),
  KEY `index_easy_gantt_resources_on_issue_id` (`issue_id`),
  KEY `index_easy_gantt_resources_on_date` (`date`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_gantt_resources`
--

LOCK TABLES `easy_gantt_resources` WRITE;
/*!40000 ALTER TABLE `easy_gantt_resources` DISABLE KEYS */;
INSERT INTO `easy_gantt_resources` VALUES (3,1,1,'2021-08-23',3.00,1,'2021-08-23 18:14:08','2021-08-23 18:14:08',NULL,0.00,'2021-08-23 09:30:00'),(4,1,1,'2021-08-23',1.00,1,'2021-08-23 18:14:08','2021-08-23 18:14:08',NULL,0.00,'2021-08-23 13:30:00');
/*!40000 ALTER TABLE `easy_gantt_resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_global_ratings`
--

DROP TABLE IF EXISTS `easy_global_ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_global_ratings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customized_type` varchar(255) DEFAULT NULL,
  `customized_id` int DEFAULT NULL,
  `value` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_global_ratings`
--

LOCK TABLES `easy_global_ratings` WRITE;
/*!40000 ALTER TABLE `easy_global_ratings` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_global_ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_global_time_entry_settings`
--

DROP TABLE IF EXISTS `easy_global_time_entry_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_global_time_entry_settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_id` int DEFAULT NULL,
  `spent_on_limit_before_today` int DEFAULT NULL,
  `spent_on_limit_before_today_edit` int DEFAULT NULL,
  `spent_on_limit_after_today` int DEFAULT NULL,
  `spent_on_limit_after_today_edit` int DEFAULT NULL,
  `timelog_comment_editor_enabled` tinyint(1) DEFAULT '0',
  `time_entry_spent_on_at_issue_update_enabled` tinyint(1) DEFAULT '0',
  `allow_log_time_to_closed_issue` tinyint(1) DEFAULT '0',
  `required_issue_id_at_time_entry` tinyint(1) DEFAULT '0',
  `show_time_entry_range_select` tinyint(1) DEFAULT '0',
  `time_entry_daily_limit` float DEFAULT NULL,
  `required_time_entry_comments` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_global_time_entry_settings`
--

LOCK TABLES `easy_global_time_entry_settings` WRITE;
/*!40000 ALTER TABLE `easy_global_time_entry_settings` DISABLE KEYS */;
INSERT INTO `easy_global_time_entry_settings` VALUES (1,NULL,NULL,NULL,NULL,NULL,0,0,1,0,0,NULL,0);
/*!40000 ALTER TABLE `easy_global_time_entry_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_hosting_plugins`
--

DROP TABLE IF EXISTS `easy_hosting_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_hosting_plugins` (
  `id` int NOT NULL AUTO_INCREMENT,
  `plugin_name` varchar(255) NOT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT '0',
  `activated_by` int DEFAULT NULL,
  `activated_to` datetime DEFAULT NULL,
  `trial_count` int NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ehp_plugin_name_2` (`activated`),
  KEY `idx_ehp_plugin_name_1` (`plugin_name`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_hosting_plugins`
--

LOCK TABLES `easy_hosting_plugins` WRITE;
/*!40000 ALTER TABLE `easy_hosting_plugins` DISABLE KEYS */;
INSERT INTO `easy_hosting_plugins` VALUES (1,'easy_extensions',1,NULL,NULL,0,'2021-08-23 17:10:58','2021-08-23 17:10:58'),(2,'easy_agile_board',1,NULL,NULL,0,'2021-08-23 17:10:58','2021-08-23 17:10:58'),(3,'easy_business_dashboards',1,NULL,NULL,0,'2021-08-23 17:10:58','2021-08-23 17:10:58'),(4,'easy_buttons',1,NULL,NULL,0,'2021-08-23 17:10:58','2021-08-23 17:10:58'),(5,'easy_calendar',1,NULL,NULL,0,'2021-08-23 17:10:58','2021-08-23 17:10:58'),(6,'easy_custom_field_permissions',1,NULL,NULL,0,'2021-08-23 17:10:58','2021-08-23 17:10:58'),(7,'easy_data_templates',1,NULL,NULL,0,'2021-08-23 17:10:58','2021-08-23 17:10:58'),(8,'easy_printable_templates',1,NULL,NULL,0,'2021-08-23 17:10:58','2021-08-23 17:10:58'),(9,'easy_project_attachments',1,NULL,NULL,0,'2021-08-23 17:10:58','2021-08-23 17:10:58'),(10,'easy_quick_project_planner',1,NULL,NULL,0,'2021-08-23 17:10:58','2021-08-23 17:10:58'),(11,'easy_timesheets',1,NULL,NULL,0,'2021-08-23 17:10:58','2021-08-23 17:10:58'),(12,'easy_to_do_list',1,NULL,NULL,0,'2021-08-23 17:10:58','2021-08-23 17:10:58'),(13,'easy_baseline',1,NULL,NULL,0,'2021-08-23 17:10:58','2021-08-23 17:10:58'),(14,'easy_checklist',1,NULL,NULL,0,'2021-08-23 17:10:58','2021-08-23 17:10:58'),(15,'easy_gantt',1,NULL,NULL,0,'2021-08-23 17:10:58','2021-08-23 17:10:58'),(16,'easy_gantt_pro',1,NULL,NULL,0,'2021-08-23 17:10:58','2021-08-23 17:10:58'),(17,'easy_org_chart',1,NULL,NULL,0,'2021-08-23 17:10:58','2021-08-23 17:10:58'),(18,'easy_scheduler',1,NULL,NULL,0,'2021-08-23 17:10:58','2021-08-23 17:10:58'),(19,'easy_mindmup',1,NULL,NULL,0,'2021-08-23 17:10:58','2021-08-23 17:10:58'),(20,'easy_wbs',1,NULL,NULL,0,'2021-08-23 17:10:58','2021-08-23 17:10:58'),(21,'redmine_dmsf',1,NULL,NULL,0,'2021-08-23 17:10:58','2021-08-23 17:10:58');
/*!40000 ALTER TABLE `easy_hosting_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_icalendar_events`
--

DROP TABLE IF EXISTS `easy_icalendar_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_icalendar_events` (
  `id` int NOT NULL AUTO_INCREMENT,
  `summary` text,
  `easy_icalendar_id` int DEFAULT NULL,
  `uid` varchar(255) NOT NULL,
  `dtstart` datetime NOT NULL,
  `dtend` datetime DEFAULT NULL,
  `description` text,
  `location` varchar(255) DEFAULT NULL,
  `organizer` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `is_private` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `easy_repeat_parent_id` bigint DEFAULT NULL,
  `easy_is_repeating` tinyint(1) DEFAULT NULL,
  `easy_repeat_settings` longtext,
  `easy_next_start` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_easy_icalendar_events_on_easy_icalendar_id` (`easy_icalendar_id`),
  KEY `index_easy_icalendar_events_on_easy_repeat_parent_id` (`easy_repeat_parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_icalendar_events`
--

LOCK TABLES `easy_icalendar_events` WRITE;
/*!40000 ALTER TABLE `easy_icalendar_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_icalendar_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_icalendars`
--

DROP TABLE IF EXISTS `easy_icalendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_icalendars` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `easy_color_scheme` varchar(255) DEFAULT NULL,
  `visibility` int DEFAULT '0',
  `synchronized_at` datetime DEFAULT NULL,
  `last_run_at` datetime DEFAULT NULL,
  `status` int DEFAULT '0',
  `message` text,
  `user_id` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_easy_icalendars_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_icalendars`
--

LOCK TABLES `easy_icalendars` WRITE;
/*!40000 ALTER TABLE `easy_icalendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_icalendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_integration_logs`
--

DROP TABLE IF EXISTS `easy_integration_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_integration_logs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `easy_integration_id` bigint NOT NULL,
  `entity_type` varchar(255) NOT NULL,
  `entity_id` bigint NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `action` varchar(255) NOT NULL,
  `return_value` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_easy_integration_logs_on_easy_integration_id` (`easy_integration_id`),
  KEY `index_easy_integration_logs_on_entity` (`entity_type`,`entity_id`),
  KEY `idx_eil_integration_entity` (`easy_integration_id`,`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_integration_logs`
--

LOCK TABLES `easy_integration_logs` WRITE;
/*!40000 ALTER TABLE `easy_integration_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_integration_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_integrations`
--

DROP TABLE IF EXISTS `easy_integrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_integrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `metadata_klass` varchar(255) NOT NULL,
  `metadata_settings` json NOT NULL,
  `service_klass` varchar(255) NOT NULL,
  `entity_klass` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `perform_once` tinyint(1) NOT NULL DEFAULT '1',
  `on_create` tinyint(1) NOT NULL DEFAULT '1',
  `on_update` tinyint(1) NOT NULL DEFAULT '0',
  `on_destroy` tinyint(1) NOT NULL DEFAULT '0',
  `on_time` tinyint(1) NOT NULL DEFAULT '0',
  `use_query` tinyint(1) NOT NULL DEFAULT '0',
  `query_settings` json DEFAULT NULL,
  `execute_as_user_id` int DEFAULT NULL,
  `use_journal` tinyint(1) NOT NULL DEFAULT '0',
  `grouped_notify` tinyint(1) NOT NULL DEFAULT '0',
  `cron_expr` varchar(255) DEFAULT NULL,
  `next_run_at` datetime DEFAULT NULL,
  `easy_oauth2_client_application_id` bigint DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_easy_integrations_on_entity_klass` (`entity_klass`),
  KEY `index_easy_integrations_on_active` (`active`),
  KEY `index_easy_integrations_on_on_create` (`on_create`),
  KEY `index_easy_integrations_on_on_update` (`on_update`),
  KEY `index_easy_integrations_on_on_destroy` (`on_destroy`),
  KEY `index_easy_integrations_on_on_time` (`on_time`),
  KEY `index_easy_integrations_on_next_run_at` (`next_run_at`),
  KEY `index_easy_integrations_on_easy_oauth2_client_application_id` (`easy_oauth2_client_application_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_integrations`
--

LOCK TABLES `easy_integrations` WRITE;
/*!40000 ALTER TABLE `easy_integrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_integrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_invitations`
--

DROP TABLE IF EXISTS `easy_invitations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_invitations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `easy_meeting_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `accepted` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `alarms` longtext,
  PRIMARY KEY (`id`),
  KEY `index_easy_invitations_on_easy_meeting_id` (`easy_meeting_id`),
  KEY `index_easy_invitations_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_invitations`
--

LOCK TABLES `easy_invitations` WRITE;
/*!40000 ALTER TABLE `easy_invitations` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_invitations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_issue_timers`
--

DROP TABLE IF EXISTS `easy_issue_timers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_issue_timers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `issue_id` int DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `pause` decimal(10,0) DEFAULT '0',
  `paused_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_easy_issue_timers_on_user_id_and_issue_id` (`user_id`,`issue_id`),
  KEY `index_easy_issue_timers_on_issue_id_and_user_id` (`issue_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_issue_timers`
--

LOCK TABLES `easy_issue_timers` WRITE;
/*!40000 ALTER TABLE `easy_issue_timers` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_issue_timers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_kanban_issues`
--

DROP TABLE IF EXISTS `easy_kanban_issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_kanban_issues` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_id` int DEFAULT NULL,
  `issue_id` int DEFAULT NULL,
  `phase` int DEFAULT '-1',
  `position` int DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_easy_kanban_issues_on_project_id` (`project_id`),
  KEY `index_easy_kanban_issues_on_issue_id` (`issue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_kanban_issues`
--

LOCK TABLES `easy_kanban_issues` WRITE;
/*!40000 ALTER TABLE `easy_kanban_issues` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_kanban_issues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_mail_queue`
--

DROP TABLE IF EXISTS `easy_mail_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_mail_queue` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `journal_id` bigint DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_easy_mail_queue_on_journal_id` (`journal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_mail_queue`
--

LOCK TABLES `easy_mail_queue` WRITE;
/*!40000 ALTER TABLE `easy_mail_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_mail_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_meetings`
--

DROP TABLE IF EXISTS `easy_meetings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_meetings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  `all_day` tinyint(1) NOT NULL DEFAULT '0',
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `author_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  `easy_room_id` int DEFAULT NULL,
  `easy_is_repeating` tinyint(1) DEFAULT NULL,
  `easy_repeat_settings` longtext,
  `easy_next_start` date DEFAULT NULL,
  `place_name` varchar(255) DEFAULT NULL,
  `easy_repeat_parent_id` int DEFAULT NULL,
  `uid` varchar(255) NOT NULL,
  `priority` int NOT NULL DEFAULT '1',
  `privacy` int NOT NULL DEFAULT '0',
  `big_recurring` tinyint(1) DEFAULT '0',
  `easy_resource_dont_allocate` tinyint(1) DEFAULT '0',
  `mails` text,
  `emailed` tinyint(1) DEFAULT '0',
  `email_notifications` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_easy_meetings_on_author_id` (`author_id`),
  KEY `index_easy_meetings_on_easy_room_id` (`easy_room_id`),
  KEY `index_easy_meetings_on_easy_repeat_parent_id` (`easy_repeat_parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_meetings`
--

LOCK TABLES `easy_meetings` WRITE;
/*!40000 ALTER TABLE `easy_meetings` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_meetings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_oauth_access_grants`
--

DROP TABLE IF EXISTS `easy_oauth_access_grants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_oauth_access_grants` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `access_token` varchar(255) NOT NULL,
  `refresh_token` varchar(255) NOT NULL,
  `access_token_expires_at` datetime DEFAULT NULL,
  `user_id` int NOT NULL,
  `easy_oauth_client_id` int NOT NULL,
  `state` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_oauth_access_grants`
--

LOCK TABLES `easy_oauth_access_grants` WRITE;
/*!40000 ALTER TABLE `easy_oauth_access_grants` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_oauth_access_grants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_oauth_authentications`
--

DROP TABLE IF EXISTS `easy_oauth_authentications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_oauth_authentications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `provider` varchar(191) NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_easy_oauth_authentications_on_provider_and_uuid` (`provider`,`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_oauth_authentications`
--

LOCK TABLES `easy_oauth_authentications` WRITE;
/*!40000 ALTER TABLE `easy_oauth_authentications` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_oauth_authentications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_oauth_clients`
--

DROP TABLE IF EXISTS `easy_oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_oauth_clients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `app_id` varchar(191) NOT NULL,
  `app_secret` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_easy_oauth_clients_on_app_id` (`app_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_oauth_clients`
--

LOCK TABLES `easy_oauth_clients` WRITE;
/*!40000 ALTER TABLE `easy_oauth_clients` DISABLE KEYS */;
INSERT INTO `easy_oauth_clients` VALUES (1,'internal','GBQTgDv3ytAuLysUQ2D5bYD6eZagMGZO3c5HwFBm','A1bdJDEQRNsX5SiVUUAKGh07koK2tdG63jx0jvMx','2021-08-23 17:12:44','2021-08-23 17:12:44');
/*!40000 ALTER TABLE `easy_oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_org_chart_nodes`
--

DROP TABLE IF EXISTS `easy_org_chart_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_org_chart_nodes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `root_id` int DEFAULT NULL,
  `lft` int DEFAULT NULL,
  `rgt` int DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_easy_org_chart_nodes_on_user_id` (`user_id`),
  KEY `index_easy_org_chart_nodes_on_lft` (`lft`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_org_chart_nodes`
--

LOCK TABLES `easy_org_chart_nodes` WRITE;
/*!40000 ALTER TABLE `easy_org_chart_nodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_org_chart_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_page_available_modules`
--

DROP TABLE IF EXISTS `easy_page_available_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_page_available_modules` (
  `id` int NOT NULL AUTO_INCREMENT,
  `easy_pages_id` int DEFAULT NULL,
  `easy_page_modules_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_av_modules` (`easy_pages_id`,`easy_page_modules_id`)
) ENGINE=InnoDB AUTO_INCREMENT=267 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_page_available_modules`
--

LOCK TABLES `easy_page_available_modules` WRITE;
/*!40000 ALTER TABLE `easy_page_available_modules` DISABLE KEYS */;
INSERT INTO `easy_page_available_modules` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,16),(17,1,17),(18,1,18),(19,1,19),(20,1,20),(21,1,21),(22,1,22),(23,1,23),(24,1,24),(25,1,25),(26,1,26),(27,1,27),(28,1,28),(29,1,29),(30,1,30),(31,1,31),(32,1,32),(33,1,33),(34,1,34),(35,1,35),(36,1,36),(37,1,37),(38,1,38),(39,1,39),(40,1,40),(41,1,41),(42,2,1),(43,2,2),(44,2,3),(45,2,4),(46,2,5),(47,2,6),(48,2,7),(49,2,8),(50,2,9),(51,2,10),(52,2,11),(53,2,12),(54,2,13),(55,2,14),(56,2,15),(57,2,16),(58,2,17),(59,2,18),(60,2,19),(61,2,20),(62,2,21),(63,2,22),(64,2,23),(65,2,24),(66,2,25),(67,2,26),(68,2,27),(69,2,28),(70,2,29),(71,2,31),(87,2,32),(72,2,42),(73,2,43),(74,2,44),(75,2,45),(76,2,46),(77,2,47),(78,2,48),(79,2,49),(80,2,50),(81,2,51),(82,2,52),(83,2,53),(84,2,54),(85,2,55),(86,2,56),(88,3,1),(89,3,2),(90,3,3),(91,3,4),(92,3,5),(93,3,6),(94,3,7),(95,3,8),(96,3,9),(97,3,10),(98,3,11),(99,3,12),(100,3,13),(101,3,14),(102,3,15),(103,3,16),(104,3,17),(105,3,18),(106,3,19),(107,3,20),(108,3,21),(109,3,22),(110,3,23),(111,3,24),(112,3,25),(113,3,26),(114,3,27),(115,3,28),(116,3,29),(117,4,1),(118,4,2),(119,4,3),(120,4,4),(121,4,5),(122,4,6),(123,4,7),(124,4,8),(125,4,9),(126,4,10),(127,4,11),(128,4,12),(129,4,13),(130,4,14),(131,4,15),(132,4,16),(133,4,17),(134,4,18),(135,4,19),(136,4,20),(137,4,21),(138,4,22),(139,4,23),(140,4,24),(141,4,25),(142,4,26),(143,4,27),(144,4,28),(145,4,29),(146,4,33),(149,4,38),(150,4,39),(147,4,57),(148,4,58),(151,5,1),(152,5,2),(153,5,3),(154,5,4),(155,5,5),(156,5,6),(157,5,7),(158,5,8),(159,5,9),(160,5,10),(161,5,11),(162,5,12),(163,5,13),(164,5,14),(165,5,15),(166,5,16),(167,5,17),(168,5,18),(169,5,19),(170,5,20),(171,5,21),(172,5,22),(173,5,23),(174,5,24),(175,5,25),(176,5,26),(177,5,27),(178,5,28),(179,5,29),(180,6,1),(181,6,2),(182,6,3),(183,6,4),(184,6,5),(185,6,6),(186,6,7),(187,6,8),(188,6,9),(189,6,10),(190,6,11),(191,6,12),(192,6,13),(193,6,14),(194,6,15),(195,6,16),(196,6,17),(197,6,18),(198,6,19),(199,6,20),(200,6,21),(201,6,22),(202,6,23),(203,6,24),(204,6,25),(205,6,26),(206,6,27),(207,6,28),(208,6,29),(209,8,1),(210,8,2),(211,8,3),(212,8,4),(213,8,5),(214,8,6),(215,8,7),(216,8,8),(217,8,9),(218,8,10),(219,8,11),(220,8,12),(221,8,13),(222,8,14),(223,8,15),(224,8,16),(225,8,17),(226,8,18),(227,8,19),(228,8,20),(229,8,21),(230,8,22),(231,8,23),(232,8,24),(233,8,25),(234,8,26),(235,8,27),(236,8,28),(237,8,29),(238,9,1),(239,9,2),(240,9,3),(241,9,4),(242,9,5),(243,9,6),(244,9,7),(245,9,8),(246,9,9),(247,9,10),(248,9,11),(249,9,12),(250,9,13),(251,9,14),(252,9,15),(253,9,16),(254,9,17),(255,9,18),(256,9,19),(257,9,20),(258,9,21),(259,9,22),(260,9,23),(261,9,24),(262,9,25),(263,9,26),(264,9,27),(265,9,28),(266,9,29);
/*!40000 ALTER TABLE `easy_page_available_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_page_available_zones`
--

DROP TABLE IF EXISTS `easy_page_available_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_page_available_zones` (
  `id` int NOT NULL AUTO_INCREMENT,
  `easy_pages_id` int DEFAULT NULL,
  `easy_page_zones_id` int DEFAULT NULL,
  `position` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_av_zones` (`easy_pages_id`,`easy_page_zones_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_page_available_zones`
--

LOCK TABLES `easy_page_available_zones` WRITE;
/*!40000 ALTER TABLE `easy_page_available_zones` DISABLE KEYS */;
INSERT INTO `easy_page_available_zones` VALUES (1,1,2,1),(2,1,4,2),(3,1,6,3),(4,2,1,1),(5,2,4,2),(6,2,6,3),(7,2,7,4),(8,2,10,5),(9,3,2,1),(10,3,4,2),(11,3,6,3),(12,4,1,1),(13,4,4,2),(14,4,6,3),(15,4,7,4),(16,4,10,5),(17,5,1,1),(18,5,4,2),(19,5,6,3),(20,5,7,4),(21,5,10,5),(22,6,1,1),(23,6,4,2),(24,6,6,3),(25,6,7,4),(26,6,10,5),(30,8,1,1),(31,8,4,2),(32,8,6,3),(33,8,7,4),(34,8,10,5),(35,9,1,1),(36,9,4,2),(37,9,6,3),(38,9,7,4),(39,9,10,5);
/*!40000 ALTER TABLE `easy_page_available_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_page_modules`
--

DROP TABLE IF EXISTS `easy_page_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_page_modules` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_page_modules`
--

LOCK TABLES `easy_page_modules` WRITE;
/*!40000 ALTER TABLE `easy_page_modules` DISABLE KEYS */;
INSERT INTO `easy_page_modules` VALUES (1,'EpmActivityFeed'),(2,'EpmDocuments'),(3,'EpmIframe'),(4,'EpmGenericGauge'),(5,'EpmTrends'),(6,'EpmIssueQuery'),(7,'EpmIssueTimersQuery'),(8,'EpmIssuesCreateNew'),(9,'EpmNoticeboard'),(10,'EpmProjectsQuery'),(11,'EpmResourceAvailability'),(12,'EpmTagCloud'),(13,'EpmTranslatableNoticeboard'),(14,'EpmVersionQuery'),(15,'EpmLineChartQuery'),(16,'EpmBarChartQuery'),(17,'EpmPieChartQuery'),(18,'EpmListQuery'),(19,'EpmReportQuery'),(20,'EpmTimeSeriesChart'),(21,'EpmPersonalEasyAgileBoard'),(22,'EpmEasyKanbanBoard'),(23,'EpmEasySprintQuery'),(24,'EpmEasyGlobalGantt'),(25,'EpmOrgChart'),(26,'EpmEasyButtons'),(27,'EpmScheduler'),(28,'EpmCalculoid'),(29,'EpmResourceReport'),(30,'EpmNews'),(31,'EpmTimelogQuery'),(32,'EpmVueQuery'),(33,'EpmAttendance'),(34,'EpmIssuesReportedByMe'),(35,'EpmIssuesWatchedByMe'),(36,'EpmMyCalendar'),(37,'EpmSavedQueries'),(38,'EpmTimelogCalendar'),(39,'EpmTimelogSimple'),(40,'EpmDmsfLockedDocuments'),(41,'EpmDmsfOpenApprovals'),(42,'EpmGoogleMaps'),(43,'EpmProjectHistory'),(44,'EpmProjectInfo'),(45,'EpmProjectInformation'),(46,'EpmProjectIssues'),(47,'EpmProjectNews'),(48,'EpmProjectSidebarAllUsersQueries'),(49,'EpmProjectSidebarFamilyInfo'),(50,'EpmProjectSidebarProjectInfo'),(51,'EpmProjectSidebarProjectMembers'),(52,'EpmProjectSidebarSavedQueries'),(53,'EpmProjectTree'),(54,'EpmUsersQuery'),(55,'EpmProjectMeetings'),(56,'EpmEasyProjectGantt'),(57,'EpmAttendanceReport'),(58,'EpmAttendanceUserList');
/*!40000 ALTER TABLE `easy_page_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_page_permissions`
--

DROP TABLE IF EXISTS `easy_page_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_page_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `easy_page_id` int DEFAULT NULL,
  `entity_type` varchar(255) DEFAULT NULL,
  `entity_id` int DEFAULT NULL,
  `permission_type` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_easy_page_permissions_on_entity` (`entity_type`,`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_page_permissions`
--

LOCK TABLES `easy_page_permissions` WRITE;
/*!40000 ALTER TABLE `easy_page_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_page_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_page_template_modules`
--

DROP TABLE IF EXISTS `easy_page_template_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_page_template_modules` (
  `uuid` varchar(255) NOT NULL,
  `easy_page_templates_id` bigint NOT NULL,
  `easy_page_available_zones_id` bigint NOT NULL,
  `easy_page_available_modules_id` bigint NOT NULL,
  `entity_id` bigint DEFAULT NULL,
  `position` int DEFAULT NULL,
  `settings` longtext,
  `tab_id` bigint DEFAULT NULL,
  `tab` int NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `idx_easy_page_template_modules_template_id` (`easy_page_templates_id`),
  KEY `idx_easy_page_template_modules_available_zone_id` (`easy_page_available_zones_id`),
  KEY `idx_easy_page_template_modules_available_module_id` (`easy_page_available_modules_id`),
  KEY `idx_easy_page_template_modules_entity_id` (`entity_id`),
  KEY `idx_easy_page_template_modules_tab_id` (`tab_id`),
  KEY `idx_easy_page_template_modules_1` (`easy_page_templates_id`,`easy_page_available_zones_id`),
  KEY `idx_easy_page_template_modules_3` (`easy_page_templates_id`,`easy_page_available_zones_id`,`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_page_template_modules`
--

LOCK TABLES `easy_page_template_modules` WRITE;
/*!40000 ALTER TABLE `easy_page_template_modules` DISABLE KEYS */;
INSERT INTO `easy_page_template_modules` VALUES ('0195bc7a-a8ba-4ad1-b99c-a2a5b9c0eaf9',5,31,212,NULL,1,'{\"name\":\"Billable time fullfilment\",\"needle_easy_query_klass\":\"easy_time_entry_query\",\"needle_query_sumable_column\":\"hours\",\"action_range\":\"dynamic_range\",\"range_easy_query_klass\":\"easy_time_entry_query\",\"range_query_sumable_column\":\"hours\",\"tags\":{\"0\":{\"easy_query_settings\":{\"set_filter\":\"1\"},\"name\":\"\",\"plan\":\"\",\"needle_easy_query_settings\":{\"fields\":[\"spent_on\",\"easy_is_billable\"],\"operators\":{\"spent_on\":\"date_period_1\",\"easy_is_billable\":\"=\"},\"values\":{\"spent_on\":{\"period\":\"30_days\",\"period_days2\":\"\",\"period_days\":\"\",\"from\":\"2019-02-02\",\"to\":\"2019-03-04\",\"shift\":\"\"},\"easy_is_billable\":[\"1\"]},\"global_filters\":{\"1549266764826\":{\"filter\":\"spent_on\"},\"1549266768554\":{\"filter\":\"xproject_id\"},\"1549266770893\":{\"filter\":\"user_id\"}}},\"range_easy_query_settings\":{\"fields\":[\"spent_on\"],\"operators\":{\"spent_on\":\"date_period_1\"},\"values\":{\"spent_on\":{\"period\":\"30_days\",\"period_days2\":\"\",\"period_days\":\"\",\"from\":\"2019-02-02\",\"to\":\"2019-03-04\",\"shift\":\"\"}},\"global_filters\":{\"1549266764826\":{\"filter\":\"spent_on\"},\"1549266768554\":{\"filter\":\"xproject_id\"},\"1549266770893\":{\"filter\":\"user_id\"}}},\"_name\":\"\"},\"1\":{\"easy_query_settings\":{\"set_filter\":\"1\"},\"name\":\"\",\"plan\":\"\",\"needle_easy_query_settings\":{\"global_filters\":{\"1549266764826\":{\"filter\":\"\"},\"1549266768554\":{\"filter\":\"\"},\"1549266770893\":{\"filter\":\"\"}}},\"range_easy_query_settings\":{\"global_filters\":{\"1549266764826\":{\"filter\":\"\"},\"1549266768554\":{\"filter\":\"\"},\"1549266770893\":{\"filter\":\"\"}}},\"_name\":\"\"},\"2\":{\"easy_query_settings\":{\"set_filter\":\"1\"},\"name\":\"\",\"plan\":\"\",\"needle_easy_query_settings\":{\"global_filters\":{\"1549266764826\":{\"filter\":\"\"},\"1549266768554\":{\"filter\":\"\"},\"1549266770893\":{\"filter\":\"\"}}},\"range_easy_query_settings\":{\"global_filters\":{\"1549266764826\":{\"filter\":\"\"},\"1549266768554\":{\"filter\":\"\"},\"1549266770893\":{\"filter\":\"\"}}},\"_name\":\"\"}},\"_name\":\"Billable time fullfilment\"}',4,1,'2021-08-23 17:12:57','2021-08-23 17:12:57'),('09069b2c-f727-405e-8f56-083903596631',6,35,242,NULL,4,'{\"easy_query_type\":\"EasyIssueQuery\",\"use_query_to_compare\":\"false\",\"name\":\"Closed tasks\",\"description\":\"in milesones\",\"easy_icon\":\"\",\"color\":\"palette-12\",\"type\":\"count\",\"column_to_sum\":\"estimated_hours\",\"query\":{\"set_filter\":\"1\",\"query_type\":\"2\",\"query_name\":\"name of filter\",\"row_limit\":\"10\",\"fields\":[\"status_id\",\"fixed_version_id\"],\"operators\":{\"status_id\":\"c\",\"fixed_version_id\":\"*\"},\"values\":{\"status_id\":[\"\"],\"fixed_version_id\":[\"5\"]},\"global_filters\":{\"1549057302228\":{\"filter\":\"project_id\"},\"1549057309054\":{\"filter\":\"fixed_version_id\"},\"1549057314984\":{\"filter\":\"assigned_to_id\"}}},\"outputs\":[\"list\"],\"sort_criteria\":{\"0\":[\"priority\",\"desc\"],\"1\":[\"due_date\",\"asc\"],\"2\":[\"\",\"\"]},\"column_names\":[\"project\",\"subject\",\"assigned_to\",\"status\",\"due_date\",\"done_ratio\"],\"group_by\":[\"\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"0\",\"show_avatars\":\"0\",\"daily_snapshot\":\"0\",\"count_only_working_days\":\"0\",\"easy_query_snapshot\":{\"execute_as\":\"author\",\"execute_as_user_id\":\"\",\"period_options\":{\"period\":\"every_day\",\"time\":\"cron\",\"hours\":\"00:00\"}},\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"assigned_to\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"cf_414\",\"y_label\":\"\",\"secondary_axis_y_column\":\"\",\"period_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"long_tail\":\"0\",\"bar_reverse_order\":\"0\",\"bar_sort_by_axis_x\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"target\":\"current\",\"url\":\"?t=1\"}},\"period_zoom\":\"month\",\"settings\":{\"period\":\"month\",\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\"],\"kanban\":{\"kanban_group\":\"\",\"kanban_group_trackers\":[\"7\",\"37\",\"8\",\"34\",\"49\",\"35\",\"6\",\"32\",\"31\",\"13\",\"26\",\"38\",\"39\",\"40\",\"41\",\"42\",\"43\",\"44\",\"45\",\"46\",\"47\",\"48\"],\"kanban_group_statuses\":[\"1\",\"27\",\"17\",\"19\",\"26\",\"15\",\"25\",\"14\",\"24\",\"21\",\"13\",\"3\",\"5\",\"6\",\"20\",\"22\",\"23\"],\"main_attribute\":\"\",\"summable_column\":\"\",\"avatar_attribute\":\"\",\"date_details\":[\"\"],\"icon_details\":[\"\"],\"default_swimlane\":\"\"}},\"compere_to_previous_period\":\"0\",\"operator\":\">\",\"show_as_percentage\":\"0\",\"easy_query_type_to_compare\":\"EasyIssueQuery\",\"type_to_compare\":\"sum\",\"column_to_sum_to_compare\":\"estimated_hours\",\"query_to_compare\":{\"global_filters\":{\"1549057302228\":{\"filter\":\"\"},\"1549057309054\":{\"filter\":\"\"},\"1549057314984\":{\"filter\":\"\"}}},\"_name\":\"Closed tasks\",\"_description\":\"in milesones\"}',5,1,'2021-08-23 17:12:58','2021-08-23 17:12:58'),('101764df-3f32-4cc3-954a-25a440fee7bf',2,4,76,NULL,4,NULL,NULL,1,'2021-08-23 17:12:56','2021-08-23 17:12:56'),('132c9ca6-053a-43e2-918e-6af23e4adbe6',6,36,254,NULL,1,'{\"easy_query_type\":\"EasyIssueQuery\",\"query_name\":\"Estimated time by open milestones\",\"set_filter\":\"1\",\"query_type\":\"2\",\"outputs\":[\"chart\"],\"row_limit\":\"10\",\"fields\":[\"fixed_version_id\",\"status_id\"],\"operators\":{\"fixed_version_id\":\"o\",\"status_id\":\"o\"},\"values\":{\"fixed_version_id\":[\"5\"],\"status_id\":[\"\"]},\"global_filters\":{\"1549057302228\":{\"filter\":\"project_id\"},\"1549057309054\":{\"filter\":\"fixed_version_id\"},\"1549057314984\":{\"filter\":\"assigned_to_id\"}},\"sort_criteria\":{\"0\":[\"priority\",\"desc\"],\"1\":[\"due_date\",\"asc\"],\"2\":[\"parent\",\"asc\"]},\"column_names\":[\"subject\",\"project\",\"status\",\"assigned_to\",\"due_date\"],\"group_by\":[\"\"],\"show_sum_row\":\"1\",\"load_groups_opened\":\"0\",\"show_avatars\":\"1\",\"daily_snapshot\":\"0\",\"count_only_working_days\":\"0\",\"easy_query_snapshot\":{\"execute_as\":\"author\",\"execute_as_user_id\":\"\",\"period_options\":{\"period\":\"every_day\",\"time\":\"cron\",\"hours\":\"00:00\"}},\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"fixed_version\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"estimated_hours\",\"y_label\":\"\",\"secondary_axis_y_column\":\"\",\"period_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"long_tail\":\"0\",\"bar_reverse_order\":\"0\",\"bar_sort_by_axis_x\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"target\":\"modal\",\"url\":\"/easy_versions/overview?t=2&utm_campaign=menu&utm_content=top_menu_categories&utm_term=easy_versions&global_filter_1549057302228=%25global_filter_1549057302228%25&global_filter_1549057309054=%25raw_name%25&global_filter_1549057314984=%25global_filter_1549057314984%25\"},\"_y_label\":\"\"},\"period_zoom\":\"month\",\"settings\":{\"period\":\"month\",\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\",\"\"],\"kanban\":{\"kanban_group\":\"\",\"kanban_group_trackers\":[\"6\"],\"kanban_group_statuses\":[\"6\",\"3\"],\"main_attribute\":\"\",\"summable_column\":\"\",\"avatar_attribute\":\"\",\"date_details\":[\"\"],\"icon_details\":[\"\"],\"default_swimlane\":\"\"}},\"cache_on\":\"\",\"cache_for_days\":\"\",\"_query_name\":\"Estimated time by open milestones\"}',5,1,'2021-08-23 17:12:58','2021-08-23 17:12:58'),('15d203b3-5a45-455a-a2b4-c9591f77c5e4',2,8,81,NULL,3,NULL,NULL,1,'2021-08-23 17:12:56','2021-08-23 17:12:56'),('19065f81-8cb1-4cfe-9377-a06caad23751',7,22,184,NULL,7,'{\"easy_query_type\":\"EasyIssueQuery\",\"use_query_to_compare\":\"false\",\"name\":\"Remaing time - Open Issues \",\"description\":\"Remaining time form Open Issues \",\"easy_icon\":\"icon-slab\",\"color\":\"palette-1\",\"type\":\"sum\",\"column_to_sum\":\"remaining_timeentries\",\"query\":{\"set_filter\":\"1\",\"query_type\":\"2\",\"query_name\":\"name of filter\",\"row_limit\":\"10\",\"fields\":[\"status_id\",\"easy_sprint_id\"],\"operators\":{\"status_id\":\"o\",\"easy_sprint_id\":\"*\"},\"values\":{\"status_id\":[\"\"],\"easy_sprint_id\":[\"\"]}},\"outputs\":[\"list\"],\"sort_criteria\":{\"0\":[\"\",\"\"],\"1\":[\"\",\"\"],\"2\":[\"\",\"\"]},\"column_names\":[\"subject\",\"status\",\"assigned_to\"],\"group_by\":[\"\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"0\",\"show_avatars\":\"1\",\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"assigned_to\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"estimated_hours\",\"y_label\":\"\",\"secondary_axis_y_column\":\"\",\"period_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"bar_reverse_order\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"url\":\"\",\"target\":\"current\"}},\"period_zoom\":\"month\",\"settings\":{\"period\":\"month\",\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\"],\"kanban\":{\"kanban_group\":\"\",\"kanban_group_trackers\":[\"1\",\"3\",\"4\",\"5\",\"2\"],\"kanban_group_statuses\":[\"2\",\"6\",\"3\",\"9\",\"10\",\"8\",\"7\",\"4\"],\"main_attribute\":\"\",\"summable_column\":\"\",\"avatar_attribute\":\"\",\"date_details\":[\"\"],\"icon_details\":[\"\"],\"default_swimlane\":\"\"}},\"compere_to_previous_period\":\"0\",\"operator\":\">\",\"easy_query_type_to_compare\":\"EasyIssueQuery\",\"type_to_compare\":\"sum\",\"column_to_sum_to_compare\":\"estimated_hours\"}',7,1,'2018-03-09 17:39:18','2018-03-09 17:39:18'),('19368351-08b4-4742-ac5b-4976abe4e8a0',2,4,77,NULL,3,NULL,NULL,1,'2021-08-23 17:12:56','2021-08-23 17:12:56'),('2d5687c4-2d26-4939-8148-033a5de2f05b',5,32,224,NULL,1,'{\"easy_query_type\":\"EasyTimeEntryQuery\",\"query_name\":\"Spent time by activity\",\"set_filter\":\"1\",\"query_type\":\"2\",\"outputs\":[\"chart\"],\"row_limit\":\"10\",\"fields\":[\"\"],\"operators\":{\"spent_on\":\"date_period_1\"},\"values\":{\"spent_on\":{\"period\":\"current_month\",\"period_days2\":\"\",\"period_days\":\"\",\"from\":\"\",\"to\":\"\",\"shift\":\"\"}},\"global_filters\":{\"1549266764826\":{\"filter\":\"spent_on\"},\"1549266768554\":{\"filter\":\"xproject_id\"},\"1549266770893\":{\"filter\":\"user_id\"}},\"sort_criteria\":{\"0\":[\"spent_on\",\"desc\"],\"1\":[\"\",\"\"],\"2\":[\"\",\"\"]},\"column_names\":[\"project\",\"issue\",\"spent_on\",\"user\",\"comments\",\"hours\",\"easy_is_billable\"],\"group_by\":[\"\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"0\",\"show_avatars\":\"0\",\"daily_snapshot\":\"0\",\"count_only_working_days\":\"0\",\"easy_query_snapshot\":{\"execute_as\":\"author\",\"execute_as_user_id\":\"\",\"period_options\":{\"period\":\"every_day\",\"time\":\"cron\",\"hours\":\"00:00\"}},\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"activity\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"hours\",\"y_label\":\"\",\"secondary_axis_y_column\":\"\",\"period_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"long_tail\":\"0\",\"bar_reverse_order\":\"0\",\"bar_sort_by_axis_x\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"target\":\"current\",\"url\":\"?t=1&global_filter_1549266764826=30_days\"},\"additional_queries\":{\"0\":{\"easy_query_type\":\"\"}},\"_y_label\":\"\"},\"period_zoom\":\"month\",\"settings\":{\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\",\"\"]},\"cache_on\":\"\",\"cache_for_days\":\"\",\"_query_name\":\"Spent time by activity\"}',4,1,'2021-08-23 17:12:57','2021-08-23 17:12:57'),('312c5ddf-42d4-43b1-8730-6e217bab049d',7,22,202,NULL,5,'{\"set_filter\":\"1\",\"query_type\":\"2\",\"query_name\":\"Open sprints by project\'s\",\"outputs\":[\"list\"],\"row_limit\":\"1000\",\"fields\":[\"closed\"],\"operators\":{\"closed\":\"=\"},\"values\":{\"closed\":[\"0\"]},\"sort_criteria\":{\"0\":[\"\",\"\"],\"1\":[\"\",\"\"],\"2\":[\"\",\"\"]},\"column_names\":[\"name\",\"version\",\"goal\",\"due_date\",\"capacity\",\"story_points_closed_false\",\"story_points_closed_true\"],\"group_by\":[\"project\"],\"show_sum_row\":\"1\",\"load_groups_opened\":\"0\",\"show_avatars\":\"0\",\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"capacity\",\"y_label\":\"\",\"secondary_axis_y_column\":\"\",\"period_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"bar_reverse_order\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"url\":\"\",\"target\":\"current\"}},\"period_zoom\":\"month\",\"settings\":{\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\"]}}',7,1,'2018-03-09 17:39:18','2018-03-09 17:39:18'),('31c775c0-9867-4fce-9e2d-16029b22e5be',7,22,184,NULL,2,'{\"easy_query_type\":\"EasySprintQuery\",\"use_query_to_compare\":\"false\",\"name\":\"Open Story Points\",\"description\":\"Trends - Tasks\",\"easy_icon\":\"icon-list\",\"color\":\"palette-7\",\"outputs\":[\"list\"],\"sort_criteria\":{\"0\":[\"\",\"\"],\"1\":[\"\",\"\"],\"2\":[\"\",\"\"]},\"column_names\":[\"name\",\"project\",\"due_date\"],\"group_by\":[\"\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"0\",\"show_avatars\":\"0\",\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"due_date\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"capacity\",\"y_label\":\"\",\"secondary_axis_y_column\":\"\",\"period_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"bar_reverse_order\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"url\":\"\",\"target\":\"current\"}},\"period_zoom\":\"month\",\"settings\":{\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\"]},\"compere_to_previous_period\":\"0\",\"operator\":\">\",\"easy_query_type_to_compare\":\"EasyIssueQuery\",\"type_to_compare\":\"sum\",\"column_to_sum_to_compare\":\"estimated_hours\",\"type\":\"sum\",\"column_to_sum\":\"story_points_closed_false\",\"query\":{\"set_filter\":\"1\",\"fields\":[\"\",\"closed\"],\"query_type\":\"2\",\"query_name\":\"name of filter\",\"row_limit\":\"10\",\"operators\":{\"closed\":\"=\"},\"values\":{\"closed\":[\"0\"]}}}',7,1,'2018-03-09 17:39:18','2018-03-09 17:39:18'),('33342ee1-12f6-4d2d-b37f-22edd2e153fc',3,9,98,NULL,1,'{\"name\":\"Resource name\",\"day_start_time\":\"9\",\"day_end_time\":\"20\"}',NULL,1,'2021-08-23 17:12:56','2021-08-23 17:12:56'),('35a102ad-bfdd-4d5a-9444-ebfd6c44ed93',2,8,79,NULL,2,NULL,NULL,1,'2021-08-23 17:12:56','2021-08-23 17:12:56'),('3fd9fe3c-58f5-4b78-88b8-d9a52e096205',4,12,146,NULL,1,'{\"row_limit\":\"10\"}',2,1,'2021-08-23 17:12:56','2021-08-23 17:12:56'),('42a2b902-3322-43d0-ba2f-595c1abb2667',2,8,80,NULL,1,NULL,NULL,1,'2021-08-23 17:12:56','2021-08-23 17:12:56'),('47643a59-1349-40ab-9ef5-f63516d12213',6,35,242,NULL,2,'{\"easy_query_type\":\"EasyIssueQuery\",\"use_query_to_compare\":\"false\",\"name\":\"Remaining time\",\"description\":\"open tasks\",\"easy_icon\":\"\",\"color\":\"palette-35\",\"type\":\"sum\",\"column_to_sum\":\"remaining_timeentries\",\"query\":{\"set_filter\":\"1\",\"query_type\":\"2\",\"query_name\":\"name of filter\",\"row_limit\":\"10\",\"fields\":[\"status_id\"],\"operators\":{\"status_id\":\"o\"},\"values\":{\"status_id\":[\"1\"]},\"global_filters\":{\"1549057302228\":{\"filter\":\"project_id\"},\"1549057309054\":{\"filter\":\"fixed_version_id\"},\"1549057314984\":{\"filter\":\"assigned_to_id\"}}},\"outputs\":[\"list\"],\"sort_criteria\":{\"0\":[\"priority\",\"desc\"],\"1\":[\"due_date\",\"asc\"],\"2\":[\"\",\"\"]},\"column_names\":[\"project\",\"subject\",\"assigned_to\",\"status\",\"due_date\",\"done_ratio\"],\"group_by\":[\"\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"0\",\"show_avatars\":\"0\",\"daily_snapshot\":\"0\",\"count_only_working_days\":\"0\",\"easy_query_snapshot\":{\"execute_as\":\"author\",\"execute_as_user_id\":\"\",\"period_options\":{\"period\":\"every_day\",\"time\":\"cron\",\"hours\":\"00:00\"}},\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"assigned_to\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"cf_414\",\"y_label\":\"\",\"secondary_axis_y_column\":\"\",\"period_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"long_tail\":\"0\",\"bar_reverse_order\":\"0\",\"bar_sort_by_axis_x\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"target\":\"current\",\"url\":\"?t=2\"}},\"period_zoom\":\"month\",\"settings\":{\"period\":\"month\",\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\"],\"kanban\":{\"kanban_group\":\"\",\"kanban_group_trackers\":[\"7\",\"37\",\"8\",\"34\",\"49\",\"35\",\"6\",\"32\",\"31\",\"13\",\"26\",\"38\",\"39\",\"40\",\"41\",\"42\",\"43\",\"44\",\"45\",\"46\",\"47\",\"48\"],\"kanban_group_statuses\":[\"1\",\"27\",\"17\",\"19\",\"26\",\"15\",\"25\",\"14\",\"24\",\"21\",\"13\",\"3\",\"5\",\"6\",\"20\",\"22\",\"23\"],\"main_attribute\":\"\",\"summable_column\":\"\",\"avatar_attribute\":\"\",\"date_details\":[\"\"],\"icon_details\":[\"\"],\"default_swimlane\":\"\"}},\"compere_to_previous_period\":\"0\",\"operator\":\">\",\"show_as_percentage\":\"0\",\"easy_query_type_to_compare\":\"EasyVersionQuery\",\"query_to_compare\":{\"global_filters\":{\"1549057302228\":{\"filter\":\"\"},\"1549057314984\":{\"filter\":\"\"}}},\"_name\":\"Remaining time\",\"_description\":\"open tasks\"}',6,1,'2021-08-23 17:12:58','2021-08-23 17:12:58'),('4847dc13-4a46-444f-88cd-45b1a8a7bb55',6,37,254,NULL,1,'{\"easy_query_type\":\"EasyIssueQuery\",\"query_name\":\"Tasks by assignee\",\"set_filter\":\"1\",\"query_type\":\"2\",\"outputs\":[\"chart\"],\"row_limit\":\"10\",\"fields\":[\"status_id\",\"fixed_version_id\"],\"operators\":{\"status_id\":\"o\",\"fixed_version_id\":\"o\"},\"values\":{\"status_id\":[\"1\"],\"fixed_version_id\":[\"\"]},\"global_filters\":{\"1549057302228\":{\"filter\":\"project_id\"},\"1549057309054\":{\"filter\":\"fixed_version_id\"},\"1549057314984\":{\"filter\":\"assigned_to_id\"}},\"sort_criteria\":{\"0\":[\"priority\",\"desc\"],\"1\":[\"due_date\",\"asc\"],\"2\":[\"\",\"\"]},\"column_names\":[\"project\",\"activity\"],\"group_by\":[\"\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"0\",\"show_avatars\":\"0\",\"daily_snapshot\":\"0\",\"count_only_working_days\":\"0\",\"easy_query_snapshot\":{\"execute_as\":\"author\",\"execute_as_user_id\":\"\",\"period_options\":{\"period\":\"every_day\",\"time\":\"cron\",\"hours\":\"00:00\"}},\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"assigned_to\",\"axis_y_type\":\"count\",\"axis_y_column\":\"estimated_hours\",\"y_label\":\"\",\"secondary_axis_y_column\":\"\",\"period_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"long_tail\":\"0\",\"bar_reverse_order\":\"0\",\"bar_sort_by_axis_x\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"target\":\"current\",\"url\":\"?t=1&global_filter_1549057302228=2799&utm_campaign=menu&utm_content=top_menu_categories&utm_term=easy_versions\"},\"_y_label\":\"\"},\"period_zoom\":\"month\",\"settings\":{\"period\":\"month\",\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\",\"\"],\"kanban\":{\"kanban_group\":\"\",\"kanban_group_trackers\":[\"7\",\"37\",\"8\",\"34\",\"49\",\"35\",\"6\",\"32\",\"31\",\"13\",\"26\",\"38\",\"39\",\"40\",\"41\",\"42\",\"43\",\"44\",\"45\",\"46\",\"47\",\"48\"],\"kanban_group_statuses\":[\"1\",\"27\",\"17\",\"19\",\"26\",\"15\",\"25\",\"14\",\"24\",\"21\",\"13\",\"3\",\"5\",\"6\",\"20\",\"22\",\"23\"],\"main_attribute\":\"\",\"summable_column\":\"\",\"avatar_attribute\":\"\",\"date_details\":[\"\"],\"icon_details\":[\"\"],\"default_swimlane\":\"\"}},\"cache_on\":\"\",\"cache_for_days\":\"\",\"_query_name\":\"Tasks by assignee\"}',5,1,'2021-08-23 17:12:58','2021-08-23 17:12:58'),('529272c7-7d55-4923-8c8d-0acbd842e2f2',5,30,226,NULL,5,'{\"easy_query_type\":\"EasyTimeEntryQuery\",\"set_filter\":\"1\",\"query_type\":\"2\",\"query_name\":\"Spent time by month\",\"outputs\":[\"list\"],\"row_limit\":\"50\",\"operators\":{\"spent_on\":\"date_period_1\"},\"values\":{\"spent_on\":{\"period\":\"current_month\",\"period_days2\":\"\",\"period_days\":\"\",\"from\":\"\",\"to\":\"\",\"shift\":\"\"}},\"global_filters\":{\"1549266764826\":{\"filter\":\"spent_on\"},\"1549266768554\":{\"filter\":\"xproject_id\"},\"1549266770893\":{\"filter\":\"user_id\"}},\"sort_criteria\":{\"0\":[\"spent_on\",\"desc\"],\"1\":[\"\",\"\"],\"2\":[\"\",\"\"]},\"column_names\":[\"project\",\"issue\",\"spent_on\",\"user\",\"comments\",\"hours\",\"easy_is_billable\"],\"group_by\":[\"spent_on\"],\"show_sum_row\":\"1\",\"load_groups_opened\":\"0\",\"show_avatars\":\"0\",\"daily_snapshot\":\"0\",\"count_only_working_days\":\"0\",\"easy_query_snapshot\":{\"execute_as\":\"author\",\"execute_as_user_id\":\"\",\"period_options\":{\"period\":\"every_day\",\"time\":\"cron\",\"hours\":\"00:00\"}},\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"activity\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"easy_divided_hours\",\"y_label\":\"\",\"secondary_axis_y_column\":\"\",\"period_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"long_tail\":\"0\",\"bar_reverse_order\":\"0\",\"bar_sort_by_axis_x\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"target\":\"current\",\"url\":\"?t=1\"}},\"period_zoom\":\"month\",\"settings\":{\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\"]},\"_query_name\":\"Spent time by month\"}',4,1,'2021-08-23 17:12:57','2021-08-23 17:12:57'),('5bec3da8-0e85-4dc6-a1bd-9141eba50387',6,35,242,NULL,2,'{\"easy_query_type\":\"EasyVersionQuery\",\"use_query_to_compare\":\"false\",\"name\":\"Closed Milestones\",\"description\":\"Number\",\"easy_icon\":\"\",\"color\":\"palette-35\",\"query\":{\"set_filter\":\"1\",\"query_type\":\"2\",\"query_name\":\"name of filter\",\"row_limit\":\"10\",\"fields\":[\"status\"],\"operators\":{\"status\":\"=\"},\"values\":{\"status\":[\"closed\"]},\"global_filters\":{\"1549057302228\":{\"filter\":\"project_id\"},\"1549057314984\":{\"filter\":\"\"}}},\"outputs\":[\"list\"],\"sort_criteria\":{\"0\":[\"project\",\"asc\"],\"1\":[\"name\",\"asc\"],\"2\":[\"\",\"\"]},\"column_names\":[\"project\",\"name\",\"effective_date\",\"description\",\"status\",\"sharing\"],\"group_by\":[\"\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"1\",\"show_avatars\":\"0\",\"daily_snapshot\":\"0\",\"count_only_working_days\":\"0\",\"easy_query_snapshot\":{\"execute_as\":\"author\",\"execute_as_user_id\":\"\",\"period_options\":{\"period\":\"every_day\",\"time\":\"cron\",\"hours\":\"00:00\"}},\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"created_on\",\"y_label\":\"\",\"period_column\":\"\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"target\":\"current\",\"url\":\"?t=1\"}},\"period_zoom\":\"month\",\"compere_to_previous_period\":\"0\",\"operator\":\">\",\"show_as_percentage\":\"0\",\"easy_query_type_to_compare\":\"EasyVersionQuery\",\"query_to_compare\":{\"global_filters\":{\"1549057302228\":{\"filter\":\"\"},\"1549057314984\":{\"filter\":\"\"}}},\"_name\":\"Closed Milestones\",\"_description\":\"Number\"}',5,1,'2021-08-23 17:12:58','2021-08-23 17:12:58'),('6061fe0e-e08c-4bb1-bb80-32ba5d4fbfb2',2,4,74,NULL,2,'{\"action\":\"description\"}',NULL,1,'2021-08-23 17:12:56','2021-08-23 17:12:56'),('60c5751f-b2e3-464d-be45-df5b8dafb746',6,35,242,NULL,1,'{\"easy_query_type\":\"EasyIssueQuery\",\"use_query_to_compare\":\"false\",\"name\":\"Estimated time\",\"description\":\"open tasks\",\"easy_icon\":\"\",\"color\":\"palette-4\",\"type\":\"sum\",\"column_to_sum\":\"estimated_hours\",\"query\":{\"set_filter\":\"1\",\"query_type\":\"2\",\"query_name\":\"name of filter\",\"row_limit\":\"10\",\"fields\":[\"status_id\"],\"operators\":{\"status_id\":\"o\",\"start_date\":\"date_period_1\"},\"values\":{\"status_id\":[\"1\"],\"start_date\":{\"period\":\"all\",\"period_days2\":\"\",\"period_days\":\"\",\"from\":\"\",\"to\":\"\",\"shift\":\"\"}},\"global_filters\":{\"1549057302228\":{\"filter\":\"project_id\"},\"1549057309054\":{\"filter\":\"fixed_version_id\"},\"1549057314984\":{\"filter\":\"assigned_to_id\"}}},\"outputs\":[\"list\"],\"sort_criteria\":{\"0\":[\"priority\",\"desc\"],\"1\":[\"due_date\",\"asc\"],\"2\":[\"\",\"\"]},\"column_names\":[\"project\",\"subject\",\"assigned_to\",\"status\",\"due_date\",\"done_ratio\"],\"group_by\":[\"\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"0\",\"show_avatars\":\"0\",\"daily_snapshot\":\"0\",\"count_only_working_days\":\"0\",\"easy_query_snapshot\":{\"execute_as\":\"author\",\"execute_as_user_id\":\"\",\"period_options\":{\"period\":\"every_day\",\"time\":\"cron\",\"hours\":\"00:00\"}},\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"assigned_to\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"cf_414\",\"y_label\":\"\",\"secondary_axis_y_column\":\"\",\"period_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"long_tail\":\"0\",\"bar_reverse_order\":\"0\",\"bar_sort_by_axis_x\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"target\":\"current\",\"url\":\"?t=2\"}},\"period_zoom\":\"month\",\"settings\":{\"period\":\"month\",\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\"],\"kanban\":{\"kanban_group\":\"\",\"kanban_group_trackers\":[\"7\",\"37\",\"8\",\"34\",\"49\",\"35\",\"6\",\"32\",\"31\",\"13\",\"26\",\"38\",\"39\",\"40\",\"41\",\"42\",\"43\",\"44\",\"45\",\"46\",\"47\",\"48\"],\"kanban_group_statuses\":[\"1\",\"27\",\"17\",\"19\",\"26\",\"15\",\"25\",\"14\",\"24\",\"21\",\"13\",\"3\",\"5\",\"6\",\"20\",\"22\",\"23\"],\"main_attribute\":\"\",\"summable_column\":\"\",\"avatar_attribute\":\"\",\"date_details\":[\"\"],\"icon_details\":[\"\"],\"default_swimlane\":\"\"}},\"compere_to_previous_period\":\"0\",\"operator\":\">\",\"show_as_percentage\":\"0\",\"easy_query_type_to_compare\":\"EasyVersionQuery\",\"query_to_compare\":{\"global_filters\":{\"1549057302228\":{\"filter\":\"\"},\"1549057314984\":{\"filter\":\"\"}}},\"_name\":\"Estimated time\",\"_description\":\"open tasks\"}',6,1,'2021-08-23 17:12:58','2021-08-23 17:12:58'),('6770d27b-a5a3-4e57-901d-e132f0c6a029',7,22,195,NULL,6,'{\"easy_query_type\":\"EasyIssueQuery\",\"query_name\":\"Estimated vs. Spent time - open sprints\",\"set_filter\":\"1\",\"query_type\":\"2\",\"outputs\":[\"chart\"],\"row_limit\":\"10\",\"fields\":[\"easy_sprint_id\",\"status_id\"],\"operators\":{\"easy_sprint_id\":\"*\",\"status_id\":\"*\"},\"values\":{\"easy_sprint_id\":[\"\"],\"status_id\":[\"\"]},\"sort_criteria\":{\"0\":[\"\",\"\"],\"1\":[\"\",\"\"],\"2\":[\"\",\"\"]},\"column_names\":[\"project\",\"subject\",\"assigned_to\",\"due_date\",\"status\",\"done_ratio\",\"total_estimated_hours\",\"total_spent_estimated_timeentries\"],\"group_by\":[\"\"],\"show_sum_row\":\"1\",\"load_groups_opened\":\"1\",\"show_avatars\":\"1\",\"chart_settings\":{\"primary_renderer\":\"bar\",\"axis_x_column\":\"issue_easy_sprint_relation.easy_sprint\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"estimated_hours\",\"y_label\":\"Estimated / Spent time\",\"secondary_axis_y_column\":\"spent_hours\",\"period_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"bar_reverse_order\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"url\":\"\",\"target\":\"current\"},\"additional_queries\":{\"0\":{\"easy_query_type\":\"\"}}},\"period_zoom\":\"month\",\"settings\":{\"period\":\"month\",\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\",\"\"],\"kanban\":{\"kanban_group\":\"\",\"kanban_group_trackers\":[\"1\",\"3\",\"5\",\"4\"],\"kanban_group_statuses\":[\"9\",\"10\",\"2\",\"3\",\"4\",\"6\",\"7\",\"8\"],\"main_attribute\":\"\",\"summable_column\":\"\",\"avatar_attribute\":\"\",\"date_details\":[\"\"],\"icon_details\":[\"\"],\"default_swimlane\":\"\"}},\"cache_on\":\"\",\"cache_for_days\":\"\"}',7,1,'2018-03-09 17:39:18','2018-03-09 17:39:18'),('6c160427-0f8e-4316-ab24-e4bca4e3faa8',6,35,242,NULL,3,'{\"easy_query_type\":\"EasyIssueQuery\",\"use_query_to_compare\":\"false\",\"name\":\"Open tasks\",\"description\":\"in milestones\",\"easy_icon\":\"\",\"color\":\"palette-1\",\"type\":\"count\",\"column_to_sum\":\"estimated_hours\",\"query\":{\"set_filter\":\"1\",\"query_type\":\"2\",\"query_name\":\"name of filter\",\"row_limit\":\"10\",\"fields\":[\"status_id\",\"fixed_version_id\"],\"operators\":{\"status_id\":\"o\",\"fixed_version_id\":\"*\"},\"values\":{\"status_id\":[\"\"],\"fixed_version_id\":[\"5\"]},\"global_filters\":{\"1549057302228\":{\"filter\":\"project_id\"},\"1549057309054\":{\"filter\":\"fixed_version_id\"},\"1549057314984\":{\"filter\":\"assigned_to_id\"}}},\"outputs\":[\"list\"],\"sort_criteria\":{\"0\":[\"priority\",\"desc\"],\"1\":[\"due_date\",\"asc\"],\"2\":[\"\",\"\"]},\"column_names\":[\"project\",\"subject\",\"assigned_to\",\"status\",\"due_date\",\"done_ratio\"],\"group_by\":[\"\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"0\",\"show_avatars\":\"0\",\"daily_snapshot\":\"0\",\"count_only_working_days\":\"0\",\"easy_query_snapshot\":{\"execute_as\":\"author\",\"execute_as_user_id\":\"\",\"period_options\":{\"period\":\"every_day\",\"time\":\"cron\",\"hours\":\"00:00\"}},\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"assigned_to\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"cf_414\",\"y_label\":\"\",\"secondary_axis_y_column\":\"\",\"period_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"long_tail\":\"0\",\"bar_reverse_order\":\"0\",\"bar_sort_by_axis_x\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"target\":\"current\",\"url\":\"?t=1\"}},\"period_zoom\":\"month\",\"settings\":{\"period\":\"month\",\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\"],\"kanban\":{\"kanban_group\":\"\",\"kanban_group_trackers\":[\"7\",\"37\",\"8\",\"34\",\"49\",\"35\",\"6\",\"32\",\"31\",\"13\",\"26\",\"38\",\"39\",\"40\",\"41\",\"42\",\"43\",\"44\",\"45\",\"46\",\"47\",\"48\"],\"kanban_group_statuses\":[\"1\",\"27\",\"17\",\"19\",\"26\",\"15\",\"25\",\"14\",\"24\",\"21\",\"13\",\"3\",\"5\",\"6\",\"20\",\"22\",\"23\"],\"main_attribute\":\"\",\"summable_column\":\"\",\"avatar_attribute\":\"\",\"date_details\":[\"\"],\"icon_details\":[\"\"],\"default_swimlane\":\"\"}},\"compere_to_previous_period\":\"0\",\"operator\":\">\",\"show_as_percentage\":\"0\",\"easy_query_type_to_compare\":\"EasyIssueQuery\",\"type_to_compare\":\"sum\",\"column_to_sum_to_compare\":\"estimated_hours\",\"query_to_compare\":{\"global_filters\":{\"1549057302228\":{\"filter\":\"\"},\"1549057309054\":{\"filter\":\"\"},\"1549057314984\":{\"filter\":\"\"}}},\"_name\":\"Open tasks\",\"_description\":\"in milestones\"}',5,1,'2021-08-23 17:12:58','2021-08-23 17:12:58'),('7b3796ae-e6f0-40c6-b2de-bb43ad907ee7',1,2,34,NULL,2,'{\"row_limit\":\"10\"}',NULL,1,'2021-08-23 17:12:56','2021-08-23 17:12:56'),('7bb4576c-eb8d-41b8-919b-f96cba147f4b',6,35,242,NULL,4,'{\"easy_query_type\":\"EasyIssueQuery\",\"use_query_to_compare\":\"false\",\"name\":\"Closed tasks\",\"description\":\"in milesones\",\"easy_icon\":\"\",\"color\":\"palette-12\",\"type\":\"count\",\"column_to_sum\":\"estimated_hours\",\"query\":{\"set_filter\":\"1\",\"query_type\":\"2\",\"query_name\":\"name of filter\",\"row_limit\":\"10\",\"fields\":[\"fixed_version_id\",\"status_id\"],\"operators\":{\"fixed_version_id\":\"*\",\"status_id\":\"c\"},\"values\":{\"fixed_version_id\":[\"5\"],\"status_id\":[\"\"]},\"global_filters\":{\"1549057302228\":{\"filter\":\"project_id\"},\"1549057309054\":{\"filter\":\"fixed_version_id\"},\"1549057314984\":{\"filter\":\"assigned_to_id\"}}},\"outputs\":[\"list\"],\"sort_criteria\":{\"0\":[\"priority\",\"desc\"],\"1\":[\"due_date\",\"asc\"],\"2\":[\"\",\"\"]},\"column_names\":[\"project\",\"subject\",\"assigned_to\",\"status\",\"due_date\",\"done_ratio\"],\"group_by\":[\"\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"0\",\"show_avatars\":\"0\",\"daily_snapshot\":\"0\",\"count_only_working_days\":\"0\",\"easy_query_snapshot\":{\"execute_as\":\"author\",\"execute_as_user_id\":\"\",\"period_options\":{\"period\":\"every_day\",\"time\":\"cron\",\"hours\":\"00:00\"}},\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"assigned_to\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"cf_414\",\"y_label\":\"\",\"secondary_axis_y_column\":\"\",\"period_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"long_tail\":\"0\",\"bar_reverse_order\":\"0\",\"bar_sort_by_axis_x\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"target\":\"current\",\"url\":\"?t=2\"}},\"period_zoom\":\"month\",\"settings\":{\"period\":\"month\",\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\"],\"kanban\":{\"kanban_group\":\"\",\"kanban_group_trackers\":[\"7\",\"37\",\"8\",\"34\",\"49\",\"35\",\"6\",\"32\",\"31\",\"13\",\"26\",\"38\",\"39\",\"40\",\"41\",\"42\",\"43\",\"44\",\"45\",\"46\",\"47\",\"48\"],\"kanban_group_statuses\":[\"1\",\"27\",\"17\",\"19\",\"26\",\"15\",\"25\",\"14\",\"24\",\"21\",\"13\",\"3\",\"5\",\"6\",\"20\",\"22\",\"23\"],\"main_attribute\":\"\",\"summable_column\":\"\",\"avatar_attribute\":\"\",\"date_details\":[\"\"],\"icon_details\":[\"\"],\"default_swimlane\":\"\"}},\"compere_to_previous_period\":\"0\",\"operator\":\">\",\"show_as_percentage\":\"0\",\"easy_query_type_to_compare\":\"EasyIssueQuery\",\"type_to_compare\":\"sum\",\"column_to_sum_to_compare\":\"estimated_hours\",\"query_to_compare\":{\"global_filters\":{\"1549057302228\":{\"filter\":\"\"},\"1549057309054\":{\"filter\":\"\"},\"1549057314984\":{\"filter\":\"\"}}},\"_name\":\"Closed tasks\",\"_description\":\"in milesones\"}',6,1,'2021-08-23 17:12:58','2021-08-23 17:12:58'),('7fa3af7b-9aaa-4598-b17c-0788785a14b8',6,35,242,NULL,3,'{\"easy_query_type\":\"EasyIssueQuery\",\"use_query_to_compare\":\"false\",\"name\":\"Open tasks\",\"description\":\"in milestones\",\"easy_icon\":\"\",\"color\":\"palette-1\",\"type\":\"count\",\"column_to_sum\":\"estimated_hours\",\"query\":{\"set_filter\":\"1\",\"query_type\":\"2\",\"query_name\":\"name of filter\",\"row_limit\":\"10\",\"fields\":[\"fixed_version_id\",\"status_id\"],\"operators\":{\"fixed_version_id\":\"*\",\"status_id\":\"o\"},\"values\":{\"fixed_version_id\":[\"5\"],\"status_id\":[\"\"]},\"global_filters\":{\"1549057302228\":{\"filter\":\"project_id\"},\"1549057309054\":{\"filter\":\"fixed_version_id\"},\"1549057314984\":{\"filter\":\"assigned_to_id\"}}},\"outputs\":[\"list\"],\"sort_criteria\":{\"0\":[\"priority\",\"desc\"],\"1\":[\"due_date\",\"asc\"],\"2\":[\"\",\"\"]},\"column_names\":[\"project\",\"subject\",\"assigned_to\",\"status\",\"due_date\",\"done_ratio\"],\"group_by\":[\"\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"0\",\"show_avatars\":\"0\",\"daily_snapshot\":\"0\",\"count_only_working_days\":\"0\",\"easy_query_snapshot\":{\"execute_as\":\"author\",\"execute_as_user_id\":\"\",\"period_options\":{\"period\":\"every_day\",\"time\":\"cron\",\"hours\":\"00:00\"}},\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"assigned_to\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"cf_414\",\"y_label\":\"\",\"secondary_axis_y_column\":\"\",\"period_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"long_tail\":\"0\",\"bar_reverse_order\":\"0\",\"bar_sort_by_axis_x\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"target\":\"current\",\"url\":\"?t=2\"}},\"period_zoom\":\"month\",\"settings\":{\"period\":\"month\",\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\"],\"kanban\":{\"kanban_group\":\"\",\"kanban_group_trackers\":[\"7\",\"37\",\"8\",\"34\",\"49\",\"35\",\"6\",\"32\",\"31\",\"13\",\"26\",\"38\",\"39\",\"40\",\"41\",\"42\",\"43\",\"44\",\"45\",\"46\",\"47\",\"48\"],\"kanban_group_statuses\":[\"1\",\"27\",\"17\",\"19\",\"26\",\"15\",\"25\",\"14\",\"24\",\"21\",\"13\",\"3\",\"5\",\"6\",\"20\",\"22\",\"23\"],\"main_attribute\":\"\",\"summable_column\":\"\",\"avatar_attribute\":\"\",\"date_details\":[\"\"],\"icon_details\":[\"\"],\"default_swimlane\":\"\"}},\"compere_to_previous_period\":\"0\",\"operator\":\">\",\"show_as_percentage\":\"0\",\"easy_query_type_to_compare\":\"EasyIssueQuery\",\"type_to_compare\":\"sum\",\"column_to_sum_to_compare\":\"estimated_hours\",\"query_to_compare\":{\"global_filters\":{\"1549057302228\":{\"filter\":\"\"},\"1549057309054\":{\"filter\":\"\"},\"1549057314984\":{\"filter\":\"\"}}},\"_name\":\"Open tasks\",\"_description\":\"in milestones\"}',6,1,'2021-08-23 17:12:58','2021-08-23 17:12:58'),('840ca9bc-4de1-4da9-b32f-b0360394f505',5,33,224,NULL,1,'{\"easy_query_type\":\"EasyTimeEntryQuery\",\"query_name\":\"Spent time (billable vs non billable) in time\",\"set_filter\":\"1\",\"query_type\":\"2\",\"outputs\":[\"chart\"],\"row_limit\":\"10\",\"fields\":[\"easy_is_billable\"],\"operators\":{\"easy_is_billable\":\"=\"},\"values\":{\"easy_is_billable\":[\"1\"]},\"global_filters\":{\"1549266764826\":{\"filter\":\"spent_on\"},\"1549266768554\":{\"filter\":\"xproject_id\"},\"1549266770893\":{\"filter\":\"user_id\"}},\"sort_criteria\":{\"0\":[\"spent_on\",\"desc\"],\"1\":[\"\",\"\"],\"2\":[\"\",\"\"]},\"column_names\":[\"user\",\"spent_on\",\"project\",\"issue\",\"activity\",\"hours\"],\"group_by\":[\"\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"0\",\"show_avatars\":\"0\",\"daily_snapshot\":\"0\",\"count_only_working_days\":\"0\",\"easy_query_snapshot\":{\"execute_as\":\"author\",\"execute_as_user_id\":\"\",\"period_options\":{\"period\":\"every_day\",\"time\":\"cron\",\"hours\":\"00:00\"}},\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"spent_on\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"hours\",\"y_label\":\"Billable spent time\",\"secondary_axis_y_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"long_tail\":\"0\",\"bar_reverse_order\":\"0\",\"bar_sort_by_axis_x\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"target\":\"current\",\"url\":\"?t=1\"},\"additional_queries\":{\"0\":{\"easy_query_type\":\"EasyTimeEntryQuery\",\"set_filter\":\"1\",\"query_type\":\"2\",\"query_name\":\"name of filter\",\"outputs\":[\"chart\"],\"row_limit\":\"10\",\"fields\":[\"easy_is_billable\"],\"operators\":{\"easy_is_billable\":\"=\"},\"values\":{\"easy_is_billable\":[\"0\"]},\"global_filters\":{\"1549266764826\":{\"filter\":\"spent_on\"},\"1549266768554\":{\"filter\":\"xproject_id\"},\"1549266770893\":{\"filter\":\"user_id\"}},\"sort_criteria\":{\"0\":[\"spent_on\",\"desc\"],\"1\":[\"\",\"\"],\"2\":[\"\",\"\"]},\"group_by\":[\"\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"0\",\"show_avatars\":\"0\",\"daily_snapshot\":\"0\",\"count_only_working_days\":\"0\",\"easy_query_snapshot\":{\"execute_as\":\"author\",\"execute_as_user_id\":\"\",\"period_options\":{\"period\":\"every_day\",\"time\":\"cron\",\"hours\":\"00:00\"}},\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"spent_on\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"hours\",\"y_label\":\"Non billable spent time\",\"secondary_axis_y_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"bar_reverse_order\":\"0\",\"bar_sort_by_axis_x\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"target\":\"current\",\"url\":\"?t=1\"}},\"period_zoom\":\"month\",\"settings\":{\"report_sum_column\":[\"\",\"\"]}}},\"_y_label\":\"Billable spent time\"},\"period_zoom\":\"month\",\"settings\":{\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\",\"\"]},\"cache_on\":\"\",\"cache_for_days\":\"\",\"_query_name\":\"Spent time (billable vs non billable) in time\"}',4,1,'2021-08-23 17:12:57','2021-08-23 17:12:57'),('9916e78b-ad61-4284-92d3-940c6e9e8a80',4,16,148,NULL,1,NULL,1,1,'2021-08-23 17:12:56','2021-08-23 17:12:56'),('9fc910f9-bec2-4d8b-9d44-17326cb2bf2c',7,23,194,NULL,1,'{\"easy_query_type\":\"EasyIssueQuery\",\"query_name\":\"Velocity - closing SP in time\",\"set_filter\":\"1\",\"query_type\":\"2\",\"outputs\":[\"chart\"],\"row_limit\":\"10\",\"fields\":[\"easy_sprint_id\",\"status_id\"],\"operators\":{\"easy_sprint_id\":\"*\",\"status_id\":\"c\"},\"values\":{\"easy_sprint_id\":[\"\"],\"status_id\":[\"\"]},\"sort_criteria\":{\"0\":[\"\",\"\"],\"1\":[\"\",\"\"],\"2\":[\"\",\"\"]},\"column_names\":[\"project\",\"subject\",\"assigned_to\",\"due_date\",\"status\",\"done_ratio\",\"total_estimated_hours\",\"total_spent_estimated_timeentries\"],\"group_by\":[\"\"],\"show_sum_row\":\"1\",\"load_groups_opened\":\"1\",\"show_avatars\":\"1\",\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"closed_on\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"easy_story_points\",\"y_label\":\"\",\"secondary_axis_y_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"bar_reverse_order\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"url\":\"\",\"target\":\"current\"},\"additional_queries\":{\"0\":{\"easy_query_type\":\"\"}}},\"period_zoom\":\"month\",\"settings\":{\"period\":\"month\",\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\",\"\"],\"kanban\":{\"kanban_group\":\"\",\"kanban_group_trackers\":[\"1\",\"3\",\"5\",\"4\"],\"kanban_group_statuses\":[\"9\",\"10\",\"2\",\"3\",\"4\",\"6\",\"7\",\"8\"],\"main_attribute\":\"\",\"summable_column\":\"\",\"avatar_attribute\":\"\",\"date_details\":[\"\"],\"icon_details\":[\"\"],\"default_swimlane\":\"\"}},\"cache_on\":\"\",\"cache_for_days\":\"\"}',7,1,'2018-03-09 17:39:18','2018-03-09 17:39:18'),('a270a738-7352-469d-891a-1c00fa8676df',1,2,35,NULL,3,'{\"row_limit\":\"10\"}',NULL,1,'2021-08-23 17:12:56','2021-08-23 17:12:56'),('a4752ab1-9cfc-42e4-9856-029e18a070c9',7,22,184,NULL,9,'{\"easy_query_type\":\"EasyIssueQuery\",\"use_query_to_compare\":\"false\",\"name\":\"Estimate - Closed Issues \",\"description\":\"Estimated time form Closed Issues \",\"easy_icon\":\"icon-bullet-list\",\"color\":\"palette-9\",\"outputs\":[\"list\"],\"sort_criteria\":{\"0\":[\"\",\"\"],\"1\":[\"\",\"\"],\"2\":[\"\",\"\"]},\"column_names\":[\"subject\",\"status\",\"assigned_to\"],\"group_by\":[\"\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"0\",\"show_avatars\":\"1\",\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"assigned_to\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"estimated_hours\",\"y_label\":\"\",\"secondary_axis_y_column\":\"\",\"period_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"bar_reverse_order\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"url\":\"\",\"target\":\"current\"}},\"period_zoom\":\"month\",\"settings\":{\"period\":\"month\",\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\"],\"kanban\":{\"kanban_group\":\"\",\"kanban_group_trackers\":[\"1\",\"3\",\"4\",\"5\",\"2\"],\"kanban_group_statuses\":[\"2\",\"6\",\"3\",\"9\",\"10\",\"8\",\"7\",\"4\"],\"main_attribute\":\"\",\"summable_column\":\"\",\"avatar_attribute\":\"\",\"date_details\":[\"\"],\"icon_details\":[\"\"],\"default_swimlane\":\"\"}},\"compere_to_previous_period\":\"0\",\"operator\":\">\",\"easy_query_type_to_compare\":\"EasyIssueQuery\",\"type_to_compare\":\"sum\",\"column_to_sum_to_compare\":\"estimated_hours\",\"type\":\"sum\",\"column_to_sum\":\"estimated_hours\",\"query\":{\"set_filter\":\"1\",\"fields\":[\"\",\"status_id\",\"easy_sprint_id\"],\"query_type\":\"2\",\"query_name\":\"name of filter\",\"row_limit\":\"10\",\"operators\":{\"status_id\":\"c\",\"easy_sprint_id\":\"*\"},\"values\":{\"status_id\":[\"\"],\"easy_sprint_id\":[\"\"]}}}',7,1,'2018-03-09 17:39:18','2018-03-09 17:39:18'),('a76191b1-16d9-42ca-a189-4d30cab5487f',5,30,213,NULL,2,'{\"easy_query_type\":\"EasyTimeEntryQuery\",\"use_query_to_compare\":\"false\",\"name\":\"Spent billable time\",\"description\":\"from all tasks\",\"easy_icon\":\"\",\"color\":\"palette-12\",\"type\":\"sum\",\"column_to_sum\":\"hours\",\"query\":{\"set_filter\":\"1\",\"query_type\":\"2\",\"query_name\":\"name of filter\",\"row_limit\":\"10\",\"fields\":[\"easy_is_billable\"],\"operators\":{\"easy_is_billable\":\"=\"},\"values\":{\"easy_is_billable\":[\"1\"]},\"global_filters\":{\"1549266764826\":{\"filter\":\"spent_on\"},\"1549266768554\":{\"filter\":\"xproject_id\"},\"1549266770893\":{\"filter\":\"user_id\"}}},\"outputs\":[\"list\"],\"sort_criteria\":{\"0\":[\"spent_on\",\"desc\"],\"1\":[\"\",\"\"],\"2\":[\"\",\"\"]},\"column_names\":[\"user\",\"spent_on\",\"project\",\"issue\",\"activity\",\"hours\"],\"group_by\":[\"\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"0\",\"show_avatars\":\"0\",\"daily_snapshot\":\"0\",\"easy_query_snapshot\":{\"execute_as\":\"author\",\"execute_as_user_id\":\"\",\"period_options\":{\"period\":\"every_day\",\"time\":\"cron\",\"hours\":\"00:00\"}},\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"activity\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"estimated_hours\",\"y_label\":\"\",\"secondary_axis_y_column\":\"\",\"period_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"long_tail\":\"0\",\"bar_reverse_order\":\"0\",\"bar_sort_by_axis_x\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"target\":\"current\",\"url\":\"?t=1\"}},\"period_zoom\":\"month\",\"settings\":{\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\"]},\"compere_to_previous_period\":\"1\",\"operator\":\">\",\"show_as_percentage\":\"0\",\"easy_query_type_to_compare\":\"EasyTimeEntryQuery\",\"type_to_compare\":\"sum\",\"column_to_sum_to_compare\":\"hours\",\"query_to_compare\":{\"global_filters\":{\"1549266764826\":{\"filter\":\"\"},\"1549266768554\":{\"filter\":\"\"},\"1549266770893\":{\"filter\":\"\"}}},\"_name\":\"Spent billable time\",\"_description\":\"from all tasks\"}',4,1,'2021-08-23 17:12:57','2021-08-23 17:12:57'),('ac0c0faf-6adf-48cb-898d-00216e1ebdb2',6,38,251,NULL,1,'{\"set_filter\":\"1\",\"query_type\":\"2\",\"query_name\":\"Open milestones by project\",\"outputs\":[\"list\"],\"row_limit\":\"50\",\"fields\":[\"status\"],\"operators\":{\"status\":\"=\"},\"values\":{\"status\":[\"open\"]},\"global_filters\":{\"1549057302228\":{\"filter\":\"project_id\"},\"1549057314984\":{\"filter\":\"\"}},\"sort_criteria\":{\"0\":[\"project\",\"asc\"],\"1\":[\"name\",\"asc\"],\"2\":[\"\",\"\"]},\"column_names\":[\"project\",\"name\",\"effective_date\",\"description\",\"status\",\"sharing\"],\"group_by\":[\"project\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"0\",\"show_avatars\":\"0\",\"daily_snapshot\":\"0\",\"count_only_working_days\":\"0\",\"easy_query_snapshot\":{\"execute_as\":\"author\",\"execute_as_user_id\":\"\",\"period_options\":{\"period\":\"every_day\",\"time\":\"cron\",\"hours\":\"00:00\"}},\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"project\",\"y_label\":\"\",\"period_column\":\"\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"target\":\"current\",\"url\":\"?t=1&utm_campaign=menu&utm_content=top_menu_categories&utm_term=easy_versions\"}},\"period_zoom\":\"month\",\"_query_name\":\"Open milestones by project\"}',5,1,'2021-08-23 17:12:58','2021-08-23 17:12:58'),('ae26f271-ca26-46e7-b1c4-6d9d48853e6e',6,35,242,NULL,1,'{\"easy_query_type\":\"EasyVersionQuery\",\"use_query_to_compare\":\"false\",\"name\":\"Open Milestones\",\"description\":\"Number\",\"easy_icon\":\"\",\"color\":\"palette-4\",\"query\":{\"set_filter\":\"1\",\"query_type\":\"2\",\"query_name\":\"name of filter\",\"row_limit\":\"10\",\"fields\":[\"status\"],\"operators\":{\"status\":\"=\"},\"values\":{\"status\":[\"open\"]},\"global_filters\":{\"1549057302228\":{\"filter\":\"project_id\"},\"1549057314984\":{\"filter\":\"\"}}},\"outputs\":[\"list\"],\"sort_criteria\":{\"0\":[\"project\",\"asc\"],\"1\":[\"name\",\"asc\"],\"2\":[\"\",\"\"]},\"column_names\":[\"project\",\"name\",\"effective_date\",\"description\",\"status\",\"sharing\"],\"group_by\":[\"\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"1\",\"show_avatars\":\"0\",\"daily_snapshot\":\"0\",\"count_only_working_days\":\"0\",\"easy_query_snapshot\":{\"execute_as\":\"author\",\"execute_as_user_id\":\"\",\"period_options\":{\"period\":\"every_day\",\"time\":\"cron\",\"hours\":\"00:00\"}},\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"created_on\",\"y_label\":\"\",\"period_column\":\"\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"target\":\"current\",\"url\":\"?t=1\"}},\"period_zoom\":\"month\",\"compere_to_previous_period\":\"0\",\"operator\":\">\",\"show_as_percentage\":\"0\",\"easy_query_type_to_compare\":\"EasyVersionQuery\",\"query_to_compare\":{\"global_filters\":{\"1549057302228\":{\"filter\":\"\"},\"1549057314984\":{\"filter\":\"\"}}},\"_name\":\"Open Milestones\",\"_description\":\"Number\"}',5,1,'2021-08-23 17:12:58','2021-08-23 17:12:58'),('b422ba24-cf71-4f8f-8e50-a96fc202e843',7,22,184,NULL,3,'{\"easy_query_type\":\"EasyIssueQuery\",\"use_query_to_compare\":\"false\",\"name\":\"Velocity this month\",\"description\":\"Closed story points this month\",\"easy_icon\":\"icon-issue-update\",\"color\":\"palette-6\",\"type\":\"sum\",\"column_to_sum\":\"easy_story_points\",\"query\":{\"set_filter\":\"1\",\"query_type\":\"2\",\"query_name\":\"name of filter\",\"row_limit\":\"10\",\"fields\":[\"easy_sprint_id\",\"closed_on\",\"status_id\"],\"operators\":{\"easy_sprint_id\":\"*\",\"closed_on\":\"date_period_1\",\"status_id\":\"c\"},\"values\":{\"easy_sprint_id\":[\"\"],\"closed_on\":{\"period\":\"current_month\",\"period_days2\":\"\",\"period_days\":\"\",\"from\":\"\",\"to\":\"\"},\"status_id\":[\"\"]}},\"outputs\":[\"list\"],\"sort_criteria\":{\"0\":[\"\",\"\"],\"1\":[\"\",\"\"],\"2\":[\"\",\"\"]},\"column_names\":[\"subject\",\"status\",\"assigned_to\"],\"group_by\":[\"\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"0\",\"show_avatars\":\"1\",\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"assigned_to\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"estimated_hours\",\"y_label\":\"\",\"secondary_axis_y_column\":\"\",\"period_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"bar_reverse_order\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"url\":\"\",\"target\":\"current\"}},\"period_zoom\":\"month\",\"settings\":{\"period\":\"month\",\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\"],\"kanban\":{\"kanban_group\":\"\",\"kanban_group_trackers\":[\"1\",\"3\",\"4\",\"5\",\"2\"],\"kanban_group_statuses\":[\"2\",\"6\",\"3\",\"9\",\"10\",\"8\",\"7\",\"4\"],\"main_attribute\":\"\",\"summable_column\":\"\",\"avatar_attribute\":\"\",\"date_details\":[\"\"],\"icon_details\":[\"\"],\"default_swimlane\":\"\"}},\"compere_to_previous_period\":\"1\",\"operator\":\">\",\"easy_query_type_to_compare\":\"EasyIssueQuery\",\"type_to_compare\":\"sum\",\"column_to_sum_to_compare\":\"estimated_hours\"}',7,1,'2018-03-09 17:39:18','2018-03-09 17:39:18'),('bef1103b-d862-4569-9101-d86421df75bc',7,22,184,NULL,8,'{\"easy_query_type\":\"EasyIssueQuery\",\"use_query_to_compare\":\"false\",\"name\":\"Estimate - Open Issues \",\"description\":\"Estimated time form Open Issues \",\"easy_icon\":\"icon-move\",\"color\":\"palette-20\",\"outputs\":[\"list\"],\"sort_criteria\":{\"0\":[\"\",\"\"],\"1\":[\"\",\"\"],\"2\":[\"\",\"\"]},\"column_names\":[\"subject\",\"status\",\"assigned_to\"],\"group_by\":[\"\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"0\",\"show_avatars\":\"1\",\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"assigned_to\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"estimated_hours\",\"y_label\":\"\",\"secondary_axis_y_column\":\"\",\"period_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"bar_reverse_order\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"url\":\"\",\"target\":\"current\"}},\"period_zoom\":\"month\",\"settings\":{\"period\":\"month\",\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\"],\"kanban\":{\"kanban_group\":\"\",\"kanban_group_trackers\":[\"1\",\"3\",\"4\",\"5\",\"2\"],\"kanban_group_statuses\":[\"2\",\"6\",\"3\",\"9\",\"10\",\"8\",\"7\",\"4\"],\"main_attribute\":\"\",\"summable_column\":\"\",\"avatar_attribute\":\"\",\"date_details\":[\"\"],\"icon_details\":[\"\"],\"default_swimlane\":\"\"}},\"compere_to_previous_period\":\"0\",\"operator\":\">\",\"easy_query_type_to_compare\":\"EasyIssueQuery\",\"type_to_compare\":\"sum\",\"column_to_sum_to_compare\":\"estimated_hours\",\"type\":\"sum\",\"column_to_sum\":\"estimated_hours\",\"query\":{\"set_filter\":\"1\",\"fields\":[\"\",\"status_id\",\"easy_sprint_id\"],\"query_type\":\"2\",\"query_name\":\"name of filter\",\"row_limit\":\"10\",\"operators\":{\"status_id\":\"o\",\"easy_sprint_id\":\"*\"},\"values\":{\"status_id\":[\"\"],\"easy_sprint_id\":[\"\"]}}}',7,1,'2018-03-09 17:39:18','2018-03-09 17:39:18'),('c482e2b2-9f9b-4861-929c-634d2ec64be6',5,30,215,NULL,4,'{\"set_filter\":\"1\",\"query_type\":\"2\",\"query_name\":\"Running task timers\",\"outputs\":[\"list\"],\"row_limit\":\"10\",\"global_filters\":{\"1549266764826\":{\"filter\":\"start\"},\"1549266768554\":{\"filter\":\"issue_project_id\"},\"1549266770893\":{\"filter\":\"user_id\"}},\"sort_criteria\":{\"0\":[\"\",\"\"],\"1\":[\"\",\"\"],\"2\":[\"\",\"\"]},\"column_names\":[\"issue\",\"user\",\"paused_at\",\"issue_estimated_hours\",\"current_hours\"],\"group_by\":[\"user\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"0\",\"show_avatars\":\"0\",\"daily_snapshot\":\"0\",\"easy_query_snapshot\":{\"execute_as\":\"author\",\"execute_as_user_id\":\"\",\"period_options\":{\"period\":\"every_day\",\"time\":\"cron\",\"hours\":\"00:00\"}},\"_query_name\":\"Running task timers\"}',4,1,'2021-08-23 17:12:57','2021-08-23 17:12:57'),('c78f964a-f262-403c-84ca-a82c4ea23917',5,30,213,NULL,3,'{\"easy_query_type\":\"EasyTimeEntryQuery\",\"use_query_to_compare\":\"false\",\"name\":\"Help Desk \",\"description\":\"Spent time\",\"easy_icon\":\"\",\"color\":\"palette-2\",\"type\":\"sum\",\"column_to_sum\":\"hours\",\"query\":{\"set_filter\":\"1\",\"query_type\":\"2\",\"query_name\":\"name of filter\",\"row_limit\":\"10\",\"fields\":[\"tracker_id\"],\"operators\":{\"tracker_id\":\"=\"},\"values\":{\"tracker_id\":[\"37\"]},\"global_filters\":{\"1549266764826\":{\"filter\":\"\"},\"1549266768554\":{\"filter\":\"\"},\"1549266770893\":{\"filter\":\"\"}}},\"outputs\":[\"list\"],\"sort_criteria\":{\"0\":[\"spent_on\",\"desc\"],\"1\":[\"\",\"\"],\"2\":[\"\",\"\"]},\"column_names\":[\"project\",\"issue\",\"spent_on\",\"user\",\"comments\",\"hours\",\"easy_is_billable\"],\"group_by\":[\"\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"0\",\"show_avatars\":\"0\",\"daily_snapshot\":\"0\",\"count_only_working_days\":\"0\",\"easy_query_snapshot\":{\"execute_as\":\"author\",\"execute_as_user_id\":\"\",\"period_options\":{\"period\":\"every_day\",\"time\":\"cron\",\"hours\":\"00:00\"}},\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"activity\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"easy_divided_hours\",\"y_label\":\"\",\"secondary_axis_y_column\":\"\",\"period_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"long_tail\":\"0\",\"bar_reverse_order\":\"0\",\"bar_sort_by_axis_x\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"target\":\"current\",\"url\":\"?t=1\"}},\"period_zoom\":\"month\",\"settings\":{\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\"]},\"compere_to_previous_period\":\"1\",\"operator\":\">\",\"show_as_percentage\":\"0\",\"easy_query_type_to_compare\":\"EasyTimeEntryQuery\",\"type_to_compare\":\"sum\",\"column_to_sum_to_compare\":\"hours\",\"query_to_compare\":{\"global_filters\":{\"1549266764826\":{\"filter\":\"\"},\"1549266768554\":{\"filter\":\"\"},\"1549266770893\":{\"filter\":\"\"}}},\"_name\":\"Help Desk \",\"_description\":\"Spent time\"}',4,1,'2021-08-23 17:12:57','2021-08-23 17:12:57'),('d0da0fa7-504d-4bbd-888c-b8e497dbde6c',1,3,37,NULL,1,NULL,NULL,1,'2021-08-23 17:12:56','2021-08-23 17:12:56'),('d4d15c0b-56ae-438a-b625-92093c307acc',7,24,196,NULL,1,'{\"easy_query_type\":\"EasyIssueQuery\",\"query_name\":\"Open SP by Sprint\",\"set_filter\":\"1\",\"query_type\":\"2\",\"outputs\":[\"chart\"],\"row_limit\":\"10\",\"fields\":[\"status_id\"],\"operators\":{\"status_id\":\"o\"},\"values\":{\"status_id\":[\"\"]},\"sort_criteria\":{\"0\":[\"\",\"\"],\"1\":[\"\",\"\"],\"2\":[\"\",\"\"]},\"column_names\":[\"subject\",\"status\",\"assigned_to\"],\"group_by\":[\"\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"0\",\"show_avatars\":\"1\",\"chart_settings\":{\"primary_renderer\":\"pie\",\"axis_x_column\":\"issue_easy_sprint_relation.easy_sprint\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"easy_story_points\",\"y_label\":\"\",\"secondary_axis_y_column\":\"\",\"period_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"bar_reverse_order\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"url\":\"\",\"target\":\"current\"}},\"period_zoom\":\"month\",\"settings\":{\"period\":\"month\",\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\",\"\"],\"kanban\":{\"kanban_group\":\"\",\"kanban_group_trackers\":[\"1\",\"3\",\"4\",\"5\",\"2\"],\"kanban_group_statuses\":[\"2\",\"6\",\"3\",\"9\",\"10\",\"8\",\"7\",\"4\"],\"main_attribute\":\"\",\"summable_column\":\"\",\"avatar_attribute\":\"\",\"date_details\":[\"\"],\"icon_details\":[\"\"],\"default_swimlane\":\"\"}},\"cache_on\":\"\",\"cache_for_days\":\"\"}',7,1,'2018-03-09 17:39:18','2018-03-09 17:39:18'),('d68eeb89-4c89-49c8-b6d1-ff14ed708aa0',4,12,146,NULL,1,'{\"output\":\"calendar\",\"settings\":{\"period\":\"month\"}}',1,1,'2021-08-23 17:12:56','2021-08-23 17:12:56'),('d70b4bd3-1778-47d2-8757-3ee643a921ff',7,22,184,NULL,10,'{\"easy_query_type\":\"EasyIssueQuery\",\"use_query_to_compare\":\"false\",\"name\":\"Spent Time - Closed Issues \",\"description\":\"Spent time form Closed Issues \",\"easy_icon\":\"icon-checked-circle\",\"color\":\"palette-34\",\"outputs\":[\"list\"],\"sort_criteria\":{\"0\":[\"\",\"\"],\"1\":[\"\",\"\"],\"2\":[\"\",\"\"]},\"column_names\":[\"subject\",\"status\",\"assigned_to\"],\"group_by\":[\"\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"0\",\"show_avatars\":\"1\",\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"assigned_to\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"estimated_hours\",\"y_label\":\"\",\"secondary_axis_y_column\":\"\",\"period_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"bar_reverse_order\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"url\":\"\",\"target\":\"current\"}},\"period_zoom\":\"month\",\"settings\":{\"period\":\"month\",\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\"],\"kanban\":{\"kanban_group\":\"\",\"kanban_group_trackers\":[\"1\",\"3\",\"4\",\"5\",\"2\"],\"kanban_group_statuses\":[\"2\",\"6\",\"3\",\"9\",\"10\",\"8\",\"7\",\"4\"],\"main_attribute\":\"\",\"summable_column\":\"\",\"avatar_attribute\":\"\",\"date_details\":[\"\"],\"icon_details\":[\"\"],\"default_swimlane\":\"\"}},\"compere_to_previous_period\":\"0\",\"operator\":\">\",\"easy_query_type_to_compare\":\"EasyIssueQuery\",\"type_to_compare\":\"sum\",\"column_to_sum_to_compare\":\"estimated_hours\",\"type\":\"sum\",\"column_to_sum\":\"spent_hours\",\"query\":{\"set_filter\":\"1\",\"fields\":[\"\",\"status_id\",\"easy_sprint_id\"],\"query_type\":\"2\",\"query_name\":\"name of filter\",\"row_limit\":\"10\",\"operators\":{\"status_id\":\"c\",\"easy_sprint_id\":\"*\"},\"values\":{\"status_id\":[\"\"],\"easy_sprint_id\":[\"\"]}}}',7,1,'2018-03-09 17:39:18','2018-03-09 17:39:18'),('da9b2800-edd5-4cfa-84f7-c25e274a7623',7,22,184,NULL,4,'{\"easy_query_type\":\"EasyIssueQuery\",\"use_query_to_compare\":\"false\",\"name\":\"Closed Story Points\",\"description\":\"Closed story points -  all  sprints\",\"easy_icon\":\"icon-bullet-list\",\"color\":\"palette-28\",\"type\":\"sum\",\"column_to_sum\":\"easy_story_points\",\"query\":{\"set_filter\":\"1\",\"query_type\":\"2\",\"query_name\":\"name of filter\",\"row_limit\":\"10\",\"fields\":[\"easy_sprint_id\",\"status_id\"],\"operators\":{\"easy_sprint_id\":\"*\",\"status_id\":\"c\"},\"values\":{\"easy_sprint_id\":[\"\"],\"status_id\":[\"\"]}},\"outputs\":[\"list\"],\"sort_criteria\":{\"0\":[\"\",\"\"],\"1\":[\"\",\"\"],\"2\":[\"\",\"\"]},\"column_names\":[\"subject\",\"status\",\"assigned_to\"],\"group_by\":[\"\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"0\",\"show_avatars\":\"1\",\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"assigned_to\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"estimated_hours\",\"y_label\":\"\",\"secondary_axis_y_column\":\"\",\"period_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"bar_reverse_order\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"url\":\"\",\"target\":\"current\"}},\"period_zoom\":\"month\",\"settings\":{\"period\":\"month\",\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\"],\"kanban\":{\"kanban_group\":\"\",\"kanban_group_trackers\":[\"1\",\"3\",\"4\",\"5\",\"2\"],\"kanban_group_statuses\":[\"2\",\"6\",\"3\",\"9\",\"10\",\"8\",\"7\",\"4\"],\"main_attribute\":\"\",\"summable_column\":\"\",\"avatar_attribute\":\"\",\"date_details\":[\"\"],\"icon_details\":[\"\"],\"default_swimlane\":\"\"}},\"compere_to_previous_period\":\"0\",\"operator\":\">\",\"easy_query_type_to_compare\":\"EasyIssueQuery\",\"type_to_compare\":\"sum\",\"column_to_sum_to_compare\":\"estimated_hours\"}',7,1,'2018-03-09 17:39:18','2018-03-09 17:39:18'),('dad1e549-1271-49ee-a8e8-0f7251819997',6,36,254,NULL,1,'{\"easy_query_type\":\"EasyTimeEntryQuery\",\"query_name\":\"Spent time by people\",\"set_filter\":\"1\",\"query_type\":\"2\",\"outputs\":[\"chart\"],\"row_limit\":\"10\",\"global_filters\":{\"1549057302228\":{\"filter\":\"xproject_id\"},\"1549057314984\":{\"filter\":\"user_id\"}},\"sort_criteria\":{\"0\":[\"spent_on\",\"desc\"],\"1\":[\"\",\"\"],\"2\":[\"\",\"\"]},\"column_names\":[\"project\"],\"group_by\":[\"\"],\"show_sum_row\":\"1\",\"load_groups_opened\":\"0\",\"show_avatars\":\"1\",\"daily_snapshot\":\"0\",\"count_only_working_days\":\"0\",\"easy_query_snapshot\":{\"execute_as\":\"author\",\"execute_as_user_id\":\"\",\"period_options\":{\"period\":\"every_day\",\"time\":\"cron\",\"hours\":\"00:00\"}},\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"user\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"hours\",\"y_label\":\"Spent Hours\",\"secondary_axis_y_column\":\"\",\"period_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"long_tail\":\"0\",\"bar_reverse_order\":\"0\",\"bar_sort_by_axis_x\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"target\":\"current\",\"url\":\"?t=2&utm_campaign=menu&utm_content=top_menu_categories&utm_term=easy_versions&global_filter_1549057302228=&global_filter_1549057309054=806&global_filter_1549057314984=\"},\"_y_label\":\"Spent Hours\"},\"period_zoom\":\"month\",\"settings\":{\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\",\"\"]},\"cache_on\":\"\",\"cache_for_days\":\"\",\"_query_name\":\"Spent time by people\"}',6,1,'2021-08-23 17:12:58','2021-08-23 17:12:58'),('ddb6e7d6-4889-42c2-9ef3-d7e0d513339f',7,22,184,NULL,1,'{\"easy_query_type\":\"EasySprintQuery\",\"use_query_to_compare\":\"false\",\"name\":\"Open Sprints\",\"description\":\"Sprint\'s we working on\",\"easy_icon\":\"icon-split\",\"color\":\"palette-20\",\"outputs\":[\"list\"],\"sort_criteria\":{\"0\":[\"\",\"\"],\"1\":[\"\",\"\"],\"2\":[\"\",\"\"]},\"column_names\":[\"name\",\"project\",\"due_date\"],\"group_by\":[\"\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"0\",\"show_avatars\":\"0\",\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"due_date\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"capacity\",\"y_label\":\"\",\"secondary_axis_y_column\":\"\",\"period_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"bar_reverse_order\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"url\":\"\",\"target\":\"current\"}},\"period_zoom\":\"month\",\"settings\":{\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\"]},\"compere_to_previous_period\":\"0\",\"operator\":\">\",\"easy_query_type_to_compare\":\"EasySprintQuery\",\"type_to_compare\":\"sum\",\"column_to_sum_to_compare\":\"capacity\",\"type\":\"count\",\"column_to_sum\":\"capacity\",\"query\":{\"set_filter\":\"1\",\"fields\":[\"\",\"closed\"],\"query_type\":\"2\",\"query_name\":\"name of filter\",\"row_limit\":\"10\",\"operators\":{\"closed\":\"=\"},\"values\":{\"closed\":[\"0\"]}}}',7,1,'2018-03-09 17:39:18','2018-03-09 17:39:18'),('e125c7c6-fab4-4cfa-b87e-9257fce6aacb',6,38,243,NULL,1,'{\"set_filter\":\"1\",\"query_type\":\"2\",\"query_name\":\"Open issues by assignee\",\"outputs\":[\"list\"],\"row_limit\":\"50\",\"fields\":[\"fixed_version_id\",\"status_id\"],\"operators\":{\"fixed_version_id\":\"o\",\"status_id\":\"o\"},\"values\":{\"fixed_version_id\":[\"830\"],\"status_id\":[\"1\"]},\"global_filters\":{\"1549057302228\":{\"filter\":\"project_id\"},\"1549057309054\":{\"filter\":\"fixed_version_id\"},\"1549057314984\":{\"filter\":\"assigned_to_id\"}},\"sort_criteria\":{\"0\":[\"priority\",\"desc\"],\"1\":[\"due_date\",\"asc\"],\"2\":[\"\",\"\"]},\"column_names\":[\"project\",\"subject\",\"assigned_to\",\"status\",\"due_date\",\"estimated_hours\",\"spent_hours\"],\"group_by\":[\"assigned_to\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"0\",\"show_avatars\":\"0\",\"daily_snapshot\":\"0\",\"count_only_working_days\":\"0\",\"easy_query_snapshot\":{\"execute_as\":\"author\",\"execute_as_user_id\":\"\",\"period_options\":{\"period\":\"every_day\",\"time\":\"cron\",\"hours\":\"00:00\"}},\"easy_query_end_buttons\":[\"\",\"favorite\",\"preview\",\"edit\"],\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"assigned_to\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"cf_414\",\"y_label\":\"\",\"secondary_axis_y_column\":\"\",\"period_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"long_tail\":\"0\",\"bar_reverse_order\":\"0\",\"bar_sort_by_axis_x\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"target\":\"current\",\"url\":\"?t=1&utm_campaign=menu&utm_content=top_menu_categories&utm_term=easy_versions&global_filter_1549057302228=&global_filter_1549057309054=825&global_filter_1549057314984=\"}},\"period_zoom\":\"month\",\"settings\":{\"period\":\"month\",\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\",\"\"],\"kanban\":{\"kanban_group\":\"\",\"kanban_group_trackers\":[\"7\",\"37\",\"8\",\"34\",\"49\",\"35\",\"6\",\"32\",\"31\",\"13\",\"26\",\"38\",\"39\",\"40\",\"41\",\"42\",\"43\",\"44\",\"45\",\"46\",\"47\",\"48\"],\"kanban_group_statuses\":[\"1\",\"27\",\"17\",\"19\",\"26\",\"15\",\"25\",\"14\",\"24\",\"21\",\"13\",\"3\",\"5\",\"6\",\"20\",\"22\",\"23\"],\"main_attribute\":\"\",\"summable_column\":\"\",\"avatar_attribute\":\"\",\"date_details\":[\"\"],\"icon_details\":[\"\"],\"default_swimlane\":\"\"}},\"_query_name\":\"Open issues by assignee\"}',6,1,'2021-08-23 17:12:58','2021-08-23 17:12:58'),('eb2a9b45-0c1e-4a90-b3f2-87eb6612bdb8',5,30,213,NULL,1,'{\"easy_query_type\":\"EasyTimeEntryQuery\",\"use_query_to_compare\":\"false\",\"name\":\"Spent time\",\"description\":\"from all tasks\",\"easy_icon\":\"\",\"color\":\"palette-4\",\"type\":\"sum\",\"column_to_sum\":\"hours\",\"query\":{\"set_filter\":\"1\",\"query_type\":\"2\",\"query_name\":\"name of filter\",\"row_limit\":\"10\",\"global_filters\":{\"1549266764826\":{\"filter\":\"spent_on\"},\"1549266768554\":{\"filter\":\"xproject_id\"},\"1549266770893\":{\"filter\":\"user_id\"}}},\"outputs\":[\"list\"],\"sort_criteria\":{\"0\":[\"spent_on\",\"desc\"],\"1\":[\"\",\"\"],\"2\":[\"\",\"\"]},\"column_names\":[\"user\",\"spent_on\",\"project\",\"issue\",\"activity\",\"hours\"],\"group_by\":[\"\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"0\",\"show_avatars\":\"0\",\"daily_snapshot\":\"0\",\"easy_query_snapshot\":{\"execute_as\":\"author\",\"execute_as_user_id\":\"\",\"period_options\":{\"period\":\"every_day\",\"time\":\"cron\",\"hours\":\"00:00\"}},\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"activity\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"estimated_hours\",\"y_label\":\"\",\"secondary_axis_y_column\":\"\",\"period_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"long_tail\":\"0\",\"bar_reverse_order\":\"0\",\"bar_sort_by_axis_x\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"target\":\"current\",\"url\":\"?t=1\"}},\"period_zoom\":\"month\",\"settings\":{\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\"]},\"compere_to_previous_period\":\"1\",\"operator\":\">\",\"show_as_percentage\":\"0\",\"easy_query_type_to_compare\":\"EasyTimeEntryQuery\",\"type_to_compare\":\"sum\",\"column_to_sum_to_compare\":\"hours\",\"query_to_compare\":{\"global_filters\":{\"1549266764826\":{\"filter\":\"\"},\"1549266768554\":{\"filter\":\"\"},\"1549266770893\":{\"filter\":\"\"}}},\"_name\":\"Spent time\",\"_description\":\"from all tasks\"}',4,1,'2021-08-23 17:12:57','2021-08-23 17:12:57'),('ecf7e7a7-e0b6-45a2-b2df-f8b723030d17',4,12,147,NULL,1,NULL,3,1,'2021-08-23 17:12:56','2021-08-23 17:12:56'),('f5379401-4a65-4340-8a53-f0c7739d525a',2,4,75,NULL,1,NULL,NULL,1,'2021-08-23 17:12:56','2021-08-23 17:12:56'),('fa5e4eda-96f5-4285-8509-35d2bf8a057a',6,37,254,NULL,1,'{\"easy_query_type\":\"EasyIssueQuery\",\"query_name\":\"Tasks by assignee\",\"set_filter\":\"1\",\"query_type\":\"2\",\"outputs\":[\"chart\"],\"row_limit\":\"10\",\"fields\":[\"status_id\",\"fixed_version_id\"],\"operators\":{\"status_id\":\"o\",\"fixed_version_id\":\"o\"},\"values\":{\"status_id\":[\"1\"],\"fixed_version_id\":[\"\"]},\"global_filters\":{\"1549057302228\":{\"filter\":\"project_id\"},\"1549057309054\":{\"filter\":\"fixed_version_id\"},\"1549057314984\":{\"filter\":\"assigned_to_id\"}},\"sort_criteria\":{\"0\":[\"priority\",\"desc\"],\"1\":[\"due_date\",\"asc\"],\"2\":[\"\",\"\"]},\"column_names\":[\"project\",\"activity\"],\"group_by\":[\"\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"0\",\"show_avatars\":\"0\",\"daily_snapshot\":\"0\",\"count_only_working_days\":\"0\",\"easy_query_snapshot\":{\"execute_as\":\"author\",\"execute_as_user_id\":\"\",\"period_options\":{\"period\":\"every_day\",\"time\":\"cron\",\"hours\":\"00:00\"}},\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"assigned_to\",\"axis_y_type\":\"count\",\"axis_y_column\":\"estimated_hours\",\"y_label\":\"\",\"secondary_axis_y_column\":\"\",\"period_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"long_tail\":\"0\",\"bar_reverse_order\":\"0\",\"bar_sort_by_axis_x\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"target\":\"current\",\"url\":\"?t=1&global_filter_1549057302228=2799&utm_campaign=menu&utm_content=top_menu_categories&utm_term=easy_versions\"},\"_y_label\":\"\"},\"period_zoom\":\"month\",\"settings\":{\"period\":\"month\",\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\",\"\"],\"kanban\":{\"kanban_group\":\"\",\"kanban_group_trackers\":[\"7\",\"37\",\"8\",\"34\",\"49\",\"35\",\"6\",\"32\",\"31\",\"13\",\"26\",\"38\",\"39\",\"40\",\"41\",\"42\",\"43\",\"44\",\"45\",\"46\",\"47\",\"48\"],\"kanban_group_statuses\":[\"1\",\"27\",\"17\",\"19\",\"26\",\"15\",\"25\",\"14\",\"24\",\"21\",\"13\",\"3\",\"5\",\"6\",\"20\",\"22\",\"23\"],\"main_attribute\":\"\",\"summable_column\":\"\",\"avatar_attribute\":\"\",\"date_details\":[\"\"],\"icon_details\":[\"\"],\"default_swimlane\":\"\"}},\"cache_on\":\"\",\"cache_for_days\":\"\",\"_query_name\":\"Tasks by assignee\"}',6,1,'2021-08-23 17:12:58','2021-08-23 17:12:58');
/*!40000 ALTER TABLE `easy_page_template_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_page_template_tabs`
--

DROP TABLE IF EXISTS `easy_page_template_tabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_page_template_tabs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `page_template_id` int NOT NULL,
  `position` int DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `entity_id` int DEFAULT NULL,
  `settings` longtext,
  `mobile_default` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_ep_template_tabs` (`page_template_id`,`entity_id`,`position`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_page_template_tabs`
--

LOCK TABLES `easy_page_template_tabs` WRITE;
/*!40000 ALTER TABLE `easy_page_template_tabs` DISABLE KEYS */;
INSERT INTO `easy_page_template_tabs` VALUES (1,4,1,'Calendar',NULL,NULL,0),(2,4,2,'List',NULL,NULL,0),(3,4,3,'Report',NULL,NULL,0),(4,5,1,'Tab 1',NULL,'{\"global_filters\":{\"1549266764826\":{\"name\":\"Date\",\"default_value\":\"30_days\",\"type\":\"date_period\"},\"1549266768554\":{\"name\":\"Project\",\"default_value\":\"\",\"type\":\"project\"},\"1549266770893\":{\"name\":\"User\",\"default_value\":\"\",\"type\":\"user\"}},\"global_currency\":\"0\"}',0),(5,6,1,'Milestone overview',NULL,'{\"global_filters\":{\"1549057302228\":{\"name\":\"Project\",\"default_value\":\"\",\"type\":\"project\"},\"1549057309054\":{\"name\":\"Milestone\",\"default_value\":\"\",\"type\":\"version\"},\"1549057314984\":{\"name\":\"Assignee (User)\",\"default_value\":\"\",\"type\":\"user\"}},\"global_currency\":\"0\"}',0),(6,6,2,' ',NULL,'{\"global_filters\":{\"1549057302228\":{\"name\":\"Project\",\"default_value\":\"\",\"type\":\"project\"},\"1549057309054\":{\"name\":\"Milestone\",\"default_value\":\"\",\"type\":\"version\"},\"1549057314984\":{\"name\":\"Assignee (User)\",\"default_value\":\"\",\"type\":\"user\"}},\"global_currency\":\"0\"}',0),(7,7,1,'Tab 1',NULL,NULL,0);
/*!40000 ALTER TABLE `easy_page_template_tabs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_page_templates`
--

DROP TABLE IF EXISTS `easy_page_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_page_templates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `easy_pages_id` int DEFAULT NULL,
  `template_name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `position` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_page_templates`
--

LOCK TABLES `easy_page_templates` WRITE;
/*!40000 ALTER TABLE `easy_page_templates` DISABLE KEYS */;
INSERT INTO `easy_page_templates` VALUES (1,1,'Default template','Default template',1,1),(2,2,'Default template','Default template',1,1),(3,3,'Default template','Default template',1,1),(4,4,'Default template','Default template',1,1),(5,8,'Spent Time Overview v2',NULL,1,1),(6,9,'Milestones Overview v2',NULL,1,1),(7,6,'Default template','default agile dashboard template',1,1);
/*!40000 ALTER TABLE `easy_page_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_page_user_tabs`
--

DROP TABLE IF EXISTS `easy_page_user_tabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_page_user_tabs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `page_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `position` int DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `entity_id` int DEFAULT NULL,
  `settings` longtext,
  `mobile_default` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_eput_entity_id` (`entity_id`),
  KEY `idx_eput_page_id` (`page_id`),
  KEY `idx_eput_user_id` (`user_id`),
  KEY `idx_eput_position` (`position`),
  KEY `idx_ep_user_tabs` (`user_id`,`page_id`,`entity_id`,`position`),
  KEY `idx_eput_20210318` (`page_id`,`user_id`,`entity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_page_user_tabs`
--

LOCK TABLES `easy_page_user_tabs` WRITE;
/*!40000 ALTER TABLE `easy_page_user_tabs` DISABLE KEYS */;
INSERT INTO `easy_page_user_tabs` VALUES (1,4,NULL,1,'Calendar',NULL,NULL,0),(2,4,NULL,2,'List',NULL,NULL,0),(3,4,NULL,3,'Report',NULL,NULL,0),(4,8,NULL,1,'Tab 1',NULL,'{\"global_filters\":{\"1549266764826\":{\"name\":\"Date\",\"default_value\":\"30_days\",\"type\":\"date_period\"},\"1549266768554\":{\"name\":\"Project\",\"default_value\":\"\",\"type\":\"project\"},\"1549266770893\":{\"name\":\"User\",\"default_value\":\"\",\"type\":\"user\"}},\"global_currency\":\"0\"}',0),(5,9,NULL,1,'Milestone overview',NULL,'{\"global_filters\":{\"1549057302228\":{\"name\":\"Project\",\"default_value\":\"\",\"type\":\"project\"},\"1549057309054\":{\"name\":\"Milestone\",\"default_value\":\"\",\"type\":\"version\"},\"1549057314984\":{\"name\":\"Assignee (User)\",\"default_value\":\"\",\"type\":\"user\"}},\"global_currency\":\"0\"}',0),(6,9,NULL,2,' ',NULL,'{\"global_filters\":{\"1549057302228\":{\"name\":\"Project\",\"default_value\":\"\",\"type\":\"project\"},\"1549057309054\":{\"name\":\"Milestone\",\"default_value\":\"\",\"type\":\"version\"},\"1549057314984\":{\"name\":\"Assignee (User)\",\"default_value\":\"\",\"type\":\"user\"}},\"global_currency\":\"0\"}',0),(7,6,NULL,1,'Tab 1',NULL,NULL,0),(8,1,1,1,'탭 1',NULL,'{\"global_filters\":{},\"global_currency\":\"0\",\"global_currency_defaults\":\"-\"}',0);
/*!40000 ALTER TABLE `easy_page_user_tabs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_page_zone_modules`
--

DROP TABLE IF EXISTS `easy_page_zone_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_page_zone_modules` (
  `uuid` varchar(255) NOT NULL,
  `easy_pages_id` bigint NOT NULL,
  `easy_page_available_zones_id` bigint NOT NULL,
  `easy_page_available_modules_id` bigint NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `entity_id` bigint DEFAULT NULL,
  `position` int DEFAULT NULL,
  `settings` longtext,
  `tab_id` bigint DEFAULT NULL,
  `tab` int NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `index_easy_page_zone_modules_on_easy_pages_id` (`easy_pages_id`),
  KEY `idx_easy_page_zone_modules_available_zone_id` (`easy_page_available_zones_id`),
  KEY `idx_easy_page_zone_modules_available_module_uuid` (`easy_page_available_modules_id`),
  KEY `idx_easy_page_zone_modules_user_id` (`user_id`),
  KEY `idx_easy_page_zone_modules_entity_id` (`entity_id`),
  KEY `idx_easy_page_zone_modules_tab_id` (`tab_id`),
  KEY `idx_easy_page_zone_modules_1` (`easy_pages_id`,`easy_page_available_zones_id`,`user_id`,`entity_id`,`tab`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_page_zone_modules`
--

LOCK TABLES `easy_page_zone_modules` WRITE;
/*!40000 ALTER TABLE `easy_page_zone_modules` DISABLE KEYS */;
INSERT INTO `easy_page_zone_modules` VALUES ('015acbad-7743-412f-85e4-d807c929c4bb',1,3,37,4,NULL,1,NULL,NULL,1,'2021-08-23 17:13:29','2021-08-23 17:13:29'),('05daee5a-3ab5-4031-9434-aff154cf09f6',1,3,37,5,NULL,1,NULL,NULL,1,'2021-08-23 17:53:34','2021-08-23 17:53:34'),('07893ccf-3daa-437c-9c92-1ade93fe91d3',9,38,243,NULL,NULL,1,'{\"set_filter\":\"1\",\"query_type\":\"2\",\"query_name\":\"Open issues by assignee\",\"outputs\":[\"list\"],\"row_limit\":\"50\",\"fields\":[\"fixed_version_id\",\"status_id\"],\"operators\":{\"fixed_version_id\":\"o\",\"status_id\":\"o\"},\"values\":{\"fixed_version_id\":[\"830\"],\"status_id\":[\"1\"]},\"global_filters\":{\"1549057302228\":{\"filter\":\"project_id\"},\"1549057309054\":{\"filter\":\"fixed_version_id\"},\"1549057314984\":{\"filter\":\"assigned_to_id\"}},\"sort_criteria\":{\"0\":[\"priority\",\"desc\"],\"1\":[\"due_date\",\"asc\"],\"2\":[\"\",\"\"]},\"column_names\":[\"project\",\"subject\",\"assigned_to\",\"status\",\"due_date\",\"estimated_hours\",\"spent_hours\"],\"group_by\":[\"assigned_to\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"0\",\"show_avatars\":\"0\",\"daily_snapshot\":\"0\",\"count_only_working_days\":\"0\",\"easy_query_snapshot\":{\"execute_as\":\"author\",\"execute_as_user_id\":\"\",\"period_options\":{\"period\":\"every_day\",\"time\":\"cron\",\"hours\":\"00:00\"}},\"easy_query_end_buttons\":[\"\",\"favorite\",\"preview\",\"edit\"],\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"assigned_to\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"cf_414\",\"y_label\":\"\",\"secondary_axis_y_column\":\"\",\"period_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"long_tail\":\"0\",\"bar_reverse_order\":\"0\",\"bar_sort_by_axis_x\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"target\":\"current\",\"url\":\"?t=1&utm_campaign=menu&utm_content=top_menu_categories&utm_term=easy_versions&global_filter_1549057302228=&global_filter_1549057309054=825&global_filter_1549057314984=\"}},\"period_zoom\":\"month\",\"settings\":{\"period\":\"month\",\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\",\"\"],\"kanban\":{\"kanban_group\":\"\",\"kanban_group_trackers\":[\"7\",\"37\",\"8\",\"34\",\"49\",\"35\",\"6\",\"32\",\"31\",\"13\",\"26\",\"38\",\"39\",\"40\",\"41\",\"42\",\"43\",\"44\",\"45\",\"46\",\"47\",\"48\"],\"kanban_group_statuses\":[\"1\",\"27\",\"17\",\"19\",\"26\",\"15\",\"25\",\"14\",\"24\",\"21\",\"13\",\"3\",\"5\",\"6\",\"20\",\"22\",\"23\"],\"main_attribute\":\"\",\"summable_column\":\"\",\"avatar_attribute\":\"\",\"date_details\":[\"\"],\"icon_details\":[\"\"],\"default_swimlane\":\"\"}}}',6,1,'2019-02-13 00:34:09','2019-02-13 01:57:30'),('0a4fb9be-d9ae-4ec3-9b9f-a25786c1b3f4',6,22,202,NULL,NULL,5,'{\"set_filter\":\"1\",\"query_type\":\"2\",\"query_name\":\"Open sprints by project\'s\",\"outputs\":[\"list\"],\"row_limit\":\"1000\",\"fields\":[\"closed\"],\"operators\":{\"closed\":\"=\"},\"values\":{\"closed\":[\"0\"]},\"sort_criteria\":{\"0\":[\"\",\"\"],\"1\":[\"\",\"\"],\"2\":[\"\",\"\"]},\"column_names\":[\"name\",\"version\",\"goal\",\"due_date\",\"capacity\",\"story_points_closed_false\",\"story_points_closed_true\"],\"group_by\":[\"project\"],\"show_sum_row\":\"1\",\"load_groups_opened\":\"0\",\"show_avatars\":\"0\",\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"capacity\",\"y_label\":\"\",\"secondary_axis_y_column\":\"\",\"period_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"bar_reverse_order\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"url\":\"\",\"target\":\"current\"}},\"period_zoom\":\"month\",\"settings\":{\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\"]}}',7,1,'2021-08-23 17:12:58','2021-08-23 17:12:58'),('0ce12955-308a-4069-b8db-5cadaeaaa5e4',4,12,147,NULL,NULL,1,NULL,3,1,'2021-08-23 17:12:56','2021-08-23 17:12:56'),('1285a9db-749a-4741-981d-353721a5f405',1,1,27,1,NULL,2,'{\"scheduler_settings\":{\"scheduler_type\":\"personal\",\"range_type\":\"automatic\",\"display_from\":\"06:00\",\"display_to\":\"22:00\",\"show_weekends\":\"0\",\"filter_name\":\"\",\"icalendars\":[]},\"query_settings\":{\"settings\":{\"selected_principal_ids\":[\"\"]},\"active_query_klass\":\"EasySchedulerEasyQuery\",\"fields\":[\"assigned_to_id\",\"status_id\"],\"operators\":{\"assigned_to_id\":\"*\",\"status_id\":\"o\"},\"values\":{\"assigned_to_id\":[\"me\"],\"status_id\":[\"\"]},\"sort_criteria\":{\"0\":[\"priority\",\"desc\"],\"1\":[\"\",\"\"],\"2\":[\"\",\"\"]}}}',8,1,'2021-08-23 18:03:39','2021-08-23 18:09:13'),('18f58443-68f2-4d2a-8c11-a49e0bcf599a',2,4,76,NULL,1,4,NULL,NULL,1,'2021-08-23 17:52:49','2021-08-23 17:52:49'),('1a12da1a-b69c-446b-9bfe-2ed17f076c4a',4,16,148,NULL,NULL,1,NULL,1,1,'2021-08-23 17:12:56','2021-08-23 17:12:56'),('2322f745-d437-4cfc-8391-710aad9d73c4',6,22,184,NULL,NULL,10,'{\"easy_query_type\":\"EasyIssueQuery\",\"use_query_to_compare\":\"false\",\"name\":\"Spent Time - Closed Issues \",\"description\":\"Spent time form Closed Issues \",\"easy_icon\":\"icon-checked-circle\",\"color\":\"palette-34\",\"outputs\":[\"list\"],\"sort_criteria\":{\"0\":[\"\",\"\"],\"1\":[\"\",\"\"],\"2\":[\"\",\"\"]},\"column_names\":[\"subject\",\"status\",\"assigned_to\"],\"group_by\":[\"\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"0\",\"show_avatars\":\"1\",\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"assigned_to\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"estimated_hours\",\"y_label\":\"\",\"secondary_axis_y_column\":\"\",\"period_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"bar_reverse_order\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"url\":\"\",\"target\":\"current\"}},\"period_zoom\":\"month\",\"settings\":{\"period\":\"month\",\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\"],\"kanban\":{\"kanban_group\":\"\",\"kanban_group_trackers\":[\"1\",\"3\",\"4\",\"5\",\"2\"],\"kanban_group_statuses\":[\"2\",\"6\",\"3\",\"9\",\"10\",\"8\",\"7\",\"4\"],\"main_attribute\":\"\",\"summable_column\":\"\",\"avatar_attribute\":\"\",\"date_details\":[\"\"],\"icon_details\":[\"\"],\"default_swimlane\":\"\"}},\"compere_to_previous_period\":\"0\",\"operator\":\">\",\"easy_query_type_to_compare\":\"EasyIssueQuery\",\"type_to_compare\":\"sum\",\"column_to_sum_to_compare\":\"estimated_hours\",\"type\":\"sum\",\"column_to_sum\":\"spent_hours\",\"query\":{\"set_filter\":\"1\",\"fields\":[\"\",\"status_id\",\"easy_sprint_id\"],\"query_type\":\"2\",\"query_name\":\"name of filter\",\"row_limit\":\"10\",\"operators\":{\"status_id\":\"c\",\"easy_sprint_id\":\"*\"},\"values\":{\"status_id\":[\"\"],\"easy_sprint_id\":[\"\"]}}}',7,1,'2021-08-23 17:12:59','2021-08-23 17:12:59'),('2bec25e9-7523-4d37-8680-6759de270705',6,22,184,NULL,NULL,8,'{\"easy_query_type\":\"EasyIssueQuery\",\"use_query_to_compare\":\"false\",\"name\":\"Estimate - Open Issues \",\"description\":\"Estimated time form Open Issues \",\"easy_icon\":\"icon-move\",\"color\":\"palette-20\",\"outputs\":[\"list\"],\"sort_criteria\":{\"0\":[\"\",\"\"],\"1\":[\"\",\"\"],\"2\":[\"\",\"\"]},\"column_names\":[\"subject\",\"status\",\"assigned_to\"],\"group_by\":[\"\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"0\",\"show_avatars\":\"1\",\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"assigned_to\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"estimated_hours\",\"y_label\":\"\",\"secondary_axis_y_column\":\"\",\"period_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"bar_reverse_order\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"url\":\"\",\"target\":\"current\"}},\"period_zoom\":\"month\",\"settings\":{\"period\":\"month\",\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\"],\"kanban\":{\"kanban_group\":\"\",\"kanban_group_trackers\":[\"1\",\"3\",\"4\",\"5\",\"2\"],\"kanban_group_statuses\":[\"2\",\"6\",\"3\",\"9\",\"10\",\"8\",\"7\",\"4\"],\"main_attribute\":\"\",\"summable_column\":\"\",\"avatar_attribute\":\"\",\"date_details\":[\"\"],\"icon_details\":[\"\"],\"default_swimlane\":\"\"}},\"compere_to_previous_period\":\"0\",\"operator\":\">\",\"easy_query_type_to_compare\":\"EasyIssueQuery\",\"type_to_compare\":\"sum\",\"column_to_sum_to_compare\":\"estimated_hours\",\"type\":\"sum\",\"column_to_sum\":\"estimated_hours\",\"query\":{\"set_filter\":\"1\",\"fields\":[\"\",\"status_id\",\"easy_sprint_id\"],\"query_type\":\"2\",\"query_name\":\"name of filter\",\"row_limit\":\"10\",\"operators\":{\"status_id\":\"o\",\"easy_sprint_id\":\"*\"},\"values\":{\"status_id\":[\"\"],\"easy_sprint_id\":[\"\"]}}}',7,1,'2021-08-23 17:12:59','2021-08-23 17:12:59'),('3181b302-4884-4488-ad58-8b5dced26c89',9,36,254,NULL,NULL,1,'{\"easy_query_type\":\"EasyTimeEntryQuery\",\"query_name\":\"Spent time by people\",\"set_filter\":\"1\",\"query_type\":\"2\",\"outputs\":[\"chart\"],\"row_limit\":\"10\",\"global_filters\":{\"1549057302228\":{\"filter\":\"xproject_id\"},\"1549057314984\":{\"filter\":\"user_id\"}},\"sort_criteria\":{\"0\":[\"spent_on\",\"desc\"],\"1\":[\"\",\"\"],\"2\":[\"\",\"\"]},\"column_names\":[\"project\"],\"group_by\":[\"\"],\"show_sum_row\":\"1\",\"load_groups_opened\":\"0\",\"show_avatars\":\"1\",\"daily_snapshot\":\"0\",\"count_only_working_days\":\"0\",\"easy_query_snapshot\":{\"execute_as\":\"author\",\"execute_as_user_id\":\"\",\"period_options\":{\"period\":\"every_day\",\"time\":\"cron\",\"hours\":\"00:00\"}},\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"user\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"hours\",\"y_label\":\"Spent Hours\",\"secondary_axis_y_column\":\"\",\"period_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"long_tail\":\"0\",\"bar_reverse_order\":\"0\",\"bar_sort_by_axis_x\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"target\":\"current\",\"url\":\"?t=2&utm_campaign=menu&utm_content=top_menu_categories&utm_term=easy_versions&global_filter_1549057302228=&global_filter_1549057309054=806&global_filter_1549057314984=\"}},\"period_zoom\":\"month\",\"settings\":{\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\",\"\"]},\"cache_on\":\"\",\"cache_for_days\":\"\"}',6,1,'2019-02-13 00:34:09','2019-02-13 01:57:28'),('37a59f8e-75a3-4616-ac8a-efe22dcceec1',9,38,251,NULL,NULL,1,'{\"set_filter\":\"1\",\"query_type\":\"2\",\"query_name\":\"Open milestones by project\",\"outputs\":[\"list\"],\"row_limit\":\"50\",\"fields\":[\"status\"],\"operators\":{\"status\":\"=\"},\"values\":{\"status\":[\"open\"]},\"global_filters\":{\"1549057302228\":{\"filter\":\"project_id\"},\"1549057314984\":{\"filter\":\"\"}},\"sort_criteria\":{\"0\":[\"project\",\"asc\"],\"1\":[\"name\",\"asc\"],\"2\":[\"\",\"\"]},\"column_names\":[\"project\",\"name\",\"effective_date\",\"description\",\"status\",\"sharing\"],\"group_by\":[\"project\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"0\",\"show_avatars\":\"0\",\"daily_snapshot\":\"0\",\"count_only_working_days\":\"0\",\"easy_query_snapshot\":{\"execute_as\":\"author\",\"execute_as_user_id\":\"\",\"period_options\":{\"period\":\"every_day\",\"time\":\"cron\",\"hours\":\"00:00\"}},\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"project\",\"y_label\":\"\",\"period_column\":\"\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"target\":\"current\",\"url\":\"?t=1&utm_campaign=menu&utm_content=top_menu_categories&utm_term=easy_versions\"}},\"period_zoom\":\"month\"}',5,1,'2019-02-02 07:01:02','2019-02-13 01:47:28'),('38c0675e-9035-495b-ac6b-524af7f82186',9,37,254,NULL,NULL,1,'{\"easy_query_type\":\"EasyIssueQuery\",\"query_name\":\"Tasks by assignee\",\"set_filter\":\"1\",\"query_type\":\"2\",\"outputs\":[\"chart\"],\"row_limit\":\"10\",\"fields\":[\"status_id\",\"fixed_version_id\"],\"operators\":{\"status_id\":\"o\",\"fixed_version_id\":\"o\"},\"values\":{\"status_id\":[\"1\"],\"fixed_version_id\":[\"\"]},\"global_filters\":{\"1549057302228\":{\"filter\":\"project_id\"},\"1549057309054\":{\"filter\":\"fixed_version_id\"},\"1549057314984\":{\"filter\":\"assigned_to_id\"}},\"sort_criteria\":{\"0\":[\"priority\",\"desc\"],\"1\":[\"due_date\",\"asc\"],\"2\":[\"\",\"\"]},\"column_names\":[\"project\",\"activity\"],\"group_by\":[\"\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"0\",\"show_avatars\":\"0\",\"daily_snapshot\":\"0\",\"count_only_working_days\":\"0\",\"easy_query_snapshot\":{\"execute_as\":\"author\",\"execute_as_user_id\":\"\",\"period_options\":{\"period\":\"every_day\",\"time\":\"cron\",\"hours\":\"00:00\"}},\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"assigned_to\",\"axis_y_type\":\"count\",\"axis_y_column\":\"estimated_hours\",\"y_label\":\"\",\"secondary_axis_y_column\":\"\",\"period_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"long_tail\":\"0\",\"bar_reverse_order\":\"0\",\"bar_sort_by_axis_x\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"target\":\"current\",\"url\":\"?t=1&global_filter_1549057302228=2799&utm_campaign=menu&utm_content=top_menu_categories&utm_term=easy_versions\"}},\"period_zoom\":\"month\",\"settings\":{\"period\":\"month\",\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\",\"\"],\"kanban\":{\"kanban_group\":\"\",\"kanban_group_trackers\":[\"7\",\"37\",\"8\",\"34\",\"49\",\"35\",\"6\",\"32\",\"31\",\"13\",\"26\",\"38\",\"39\",\"40\",\"41\",\"42\",\"43\",\"44\",\"45\",\"46\",\"47\",\"48\"],\"kanban_group_statuses\":[\"1\",\"27\",\"17\",\"19\",\"26\",\"15\",\"25\",\"14\",\"24\",\"21\",\"13\",\"3\",\"5\",\"6\",\"20\",\"22\",\"23\"],\"main_attribute\":\"\",\"summable_column\":\"\",\"avatar_attribute\":\"\",\"date_details\":[\"\"],\"icon_details\":[\"\"],\"default_swimlane\":\"\"}},\"cache_on\":\"\",\"cache_for_days\":\"\"}',6,1,'2019-02-13 00:34:09','2019-02-13 01:57:29'),('3bcc6b4c-181c-4057-8247-b42c7b67d418',6,23,194,NULL,NULL,1,'{\"easy_query_type\":\"EasyIssueQuery\",\"query_name\":\"Velocity - closing SP in time\",\"set_filter\":\"1\",\"query_type\":\"2\",\"outputs\":[\"chart\"],\"row_limit\":\"10\",\"fields\":[\"easy_sprint_id\",\"status_id\"],\"operators\":{\"easy_sprint_id\":\"*\",\"status_id\":\"c\"},\"values\":{\"easy_sprint_id\":[\"\"],\"status_id\":[\"\"]},\"sort_criteria\":{\"0\":[\"\",\"\"],\"1\":[\"\",\"\"],\"2\":[\"\",\"\"]},\"column_names\":[\"project\",\"subject\",\"assigned_to\",\"due_date\",\"status\",\"done_ratio\",\"total_estimated_hours\",\"total_spent_estimated_timeentries\"],\"group_by\":[\"\"],\"show_sum_row\":\"1\",\"load_groups_opened\":\"1\",\"show_avatars\":\"1\",\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"closed_on\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"easy_story_points\",\"y_label\":\"\",\"secondary_axis_y_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"bar_reverse_order\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"url\":\"\",\"target\":\"current\"},\"additional_queries\":{\"0\":{\"easy_query_type\":\"\"}}},\"period_zoom\":\"month\",\"settings\":{\"period\":\"month\",\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\",\"\"],\"kanban\":{\"kanban_group\":\"\",\"kanban_group_trackers\":[\"1\",\"3\",\"5\",\"4\"],\"kanban_group_statuses\":[\"9\",\"10\",\"2\",\"3\",\"4\",\"6\",\"7\",\"8\"],\"main_attribute\":\"\",\"summable_column\":\"\",\"avatar_attribute\":\"\",\"date_details\":[\"\"],\"icon_details\":[\"\"],\"default_swimlane\":\"\"}},\"cache_on\":\"\",\"cache_for_days\":\"\"}',7,1,'2021-08-23 17:12:59','2021-08-23 17:12:59'),('40e317f1-85db-4c0a-8ed2-cce99858fea4',8,31,212,NULL,NULL,1,'{\"name\":\"Billable time fullfilment\",\"needle_easy_query_klass\":\"easy_time_entry_query\",\"needle_query_sumable_column\":\"hours\",\"action_range\":\"dynamic_range\",\"range_easy_query_klass\":\"easy_time_entry_query\",\"range_query_sumable_column\":\"hours\",\"tags\":{\"0\":{\"easy_query_settings\":{\"set_filter\":\"1\"},\"name\":\"\",\"plan\":\"\",\"needle_easy_query_settings\":{\"fields\":[\"spent_on\",\"easy_is_billable\"],\"operators\":{\"spent_on\":\"date_period_1\",\"easy_is_billable\":\"=\"},\"values\":{\"spent_on\":{\"period\":\"30_days\",\"period_days2\":\"\",\"period_days\":\"\",\"from\":\"2019-02-02\",\"to\":\"2019-03-04\",\"shift\":\"\"},\"easy_is_billable\":[\"1\"]},\"global_filters\":{\"1549266764826\":{\"filter\":\"spent_on\"},\"1549266768554\":{\"filter\":\"xproject_id\"},\"1549266770893\":{\"filter\":\"user_id\"}}},\"range_easy_query_settings\":{\"fields\":[\"spent_on\"],\"operators\":{\"spent_on\":\"date_period_1\"},\"values\":{\"spent_on\":{\"period\":\"30_days\",\"period_days2\":\"\",\"period_days\":\"\",\"from\":\"2019-02-02\",\"to\":\"2019-03-04\",\"shift\":\"\"}},\"global_filters\":{\"1549266764826\":{\"filter\":\"spent_on\"},\"1549266768554\":{\"filter\":\"xproject_id\"},\"1549266770893\":{\"filter\":\"user_id\"}}}},\"1\":{\"easy_query_settings\":{\"set_filter\":\"1\"},\"name\":\"\",\"plan\":\"\",\"needle_easy_query_settings\":{\"global_filters\":{\"1549266764826\":{\"filter\":\"\"},\"1549266768554\":{\"filter\":\"\"},\"1549266770893\":{\"filter\":\"\"}}},\"range_easy_query_settings\":{\"global_filters\":{\"1549266764826\":{\"filter\":\"\"},\"1549266768554\":{\"filter\":\"\"},\"1549266770893\":{\"filter\":\"\"}}}},\"2\":{\"easy_query_settings\":{\"set_filter\":\"1\"},\"name\":\"\",\"plan\":\"\",\"needle_easy_query_settings\":{\"global_filters\":{\"1549266764826\":{\"filter\":\"\"},\"1549266768554\":{\"filter\":\"\"},\"1549266770893\":{\"filter\":\"\"}}},\"range_easy_query_settings\":{\"global_filters\":{\"1549266764826\":{\"filter\":\"\"},\"1549266768554\":{\"filter\":\"\"},\"1549266770893\":{\"filter\":\"\"}}}}}}',4,1,'2019-02-04 17:04:06','2019-03-05 00:14:43'),('42983f62-caaa-45cd-9865-82616a5e6653',8,30,215,NULL,NULL,4,'{\"set_filter\":\"1\",\"query_type\":\"2\",\"query_name\":\"Running task timers\",\"outputs\":[\"list\"],\"row_limit\":\"10\",\"global_filters\":{\"1549266764826\":{\"filter\":\"start\"},\"1549266768554\":{\"filter\":\"issue_project_id\"},\"1549266770893\":{\"filter\":\"user_id\"}},\"sort_criteria\":{\"0\":[\"\",\"\"],\"1\":[\"\",\"\"],\"2\":[\"\",\"\"]},\"column_names\":[\"issue\",\"user\",\"paused_at\",\"issue_estimated_hours\",\"current_hours\"],\"group_by\":[\"user\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"0\",\"show_avatars\":\"0\",\"daily_snapshot\":\"0\",\"easy_query_snapshot\":{\"execute_as\":\"author\",\"execute_as_user_id\":\"\",\"period_options\":{\"period\":\"every_day\",\"time\":\"cron\",\"hours\":\"00:00\"}}}',4,1,'2019-02-04 17:00:15','2019-02-04 17:06:48'),('4ba00b1b-728b-493f-a977-59694f138cb9',2,8,80,NULL,1,1,NULL,NULL,1,'2021-08-23 17:52:49','2021-08-23 17:52:49'),('4bdbbdcf-c692-4e92-adc5-563f29214b54',8,30,213,NULL,NULL,1,'{\"easy_query_type\":\"EasyTimeEntryQuery\",\"use_query_to_compare\":\"false\",\"name\":\"Spent time\",\"description\":\"from all tasks\",\"easy_icon\":\"\",\"color\":\"palette-4\",\"type\":\"sum\",\"column_to_sum\":\"hours\",\"query\":{\"set_filter\":\"1\",\"query_type\":\"2\",\"query_name\":\"name of filter\",\"row_limit\":\"10\",\"global_filters\":{\"1549266764826\":{\"filter\":\"spent_on\"},\"1549266768554\":{\"filter\":\"xproject_id\"},\"1549266770893\":{\"filter\":\"user_id\"}}},\"outputs\":[\"list\"],\"sort_criteria\":{\"0\":[\"spent_on\",\"desc\"],\"1\":[\"\",\"\"],\"2\":[\"\",\"\"]},\"column_names\":[\"user\",\"spent_on\",\"project\",\"issue\",\"activity\",\"hours\"],\"group_by\":[\"\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"0\",\"show_avatars\":\"0\",\"daily_snapshot\":\"0\",\"easy_query_snapshot\":{\"execute_as\":\"author\",\"execute_as_user_id\":\"\",\"period_options\":{\"period\":\"every_day\",\"time\":\"cron\",\"hours\":\"00:00\"}},\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"activity\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"estimated_hours\",\"y_label\":\"\",\"secondary_axis_y_column\":\"\",\"period_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"long_tail\":\"0\",\"bar_reverse_order\":\"0\",\"bar_sort_by_axis_x\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"target\":\"current\",\"url\":\"?t=1\"}},\"period_zoom\":\"month\",\"settings\":{\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\"]},\"compere_to_previous_period\":\"1\",\"operator\":\">\",\"show_as_percentage\":\"0\",\"easy_query_type_to_compare\":\"EasyTimeEntryQuery\",\"type_to_compare\":\"sum\",\"column_to_sum_to_compare\":\"hours\",\"query_to_compare\":{\"global_filters\":{\"1549266764826\":{\"filter\":\"\"},\"1549266768554\":{\"filter\":\"\"},\"1549266770893\":{\"filter\":\"\"}}}}',4,1,'2019-02-04 16:51:59','2019-02-04 16:59:36'),('4c3bbdbf-8175-475e-890f-42fcb8c6daa4',6,22,184,NULL,NULL,9,'{\"easy_query_type\":\"EasyIssueQuery\",\"use_query_to_compare\":\"false\",\"name\":\"Estimate - Closed Issues \",\"description\":\"Estimated time form Closed Issues \",\"easy_icon\":\"icon-bullet-list\",\"color\":\"palette-9\",\"outputs\":[\"list\"],\"sort_criteria\":{\"0\":[\"\",\"\"],\"1\":[\"\",\"\"],\"2\":[\"\",\"\"]},\"column_names\":[\"subject\",\"status\",\"assigned_to\"],\"group_by\":[\"\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"0\",\"show_avatars\":\"1\",\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"assigned_to\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"estimated_hours\",\"y_label\":\"\",\"secondary_axis_y_column\":\"\",\"period_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"bar_reverse_order\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"url\":\"\",\"target\":\"current\"}},\"period_zoom\":\"month\",\"settings\":{\"period\":\"month\",\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\"],\"kanban\":{\"kanban_group\":\"\",\"kanban_group_trackers\":[\"1\",\"3\",\"4\",\"5\",\"2\"],\"kanban_group_statuses\":[\"2\",\"6\",\"3\",\"9\",\"10\",\"8\",\"7\",\"4\"],\"main_attribute\":\"\",\"summable_column\":\"\",\"avatar_attribute\":\"\",\"date_details\":[\"\"],\"icon_details\":[\"\"],\"default_swimlane\":\"\"}},\"compere_to_previous_period\":\"0\",\"operator\":\">\",\"easy_query_type_to_compare\":\"EasyIssueQuery\",\"type_to_compare\":\"sum\",\"column_to_sum_to_compare\":\"estimated_hours\",\"type\":\"sum\",\"column_to_sum\":\"estimated_hours\",\"query\":{\"set_filter\":\"1\",\"fields\":[\"\",\"status_id\",\"easy_sprint_id\"],\"query_type\":\"2\",\"query_name\":\"name of filter\",\"row_limit\":\"10\",\"operators\":{\"status_id\":\"c\",\"easy_sprint_id\":\"*\"},\"values\":{\"status_id\":[\"\"],\"easy_sprint_id\":[\"\"]}}}',7,1,'2021-08-23 17:12:59','2021-08-23 17:12:59'),('4f545d9a-6f59-4c29-8d7b-44976e196bef',8,30,226,NULL,NULL,5,'{\"easy_query_type\":\"EasyTimeEntryQuery\",\"set_filter\":\"1\",\"query_type\":\"2\",\"query_name\":\"Spent time by month\",\"outputs\":[\"list\"],\"row_limit\":\"50\",\"operators\":{\"spent_on\":\"date_period_1\"},\"values\":{\"spent_on\":{\"period\":\"current_month\",\"period_days2\":\"\",\"period_days\":\"\",\"from\":\"\",\"to\":\"\",\"shift\":\"\"}},\"global_filters\":{\"1549266764826\":{\"filter\":\"spent_on\"},\"1549266768554\":{\"filter\":\"xproject_id\"},\"1549266770893\":{\"filter\":\"user_id\"}},\"sort_criteria\":{\"0\":[\"spent_on\",\"desc\"],\"1\":[\"\",\"\"],\"2\":[\"\",\"\"]},\"column_names\":[\"project\",\"issue\",\"spent_on\",\"user\",\"comments\",\"hours\",\"easy_is_billable\"],\"group_by\":[\"spent_on\"],\"show_sum_row\":\"1\",\"load_groups_opened\":\"0\",\"show_avatars\":\"0\",\"daily_snapshot\":\"0\",\"count_only_working_days\":\"0\",\"easy_query_snapshot\":{\"execute_as\":\"author\",\"execute_as_user_id\":\"\",\"period_options\":{\"period\":\"every_day\",\"time\":\"cron\",\"hours\":\"00:00\"}},\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"activity\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"easy_divided_hours\",\"y_label\":\"\",\"secondary_axis_y_column\":\"\",\"period_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"long_tail\":\"0\",\"bar_reverse_order\":\"0\",\"bar_sort_by_axis_x\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"target\":\"current\",\"url\":\"?t=1\"}},\"period_zoom\":\"month\",\"settings\":{\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\"]}}',4,1,'2019-03-05 00:12:26','2019-03-05 00:13:45'),('670adebb-3d5b-439c-9714-5f2dc529bb7a',6,22,184,NULL,NULL,2,'{\"easy_query_type\":\"EasySprintQuery\",\"use_query_to_compare\":\"false\",\"name\":\"Open Story Points\",\"description\":\"Trends - Tasks\",\"easy_icon\":\"icon-list\",\"color\":\"palette-7\",\"outputs\":[\"list\"],\"sort_criteria\":{\"0\":[\"\",\"\"],\"1\":[\"\",\"\"],\"2\":[\"\",\"\"]},\"column_names\":[\"name\",\"project\",\"due_date\"],\"group_by\":[\"\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"0\",\"show_avatars\":\"0\",\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"due_date\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"capacity\",\"y_label\":\"\",\"secondary_axis_y_column\":\"\",\"period_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"bar_reverse_order\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"url\":\"\",\"target\":\"current\"}},\"period_zoom\":\"month\",\"settings\":{\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\"]},\"compere_to_previous_period\":\"0\",\"operator\":\">\",\"easy_query_type_to_compare\":\"EasyIssueQuery\",\"type_to_compare\":\"sum\",\"column_to_sum_to_compare\":\"estimated_hours\",\"type\":\"sum\",\"column_to_sum\":\"story_points_closed_false\",\"query\":{\"set_filter\":\"1\",\"fields\":[\"\",\"closed\"],\"query_type\":\"2\",\"query_name\":\"name of filter\",\"row_limit\":\"10\",\"operators\":{\"closed\":\"=\"},\"values\":{\"closed\":[\"0\"]}}}',7,1,'2021-08-23 17:12:58','2021-08-23 17:12:58'),('6bca76e7-acad-4810-b2a1-c3739c920e49',2,4,77,NULL,1,3,NULL,NULL,1,'2021-08-23 17:52:49','2021-08-23 17:52:49'),('6c59be5b-d7df-4519-bf64-b07efad211ad',1,2,35,5,NULL,3,'{\"row_limit\":\"10\"}',NULL,1,'2021-08-23 17:53:34','2021-08-23 17:53:34'),('6e04415d-3dc0-4d98-b602-1b3858a69cb0',1,2,35,4,NULL,3,'{\"row_limit\":\"10\"}',NULL,1,'2021-08-23 17:13:29','2021-08-23 17:13:29'),('6ef5f404-492c-4cd7-98eb-a9c135124798',2,4,75,NULL,1,1,NULL,NULL,1,'2021-08-23 17:52:49','2021-08-23 17:52:49'),('7a0e24a8-50ff-4b57-9c62-b110a6a788fe',2,8,79,NULL,1,2,NULL,NULL,1,'2021-08-23 17:52:49','2021-08-23 17:52:49'),('7d95c064-4f23-446b-b66a-0b762ec436f2',9,35,242,NULL,NULL,2,'{\"easy_query_type\":\"EasyIssueQuery\",\"use_query_to_compare\":\"false\",\"name\":\"Remaining time\",\"description\":\"open tasks\",\"easy_icon\":\"\",\"color\":\"palette-35\",\"type\":\"sum\",\"column_to_sum\":\"remaining_timeentries\",\"query\":{\"set_filter\":\"1\",\"query_type\":\"2\",\"query_name\":\"name of filter\",\"row_limit\":\"10\",\"fields\":[\"status_id\"],\"operators\":{\"status_id\":\"o\"},\"values\":{\"status_id\":[\"1\"]},\"global_filters\":{\"1549057302228\":{\"filter\":\"project_id\"},\"1549057309054\":{\"filter\":\"fixed_version_id\"},\"1549057314984\":{\"filter\":\"assigned_to_id\"}}},\"outputs\":[\"list\"],\"sort_criteria\":{\"0\":[\"priority\",\"desc\"],\"1\":[\"due_date\",\"asc\"],\"2\":[\"\",\"\"]},\"column_names\":[\"project\",\"subject\",\"assigned_to\",\"status\",\"due_date\",\"done_ratio\"],\"group_by\":[\"\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"0\",\"show_avatars\":\"0\",\"daily_snapshot\":\"0\",\"count_only_working_days\":\"0\",\"easy_query_snapshot\":{\"execute_as\":\"author\",\"execute_as_user_id\":\"\",\"period_options\":{\"period\":\"every_day\",\"time\":\"cron\",\"hours\":\"00:00\"}},\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"assigned_to\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"cf_414\",\"y_label\":\"\",\"secondary_axis_y_column\":\"\",\"period_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"long_tail\":\"0\",\"bar_reverse_order\":\"0\",\"bar_sort_by_axis_x\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"target\":\"current\",\"url\":\"?t=2\"}},\"period_zoom\":\"month\",\"settings\":{\"period\":\"month\",\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\"],\"kanban\":{\"kanban_group\":\"\",\"kanban_group_trackers\":[\"7\",\"37\",\"8\",\"34\",\"49\",\"35\",\"6\",\"32\",\"31\",\"13\",\"26\",\"38\",\"39\",\"40\",\"41\",\"42\",\"43\",\"44\",\"45\",\"46\",\"47\",\"48\"],\"kanban_group_statuses\":[\"1\",\"27\",\"17\",\"19\",\"26\",\"15\",\"25\",\"14\",\"24\",\"21\",\"13\",\"3\",\"5\",\"6\",\"20\",\"22\",\"23\"],\"main_attribute\":\"\",\"summable_column\":\"\",\"avatar_attribute\":\"\",\"date_details\":[\"\"],\"icon_details\":[\"\"],\"default_swimlane\":\"\"}},\"compere_to_previous_period\":\"0\",\"operator\":\">\",\"show_as_percentage\":\"0\",\"easy_query_type_to_compare\":\"EasyVersionQuery\",\"query_to_compare\":{\"global_filters\":{\"1549057302228\":{\"filter\":\"\"},\"1549057314984\":{\"filter\":\"\"}}}}',6,1,'2019-02-13 00:34:09','2019-02-13 01:57:28'),('80336635-6ff0-4acc-b7ba-f20d53ae1358',8,30,213,NULL,NULL,3,'{\"easy_query_type\":\"EasyTimeEntryQuery\",\"use_query_to_compare\":\"false\",\"name\":\"Help Desk \",\"description\":\"Spent time\",\"easy_icon\":\"\",\"color\":\"palette-2\",\"type\":\"sum\",\"column_to_sum\":\"hours\",\"query\":{\"set_filter\":\"1\",\"query_type\":\"2\",\"query_name\":\"name of filter\",\"row_limit\":\"10\",\"fields\":[\"tracker_id\"],\"operators\":{\"tracker_id\":\"=\"},\"values\":{\"tracker_id\":[\"37\"]},\"global_filters\":{\"1549266764826\":{\"filter\":\"\"},\"1549266768554\":{\"filter\":\"\"},\"1549266770893\":{\"filter\":\"\"}}},\"outputs\":[\"list\"],\"sort_criteria\":{\"0\":[\"spent_on\",\"desc\"],\"1\":[\"\",\"\"],\"2\":[\"\",\"\"]},\"column_names\":[\"project\",\"issue\",\"spent_on\",\"user\",\"comments\",\"hours\",\"easy_is_billable\"],\"group_by\":[\"\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"0\",\"show_avatars\":\"0\",\"daily_snapshot\":\"0\",\"count_only_working_days\":\"0\",\"easy_query_snapshot\":{\"execute_as\":\"author\",\"execute_as_user_id\":\"\",\"period_options\":{\"period\":\"every_day\",\"time\":\"cron\",\"hours\":\"00:00\"}},\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"activity\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"easy_divided_hours\",\"y_label\":\"\",\"secondary_axis_y_column\":\"\",\"period_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"long_tail\":\"0\",\"bar_reverse_order\":\"0\",\"bar_sort_by_axis_x\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"target\":\"current\",\"url\":\"?t=1\"}},\"period_zoom\":\"month\",\"settings\":{\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\"]},\"compere_to_previous_period\":\"1\",\"operator\":\">\",\"show_as_percentage\":\"0\",\"easy_query_type_to_compare\":\"EasyTimeEntryQuery\",\"type_to_compare\":\"sum\",\"column_to_sum_to_compare\":\"hours\",\"query_to_compare\":{\"global_filters\":{\"1549266764826\":{\"filter\":\"\"},\"1549266768554\":{\"filter\":\"\"},\"1549266770893\":{\"filter\":\"\"}}}}',4,1,'2019-02-04 16:55:22','2019-03-05 00:13:45'),('80376bc5-7be6-4d37-be50-e7a04e93605a',9,35,242,NULL,NULL,4,'{\"easy_query_type\":\"EasyIssueQuery\",\"use_query_to_compare\":\"false\",\"name\":\"Closed tasks\",\"description\":\"in milesones\",\"easy_icon\":\"\",\"color\":\"palette-12\",\"type\":\"count\",\"column_to_sum\":\"estimated_hours\",\"query\":{\"set_filter\":\"1\",\"query_type\":\"2\",\"query_name\":\"name of filter\",\"row_limit\":\"10\",\"fields\":[\"status_id\",\"fixed_version_id\"],\"operators\":{\"status_id\":\"c\",\"fixed_version_id\":\"*\"},\"values\":{\"status_id\":[\"\"],\"fixed_version_id\":[\"5\"]},\"global_filters\":{\"1549057302228\":{\"filter\":\"project_id\"},\"1549057309054\":{\"filter\":\"fixed_version_id\"},\"1549057314984\":{\"filter\":\"assigned_to_id\"}}},\"outputs\":[\"list\"],\"sort_criteria\":{\"0\":[\"priority\",\"desc\"],\"1\":[\"due_date\",\"asc\"],\"2\":[\"\",\"\"]},\"column_names\":[\"project\",\"subject\",\"assigned_to\",\"status\",\"due_date\",\"done_ratio\"],\"group_by\":[\"\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"0\",\"show_avatars\":\"0\",\"daily_snapshot\":\"0\",\"count_only_working_days\":\"0\",\"easy_query_snapshot\":{\"execute_as\":\"author\",\"execute_as_user_id\":\"\",\"period_options\":{\"period\":\"every_day\",\"time\":\"cron\",\"hours\":\"00:00\"}},\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"assigned_to\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"cf_414\",\"y_label\":\"\",\"secondary_axis_y_column\":\"\",\"period_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"long_tail\":\"0\",\"bar_reverse_order\":\"0\",\"bar_sort_by_axis_x\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"target\":\"current\",\"url\":\"?t=1\"}},\"period_zoom\":\"month\",\"settings\":{\"period\":\"month\",\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\"],\"kanban\":{\"kanban_group\":\"\",\"kanban_group_trackers\":[\"7\",\"37\",\"8\",\"34\",\"49\",\"35\",\"6\",\"32\",\"31\",\"13\",\"26\",\"38\",\"39\",\"40\",\"41\",\"42\",\"43\",\"44\",\"45\",\"46\",\"47\",\"48\"],\"kanban_group_statuses\":[\"1\",\"27\",\"17\",\"19\",\"26\",\"15\",\"25\",\"14\",\"24\",\"21\",\"13\",\"3\",\"5\",\"6\",\"20\",\"22\",\"23\"],\"main_attribute\":\"\",\"summable_column\":\"\",\"avatar_attribute\":\"\",\"date_details\":[\"\"],\"icon_details\":[\"\"],\"default_swimlane\":\"\"}},\"compere_to_previous_period\":\"0\",\"operator\":\">\",\"show_as_percentage\":\"0\",\"easy_query_type_to_compare\":\"EasyIssueQuery\",\"type_to_compare\":\"sum\",\"column_to_sum_to_compare\":\"estimated_hours\",\"query_to_compare\":{\"global_filters\":{\"1549057302228\":{\"filter\":\"\"},\"1549057309054\":{\"filter\":\"\"},\"1549057314984\":{\"filter\":\"\"}}}}',5,1,'2019-02-02 06:59:12','2019-02-13 01:47:26'),('872504b8-74f7-4403-bce6-d8263646ea1e',6,22,195,NULL,NULL,6,'{\"easy_query_type\":\"EasyIssueQuery\",\"query_name\":\"Estimated vs. Spent time - open sprints\",\"set_filter\":\"1\",\"query_type\":\"2\",\"outputs\":[\"chart\"],\"row_limit\":\"10\",\"fields\":[\"easy_sprint_id\",\"status_id\"],\"operators\":{\"easy_sprint_id\":\"*\",\"status_id\":\"*\"},\"values\":{\"easy_sprint_id\":[\"\"],\"status_id\":[\"\"]},\"sort_criteria\":{\"0\":[\"\",\"\"],\"1\":[\"\",\"\"],\"2\":[\"\",\"\"]},\"column_names\":[\"project\",\"subject\",\"assigned_to\",\"due_date\",\"status\",\"done_ratio\",\"total_estimated_hours\",\"total_spent_estimated_timeentries\"],\"group_by\":[\"\"],\"show_sum_row\":\"1\",\"load_groups_opened\":\"1\",\"show_avatars\":\"1\",\"chart_settings\":{\"primary_renderer\":\"bar\",\"axis_x_column\":\"issue_easy_sprint_relation.easy_sprint\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"estimated_hours\",\"y_label\":\"Estimated / Spent time\",\"secondary_axis_y_column\":\"spent_hours\",\"period_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"bar_reverse_order\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"url\":\"\",\"target\":\"current\"},\"additional_queries\":{\"0\":{\"easy_query_type\":\"\"}}},\"period_zoom\":\"month\",\"settings\":{\"period\":\"month\",\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\",\"\"],\"kanban\":{\"kanban_group\":\"\",\"kanban_group_trackers\":[\"1\",\"3\",\"5\",\"4\"],\"kanban_group_statuses\":[\"9\",\"10\",\"2\",\"3\",\"4\",\"6\",\"7\",\"8\"],\"main_attribute\":\"\",\"summable_column\":\"\",\"avatar_attribute\":\"\",\"date_details\":[\"\"],\"icon_details\":[\"\"],\"default_swimlane\":\"\"}},\"cache_on\":\"\",\"cache_for_days\":\"\"}',7,1,'2021-08-23 17:12:58','2021-08-23 17:12:58'),('8870e51a-43b9-45b1-b38c-76b74dccb77b',2,8,81,NULL,1,3,NULL,NULL,1,'2021-08-23 17:52:49','2021-08-23 17:52:49'),('93056326-a057-4d13-8acc-f2267a406916',9,35,242,NULL,NULL,1,'{\"easy_query_type\":\"EasyIssueQuery\",\"use_query_to_compare\":\"false\",\"name\":\"Estimated time\",\"description\":\"open tasks\",\"easy_icon\":\"\",\"color\":\"palette-4\",\"type\":\"sum\",\"column_to_sum\":\"estimated_hours\",\"query\":{\"set_filter\":\"1\",\"query_type\":\"2\",\"query_name\":\"name of filter\",\"row_limit\":\"10\",\"fields\":[\"status_id\"],\"operators\":{\"status_id\":\"o\",\"start_date\":\"date_period_1\"},\"values\":{\"status_id\":[\"1\"],\"start_date\":{\"period\":\"all\",\"period_days2\":\"\",\"period_days\":\"\",\"from\":\"\",\"to\":\"\",\"shift\":\"\"}},\"global_filters\":{\"1549057302228\":{\"filter\":\"project_id\"},\"1549057309054\":{\"filter\":\"fixed_version_id\"},\"1549057314984\":{\"filter\":\"assigned_to_id\"}}},\"outputs\":[\"list\"],\"sort_criteria\":{\"0\":[\"priority\",\"desc\"],\"1\":[\"due_date\",\"asc\"],\"2\":[\"\",\"\"]},\"column_names\":[\"project\",\"subject\",\"assigned_to\",\"status\",\"due_date\",\"done_ratio\"],\"group_by\":[\"\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"0\",\"show_avatars\":\"0\",\"daily_snapshot\":\"0\",\"count_only_working_days\":\"0\",\"easy_query_snapshot\":{\"execute_as\":\"author\",\"execute_as_user_id\":\"\",\"period_options\":{\"period\":\"every_day\",\"time\":\"cron\",\"hours\":\"00:00\"}},\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"assigned_to\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"cf_414\",\"y_label\":\"\",\"secondary_axis_y_column\":\"\",\"period_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"long_tail\":\"0\",\"bar_reverse_order\":\"0\",\"bar_sort_by_axis_x\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"target\":\"current\",\"url\":\"?t=2\"}},\"period_zoom\":\"month\",\"settings\":{\"period\":\"month\",\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\"],\"kanban\":{\"kanban_group\":\"\",\"kanban_group_trackers\":[\"7\",\"37\",\"8\",\"34\",\"49\",\"35\",\"6\",\"32\",\"31\",\"13\",\"26\",\"38\",\"39\",\"40\",\"41\",\"42\",\"43\",\"44\",\"45\",\"46\",\"47\",\"48\"],\"kanban_group_statuses\":[\"1\",\"27\",\"17\",\"19\",\"26\",\"15\",\"25\",\"14\",\"24\",\"21\",\"13\",\"3\",\"5\",\"6\",\"20\",\"22\",\"23\"],\"main_attribute\":\"\",\"summable_column\":\"\",\"avatar_attribute\":\"\",\"date_details\":[\"\"],\"icon_details\":[\"\"],\"default_swimlane\":\"\"}},\"compere_to_previous_period\":\"0\",\"operator\":\">\",\"show_as_percentage\":\"0\",\"easy_query_type_to_compare\":\"EasyVersionQuery\",\"query_to_compare\":{\"global_filters\":{\"1549057302228\":{\"filter\":\"\"},\"1549057314984\":{\"filter\":\"\"}}}}',6,1,'2019-02-13 00:34:09','2019-02-13 01:57:28'),('9911d173-abac-4330-bf94-5bdbff8a9ce4',3,9,98,NULL,NULL,1,'{\"name\":\"Resource name\",\"day_start_time\":\"9\",\"day_end_time\":\"20\"}',NULL,1,'2021-08-23 17:12:56','2021-08-23 17:12:56'),('9dea35ba-2eb5-4107-8850-692859a851f8',2,4,74,NULL,1,2,'{\"action\":\"description\"}',NULL,1,'2021-08-23 17:52:49','2021-08-23 17:52:49'),('a040ef86-4b98-4abc-8014-eb5a0ff5ec20',1,2,34,1,NULL,2,'{\"row_limit\":\"10\"}',8,1,'2021-08-23 17:13:29','2021-08-23 17:13:29'),('a0ca988e-1c57-4a5c-bd34-e32b94d5a3d6',6,22,184,NULL,NULL,1,'{\"easy_query_type\":\"EasySprintQuery\",\"use_query_to_compare\":\"false\",\"name\":\"Open Sprints\",\"description\":\"Sprint\'s we working on\",\"easy_icon\":\"icon-split\",\"color\":\"palette-20\",\"outputs\":[\"list\"],\"sort_criteria\":{\"0\":[\"\",\"\"],\"1\":[\"\",\"\"],\"2\":[\"\",\"\"]},\"column_names\":[\"name\",\"project\",\"due_date\"],\"group_by\":[\"\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"0\",\"show_avatars\":\"0\",\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"due_date\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"capacity\",\"y_label\":\"\",\"secondary_axis_y_column\":\"\",\"period_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"bar_reverse_order\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"url\":\"\",\"target\":\"current\"}},\"period_zoom\":\"month\",\"settings\":{\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\"]},\"compere_to_previous_period\":\"0\",\"operator\":\">\",\"easy_query_type_to_compare\":\"EasySprintQuery\",\"type_to_compare\":\"sum\",\"column_to_sum_to_compare\":\"capacity\",\"type\":\"count\",\"column_to_sum\":\"capacity\",\"query\":{\"set_filter\":\"1\",\"fields\":[\"\",\"closed\"],\"query_type\":\"2\",\"query_name\":\"name of filter\",\"row_limit\":\"10\",\"operators\":{\"closed\":\"=\"},\"values\":{\"closed\":[\"0\"]}}}',7,1,'2021-08-23 17:12:58','2021-08-23 17:12:58'),('a4d2c610-47e4-439f-aeb8-ac46e702b99a',9,35,242,NULL,NULL,2,'{\"easy_query_type\":\"EasyVersionQuery\",\"use_query_to_compare\":\"false\",\"name\":\"Closed Milestones\",\"description\":\"Number\",\"easy_icon\":\"\",\"color\":\"palette-35\",\"query\":{\"set_filter\":\"1\",\"query_type\":\"2\",\"query_name\":\"name of filter\",\"row_limit\":\"10\",\"fields\":[\"status\"],\"operators\":{\"status\":\"=\"},\"values\":{\"status\":[\"closed\"]},\"global_filters\":{\"1549057302228\":{\"filter\":\"project_id\"},\"1549057314984\":{\"filter\":\"\"}}},\"outputs\":[\"list\"],\"sort_criteria\":{\"0\":[\"project\",\"asc\"],\"1\":[\"name\",\"asc\"],\"2\":[\"\",\"\"]},\"column_names\":[\"project\",\"name\",\"effective_date\",\"description\",\"status\",\"sharing\"],\"group_by\":[\"\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"1\",\"show_avatars\":\"0\",\"daily_snapshot\":\"0\",\"count_only_working_days\":\"0\",\"easy_query_snapshot\":{\"execute_as\":\"author\",\"execute_as_user_id\":\"\",\"period_options\":{\"period\":\"every_day\",\"time\":\"cron\",\"hours\":\"00:00\"}},\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"created_on\",\"y_label\":\"\",\"period_column\":\"\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"target\":\"current\",\"url\":\"?t=1\"}},\"period_zoom\":\"month\",\"compere_to_previous_period\":\"0\",\"operator\":\">\",\"show_as_percentage\":\"0\",\"easy_query_type_to_compare\":\"EasyVersionQuery\",\"query_to_compare\":{\"global_filters\":{\"1549057302228\":{\"filter\":\"\"},\"1549057314984\":{\"filter\":\"\"}}}}',5,1,'2019-02-02 06:36:53','2019-02-13 01:47:26'),('a6042300-cbc3-4064-a727-5404c8ceb985',1,1,20,1,NULL,1,'{\"config\":{\"title\":\"제목(Timeseries)\",\"period_zoom\":\"month\"},\"queries\":{\"q1629709714\":{\"set_filter\":\"1\",\"easy_query_type\":\"EasyUserQuery\",\"chart_settings\":{\"y_label\":\"\",\"axis_x_column\":\"created_on\",\"axis_y_type\":\"count\"},\"fields\":[\"status\"],\"operators\":{\"status\":\"=\"},\"values\":{\"status\":[\"\",\"1\"]}},\"q1629709721\":{\"easy_query_type\":\"\"}}}',8,1,'2021-08-23 18:08:04','2021-08-23 18:08:50'),('a7b59d47-3053-4c87-8519-f320ed918ccc',4,12,146,NULL,NULL,1,'{\"output\":\"calendar\",\"settings\":{\"period\":\"month\"}}',1,1,'2021-08-23 17:12:56','2021-08-23 17:12:56'),('b3e33bb8-c293-4102-be5d-d483d195726e',8,32,224,NULL,NULL,1,'{\"easy_query_type\":\"EasyTimeEntryQuery\",\"query_name\":\"Spent time by activity\",\"set_filter\":\"1\",\"query_type\":\"2\",\"outputs\":[\"chart\"],\"row_limit\":\"10\",\"fields\":[\"\"],\"operators\":{\"spent_on\":\"date_period_1\"},\"values\":{\"spent_on\":{\"period\":\"current_month\",\"period_days2\":\"\",\"period_days\":\"\",\"from\":\"\",\"to\":\"\",\"shift\":\"\"}},\"global_filters\":{\"1549266764826\":{\"filter\":\"spent_on\"},\"1549266768554\":{\"filter\":\"xproject_id\"},\"1549266770893\":{\"filter\":\"user_id\"}},\"sort_criteria\":{\"0\":[\"spent_on\",\"desc\"],\"1\":[\"\",\"\"],\"2\":[\"\",\"\"]},\"column_names\":[\"project\",\"issue\",\"spent_on\",\"user\",\"comments\",\"hours\",\"easy_is_billable\"],\"group_by\":[\"\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"0\",\"show_avatars\":\"0\",\"daily_snapshot\":\"0\",\"count_only_working_days\":\"0\",\"easy_query_snapshot\":{\"execute_as\":\"author\",\"execute_as_user_id\":\"\",\"period_options\":{\"period\":\"every_day\",\"time\":\"cron\",\"hours\":\"00:00\"}},\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"activity\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"hours\",\"y_label\":\"\",\"secondary_axis_y_column\":\"\",\"period_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"long_tail\":\"0\",\"bar_reverse_order\":\"0\",\"bar_sort_by_axis_x\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"target\":\"current\",\"url\":\"?t=1&global_filter_1549266764826=30_days\"},\"additional_queries\":{\"0\":{\"easy_query_type\":\"\"}}},\"period_zoom\":\"month\",\"settings\":{\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\",\"\"]},\"cache_on\":\"\",\"cache_for_days\":\"\"}',4,1,'2019-03-05 00:07:13','2019-03-05 00:10:30'),('c474e491-04bd-4be6-a2d8-f2ca92a6cfb7',9,35,242,NULL,NULL,3,'{\"easy_query_type\":\"EasyIssueQuery\",\"use_query_to_compare\":\"false\",\"name\":\"Open tasks\",\"description\":\"in milestones\",\"easy_icon\":\"\",\"color\":\"palette-1\",\"type\":\"count\",\"column_to_sum\":\"estimated_hours\",\"query\":{\"set_filter\":\"1\",\"query_type\":\"2\",\"query_name\":\"name of filter\",\"row_limit\":\"10\",\"fields\":[\"fixed_version_id\",\"status_id\"],\"operators\":{\"fixed_version_id\":\"*\",\"status_id\":\"o\"},\"values\":{\"fixed_version_id\":[\"5\"],\"status_id\":[\"\"]},\"global_filters\":{\"1549057302228\":{\"filter\":\"project_id\"},\"1549057309054\":{\"filter\":\"fixed_version_id\"},\"1549057314984\":{\"filter\":\"assigned_to_id\"}}},\"outputs\":[\"list\"],\"sort_criteria\":{\"0\":[\"priority\",\"desc\"],\"1\":[\"due_date\",\"asc\"],\"2\":[\"\",\"\"]},\"column_names\":[\"project\",\"subject\",\"assigned_to\",\"status\",\"due_date\",\"done_ratio\"],\"group_by\":[\"\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"0\",\"show_avatars\":\"0\",\"daily_snapshot\":\"0\",\"count_only_working_days\":\"0\",\"easy_query_snapshot\":{\"execute_as\":\"author\",\"execute_as_user_id\":\"\",\"period_options\":{\"period\":\"every_day\",\"time\":\"cron\",\"hours\":\"00:00\"}},\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"assigned_to\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"cf_414\",\"y_label\":\"\",\"secondary_axis_y_column\":\"\",\"period_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"long_tail\":\"0\",\"bar_reverse_order\":\"0\",\"bar_sort_by_axis_x\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"target\":\"current\",\"url\":\"?t=2\"}},\"period_zoom\":\"month\",\"settings\":{\"period\":\"month\",\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\"],\"kanban\":{\"kanban_group\":\"\",\"kanban_group_trackers\":[\"7\",\"37\",\"8\",\"34\",\"49\",\"35\",\"6\",\"32\",\"31\",\"13\",\"26\",\"38\",\"39\",\"40\",\"41\",\"42\",\"43\",\"44\",\"45\",\"46\",\"47\",\"48\"],\"kanban_group_statuses\":[\"1\",\"27\",\"17\",\"19\",\"26\",\"15\",\"25\",\"14\",\"24\",\"21\",\"13\",\"3\",\"5\",\"6\",\"20\",\"22\",\"23\"],\"main_attribute\":\"\",\"summable_column\":\"\",\"avatar_attribute\":\"\",\"date_details\":[\"\"],\"icon_details\":[\"\"],\"default_swimlane\":\"\"}},\"compere_to_previous_period\":\"0\",\"operator\":\">\",\"show_as_percentage\":\"0\",\"easy_query_type_to_compare\":\"EasyIssueQuery\",\"type_to_compare\":\"sum\",\"column_to_sum_to_compare\":\"estimated_hours\",\"query_to_compare\":{\"global_filters\":{\"1549057302228\":{\"filter\":\"\"},\"1549057309054\":{\"filter\":\"\"},\"1549057314984\":{\"filter\":\"\"}}}}',6,1,'2019-02-13 00:34:09','2019-02-13 01:57:28'),('c64fff23-989f-4be6-b44d-d4d55d8c9140',9,36,254,NULL,NULL,1,'{\"easy_query_type\":\"EasyIssueQuery\",\"query_name\":\"Estimated time by open milestones\",\"set_filter\":\"1\",\"query_type\":\"2\",\"outputs\":[\"chart\"],\"row_limit\":\"10\",\"fields\":[\"fixed_version_id\",\"status_id\"],\"operators\":{\"fixed_version_id\":\"o\",\"status_id\":\"o\"},\"values\":{\"fixed_version_id\":[\"5\"],\"status_id\":[\"\"]},\"global_filters\":{\"1549057302228\":{\"filter\":\"project_id\"},\"1549057309054\":{\"filter\":\"fixed_version_id\"},\"1549057314984\":{\"filter\":\"assigned_to_id\"}},\"sort_criteria\":{\"0\":[\"priority\",\"desc\"],\"1\":[\"due_date\",\"asc\"],\"2\":[\"parent\",\"asc\"]},\"column_names\":[\"subject\",\"project\",\"status\",\"assigned_to\",\"due_date\"],\"group_by\":[\"\"],\"show_sum_row\":\"1\",\"load_groups_opened\":\"0\",\"show_avatars\":\"1\",\"daily_snapshot\":\"0\",\"count_only_working_days\":\"0\",\"easy_query_snapshot\":{\"execute_as\":\"author\",\"execute_as_user_id\":\"\",\"period_options\":{\"period\":\"every_day\",\"time\":\"cron\",\"hours\":\"00:00\"}},\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"fixed_version\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"estimated_hours\",\"y_label\":\"\",\"secondary_axis_y_column\":\"\",\"period_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"long_tail\":\"0\",\"bar_reverse_order\":\"0\",\"bar_sort_by_axis_x\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"target\":\"modal\",\"url\":\"/easy_versions/overview?t=2&utm_campaign=menu&utm_content=top_menu_categories&utm_term=easy_versions&global_filter_1549057302228=%25global_filter_1549057302228%25&global_filter_1549057309054=%25raw_name%25&global_filter_1549057314984=%25global_filter_1549057314984%25\"}},\"period_zoom\":\"month\",\"settings\":{\"period\":\"month\",\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\",\"\"],\"kanban\":{\"kanban_group\":\"\",\"kanban_group_trackers\":[\"6\"],\"kanban_group_statuses\":[\"6\",\"3\"],\"main_attribute\":\"\",\"summable_column\":\"\",\"avatar_attribute\":\"\",\"date_details\":[\"\"],\"icon_details\":[\"\"],\"default_swimlane\":\"\"}},\"cache_on\":\"\",\"cache_for_days\":\"\"}',5,1,'2019-02-04 16:43:02','2019-02-13 01:47:26'),('cab2cf35-f7ff-41f0-b1c3-412ab4195d0f',6,22,184,NULL,NULL,3,'{\"easy_query_type\":\"EasyIssueQuery\",\"use_query_to_compare\":\"false\",\"name\":\"Velocity this month\",\"description\":\"Closed story points this month\",\"easy_icon\":\"icon-issue-update\",\"color\":\"palette-6\",\"type\":\"sum\",\"column_to_sum\":\"easy_story_points\",\"query\":{\"set_filter\":\"1\",\"query_type\":\"2\",\"query_name\":\"name of filter\",\"row_limit\":\"10\",\"fields\":[\"easy_sprint_id\",\"closed_on\",\"status_id\"],\"operators\":{\"easy_sprint_id\":\"*\",\"closed_on\":\"date_period_1\",\"status_id\":\"c\"},\"values\":{\"easy_sprint_id\":[\"\"],\"closed_on\":{\"period\":\"current_month\",\"period_days2\":\"\",\"period_days\":\"\",\"from\":\"\",\"to\":\"\"},\"status_id\":[\"\"]}},\"outputs\":[\"list\"],\"sort_criteria\":{\"0\":[\"\",\"\"],\"1\":[\"\",\"\"],\"2\":[\"\",\"\"]},\"column_names\":[\"subject\",\"status\",\"assigned_to\"],\"group_by\":[\"\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"0\",\"show_avatars\":\"1\",\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"assigned_to\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"estimated_hours\",\"y_label\":\"\",\"secondary_axis_y_column\":\"\",\"period_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"bar_reverse_order\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"url\":\"\",\"target\":\"current\"}},\"period_zoom\":\"month\",\"settings\":{\"period\":\"month\",\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\"],\"kanban\":{\"kanban_group\":\"\",\"kanban_group_trackers\":[\"1\",\"3\",\"4\",\"5\",\"2\"],\"kanban_group_statuses\":[\"2\",\"6\",\"3\",\"9\",\"10\",\"8\",\"7\",\"4\"],\"main_attribute\":\"\",\"summable_column\":\"\",\"avatar_attribute\":\"\",\"date_details\":[\"\"],\"icon_details\":[\"\"],\"default_swimlane\":\"\"}},\"compere_to_previous_period\":\"1\",\"operator\":\">\",\"easy_query_type_to_compare\":\"EasyIssueQuery\",\"type_to_compare\":\"sum\",\"column_to_sum_to_compare\":\"estimated_hours\"}',7,1,'2021-08-23 17:12:58','2021-08-23 17:12:58'),('cc557609-395d-43d7-ac44-4fd3627b646a',1,2,34,4,NULL,2,'{\"row_limit\":\"10\"}',NULL,1,'2021-08-23 17:13:29','2021-08-23 17:13:29'),('ce3ac956-ec35-4054-8be3-be32032a487a',8,33,224,NULL,NULL,1,'{\"easy_query_type\":\"EasyTimeEntryQuery\",\"query_name\":\"Spent time (billable vs non billable) in time\",\"set_filter\":\"1\",\"query_type\":\"2\",\"outputs\":[\"chart\"],\"row_limit\":\"10\",\"fields\":[\"easy_is_billable\"],\"operators\":{\"easy_is_billable\":\"=\"},\"values\":{\"easy_is_billable\":[\"1\"]},\"global_filters\":{\"1549266764826\":{\"filter\":\"spent_on\"},\"1549266768554\":{\"filter\":\"xproject_id\"},\"1549266770893\":{\"filter\":\"user_id\"}},\"sort_criteria\":{\"0\":[\"spent_on\",\"desc\"],\"1\":[\"\",\"\"],\"2\":[\"\",\"\"]},\"column_names\":[\"user\",\"spent_on\",\"project\",\"issue\",\"activity\",\"hours\"],\"group_by\":[\"\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"0\",\"show_avatars\":\"0\",\"daily_snapshot\":\"0\",\"count_only_working_days\":\"0\",\"easy_query_snapshot\":{\"execute_as\":\"author\",\"execute_as_user_id\":\"\",\"period_options\":{\"period\":\"every_day\",\"time\":\"cron\",\"hours\":\"00:00\"}},\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"spent_on\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"hours\",\"y_label\":\"Billable spent time\",\"secondary_axis_y_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"long_tail\":\"0\",\"bar_reverse_order\":\"0\",\"bar_sort_by_axis_x\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"target\":\"current\",\"url\":\"?t=1\"},\"additional_queries\":{\"0\":{\"easy_query_type\":\"EasyTimeEntryQuery\",\"set_filter\":\"1\",\"query_type\":\"2\",\"query_name\":\"name of filter\",\"outputs\":[\"chart\"],\"row_limit\":\"10\",\"fields\":[\"easy_is_billable\"],\"operators\":{\"easy_is_billable\":\"=\"},\"values\":{\"easy_is_billable\":[\"0\"]},\"global_filters\":{\"1549266764826\":{\"filter\":\"spent_on\"},\"1549266768554\":{\"filter\":\"xproject_id\"},\"1549266770893\":{\"filter\":\"user_id\"}},\"sort_criteria\":{\"0\":[\"spent_on\",\"desc\"],\"1\":[\"\",\"\"],\"2\":[\"\",\"\"]},\"group_by\":[\"\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"0\",\"show_avatars\":\"0\",\"daily_snapshot\":\"0\",\"count_only_working_days\":\"0\",\"easy_query_snapshot\":{\"execute_as\":\"author\",\"execute_as_user_id\":\"\",\"period_options\":{\"period\":\"every_day\",\"time\":\"cron\",\"hours\":\"00:00\"}},\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"spent_on\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"hours\",\"y_label\":\"Non billable spent time\",\"secondary_axis_y_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"bar_reverse_order\":\"0\",\"bar_sort_by_axis_x\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"target\":\"current\",\"url\":\"?t=1\"}},\"period_zoom\":\"month\",\"settings\":{\"report_sum_column\":[\"\",\"\"]}}}},\"period_zoom\":\"month\",\"settings\":{\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\",\"\"]},\"cache_on\":\"\",\"cache_for_days\":\"\"}',4,1,'2019-02-04 17:01:42','2019-02-12 17:53:41'),('cf91ea9c-d93d-4777-9631-70aa666ad9b0',4,12,146,NULL,NULL,1,'{\"row_limit\":\"10\"}',2,1,'2021-08-23 17:12:56','2021-08-23 17:12:56'),('d6c42678-0c19-422e-9d2c-24ffb342c650',6,22,184,NULL,NULL,4,'{\"easy_query_type\":\"EasyIssueQuery\",\"use_query_to_compare\":\"false\",\"name\":\"Closed Story Points\",\"description\":\"Closed story points -  all  sprints\",\"easy_icon\":\"icon-bullet-list\",\"color\":\"palette-28\",\"type\":\"sum\",\"column_to_sum\":\"easy_story_points\",\"query\":{\"set_filter\":\"1\",\"query_type\":\"2\",\"query_name\":\"name of filter\",\"row_limit\":\"10\",\"fields\":[\"easy_sprint_id\",\"status_id\"],\"operators\":{\"easy_sprint_id\":\"*\",\"status_id\":\"c\"},\"values\":{\"easy_sprint_id\":[\"\"],\"status_id\":[\"\"]}},\"outputs\":[\"list\"],\"sort_criteria\":{\"0\":[\"\",\"\"],\"1\":[\"\",\"\"],\"2\":[\"\",\"\"]},\"column_names\":[\"subject\",\"status\",\"assigned_to\"],\"group_by\":[\"\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"0\",\"show_avatars\":\"1\",\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"assigned_to\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"estimated_hours\",\"y_label\":\"\",\"secondary_axis_y_column\":\"\",\"period_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"bar_reverse_order\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"url\":\"\",\"target\":\"current\"}},\"period_zoom\":\"month\",\"settings\":{\"period\":\"month\",\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\"],\"kanban\":{\"kanban_group\":\"\",\"kanban_group_trackers\":[\"1\",\"3\",\"4\",\"5\",\"2\"],\"kanban_group_statuses\":[\"2\",\"6\",\"3\",\"9\",\"10\",\"8\",\"7\",\"4\"],\"main_attribute\":\"\",\"summable_column\":\"\",\"avatar_attribute\":\"\",\"date_details\":[\"\"],\"icon_details\":[\"\"],\"default_swimlane\":\"\"}},\"compere_to_previous_period\":\"0\",\"operator\":\">\",\"easy_query_type_to_compare\":\"EasyIssueQuery\",\"type_to_compare\":\"sum\",\"column_to_sum_to_compare\":\"estimated_hours\"}',7,1,'2021-08-23 17:12:58','2021-08-23 17:12:58'),('da8a0244-3a56-4584-a03f-ec5310b46fda',9,35,242,NULL,NULL,4,'{\"easy_query_type\":\"EasyIssueQuery\",\"use_query_to_compare\":\"false\",\"name\":\"Closed tasks\",\"description\":\"in milesones\",\"easy_icon\":\"\",\"color\":\"palette-12\",\"type\":\"count\",\"column_to_sum\":\"estimated_hours\",\"query\":{\"set_filter\":\"1\",\"query_type\":\"2\",\"query_name\":\"name of filter\",\"row_limit\":\"10\",\"fields\":[\"fixed_version_id\",\"status_id\"],\"operators\":{\"fixed_version_id\":\"*\",\"status_id\":\"c\"},\"values\":{\"fixed_version_id\":[\"5\"],\"status_id\":[\"\"]},\"global_filters\":{\"1549057302228\":{\"filter\":\"project_id\"},\"1549057309054\":{\"filter\":\"fixed_version_id\"},\"1549057314984\":{\"filter\":\"assigned_to_id\"}}},\"outputs\":[\"list\"],\"sort_criteria\":{\"0\":[\"priority\",\"desc\"],\"1\":[\"due_date\",\"asc\"],\"2\":[\"\",\"\"]},\"column_names\":[\"project\",\"subject\",\"assigned_to\",\"status\",\"due_date\",\"done_ratio\"],\"group_by\":[\"\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"0\",\"show_avatars\":\"0\",\"daily_snapshot\":\"0\",\"count_only_working_days\":\"0\",\"easy_query_snapshot\":{\"execute_as\":\"author\",\"execute_as_user_id\":\"\",\"period_options\":{\"period\":\"every_day\",\"time\":\"cron\",\"hours\":\"00:00\"}},\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"assigned_to\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"cf_414\",\"y_label\":\"\",\"secondary_axis_y_column\":\"\",\"period_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"long_tail\":\"0\",\"bar_reverse_order\":\"0\",\"bar_sort_by_axis_x\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"target\":\"current\",\"url\":\"?t=2\"}},\"period_zoom\":\"month\",\"settings\":{\"period\":\"month\",\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\"],\"kanban\":{\"kanban_group\":\"\",\"kanban_group_trackers\":[\"7\",\"37\",\"8\",\"34\",\"49\",\"35\",\"6\",\"32\",\"31\",\"13\",\"26\",\"38\",\"39\",\"40\",\"41\",\"42\",\"43\",\"44\",\"45\",\"46\",\"47\",\"48\"],\"kanban_group_statuses\":[\"1\",\"27\",\"17\",\"19\",\"26\",\"15\",\"25\",\"14\",\"24\",\"21\",\"13\",\"3\",\"5\",\"6\",\"20\",\"22\",\"23\"],\"main_attribute\":\"\",\"summable_column\":\"\",\"avatar_attribute\":\"\",\"date_details\":[\"\"],\"icon_details\":[\"\"],\"default_swimlane\":\"\"}},\"compere_to_previous_period\":\"0\",\"operator\":\">\",\"show_as_percentage\":\"0\",\"easy_query_type_to_compare\":\"EasyIssueQuery\",\"type_to_compare\":\"sum\",\"column_to_sum_to_compare\":\"estimated_hours\",\"query_to_compare\":{\"global_filters\":{\"1549057302228\":{\"filter\":\"\"},\"1549057309054\":{\"filter\":\"\"},\"1549057314984\":{\"filter\":\"\"}}}}',6,1,'2019-02-13 00:34:09','2019-02-13 01:57:28'),('e5e9f09a-903e-403f-83fd-fdd9596bd0aa',9,35,242,NULL,NULL,3,'{\"easy_query_type\":\"EasyIssueQuery\",\"use_query_to_compare\":\"false\",\"name\":\"Open tasks\",\"description\":\"in milestones\",\"easy_icon\":\"\",\"color\":\"palette-1\",\"type\":\"count\",\"column_to_sum\":\"estimated_hours\",\"query\":{\"set_filter\":\"1\",\"query_type\":\"2\",\"query_name\":\"name of filter\",\"row_limit\":\"10\",\"fields\":[\"status_id\",\"fixed_version_id\"],\"operators\":{\"status_id\":\"o\",\"fixed_version_id\":\"*\"},\"values\":{\"status_id\":[\"\"],\"fixed_version_id\":[\"5\"]},\"global_filters\":{\"1549057302228\":{\"filter\":\"project_id\"},\"1549057309054\":{\"filter\":\"fixed_version_id\"},\"1549057314984\":{\"filter\":\"assigned_to_id\"}}},\"outputs\":[\"list\"],\"sort_criteria\":{\"0\":[\"priority\",\"desc\"],\"1\":[\"due_date\",\"asc\"],\"2\":[\"\",\"\"]},\"column_names\":[\"project\",\"subject\",\"assigned_to\",\"status\",\"due_date\",\"done_ratio\"],\"group_by\":[\"\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"0\",\"show_avatars\":\"0\",\"daily_snapshot\":\"0\",\"count_only_working_days\":\"0\",\"easy_query_snapshot\":{\"execute_as\":\"author\",\"execute_as_user_id\":\"\",\"period_options\":{\"period\":\"every_day\",\"time\":\"cron\",\"hours\":\"00:00\"}},\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"assigned_to\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"cf_414\",\"y_label\":\"\",\"secondary_axis_y_column\":\"\",\"period_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"long_tail\":\"0\",\"bar_reverse_order\":\"0\",\"bar_sort_by_axis_x\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"target\":\"current\",\"url\":\"?t=1\"}},\"period_zoom\":\"month\",\"settings\":{\"period\":\"month\",\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\"],\"kanban\":{\"kanban_group\":\"\",\"kanban_group_trackers\":[\"7\",\"37\",\"8\",\"34\",\"49\",\"35\",\"6\",\"32\",\"31\",\"13\",\"26\",\"38\",\"39\",\"40\",\"41\",\"42\",\"43\",\"44\",\"45\",\"46\",\"47\",\"48\"],\"kanban_group_statuses\":[\"1\",\"27\",\"17\",\"19\",\"26\",\"15\",\"25\",\"14\",\"24\",\"21\",\"13\",\"3\",\"5\",\"6\",\"20\",\"22\",\"23\"],\"main_attribute\":\"\",\"summable_column\":\"\",\"avatar_attribute\":\"\",\"date_details\":[\"\"],\"icon_details\":[\"\"],\"default_swimlane\":\"\"}},\"compere_to_previous_period\":\"0\",\"operator\":\">\",\"show_as_percentage\":\"0\",\"easy_query_type_to_compare\":\"EasyIssueQuery\",\"type_to_compare\":\"sum\",\"column_to_sum_to_compare\":\"estimated_hours\",\"query_to_compare\":{\"global_filters\":{\"1549057302228\":{\"filter\":\"\"},\"1549057309054\":{\"filter\":\"\"},\"1549057314984\":{\"filter\":\"\"}}}}',5,1,'2019-02-02 06:43:39','2019-02-13 01:47:26'),('eab453b1-7dbf-4a81-8ab6-340a90ee27dc',6,24,196,NULL,NULL,1,'{\"easy_query_type\":\"EasyIssueQuery\",\"query_name\":\"Open SP by Sprint\",\"set_filter\":\"1\",\"query_type\":\"2\",\"outputs\":[\"chart\"],\"row_limit\":\"10\",\"fields\":[\"status_id\"],\"operators\":{\"status_id\":\"o\"},\"values\":{\"status_id\":[\"\"]},\"sort_criteria\":{\"0\":[\"\",\"\"],\"1\":[\"\",\"\"],\"2\":[\"\",\"\"]},\"column_names\":[\"subject\",\"status\",\"assigned_to\"],\"group_by\":[\"\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"0\",\"show_avatars\":\"1\",\"chart_settings\":{\"primary_renderer\":\"pie\",\"axis_x_column\":\"issue_easy_sprint_relation.easy_sprint\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"easy_story_points\",\"y_label\":\"\",\"secondary_axis_y_column\":\"\",\"period_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"bar_reverse_order\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"url\":\"\",\"target\":\"current\"}},\"period_zoom\":\"month\",\"settings\":{\"period\":\"month\",\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\",\"\"],\"kanban\":{\"kanban_group\":\"\",\"kanban_group_trackers\":[\"1\",\"3\",\"4\",\"5\",\"2\"],\"kanban_group_statuses\":[\"2\",\"6\",\"3\",\"9\",\"10\",\"8\",\"7\",\"4\"],\"main_attribute\":\"\",\"summable_column\":\"\",\"avatar_attribute\":\"\",\"date_details\":[\"\"],\"icon_details\":[\"\"],\"default_swimlane\":\"\"}},\"cache_on\":\"\",\"cache_for_days\":\"\"}',7,1,'2021-08-23 17:12:59','2021-08-23 17:12:59'),('f22255b6-20f2-452f-83c2-ca71fc1f31e9',6,22,184,NULL,NULL,7,'{\"easy_query_type\":\"EasyIssueQuery\",\"use_query_to_compare\":\"false\",\"name\":\"Remaing time - Open Issues \",\"description\":\"Remaining time form Open Issues \",\"easy_icon\":\"icon-slab\",\"color\":\"palette-1\",\"type\":\"sum\",\"column_to_sum\":\"remaining_timeentries\",\"query\":{\"set_filter\":\"1\",\"query_type\":\"2\",\"query_name\":\"name of filter\",\"row_limit\":\"10\",\"fields\":[\"status_id\",\"easy_sprint_id\"],\"operators\":{\"status_id\":\"o\",\"easy_sprint_id\":\"*\"},\"values\":{\"status_id\":[\"\"],\"easy_sprint_id\":[\"\"]}},\"outputs\":[\"list\"],\"sort_criteria\":{\"0\":[\"\",\"\"],\"1\":[\"\",\"\"],\"2\":[\"\",\"\"]},\"column_names\":[\"subject\",\"status\",\"assigned_to\"],\"group_by\":[\"\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"0\",\"show_avatars\":\"1\",\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"assigned_to\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"estimated_hours\",\"y_label\":\"\",\"secondary_axis_y_column\":\"\",\"period_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"bar_reverse_order\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"url\":\"\",\"target\":\"current\"}},\"period_zoom\":\"month\",\"settings\":{\"period\":\"month\",\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\"],\"kanban\":{\"kanban_group\":\"\",\"kanban_group_trackers\":[\"1\",\"3\",\"4\",\"5\",\"2\"],\"kanban_group_statuses\":[\"2\",\"6\",\"3\",\"9\",\"10\",\"8\",\"7\",\"4\"],\"main_attribute\":\"\",\"summable_column\":\"\",\"avatar_attribute\":\"\",\"date_details\":[\"\"],\"icon_details\":[\"\"],\"default_swimlane\":\"\"}},\"compere_to_previous_period\":\"0\",\"operator\":\">\",\"easy_query_type_to_compare\":\"EasyIssueQuery\",\"type_to_compare\":\"sum\",\"column_to_sum_to_compare\":\"estimated_hours\"}',7,1,'2021-08-23 17:12:59','2021-08-23 17:12:59'),('fa7a39fa-8aa7-4186-9a72-79ddf9d0caa3',1,2,34,5,NULL,2,'{\"row_limit\":\"10\"}',NULL,1,'2021-08-23 17:53:34','2021-08-23 17:53:34'),('fba51e7f-40f6-45b2-acf2-c4b565a81da4',1,2,35,1,NULL,3,'{\"row_limit\":\"10\"}',8,1,'2021-08-23 17:13:29','2021-08-23 17:13:29'),('fc088fc5-2281-4a23-8fe1-87ba7de24f94',8,30,213,NULL,NULL,2,'{\"easy_query_type\":\"EasyTimeEntryQuery\",\"use_query_to_compare\":\"false\",\"name\":\"Spent billable time\",\"description\":\"from all tasks\",\"easy_icon\":\"\",\"color\":\"palette-12\",\"type\":\"sum\",\"column_to_sum\":\"hours\",\"query\":{\"set_filter\":\"1\",\"query_type\":\"2\",\"query_name\":\"name of filter\",\"row_limit\":\"10\",\"fields\":[\"easy_is_billable\"],\"operators\":{\"easy_is_billable\":\"=\"},\"values\":{\"easy_is_billable\":[\"1\"]},\"global_filters\":{\"1549266764826\":{\"filter\":\"spent_on\"},\"1549266768554\":{\"filter\":\"xproject_id\"},\"1549266770893\":{\"filter\":\"user_id\"}}},\"outputs\":[\"list\"],\"sort_criteria\":{\"0\":[\"spent_on\",\"desc\"],\"1\":[\"\",\"\"],\"2\":[\"\",\"\"]},\"column_names\":[\"user\",\"spent_on\",\"project\",\"issue\",\"activity\",\"hours\"],\"group_by\":[\"\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"0\",\"show_avatars\":\"0\",\"daily_snapshot\":\"0\",\"easy_query_snapshot\":{\"execute_as\":\"author\",\"execute_as_user_id\":\"\",\"period_options\":{\"period\":\"every_day\",\"time\":\"cron\",\"hours\":\"00:00\"}},\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"activity\",\"axis_y_type\":\"sum\",\"axis_y_column\":\"estimated_hours\",\"y_label\":\"\",\"secondary_axis_y_column\":\"\",\"period_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"long_tail\":\"0\",\"bar_reverse_order\":\"0\",\"bar_sort_by_axis_x\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"target\":\"current\",\"url\":\"?t=1\"}},\"period_zoom\":\"month\",\"settings\":{\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\"]},\"compere_to_previous_period\":\"1\",\"operator\":\">\",\"show_as_percentage\":\"0\",\"easy_query_type_to_compare\":\"EasyTimeEntryQuery\",\"type_to_compare\":\"sum\",\"column_to_sum_to_compare\":\"hours\",\"query_to_compare\":{\"global_filters\":{\"1549266764826\":{\"filter\":\"\"},\"1549266768554\":{\"filter\":\"\"},\"1549266770893\":{\"filter\":\"\"}}}}',4,1,'2019-02-04 16:53:27','2019-02-04 16:59:36'),('fca98c1b-ba8a-4214-a8e4-b72b8a8a0ce1',9,35,242,NULL,NULL,1,'{\"easy_query_type\":\"EasyVersionQuery\",\"use_query_to_compare\":\"false\",\"name\":\"Open Milestones\",\"description\":\"Number\",\"easy_icon\":\"\",\"color\":\"palette-4\",\"query\":{\"set_filter\":\"1\",\"query_type\":\"2\",\"query_name\":\"name of filter\",\"row_limit\":\"10\",\"fields\":[\"status\"],\"operators\":{\"status\":\"=\"},\"values\":{\"status\":[\"open\"]},\"global_filters\":{\"1549057302228\":{\"filter\":\"project_id\"},\"1549057314984\":{\"filter\":\"\"}}},\"outputs\":[\"list\"],\"sort_criteria\":{\"0\":[\"project\",\"asc\"],\"1\":[\"name\",\"asc\"],\"2\":[\"\",\"\"]},\"column_names\":[\"project\",\"name\",\"effective_date\",\"description\",\"status\",\"sharing\"],\"group_by\":[\"\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"1\",\"show_avatars\":\"0\",\"daily_snapshot\":\"0\",\"count_only_working_days\":\"0\",\"easy_query_snapshot\":{\"execute_as\":\"author\",\"execute_as_user_id\":\"\",\"period_options\":{\"period\":\"every_day\",\"time\":\"cron\",\"hours\":\"00:00\"}},\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"created_on\",\"y_label\":\"\",\"period_column\":\"\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"target\":\"current\",\"url\":\"?t=1\"}},\"period_zoom\":\"month\",\"compere_to_previous_period\":\"0\",\"operator\":\">\",\"show_as_percentage\":\"0\",\"easy_query_type_to_compare\":\"EasyVersionQuery\",\"query_to_compare\":{\"global_filters\":{\"1549057302228\":{\"filter\":\"\"},\"1549057314984\":{\"filter\":\"\"}}}}',5,1,'2019-02-02 06:41:24','2019-02-13 01:47:26'),('fccbf354-3636-4522-bd66-547215ba6a14',1,3,37,1,NULL,1,'{\"queries\":[\"\"],\"saved_personal_queries\":\"\",\"saved_easy_user_types_queries\":\"\",\"saved_public_queries\":\"\",\"saved_roles_queries\":\"\"}',8,1,'2021-08-23 17:13:29','2021-08-23 18:03:04'),('feece104-5097-4c8d-a8f8-f9b5a00853ec',9,37,254,NULL,NULL,1,'{\"easy_query_type\":\"EasyIssueQuery\",\"query_name\":\"Tasks by assignee\",\"set_filter\":\"1\",\"query_type\":\"2\",\"outputs\":[\"chart\"],\"row_limit\":\"10\",\"fields\":[\"status_id\",\"fixed_version_id\"],\"operators\":{\"status_id\":\"o\",\"fixed_version_id\":\"o\"},\"values\":{\"status_id\":[\"1\"],\"fixed_version_id\":[\"\"]},\"global_filters\":{\"1549057302228\":{\"filter\":\"project_id\"},\"1549057309054\":{\"filter\":\"fixed_version_id\"},\"1549057314984\":{\"filter\":\"assigned_to_id\"}},\"sort_criteria\":{\"0\":[\"priority\",\"desc\"],\"1\":[\"due_date\",\"asc\"],\"2\":[\"\",\"\"]},\"column_names\":[\"project\",\"activity\"],\"group_by\":[\"\"],\"show_sum_row\":\"0\",\"load_groups_opened\":\"0\",\"show_avatars\":\"0\",\"daily_snapshot\":\"0\",\"count_only_working_days\":\"0\",\"easy_query_snapshot\":{\"execute_as\":\"author\",\"execute_as_user_id\":\"\",\"period_options\":{\"period\":\"every_day\",\"time\":\"cron\",\"hours\":\"00:00\"}},\"chart_settings\":{\"primary_renderer\":\"line\",\"axis_x_column\":\"assigned_to\",\"axis_y_type\":\"count\",\"axis_y_column\":\"estimated_hours\",\"y_label\":\"\",\"secondary_axis_y_column\":\"\",\"period_column\":\"\",\"bar_direction\":\"vertical\",\"bar_limit\":\"0\",\"long_tail\":\"0\",\"bar_reverse_order\":\"0\",\"bar_sort_by_axis_x\":\"0\",\"legend_enabled\":\"0\",\"legend\":{\"location\":\"nw\"},\"onclick\":{\"target\":\"current\",\"url\":\"?t=1&global_filter_1549057302228=2799&utm_campaign=menu&utm_content=top_menu_categories&utm_term=easy_versions\"}},\"period_zoom\":\"month\",\"settings\":{\"period\":\"month\",\"report_group_by\":[\"\",\"\"],\"report_sum_column\":[\"\",\"\"],\"kanban\":{\"kanban_group\":\"\",\"kanban_group_trackers\":[\"7\",\"37\",\"8\",\"34\",\"49\",\"35\",\"6\",\"32\",\"31\",\"13\",\"26\",\"38\",\"39\",\"40\",\"41\",\"42\",\"43\",\"44\",\"45\",\"46\",\"47\",\"48\"],\"kanban_group_statuses\":[\"1\",\"27\",\"17\",\"19\",\"26\",\"15\",\"25\",\"14\",\"24\",\"21\",\"13\",\"3\",\"5\",\"6\",\"20\",\"22\",\"23\"],\"main_attribute\":\"\",\"summable_column\":\"\",\"avatar_attribute\":\"\",\"date_details\":[\"\"],\"icon_details\":[\"\"],\"default_swimlane\":\"\"}},\"cache_on\":\"\",\"cache_for_days\":\"\"}',5,1,'2019-02-04 16:43:57','2019-02-13 01:47:27');
/*!40000 ALTER TABLE `easy_page_zone_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_page_zones`
--

DROP TABLE IF EXISTS `easy_page_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_page_zones` (
  `id` int NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_page_zones`
--

LOCK TABLES `easy_page_zones` WRITE;
/*!40000 ALTER TABLE `easy_page_zones` DISABLE KEYS */;
INSERT INTO `easy_page_zones` VALUES (1,'top-left'),(2,'top-middle'),(3,'top-right'),(4,'middle-left'),(5,'middle-middle'),(6,'middle-right'),(7,'bottom-left'),(8,'bottom-middle'),(9,'bottom-right'),(10,'right-sidebar'),(11,'middle2-left'),(12,'middle2-middle'),(13,'middle2-right'),(14,'middle3-left'),(15,'middle3-middle'),(16,'middle3-right');
/*!40000 ALTER TABLE `easy_page_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_pages`
--

DROP TABLE IF EXISTS `easy_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_pages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `page_name` varchar(255) NOT NULL,
  `layout_path` varchar(255) NOT NULL,
  `identifier` varchar(255) DEFAULT NULL,
  `entity_type` varchar(255) DEFAULT NULL,
  `entity_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `user_defined_name` varchar(255) DEFAULT NULL,
  `description` text,
  `page_scope` varchar(255) DEFAULT NULL,
  `has_template` tinyint(1) NOT NULL DEFAULT '0',
  `is_user_defined` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `version` int NOT NULL DEFAULT '0',
  `strict_permissions` tinyint(1) DEFAULT '0',
  `strict_show_permissions` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_pages`
--

LOCK TABLES `easy_pages` WRITE;
/*!40000 ALTER TABLE `easy_pages` DISABLE KEYS */;
INSERT INTO `easy_pages` VALUES (1,'my-page','easy_page_layouts/two_column_header_first_wider',NULL,NULL,NULL,NULL,NULL,NULL,'user',1,0,'2021-08-23 17:12:37','2021-08-23 17:12:37',0,0,0),(2,'project-overview','easy_page_layouts/two_column_header_three_rows_right_sidebar',NULL,NULL,NULL,NULL,NULL,NULL,'project',1,0,'2021-08-23 17:12:37','2021-08-23 17:12:37',0,0,0),(3,'easy-resource-booking-module','easy_page_layouts/two_column_header_first_wider',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2021-08-23 17:12:37','2021-08-23 17:12:37',0,0,0),(4,'easy-attendances-overview','easy_page_layouts/two_column_header_three_rows_right_sidebar',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2021-08-23 17:12:42','2021-08-23 17:12:42',0,0,0),(5,'easy-community','easy_page_layouts/two_column_header_three_rows_right_sidebar',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2021-08-23 17:12:44','2021-08-23 17:12:44',0,0,0),(6,'easy-sprint-overview','easy_page_layouts/two_column_header_three_rows_right_sidebar',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2021-08-23 17:12:45','2021-08-23 17:12:45',0,0,0),(8,'spent-time-overview','easy_page_layouts/two_column_header_three_rows_right_sidebar','spent-time-overview',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2019-02-04 16:51:42','2021-08-23 17:12:57',2,0,0),(9,'milestones-overview','easy_page_layouts/two_column_header_three_rows_right_sidebar','milestones-overview',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2019-02-02 06:36:17','2021-08-23 17:12:58',2,0,0);
/*!40000 ALTER TABLE `easy_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_permissions`
--

DROP TABLE IF EXISTS `easy_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `entity_type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `entity_id` int NOT NULL,
  `user_list` text,
  `permissions` text,
  `role_list` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_permissions`
--

LOCK TABLES `easy_permissions` WRITE;
/*!40000 ALTER TABLE `easy_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_personal_contact_entity_assignments`
--

DROP TABLE IF EXISTS `easy_personal_contact_entity_assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_personal_contact_entity_assignments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `note` text,
  `easy_personal_contact_id` bigint DEFAULT NULL,
  `entity_type` varchar(255) DEFAULT NULL,
  `entity_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_easy_personal_contact_assignments_id` (`easy_personal_contact_id`),
  KEY `idx_easy_personal_contact_assignments_entity_id` (`entity_type`,`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_personal_contact_entity_assignments`
--

LOCK TABLES `easy_personal_contact_entity_assignments` WRITE;
/*!40000 ALTER TABLE `easy_personal_contact_entity_assignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_personal_contact_entity_assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_personal_contacts`
--

DROP TABLE IF EXISTS `easy_personal_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_personal_contacts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `guid` varchar(255) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `first_name_phonetic` varchar(255) DEFAULT NULL,
  `last_name_phonetic` varchar(255) DEFAULT NULL,
  `previous_last_name` varchar(255) DEFAULT NULL,
  `nick_name` varchar(255) DEFAULT NULL,
  `prefix_name` varchar(255) DEFAULT NULL,
  `suffix_name` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `landline` varchar(255) DEFAULT NULL,
  `instant_message` varchar(255) DEFAULT NULL,
  `communication_language` varchar(5) DEFAULT '',
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `time_zone` varchar(255) DEFAULT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `subdivision_code` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country_code` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `subregion` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `easy_avatar_url` varchar(255) DEFAULT NULL,
  `easy_external_id` varchar(255) DEFAULT NULL,
  `description` text,
  `internal_name` varchar(255) DEFAULT NULL,
  `author_id` bigint NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_easy_personal_contacts_on_guid` (`guid`),
  UNIQUE KEY `index_easy_personal_contacts_on_email` (`email`),
  UNIQUE KEY `index_easy_personal_contacts_on_internal_name` (`internal_name`),
  KEY `index_easy_personal_contacts_on_easy_external_id` (`easy_external_id`),
  KEY `index_easy_personal_contacts_on_author_id` (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_personal_contacts`
--

LOCK TABLES `easy_personal_contacts` WRITE;
/*!40000 ALTER TABLE `easy_personal_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_personal_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_printable_template_pages`
--

DROP TABLE IF EXISTS `easy_printable_template_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_printable_template_pages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `easy_printable_template_id` int NOT NULL,
  `position` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `page_text` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_eptp_template_id` (`easy_printable_template_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_printable_template_pages`
--

LOCK TABLES `easy_printable_template_pages` WRITE;
/*!40000 ALTER TABLE `easy_printable_template_pages` DISABLE KEYS */;
INSERT INTO `easy_printable_template_pages` VALUES (1,1,1,'2021-08-23 17:11:54','2021-08-23 17:11:54','<div style=\"background: #009ee0; width: 100%; height: 5px\">&nbsp;</div>\n\n<p>&nbsp;</p>\n\n<table border=\"0\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\n  <tbody>\n    <tr>\n      <td style=\"width: 100px\"><img alt=\"\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADwAAAA8CAYAAAA6/NlyAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAA3XAAAN1wFCKJt4AAAAB3RJTUUH4QINEAYbWX8kIAAADbFJREFUaN7tW3l0W9WZ/9339LRatmzL+yLJVuIkwg2JszlxFoJDIQEOZJi2UELpciiUgTIlbTkwk87QaaeFDrMwwDktdEiTNocZpimUQgohp4lJnMSO0ySOY8dWLMXyEnmVtdiS3nt3/ugAetZ98iraOdP7n+697737u/dbft/3XQH/zxpJ14tramqEwODgYpmQKo6QKgpYAFgIRQYFDRNKwpTQIKFcp8Sjg+f59q6urvH/U4ArSyud4KSdALZSgjoCmGbxuATQsyDkCEfIbzq7uxsA0D85wE6nU4d4/F4K7osAXb9Qm0iBbo5gnwi85PF4Bv7ogO12u54DHiQUuwGUpFEKJwD6Ci9JP7js8/X+UQBX2mxbCcgLFFjyCdqbCCF4Vmcyff/ixYuxTwSw0+nMRFx8iQL3zPF7kyBkEjI0IDRjjiu+QGT5c11Xr7alFbDTZltBKXkNBItmMD0mGzPbJxavGQkv2WSK2lx5cWt5KeU1msRJmtGBazrfpX5DV1PA1HpMrxnrqwKllpmcNggedns8r6YFcKXdfjOleH06qytrje3B2p3+kW1frpaNluxZL0YW4+bTb53Nfu9lqhntXQ2AS2nYKP7xylXPU7Ox5tMCrrDb7yYUewEIqh/WmS4O3vXkRLBm+6qFUljtQGd3wb4n+7T9XbWpgFOQV654ux8AIM8bsLPMcTvl5P8GiIb9NBkdrf9K68jND24A4bh0WCpjR2NrwX98Q+Bik1UpQL94xdv98LwAV5RX1BEivwvAwBRfo/l8z+OvWcXsouJUH9AQYJVF01eTIwzka2ncquVohkBjWQKne+z8RLUnLBunXaQkxop//FCjvrN5k/qayR63t/u7cwLscDgKOJn+HkAhazxatqyh99G9tVON0IdtpUXj/7pT676lQNBadcROgFzWvM3HgiPHhqScD3/X5mr6Tg6LxWoKaTm670TuG8+tAqBlqzS99YrX+3YqwCwx5DhZ3q8GNrKs7qjvsf11LLB3FAudPbeYT57ZmpF1X7m2Nk9HatTAstrr60z9gdssl3cv0rayTmJs8671A7t+2AogwlQwYK+zxFk6K8CVNsfXAFLPPFn78ob+rzy/GYQo1lNh5IZa680NB9eZ7KUGfh0A3ZwUVqYwC1j8bLXxur4dWS012Xz/1CnhFTet9H/u6VaAigzMVsqLL88YsMPhKAAoUw/i2YWnfY/8dMPU/r8oEc61f9occWXyG1NZ8tm2Qh1Z2XyDWf+jan3j1LHgmtvWBLZ84YSKkn660ma7c0aAiYzv4Q9h3JSX8L2+bxxwTrXEf7dE3/T6WlOlQEh5muhk9uOL9OtObDGf4InS7Qzd/teb4vn2RhXT9M8ul0ubErDD4bAR0PtYkwbu/6FfNllyEvv2LNEf/84yfTWADKS3kdocfv25+oyTU0H7vv4zFzjOz3jGFg2FdqUETGR8kyWS8YKKE+HqG1ck9v1lqdD298v0KwDop1ttVMYViVLffFG7zJr1hzaYTilU3mDOHN7+V50q4eUTAHgm4OLiYqPK6cb7vvwvtsSOIh0Z+flqkx5AKv8peSK05Z6miNv4xliFf1KeUTxLpyFC9fnC2j1L9c0Ky731i+tlnfESQzCcTru9ngnYqNHtBGBOigBKqk6J1jJFrPv2BlO7QFChGg5J1HPv6UiP41Bg5YGeWKU8i5zFjsZI8bWo3JrKyO5Zoi+tMHLBRGQjOx4JsHeQ7GICpoTezZo/uPPb1sTf2wqE9ustmhq11fRE5FbHu8HCn/ti9rmI7bkxsbD8nXHXyWHxrNocnqBw72rjhcS+wIbPrKEc158sMfTO0tJSBVPkXC6XlgKbkyYL+q5JxwpFgP/icuOYmo/ti+L80sPBpQMTsn4+uhqTQTYcC61oHlUHXZerqV6UwX98qoTjJqrWXWZRcS2nVbhSbiI4sYYV9kVcdQpD4zDx15wZ5Dr2ImnfqiPjFWGR8gthlmUKbGkIf2o0JqsF+ea/qdK1J3aM3nC/VeVtWxWACeT1rGnBVbcr4tlvLdZdUXNBz3XFxvon5AV1T2GR8p9viugBiKzx24sFhSRNVqxcAkICDL65XgmYgBF2UTGyeK1CnG8pEGQVt+N7+tLE0nQ44HeuiRUDUco8ZYtAFhfquY85NcfzotnKclEKHBwrEUd5rY9qtLrEkKrMwGZT7/njvgkpfQn9Az1xSWXIUJ/PX1GoVr6DFVQU2O12S6KVTkqxyubcQYXvNXCDHAEz7v11XzwznTTrrf54mdrY9Vn82JSwlR2Ty3JJgg4n+1/JkKFIgy7P0gRYrAUA2oJyXjoBHx+OWyk7HESRgVeomWSxsoMXjjMninSSsZF0JoUY5Qg0qrag0ThN6wlHZUCSMcrUY43SoMmGbK1KKiozVQKAMZ9Iqsk2wraiU3Z4fjpOVKkonTKPyesk6eN+jgChJDYTDSvENxiXVQP6AgMXSOcJazmABztpHxaVW8FFRuNMdsbRYKJIJ5Uo+YlxhWicDdBMAMxTXpHJDM9mnQ5Wazfma/oIIVmsse6IpFgnPzYYZ3MPOZgg0iSpQMUFRxWG6GpEKqRAP5MAFAmTM4iD5gz4rmKtagGtdVxW2A99zyXmPJHjehNEmnYkp0VjpUSMJgIhfZPUy3rZmlxNhVVPUoLmydxT1neVCGpGMfRWX0wRtQn+blbIOuDxeMYSRJq0MyRQY+w4pdiI966JUZUMQv6zLkNbOvT3AbvQmSmQxayx4RjtHBM/9jBEEkVNcIg1t0O5Xioxk2HmpjcVruCZyxOLAIRZc79g09quy+KvqUv07EXarCHxf6o2EjX9/1W/qJAqQ3dLByjLRZLjCsCWvLzTAE2y1MZLHygYzqWgXOadoM0qFin36MaMoSwtW7TpHHT4yCbThQyBOFXc0ch3LkYU/D3r/VeH2HstHVEAPnPmTBzgjiaBiEcr9e4WhRV4qCWcA4AJKkdLXB3bMjsK9CTC8OMzBsoT4P2NGU2rLJqVanPeHYi39U4mlFVlSTJ0nq5ibEw4JssnkjMekH/BenHeL38wPCV6qT4XkI6r+mQdWe65OXPgjhJt95QvzwjxIjM3dvmmzJateZrVqskywHtvc+R6xek2vNZEZIlRKaEHfT7fRBLgmCQdBJBEILT9nbVav0eRCLitMXy9ROFRW5CeIxUH1xrL2m/KbNleJPQCgIakrkSUGkjotTWmkx3bMmMVJm5lqoTIg2ciw0OxBCJCKc19+/kcNsHj9qkSgkqb7d8A8khS2jK/vPHqE2/UJvbdVChc+O16UzGmrxvRkIjLRh6FHEESefjttXjTUjPPlRu5RQCm5eT/1Rv/3WdOhbck9mUffvmDnLdfqGMoeqf7qmfpVML0EYXMsVpbIdOHp0ZFfDhQFsuvaIkXVRZ92OcOyQXDMXphe6GQDXYl76MN1XKwEsLOXzsz+JIsgRRj+loUPT4s/u6W4+EtiYfEhQNjxT9+JAegxmSqQ781Ggi0MLOWAOB2u3tA8Crra4X7nyzkQ2MjiX3/7o6uvb85ch7Agt2hUlPb3/TH3687Gto81UWV/Ou97YBsZRir7myrdZ8Kb0g8Tv5vAUYoRqXisuc+64YsKcRj79VY7baG0EiMwp0OpBTwf7dj8sStjeH6qWu1HnzmqHbIt44JSiaP/cH7TAPY7Xb7KcFTTHcx5l9d+vz9SSTl8KC4LO/NMWvjiHRIzWXNBWvfJG1c/v54eM/FyY1TBzNP/upUVsMvNqg8e6irp/tNVbeXFNCPjbVkZ1lqCUFlUqok4LfpPeePhmq22xKda5RC/4on5mwaFTs3WPk2i8DlY26l0/hgjJ7afWHCf8/pyFp/lCbdBDK3vNOcf2BPNUBYej/IS+KO4fHx4KzCtsrKynyI0lmAnceKFVV94Ht8/1rKaZigrsvkrzy9TO+7MV8wZGqwFKkrjJGQSC+dGBZD3+uI5h8bElUzoP9rkdeqbKYMgh1uj+fQnOJUp81WS0EOQ6VoJulMF327D1jE3LKU9yxzBARvLtT2lBq54XwB8SyBcBEZoj9Ktd6InH34mlg8EJVTujciRieLXvzqaYPn3CZ1IPSpLq/3+/MKzCvKK24lRDqY4tpSYHTLfedGbn20Lm3Xltoazhfu3W0k8Zgzhco/7/Z6H51HtihBvO32z4LiZ6n8rawztg/f8e3x8TW3rZ4VcU7RdL3t7oJ9T1wT/N7a1OukP3F7vQ9iIS6mfdgc5Y5tHJF/CZCU5RQq6C+Pr7uzf7T+Sy7JbLXOOlcnxqLmU2+ctRz5KSeMDqyaPslI/8Ht9e7BQl49/Ai0w/EpTqb/CaBqBl5FlA2Z7ROVNUORZRsNk7bqvHierSSxmgEqy5rR/gFdT9uAsbMpaGo7auTHBpcA1DyD94cI5R7qutq9f4ESoOzmynNlTBpDLwJk1xwlNQZCIpRSYZZ/D0gkI7+XCe72eDztC5jxnUavbbYbAPICgLQU0dTc1yd+QVzhtpxOHY1JDwD0myAoSydQEPxEI0nPdPT09M33ZfO2qC6XSzsZDt8D4EugqMPC/VPGTSn2EYF/ye12+xdq9xa0zFllszlEYCdAtgJ003RWfSqXoUAzKI4QQt9ye72N+FP8G49a2wJoem22RTKwhFKymOOQTYFsQpFBCUKUkhBHaEim9DJkvkMwCh0dHR1B/LktbPsfTqw3z5AwTsEAAAAASUVORK5CYII=\" style=\"border:0px solid black; height:60px; margin-bottom:0px; margin-left:0px; margin-right:0px; margin-top:0px; width:60px\" /></td>\n      <td>\n      <p>&nbsp;<span style=\"font-size:28px\"><strong>EasyGantt</strong></span></p>\n      </td>\n    </tr>\n  </tbody>\n</table>\n\n<h1>&nbsp;</h1>\n\n<h1>%project_name%</h1>\n\n<table border=\"0\" cellpadding=\"2\" cellspacing=\"2\" style=\"width:500px\">\n  <tbody>\n    <tr>\n      <td style=\"width: 150px\"><strong>Start date:</strong></td>\n      <td>%project_start_date%</td>\n    </tr>\n    <tr>\n      <td style=\"width: 150px\"><strong>Due date:</strong></td>\n      <td>%project_due_date%</td>\n    </tr>\n  </tbody>\n</table>\n\n<p>%easy_gantt_current%</p>\n'),(2,2,1,'2021-08-23 17:11:56','2021-08-23 17:11:56','<div style=\"background: #009ee0; width: 100%; height: 5px\">&nbsp;</div>\n\n<p>&nbsp;</p>\n\n<table border=\"0\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\n  <tbody>\n    <tr>\n      <td style=\"width: 100px\"><img alt=\"\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADwAAAA8CAYAAAA6/NlyAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAA3XAAAN1wFCKJt4AAAAB3RJTUUH4QINEAYbWX8kIAAADbFJREFUaN7tW3l0W9WZ/9339LRatmzL+yLJVuIkwg2JszlxFoJDIQEOZJi2UELpciiUgTIlbTkwk87QaaeFDrMwwDktdEiTNocZpimUQgohp4lJnMSO0ySOY8dWLMXyEnmVtdiS3nt3/ugAetZ98iraOdP7n+697737u/dbft/3XQH/zxpJ14tramqEwODgYpmQKo6QKgpYAFgIRQYFDRNKwpTQIKFcp8Sjg+f59q6urvH/U4ArSyud4KSdALZSgjoCmGbxuATQsyDkCEfIbzq7uxsA0D85wE6nU4d4/F4K7osAXb9Qm0iBbo5gnwi85PF4Bv7ogO12u54DHiQUuwGUpFEKJwD6Ci9JP7js8/X+UQBX2mxbCcgLFFjyCdqbCCF4Vmcyff/ixYuxTwSw0+nMRFx8iQL3zPF7kyBkEjI0IDRjjiu+QGT5c11Xr7alFbDTZltBKXkNBItmMD0mGzPbJxavGQkv2WSK2lx5cWt5KeU1msRJmtGBazrfpX5DV1PA1HpMrxnrqwKllpmcNggedns8r6YFcKXdfjOleH06qytrje3B2p3+kW1frpaNluxZL0YW4+bTb53Nfu9lqhntXQ2AS2nYKP7xylXPU7Ox5tMCrrDb7yYUewEIqh/WmS4O3vXkRLBm+6qFUljtQGd3wb4n+7T9XbWpgFOQV654ux8AIM8bsLPMcTvl5P8GiIb9NBkdrf9K68jND24A4bh0WCpjR2NrwX98Q+Bik1UpQL94xdv98LwAV5RX1BEivwvAwBRfo/l8z+OvWcXsouJUH9AQYJVF01eTIwzka2ncquVohkBjWQKne+z8RLUnLBunXaQkxop//FCjvrN5k/qayR63t/u7cwLscDgKOJn+HkAhazxatqyh99G9tVON0IdtpUXj/7pT676lQNBadcROgFzWvM3HgiPHhqScD3/X5mr6Tg6LxWoKaTm670TuG8+tAqBlqzS99YrX+3YqwCwx5DhZ3q8GNrKs7qjvsf11LLB3FAudPbeYT57ZmpF1X7m2Nk9HatTAstrr60z9gdssl3cv0rayTmJs8671A7t+2AogwlQwYK+zxFk6K8CVNsfXAFLPPFn78ob+rzy/GYQo1lNh5IZa680NB9eZ7KUGfh0A3ZwUVqYwC1j8bLXxur4dWS012Xz/1CnhFTet9H/u6VaAigzMVsqLL88YsMPhKAAoUw/i2YWnfY/8dMPU/r8oEc61f9occWXyG1NZ8tm2Qh1Z2XyDWf+jan3j1LHgmtvWBLZ84YSKkn660ma7c0aAiYzv4Q9h3JSX8L2+bxxwTrXEf7dE3/T6WlOlQEh5muhk9uOL9OtObDGf4InS7Qzd/teb4vn2RhXT9M8ul0ubErDD4bAR0PtYkwbu/6FfNllyEvv2LNEf/84yfTWADKS3kdocfv25+oyTU0H7vv4zFzjOz3jGFg2FdqUETGR8kyWS8YKKE+HqG1ck9v1lqdD298v0KwDop1ttVMYViVLffFG7zJr1hzaYTilU3mDOHN7+V50q4eUTAHgm4OLiYqPK6cb7vvwvtsSOIh0Z+flqkx5AKv8peSK05Z6miNv4xliFf1KeUTxLpyFC9fnC2j1L9c0Ky731i+tlnfESQzCcTru9ngnYqNHtBGBOigBKqk6J1jJFrPv2BlO7QFChGg5J1HPv6UiP41Bg5YGeWKU8i5zFjsZI8bWo3JrKyO5Zoi+tMHLBRGQjOx4JsHeQ7GICpoTezZo/uPPb1sTf2wqE9ustmhq11fRE5FbHu8HCn/ti9rmI7bkxsbD8nXHXyWHxrNocnqBw72rjhcS+wIbPrKEc158sMfTO0tJSBVPkXC6XlgKbkyYL+q5JxwpFgP/icuOYmo/ti+L80sPBpQMTsn4+uhqTQTYcC61oHlUHXZerqV6UwX98qoTjJqrWXWZRcS2nVbhSbiI4sYYV9kVcdQpD4zDx15wZ5Dr2ImnfqiPjFWGR8gthlmUKbGkIf2o0JqsF+ea/qdK1J3aM3nC/VeVtWxWACeT1rGnBVbcr4tlvLdZdUXNBz3XFxvon5AV1T2GR8p9viugBiKzx24sFhSRNVqxcAkICDL65XgmYgBF2UTGyeK1CnG8pEGQVt+N7+tLE0nQ44HeuiRUDUco8ZYtAFhfquY85NcfzotnKclEKHBwrEUd5rY9qtLrEkKrMwGZT7/njvgkpfQn9Az1xSWXIUJ/PX1GoVr6DFVQU2O12S6KVTkqxyubcQYXvNXCDHAEz7v11XzwznTTrrf54mdrY9Vn82JSwlR2Ty3JJgg4n+1/JkKFIgy7P0gRYrAUA2oJyXjoBHx+OWyk7HESRgVeomWSxsoMXjjMninSSsZF0JoUY5Qg0qrag0ThN6wlHZUCSMcrUY43SoMmGbK1KKiozVQKAMZ9Iqsk2wraiU3Z4fjpOVKkonTKPyesk6eN+jgChJDYTDSvENxiXVQP6AgMXSOcJazmABztpHxaVW8FFRuNMdsbRYKJIJ5Uo+YlxhWicDdBMAMxTXpHJDM9mnQ5Wazfma/oIIVmsse6IpFgnPzYYZ3MPOZgg0iSpQMUFRxWG6GpEKqRAP5MAFAmTM4iD5gz4rmKtagGtdVxW2A99zyXmPJHjehNEmnYkp0VjpUSMJgIhfZPUy3rZmlxNhVVPUoLmydxT1neVCGpGMfRWX0wRtQn+blbIOuDxeMYSRJq0MyRQY+w4pdiI966JUZUMQv6zLkNbOvT3AbvQmSmQxayx4RjtHBM/9jBEEkVNcIg1t0O5Xioxk2HmpjcVruCZyxOLAIRZc79g09quy+KvqUv07EXarCHxf6o2EjX9/1W/qJAqQ3dLByjLRZLjCsCWvLzTAE2y1MZLHygYzqWgXOadoM0qFin36MaMoSwtW7TpHHT4yCbThQyBOFXc0ch3LkYU/D3r/VeH2HstHVEAPnPmTBzgjiaBiEcr9e4WhRV4qCWcA4AJKkdLXB3bMjsK9CTC8OMzBsoT4P2NGU2rLJqVanPeHYi39U4mlFVlSTJ0nq5ibEw4JssnkjMekH/BenHeL38wPCV6qT4XkI6r+mQdWe65OXPgjhJt95QvzwjxIjM3dvmmzJateZrVqskywHtvc+R6xek2vNZEZIlRKaEHfT7fRBLgmCQdBJBEILT9nbVav0eRCLitMXy9ROFRW5CeIxUH1xrL2m/KbNleJPQCgIakrkSUGkjotTWmkx3bMmMVJm5lqoTIg2ciw0OxBCJCKc19+/kcNsHj9qkSgkqb7d8A8khS2jK/vPHqE2/UJvbdVChc+O16UzGmrxvRkIjLRh6FHEESefjttXjTUjPPlRu5RQCm5eT/1Rv/3WdOhbck9mUffvmDnLdfqGMoeqf7qmfpVML0EYXMsVpbIdOHp0ZFfDhQFsuvaIkXVRZ92OcOyQXDMXphe6GQDXYl76MN1XKwEsLOXzsz+JIsgRRj+loUPT4s/u6W4+EtiYfEhQNjxT9+JAegxmSqQ781Ggi0MLOWAOB2u3tA8Crra4X7nyzkQ2MjiX3/7o6uvb85ch7Agt2hUlPb3/TH3687Gto81UWV/Ou97YBsZRir7myrdZ8Kb0g8Tv5vAUYoRqXisuc+64YsKcRj79VY7baG0EiMwp0OpBTwf7dj8sStjeH6qWu1HnzmqHbIt44JSiaP/cH7TAPY7Xb7KcFTTHcx5l9d+vz9SSTl8KC4LO/NMWvjiHRIzWXNBWvfJG1c/v54eM/FyY1TBzNP/upUVsMvNqg8e6irp/tNVbeXFNCPjbVkZ1lqCUFlUqok4LfpPeePhmq22xKda5RC/4on5mwaFTs3WPk2i8DlY26l0/hgjJ7afWHCf8/pyFp/lCbdBDK3vNOcf2BPNUBYej/IS+KO4fHx4KzCtsrKynyI0lmAnceKFVV94Ht8/1rKaZigrsvkrzy9TO+7MV8wZGqwFKkrjJGQSC+dGBZD3+uI5h8bElUzoP9rkdeqbKYMgh1uj+fQnOJUp81WS0EOQ6VoJulMF327D1jE3LKU9yxzBARvLtT2lBq54XwB8SyBcBEZoj9Ktd6InH34mlg8EJVTujciRieLXvzqaYPn3CZ1IPSpLq/3+/MKzCvKK24lRDqY4tpSYHTLfedGbn20Lm3Xltoazhfu3W0k8Zgzhco/7/Z6H51HtihBvO32z4LiZ6n8rawztg/f8e3x8TW3rZ4VcU7RdL3t7oJ9T1wT/N7a1OukP3F7vQ9iIS6mfdgc5Y5tHJF/CZCU5RQq6C+Pr7uzf7T+Sy7JbLXOOlcnxqLmU2+ctRz5KSeMDqyaPslI/8Ht9e7BQl49/Ai0w/EpTqb/CaBqBl5FlA2Z7ROVNUORZRsNk7bqvHierSSxmgEqy5rR/gFdT9uAsbMpaGo7auTHBpcA1DyD94cI5R7qutq9f4ESoOzmynNlTBpDLwJk1xwlNQZCIpRSYZZ/D0gkI7+XCe72eDztC5jxnUavbbYbAPICgLQU0dTc1yd+QVzhtpxOHY1JDwD0myAoSydQEPxEI0nPdPT09M33ZfO2qC6XSzsZDt8D4EugqMPC/VPGTSn2EYF/ye12+xdq9xa0zFllszlEYCdAtgJ003RWfSqXoUAzKI4QQt9ye72N+FP8G49a2wJoem22RTKwhFKymOOQTYFsQpFBCUKUkhBHaEim9DJkvkMwCh0dHR1B/LktbPsfTqw3z5AwTsEAAAAASUVORK5CYII=\" style=\"border:0px solid black; height:60px; margin-bottom:0px; margin-left:0px; margin-right:0px; margin-top:0px; width:60px\" /></td>\n      <td>\n      <p>&nbsp;<span style=\"font-size:28px\"><strong>Easy WBS</strong></span></p>\n      </td>\n    </tr>\n  </tbody>\n</table>\n\n<h1>&nbsp;</h1>\n\n<h1>%project_name%</h1>\n\n<table border=\"0\" cellpadding=\"2\" cellspacing=\"2\" style=\"width:500px\">\n  <tbody>\n    <tr>\n      <td style=\"width: 150px\"><strong>Start date:</strong></td>\n      <td>%project_start_date%</td>\n    </tr>\n    <tr>\n      <td style=\"width: 150px\"><strong>Due date:</strong></td>\n      <td>%project_due_date%</td>\n    </tr>\n  </tbody>\n</table>\n\n<p>%easy_wbs_current%</p>\n'),(3,3,1,'2021-08-23 17:12:56','2021-08-23 17:12:56','<span>Click here to change heading</span>\n\n<table>\n  <tr>\n    <td>\n      Place for NFC chip\n    </td>\n    <td>\n      %easy_short_url_medium_qr%\n    </td>\n  </tr>\n</table>');
/*!40000 ALTER TABLE `easy_printable_template_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_printable_templates`
--

DROP TABLE IF EXISTS `easy_printable_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_printable_templates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(2048) NOT NULL,
  `project_id` int DEFAULT NULL,
  `author_id` int NOT NULL,
  `private` tinyint(1) NOT NULL DEFAULT '0',
  `pages_orientation` varchar(255) NOT NULL,
  `pages_size` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `category` varchar(255) NOT NULL DEFAULT 'custom',
  `internal_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ept_internal_name` (`internal_name`),
  KEY `idx_ept_category` (`category`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_printable_templates`
--

LOCK TABLES `easy_printable_templates` WRITE;
/*!40000 ALTER TABLE `easy_printable_templates` DISABLE KEYS */;
INSERT INTO `easy_printable_templates` VALUES (1,'Easy Gantt (default)',NULL,4,0,'landscape','a4','2021-08-23 17:11:54','2021-08-23 17:11:54','easy_gantt',NULL,NULL),(2,'Easy WBS (default)',NULL,4,0,'landscape','a4','2021-08-23 17:11:56','2021-08-23 17:11:56','easy_wbs',NULL,NULL),(3,'QR',NULL,4,0,'portrait','a4','2021-08-23 17:12:56','2021-08-23 17:12:56','easy_qr','easy_qr',NULL);
/*!40000 ALTER TABLE `easy_printable_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_queries`
--

DROP TABLE IF EXISTS `easy_queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_queries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_id` int DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `filters` longtext,
  `user_id` int NOT NULL DEFAULT '0',
  `visibility` int DEFAULT '0',
  `column_names` longtext,
  `sort_criteria` longtext,
  `group_by` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `settings` longtext,
  `show_sum_row` tinyint(1) DEFAULT '0',
  `groups_opened` tinyint(1) DEFAULT '0',
  `is_tagged` tinyint(1) NOT NULL DEFAULT '0',
  `is_for_subprojects` tinyint(1) DEFAULT NULL,
  `chart_settings` longtext,
  `calculation_formula` varchar(255) DEFAULT NULL,
  `show_avatars` tinyint(1) DEFAULT '1',
  `period_settings` longtext,
  `custom_formatting` longtext,
  `easy_currency_code` varchar(3) DEFAULT NULL,
  `outputs` varchar(255) DEFAULT '---\n- list\n',
  `daily_snapshot` tinyint(1) DEFAULT '0',
  `query_string` varchar(255) DEFAULT NULL,
  `epzm_uuid` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_easy_queries_1` (`id`,`type`),
  KEY `idx_easy_queries_user_id` (`user_id`),
  KEY `idx_easy_queries_project_id` (`project_id`),
  KEY `index_easy_queries_on_epzm_uuid` (`epzm_uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_queries`
--

LOCK TABLES `easy_queries` WRITE;
/*!40000 ALTER TABLE `easy_queries` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_queries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_queries_easy_user_types`
--

DROP TABLE IF EXISTS `easy_queries_easy_user_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_queries_easy_user_types` (
  `easy_query_id` bigint NOT NULL,
  `easy_user_type_id` bigint NOT NULL,
  PRIMARY KEY (`easy_query_id`,`easy_user_type_id`),
  KEY `index_easy_queries_easy_user_types_on_easy_query_id` (`easy_query_id`),
  KEY `index_easy_queries_easy_user_types_on_easy_user_type_id` (`easy_user_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_queries_easy_user_types`
--

LOCK TABLES `easy_queries_easy_user_types` WRITE;
/*!40000 ALTER TABLE `easy_queries_easy_user_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_queries_easy_user_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_queries_roles`
--

DROP TABLE IF EXISTS `easy_queries_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_queries_roles` (
  `easy_query_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  PRIMARY KEY (`easy_query_id`,`role_id`),
  KEY `index_easy_queries_roles_on_easy_query_id` (`easy_query_id`),
  KEY `index_easy_queries_roles_on_role_id` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_queries_roles`
--

LOCK TABLES `easy_queries_roles` WRITE;
/*!40000 ALTER TABLE `easy_queries_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_queries_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_query_snapshot_data`
--

DROP TABLE IF EXISTS `easy_query_snapshot_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_query_snapshot_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `easy_query_snapshot_id` int DEFAULT NULL,
  `date` date NOT NULL,
  `value1` float DEFAULT NULL,
  `value2` float DEFAULT NULL,
  `value3` float DEFAULT NULL,
  `value4` float DEFAULT NULL,
  `value5` float DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_eqsd_1` (`easy_query_snapshot_id`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_query_snapshot_data`
--

LOCK TABLES `easy_query_snapshot_data` WRITE;
/*!40000 ALTER TABLE `easy_query_snapshot_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_query_snapshot_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_query_snapshots`
--

DROP TABLE IF EXISTS `easy_query_snapshots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_query_snapshots` (
  `id` int NOT NULL AUTO_INCREMENT,
  `easy_query_id` int DEFAULT NULL,
  `epzm_uuid` varchar(36) DEFAULT NULL,
  `execute_as` varchar(255) NOT NULL DEFAULT 'author',
  `execute_as_user_id` int DEFAULT NULL,
  `period_options` longtext,
  `settings` text,
  `last_executed` datetime DEFAULT NULL,
  `nextrun_at` datetime DEFAULT NULL,
  `author_id` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_easy_query_snapshots_on_easy_query_id` (`easy_query_id`),
  KEY `index_easy_query_snapshots_on_epzm_uuid` (`epzm_uuid`),
  KEY `index_easy_query_snapshots_on_nextrun_at` (`nextrun_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_query_snapshots`
--

LOCK TABLES `easy_query_snapshots` WRITE;
/*!40000 ALTER TABLE `easy_query_snapshots` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_query_snapshots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_rake_task_info_details`
--

DROP TABLE IF EXISTS `easy_rake_task_info_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_rake_task_info_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `easy_rake_task_info_id` int NOT NULL,
  `type` varchar(255) NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `detail` text,
  `entity_type` varchar(255) DEFAULT NULL,
  `entity_id` int DEFAULT NULL,
  `reference_id` int DEFAULT NULL,
  `reference_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_ertid_on_info_id` (`easy_rake_task_info_id`),
  KEY `index_ertid_on_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_rake_task_info_details`
--

LOCK TABLES `easy_rake_task_info_details` WRITE;
/*!40000 ALTER TABLE `easy_rake_task_info_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_rake_task_info_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_rake_task_infos`
--

DROP TABLE IF EXISTS `easy_rake_task_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_rake_task_infos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `easy_rake_task_id` int NOT NULL,
  `status` int NOT NULL,
  `started_at` datetime NOT NULL,
  `finished_at` datetime DEFAULT NULL,
  `note` text,
  `options` longtext,
  `method_to_execute` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_erti_on_task_id_status` (`easy_rake_task_id`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_rake_task_infos`
--

LOCK TABLES `easy_rake_task_infos` WRITE;
/*!40000 ALTER TABLE `easy_rake_task_infos` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_rake_task_infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_rake_tasks`
--

DROP TABLE IF EXISTS `easy_rake_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_rake_tasks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(2048) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `settings` text,
  `period` varchar(255) NOT NULL,
  `interval` int NOT NULL,
  `next_run_at` datetime NOT NULL,
  `builtin` int NOT NULL DEFAULT '0',
  `failure_mail` varchar(255) DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  `last_duration` int NOT NULL DEFAULT '0',
  `average_duration` int NOT NULL DEFAULT '0',
  `blocked_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_rake_tasks`
--

LOCK TABLES `easy_rake_tasks` WRITE;
/*!40000 ALTER TABLE `easy_rake_tasks` DISABLE KEYS */;
INSERT INTO `easy_rake_tasks` VALUES (1,'EasyRakeTaskRepeatingEntities',1,NULL,'hourly',1,'2021-08-23 17:10:50',1,NULL,NULL,0,0,NULL),(2,'EasyRakeTaskHistoryCleaner',1,NULL,'daily',1,'2021-08-23 00:00:00',1,NULL,NULL,0,0,NULL),(3,'EasyRakeTaskCheckFailureTasks',0,'{\"email_type\":\"all_admins\",\"admins\":[\"1\"]}','daily',1,'2021-08-23 00:00:00',1,NULL,NULL,0,0,NULL),(4,'OneTimeEasyRakeTask',1,NULL,'minutes',1,'2021-08-23 00:00:00',1,NULL,NULL,0,0,NULL),(5,'EasyRakeTaskAttendanceActivityAccumulation',1,NULL,'monthly',12,'2021-12-31 23:00:00',1,NULL,NULL,0,0,NULL),(6,'EasyRakeTaskComputedFromQuery',1,NULL,'daily',1,'2021-08-23 00:00:00',1,NULL,NULL,0,0,NULL),(7,'Rorys::RakeTaskExecutor',1,NULL,'minutes',5,'2021-08-23 17:12:26',1,NULL,NULL,0,0,NULL),(8,'EasyRakeTaskComputeReports',1,NULL,'daily',1,'2021-08-23 00:00:00',1,NULL,NULL,0,0,NULL),(9,'EasyRakeTaskEasyEntityAction',1,NULL,'hourly',1,'2021-08-23 00:00:00',1,NULL,NULL,0,0,NULL),(10,'EasyRakeTaskEasyQuerySnapshot',1,NULL,'hourly',1,'2021-08-23 00:00:00',1,NULL,NULL,0,0,NULL),(11,'EasyRakeTaskCleanAsyncExports',1,NULL,'daily',1,'2021-08-23 23:59:59',1,NULL,NULL,0,0,NULL),(12,'EasyRakeTaskEasyMeetingNotifier',1,NULL,'daily',1,'2021-08-24 01:59:59',1,NULL,NULL,0,0,NULL);
/*!40000 ALTER TABLE `easy_rake_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_report_issue_statuses`
--

DROP TABLE IF EXISTS `easy_report_issue_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_report_issue_statuses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `issue_id` int NOT NULL,
  `status_time_0` int DEFAULT NULL,
  `status_count_0` int DEFAULT NULL,
  `status_time_1` int DEFAULT NULL,
  `status_count_1` int DEFAULT NULL,
  `status_time_2` int DEFAULT NULL,
  `status_count_2` int DEFAULT NULL,
  `status_time_3` int DEFAULT NULL,
  `status_count_3` int DEFAULT NULL,
  `status_time_4` int DEFAULT NULL,
  `status_count_4` int DEFAULT NULL,
  `status_time_5` int DEFAULT NULL,
  `status_count_5` int DEFAULT NULL,
  `status_time_6` int DEFAULT NULL,
  `status_count_6` int DEFAULT NULL,
  `status_time_7` int DEFAULT NULL,
  `status_count_7` int DEFAULT NULL,
  `status_time_8` int DEFAULT NULL,
  `status_count_8` int DEFAULT NULL,
  `status_time_9` int DEFAULT NULL,
  `status_count_9` int DEFAULT NULL,
  `status_time_10` int DEFAULT NULL,
  `status_count_10` int DEFAULT NULL,
  `status_time_11` int DEFAULT NULL,
  `status_count_11` int DEFAULT NULL,
  `status_time_12` int DEFAULT NULL,
  `status_count_12` int DEFAULT NULL,
  `status_time_13` int DEFAULT NULL,
  `status_count_13` int DEFAULT NULL,
  `status_time_14` int DEFAULT NULL,
  `status_count_14` int DEFAULT NULL,
  `status_time_15` int DEFAULT NULL,
  `status_count_15` int DEFAULT NULL,
  `status_time_16` int DEFAULT NULL,
  `status_count_16` int DEFAULT NULL,
  `status_time_17` int DEFAULT NULL,
  `status_count_17` int DEFAULT NULL,
  `status_time_18` int DEFAULT NULL,
  `status_count_18` int DEFAULT NULL,
  `status_time_19` int DEFAULT NULL,
  `status_count_19` int DEFAULT NULL,
  `status_time_20` int DEFAULT NULL,
  `status_count_20` int DEFAULT NULL,
  `status_time_21` int DEFAULT NULL,
  `status_count_21` int DEFAULT NULL,
  `status_time_22` int DEFAULT NULL,
  `status_count_22` int DEFAULT NULL,
  `status_time_23` int DEFAULT NULL,
  `status_count_23` int DEFAULT NULL,
  `status_time_24` int DEFAULT NULL,
  `status_count_24` int DEFAULT NULL,
  `status_time_25` int DEFAULT NULL,
  `status_count_25` int DEFAULT NULL,
  `status_time_26` int DEFAULT NULL,
  `status_count_26` int DEFAULT NULL,
  `status_time_27` int DEFAULT NULL,
  `status_count_27` int DEFAULT NULL,
  `status_time_28` int DEFAULT NULL,
  `status_count_28` int DEFAULT NULL,
  `status_time_29` int DEFAULT NULL,
  `status_count_29` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_eris_1` (`issue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_report_issue_statuses`
--

LOCK TABLES `easy_report_issue_statuses` WRITE;
/*!40000 ALTER TABLE `easy_report_issue_statuses` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_report_issue_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_report_settings`
--

DROP TABLE IF EXISTS `easy_report_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_report_settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `last_run` datetime DEFAULT NULL,
  `settings` longtext,
  PRIMARY KEY (`id`),
  KEY `idx_ers_1` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_report_settings`
--

LOCK TABLES `easy_report_settings` WRITE;
/*!40000 ALTER TABLE `easy_report_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_report_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_resource_availabilities`
--

DROP TABLE IF EXISTS `easy_resource_availabilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_resource_availabilities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `easy_page_zone_module_uuid` varchar(255) NOT NULL,
  `description` text,
  `author_id` int NOT NULL,
  `date` date NOT NULL,
  `hour` int NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_era_easy_page_zone_module_uuid` (`easy_page_zone_module_uuid`),
  KEY `idx_era_author_id` (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_resource_availabilities`
--

LOCK TABLES `easy_resource_availabilities` WRITE;
/*!40000 ALTER TABLE `easy_resource_availabilities` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_resource_availabilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_role_tracker_restrictions`
--

DROP TABLE IF EXISTS `easy_role_tracker_restrictions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_role_tracker_restrictions` (
  `role_id` bigint NOT NULL,
  `tracker_id` bigint NOT NULL,
  PRIMARY KEY (`role_id`,`tracker_id`),
  KEY `index_easy_role_tracker_restrictions_on_role_id` (`role_id`),
  KEY `index_easy_role_tracker_restrictions_on_tracker_id` (`tracker_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_role_tracker_restrictions`
--

LOCK TABLES `easy_role_tracker_restrictions` WRITE;
/*!40000 ALTER TABLE `easy_role_tracker_restrictions` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_role_tracker_restrictions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_rooms`
--

DROP TABLE IF EXISTS `easy_rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_rooms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `capacity` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_rooms`
--

LOCK TABLES `easy_rooms` WRITE;
/*!40000 ALTER TABLE `easy_rooms` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_settings`
--

DROP TABLE IF EXISTS `easy_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` text,
  `project_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_easy_settings_on_name_and_project_id` (`name`,`project_id`),
  KEY `index_easy_settings_on_project_id` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_settings`
--

LOCK TABLES `easy_settings` WRITE;
/*!40000 ALTER TABLE `easy_settings` DISABLE KEYS */;
INSERT INTO `easy_settings` VALUES (1,NULL,'user_limit','--- 0\n...\n',NULL),(2,NULL,'default_projects_tree_display','--- with_siblings\n...\n',NULL),(3,NULL,'issue_created_on_date_format','--- datetime\n...\n',NULL),(4,NULL,'new_issue_columns_list','--- []\n',NULL),(5,NULL,'edit_issue_columns_list','--- []\n',NULL),(6,NULL,'avatar_enabled','--- true\n...\n',NULL),(7,NULL,'show_bulk_time_entry','--- true\n...\n',NULL),(8,NULL,'easy_issue_query_default_sorting_array','---\n- - priority\n  - desc\n- due_date\n- parent\n',NULL),(9,NULL,'easy_issue_query_list_default_columns','---\n- id\n- tracker\n- status\n- priority\n- subject\n- assigned_to\n- updated_on\n',NULL),(10,NULL,'easy_user_query_list_default_columns','---\n- login\n- firstname\n- lastname\n',NULL),(11,NULL,'easy_project_query_list_default_columns','---\n- name\n- description\n',NULL),(12,NULL,'easy_version_query_list_default_columns','---\n- project\n- name\n- effective_date\n- description\n- status\n- sharing\n',NULL),(13,NULL,'project_calculate_start_date','--- true\n...\n',NULL),(14,NULL,'project_calculate_due_date','--- false\n...\n',NULL),(15,NULL,'easy_issue_query_default_filters','---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\n',NULL),(16,NULL,'easy_user_query_default_filters','---\nstatus:\n  :operator: \"=\"\n  :values:\n  - \'1\'\n',NULL),(17,NULL,'easy_version_query_default_filters','---\nstatus:\n  :operator: \"=\"\n  :values:\n  - open\n',NULL),(18,NULL,'easy_attendance_query_list_default_columns','---\n- arrival\n- departure\n- easy_attendance_activity\n',NULL),(19,NULL,'easy_attendance_query_default_filters','---\nuser_id:\n  :operator: \"=\"\n  :values:\n  - me\narrival:\n  :operator: date_period_1\n  :values:\n    :period: current_month\n    :to: \'\'\n    :from: \'\'\n',NULL),(23,NULL,'easy_select_limit','--- \'25\'\n',NULL),(24,NULL,'commit_ref_keywords','--- refs,references,IssueID\n...\n',NULL),(25,NULL,'commit_fix_keywords',NULL,NULL),(26,NULL,'commit_fix_status_id',NULL,NULL),(27,NULL,'commit_fix_done_ratio',NULL,NULL),(28,NULL,'commit_fix_assignee_id','--- \'\'\n',NULL),(29,NULL,'commit_logtime_enabled','--- false\n...\n',NULL),(30,NULL,'commit_logtime_activity_id','--- \'0\'\n',NULL),(31,NULL,'default_project_page','--- project_overview\n...\n',NULL),(32,NULL,'show_issue_id','--- true\n...\n',NULL),(33,NULL,'enable_activity_roles','--- false\n...\n',NULL),(34,NULL,'issue_color_scheme_for','--- issue_priority\n...\n',NULL),(35,NULL,'new_subproject_user_role_id','--- \'\'\n',NULL),(36,NULL,'commit_cross_project_ref','--- false\n...\n',NULL),(37,NULL,'show_journal_id','--- false\n...\n',NULL),(38,NULL,'attachment_description','--- false\n...\n',NULL),(39,NULL,'attachment_description_required','--- false\n...\n',NULL),(40,NULL,'show_issue_custom_field_values_layout','--- two_columns\n...\n',NULL),(43,NULL,'display_issue_relations_on_new_form','--- false\n...\n',NULL),(44,NULL,'timeentry_hours_selector','--- textbox\n...\n',NULL),(45,NULL,'ckeditor_toolbar_config','--- Basic\n...\n',NULL),(46,NULL,'milestone_effective_date_from_issue_due_date','--- false\n...\n',NULL),(47,NULL,'git_repository_path','--- git_repositories\n...\n',NULL),(49,NULL,'easy_issue_timer_settings','---\n:active: false\n:round: 0.25\n:start:\n  :assigned_to_me: true\n  :status_id: \n:end:\n  :assigned_to: :author\n  :status_id: \n  :done_ratio: 100\n',NULL),(50,NULL,'project_display_identifiers','--- false\n...\n',NULL),(51,NULL,'attachment_reminder_words','--- |-\n  attachment?,attach??\n  příloh?;přilož*\n',NULL),(52,NULL,'issue_set_done_after_close','--- false\n...\n',NULL),(53,NULL,'allow_repeating_issues','--- true\n...\n',NULL),(55,NULL,'easy_attendance_use_time_select','--- false\n...\n',NULL),(56,NULL,'close_subtask_after_parent','--- false\n...\n',NULL),(58,NULL,'easy_time_entry_query_list_default_columns','---\n- project\n- issue\n- spent_on\n- user\n- activity\n- hours\n',NULL),(59,NULL,'easy_time_entry_query_default_filters','---\nspent_on:\n  :operator: date_period_1\n  :values:\n    :from: \'\'\n    :period: current_month\n    :to: \'\'\n',NULL),(60,NULL,'issue_private_note_as_default','--- false\n...\n',NULL),(61,NULL,'default_activity_in_overall_activity','---\n- issues\n- changesets\n- news\n- documents\n- files\n- dmsf_file_revisions\n',NULL),(62,NULL,'hide_login_quotes','--- false\n...\n',NULL),(63,NULL,'time_entries_locking_enabled','--- false\n...\n',NULL),(64,NULL,'easy_agile_board_query_default_filters','---\nstatus_id:\n  :operator: o\n  :values:\n  - \'1\'\nis_planned:\n  :operator: \"=\"\n  :values:\n  - \'0\'\n',NULL),(65,NULL,'easy_agile_issue_rating_mode','--- disabled\n...\n',NULL),(66,NULL,'easy_agile_issue_rating_cf',NULL,NULL),(67,NULL,'easy_printable_template_query_list_default_columns','---\n- project\n- name\n- author\n',NULL),(68,NULL,'easy_project_attachment_query_list_default_columns','---\n- container_type\n- container_link\n- filename\n- filesize\n- author\n- created_on\n',NULL),(69,NULL,'show_easy_resource_booking','--- true\n...\n',NULL),(70,NULL,'skip_workflow_for_admin',NULL,NULL),(71,NULL,'display_project_field_on_issue_detail','--- false\n...\n',NULL),(72,NULL,'round_easy_attendance_to_quarters','--- true\n...\n',NULL),(75,NULL,'easy_gantt_easy_issue_query_show_sum_row','--- false\n...\n',NULL),(76,NULL,'easy_gantt_easy_issue_query_load_groups_opened','--- false\n...\n',NULL),(77,NULL,'easy_gantt_easy_project_query_show_sum_row','--- false\n...\n',NULL),(78,NULL,'easy_gantt_easy_project_query_load_groups_opened','--- false\n...\n',NULL),(79,NULL,'easy_scheduler_easy_query_show_sum_row','--- false\n...\n',NULL),(80,NULL,'easy_scheduler_easy_query_load_groups_opened','--- false\n...\n',NULL),(81,NULL,'easy_wbs_easy_issue_query_show_sum_row','--- false\n...\n',NULL),(82,NULL,'easy_wbs_easy_issue_query_load_groups_opened','--- false\n...\n',NULL),(83,NULL,'easy_button_query_show_sum_row','--- false\n...\n',NULL),(84,NULL,'easy_button_query_load_groups_opened','--- false\n...\n',NULL),(85,NULL,'easy_stakeholder_query_show_sum_row','--- false\n...\n',NULL),(86,NULL,'easy_stakeholder_query_load_groups_opened','--- false\n...\n',NULL),(87,NULL,'easy_issue_query_show_sum_row','--- false\n...\n',NULL),(88,NULL,'easy_issue_query_load_groups_opened','--- false\n...\n',NULL),(89,NULL,'easy_project_query_show_sum_row','--- false\n...\n',NULL),(90,NULL,'easy_project_query_load_groups_opened','--- false\n...\n',NULL),(91,NULL,'easy_project_template_query_show_sum_row','--- false\n...\n',NULL),(92,NULL,'easy_project_template_query_load_groups_opened','--- false\n...\n',NULL),(93,NULL,'easy_user_query_show_sum_row','--- false\n...\n',NULL),(94,NULL,'easy_user_query_load_groups_opened','--- false\n...\n',NULL),(95,NULL,'easy_version_query_show_sum_row','--- false\n...\n',NULL),(96,NULL,'easy_version_query_load_groups_opened','--- false\n...\n',NULL),(97,NULL,'easy_attendance_query_show_sum_row','--- false\n...\n',NULL),(98,NULL,'easy_attendance_query_load_groups_opened','--- false\n...\n',NULL),(99,NULL,'easy_time_entry_query_show_sum_row','--- false\n...\n',NULL),(100,NULL,'easy_time_entry_query_load_groups_opened','--- false\n...\n',NULL),(101,NULL,'easy_issue_timer_query_show_sum_row','--- false\n...\n',NULL),(102,NULL,'easy_issue_timer_query_load_groups_opened','--- false\n...\n',NULL),(103,NULL,'easy_easy_query_query_show_sum_row','--- false\n...\n',NULL),(104,NULL,'easy_easy_query_query_load_groups_opened','--- false\n...\n',NULL),(105,NULL,'easy_document_query_show_sum_row','--- false\n...\n',NULL),(106,NULL,'easy_document_query_load_groups_opened','--- false\n...\n',NULL),(107,NULL,'easy_attendance_user_query_show_sum_row','--- false\n...\n',NULL),(108,NULL,'easy_attendance_user_query_load_groups_opened','--- false\n...\n',NULL),(109,NULL,'easy_async_export_query_show_sum_row','--- false\n...\n',NULL),(110,NULL,'easy_async_export_query_load_groups_opened','--- false\n...\n',NULL),(111,NULL,'easy_agile_board_query_show_sum_row','--- false\n...\n',NULL),(112,NULL,'easy_agile_board_query_load_groups_opened','--- false\n...\n',NULL),(113,NULL,'easy_sprint_query_show_sum_row','--- false\n...\n',NULL),(114,NULL,'easy_sprint_query_load_groups_opened','--- false\n...\n',NULL),(115,NULL,'easy_printable_template_query_show_sum_row','--- false\n...\n',NULL),(116,NULL,'easy_printable_template_query_load_groups_opened','--- false\n...\n',NULL),(117,NULL,'easy_project_attachment_query_show_sum_row','--- false\n...\n',NULL),(118,NULL,'easy_project_attachment_query_load_groups_opened','--- false\n...\n',NULL),(119,NULL,'easy_timesheet_query_show_sum_row','--- false\n...\n',NULL),(120,NULL,'easy_timesheet_query_load_groups_opened','--- false\n...\n',NULL),(121,NULL,'easy_issue_gantt_query_default_sorting_array','---\n- - priority\n  - desc\n- due_date\n- parent\n',NULL),(122,NULL,'easy_project_gantt_query_default_sorting_array',NULL,NULL),(123,NULL,'easy_issue_gantt_query_default_filters','---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\n',NULL),(124,NULL,'easy_project_gantt_query_default_filters',NULL,NULL),(125,NULL,'easy_issue_gantt_query_list_default_columns','---\n- id\n- tracker\n- status\n- priority\n- subject\n- assigned_to\n- updated_on\n',NULL),(126,NULL,'easy_project_gantt_query_list_default_columns','---\n- name\n- description\n',NULL),(127,NULL,'easy_issue_gantt_query_grouped_by',NULL,NULL),(128,NULL,'easy_project_gantt_query_grouped_by',NULL,NULL),(129,NULL,'easy_project_query_default_sorting_array','--- []\n',NULL),(130,NULL,'easy_user_query_default_sorting_array','--- []\n',NULL),(131,NULL,'easy_time_entry_base_query_default_sorting_array','---\n- - spent_on\n  - asc\n',NULL),(132,NULL,'easy_document_query_default_sorting_array','---\n- - category\n  - asc\n- - title\n  - asc\n',NULL),(133,NULL,'easy_button_query_default_sorting_array','--- []\n',NULL),(134,NULL,'easy_rake_task_period','--- 300\n...\n',NULL),(135,NULL,'self_registered_user_to_group_id',NULL,NULL),(136,NULL,'fiscal_day','--- \'01\'\n',NULL),(137,NULL,'fiscal_month','--- \'01\'\n',NULL),(138,NULL,'easy_webdav_enabled','--- true\n...\n',NULL),(139,NULL,'show_avatars_on_query','--- true\n...\n',NULL),(140,NULL,'easy_user_allocation_by_project_enabled','--- false\n...\n',NULL),(141,NULL,'easy_project_template_query_list_default_columns','---\n- name\n- description\n',NULL),(142,NULL,'ckeditor_syntax_highlight_enabled','--- true\n...\n',NULL),(143,NULL,'ckeditor_syntax_highlight_theme','--- github\n...\n',NULL),(144,NULL,'display_journal_details','--- true\n...\n',NULL),(145,NULL,'easy_search_suggester','---\nenabled: \'1\'\nentity_types: \n',NULL),(146,NULL,'easy_currencies_initialized','--- true\n...\n',NULL),(147,NULL,'easy_search_default_object_types','---\n- issues\n',NULL),(148,NULL,'agile_board_statuses','---\n:done:\n  status_id: \n  state_statuses: []\n  return_to: __no_change__\n:progress:\n  1:\n    name: New\n    status_id: \n    state_statuses: []\n    return_to: __no_change__\n  2:\n    name: Realization\n    status_id: \n    state_statuses: []\n    return_to: __no_change__\n  3:\n    name: To check\n    status_id: \n    state_statuses: []\n    return_to: __no_change__\n',NULL),(149,NULL,'scrum_settings','---\nsummable_column: \'\'\n',NULL),(150,NULL,'easy_caldav_enabled','--- true\n...\n',NULL),(151,NULL,'quick_planner_fields','---\n- subject\n- estimated_hours\n- due_date\n',NULL),(152,NULL,'ui_theme','--- themes/er18/er18.css\n...\n',NULL),(153,NULL,'easy_timesheet_query_list_default_columns','---\n- user\n- start_date\n- end_date\n',NULL),(154,NULL,'easy_timesheets_over_time','--- true\n...\n',NULL),(155,NULL,'easy_timesheets_custom_field_overtime_id',NULL,NULL),(156,NULL,'easy_timesheets_enabled_timesheet_calendar','--- month\n...\n',NULL),(157,NULL,'html5_dates','--- false\n...\n',NULL),(158,NULL,'chart_numbers_format','--- false\n...\n',NULL),(159,NULL,'show_easy_custom_formatting','--- false\n...\n',NULL),(160,NULL,'hide_imagemagick_warning','--- false\n...\n',NULL),(161,NULL,'default_project_page','--- project_overview\n...\n',1);
/*!40000 ALTER TABLE `easy_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_short_url_accesses`
--

DROP TABLE IF EXISTS `easy_short_url_accesses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_short_url_accesses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `easy_short_url_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `ip` varchar(128) DEFAULT NULL,
  `count` int NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_short_url_accesses`
--

LOCK TABLES `easy_short_url_accesses` WRITE;
/*!40000 ALTER TABLE `easy_short_url_accesses` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_short_url_accesses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_short_urls`
--

DROP TABLE IF EXISTS `easy_short_urls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_short_urls` (
  `id` int NOT NULL AUTO_INCREMENT,
  `shortcut` varchar(255) NOT NULL,
  `source_url` varchar(4096) NOT NULL,
  `valid_to` datetime DEFAULT NULL,
  `entity_type` varchar(255) DEFAULT NULL,
  `entity_id` int DEFAULT NULL,
  `allow_external` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_easy_short_urls_on_shortcut` (`shortcut`),
  KEY `index_easy_short_urls_on_entity_type_and_entity_id` (`entity_type`,`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_short_urls`
--

LOCK TABLES `easy_short_urls` WRITE;
/*!40000 ALTER TABLE `easy_short_urls` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_short_urls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_sliding_panels_locations`
--

DROP TABLE IF EXISTS `easy_sliding_panels_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_sliding_panels_locations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `zone` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `position` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_sliding_panels_locations`
--

LOCK TABLES `easy_sliding_panels_locations` WRITE;
/*!40000 ALTER TABLE `easy_sliding_panels_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_sliding_panels_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_sprints`
--

DROP TABLE IF EXISTS `easy_sprints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_sprints` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `capacity` int NOT NULL DEFAULT '0',
  `version_id` int DEFAULT NULL,
  `cross_project` tinyint(1) NOT NULL DEFAULT '0',
  `display_closed_tasks_in_last_n_days` int DEFAULT NULL,
  `goal` longtext,
  `closed` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_easy_sprints_on_project_id` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_sprints`
--

LOCK TABLES `easy_sprints` WRITE;
/*!40000 ALTER TABLE `easy_sprints` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_sprints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_textile_migrators`
--

DROP TABLE IF EXISTS `easy_textile_migrators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_textile_migrators` (
  `id` int NOT NULL AUTO_INCREMENT,
  `entity_type` varchar(255) NOT NULL,
  `entity_id` int NOT NULL,
  `entity_column` varchar(255) NOT NULL,
  `source_formatting` varchar(255) NOT NULL,
  `source_text` longtext NOT NULL,
  `target_text` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_easy_textile_migrators_on_entity_type_and_entity_id` (`entity_type`,`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_textile_migrators`
--

LOCK TABLES `easy_textile_migrators` WRITE;
/*!40000 ALTER TABLE `easy_textile_migrators` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_textile_migrators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_theme_design_entities`
--

DROP TABLE IF EXISTS `easy_theme_design_entities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_theme_design_entities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `easy_theme_design_id` int DEFAULT NULL,
  `entity_type` varchar(255) DEFAULT NULL,
  `entity_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `design_entity_idx` (`entity_id`,`entity_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_theme_design_entities`
--

LOCK TABLES `easy_theme_design_entities` WRITE;
/*!40000 ALTER TABLE `easy_theme_design_entities` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_theme_design_entities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_theme_designs`
--

DROP TABLE IF EXISTS `easy_theme_designs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_theme_designs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `position` int DEFAULT NULL,
  `primary_color` varchar(255) NOT NULL,
  `secondary_color` varchar(255) NOT NULL,
  `css` longtext,
  `extra_css_properties` longtext,
  `logo_file_name` varchar(255) DEFAULT NULL,
  `logo_content_type` varchar(255) DEFAULT NULL,
  `logo_file_size` bigint DEFAULT NULL,
  `logo_updated_at` datetime DEFAULT NULL,
  `in_use` tinyint(1) NOT NULL DEFAULT '0',
  `author_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `internal_name` varchar(255) DEFAULT NULL,
  `advanced_options` text,
  `background_image_file_name` varchar(255) DEFAULT NULL,
  `background_image_content_type` varchar(255) DEFAULT NULL,
  `background_image_file_size` bigint DEFAULT NULL,
  `background_image_updated_at` datetime DEFAULT NULL,
  `version` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_theme_designs`
--

LOCK TABLES `easy_theme_designs` WRITE;
/*!40000 ALTER TABLE `easy_theme_designs` DISABLE KEYS */;
INSERT INTO `easy_theme_designs` VALUES (1,'Dark',NULL,NULL,'#5db0d6','#232323','#top-menu {\n  box-shadow: 0px 0px 6px #212327;\n}',NULL,NULL,NULL,NULL,NULL,0,4,'2019-06-04 16:39:08','2021-05-06 17:43:12','easy_dark_theme','---\n:invert-logo: \'true\'\n:color-background: \"#212328\"\n:color-foreground: \"#26282d\"\n:color-text: \"#b4bed2\"\n:color-text-muted: \"#8890aa\"\n:color-text-inverted: \"#212328\"\n:color-highlight: \"#303237\"\n:color-border: \"#303237\"\n:color-backdrop: \"#212328\"\n:color-top-background: \"#212328\"\n:color-top-background-from: rgba($color-top-background,.99)\n:color-top-background-to: rgba($color-top-background,.8)\n:color-top-text: \"#b4bed2\"\n:color-more-background: \"#24262b\"\n:color-more-text: \"#b4bed2\"\n:color-more-text-muted: \"#888caa\"\n:color-more-border: \"#303237\"\n:servicebar-color: \"#b4bed2\"\n:form-field-background: \"#1d1f22\"\n:color__calendar--hilight: \"#2d2d26\"\n:button-base-color: \"#f0f4f8\"\n:button-main-color: \"#f0f4f8\"\n:button-important-color: \"#f0f4f8\"\n:button-active-color: \"#f0f4f8\"\n:modal__color--backdrop: \"#26282d\"\n',NULL,NULL,NULL,NULL,2),(2,'Compact',NULL,NULL,'#009ee0','#f5efe6',NULL,NULL,NULL,NULL,NULL,NULL,0,4,'2019-05-26 22:33:32','2021-08-23 17:13:14','easy_compact_theme','---\n:spacing: 8px\n:spacing_coeficient: \'1.375\'\n:font-family: \"\'Ubuntu\', sans-serif\"\n:font-size: 13px\n:font-h1: 1.375em\n:font-h2: 1.25em\n:font-h3: 1em\n:font-h4: 1em\n:topmenu__height: 48px\n:form-field__max-width: 300px\n:form-field__height: 24px\n:tabular__offset: 120px\n:avatar__size: 20px\n',NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `easy_theme_designs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_timesheets`
--

DROP TABLE IF EXISTS `easy_timesheets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_timesheets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `period` varchar(255) DEFAULT NULL,
  `user_id` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `locked_by_id` int DEFAULT NULL,
  `locked_at` datetime DEFAULT NULL,
  `unlocked_by_id` int DEFAULT NULL,
  `unlocked_at` datetime DEFAULT NULL,
  `lock_description` text,
  PRIMARY KEY (`id`),
  KEY `idx_et_1` (`user_id`),
  KEY `idx_et_2` (`user_id`,`start_date`,`end_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_timesheets`
--

LOCK TABLES `easy_timesheets` WRITE;
/*!40000 ALTER TABLE `easy_timesheets` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_timesheets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_to_do_list_items`
--

DROP TABLE IF EXISTS `easy_to_do_list_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_to_do_list_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `easy_to_do_list_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `position` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `entity_id` int DEFAULT NULL,
  `entity_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_to_do_list_items`
--

LOCK TABLES `easy_to_do_list_items` WRITE;
/*!40000 ALTER TABLE `easy_to_do_list_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_to_do_list_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_to_do_lists`
--

DROP TABLE IF EXISTS `easy_to_do_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_to_do_lists` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `user_id` int NOT NULL,
  `position` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_to_do_lists`
--

LOCK TABLES `easy_to_do_lists` WRITE;
/*!40000 ALTER TABLE `easy_to_do_lists` DISABLE KEYS */;
INSERT INTO `easy_to_do_lists` VALUES (1,'To-Do',1,1,'2021-08-23 17:11:53','2021-08-23 17:11:53');
/*!40000 ALTER TABLE `easy_to_do_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_translations`
--

DROP TABLE IF EXISTS `easy_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_translations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `entity_type` varchar(255) DEFAULT NULL,
  `entity_id` int DEFAULT NULL,
  `entity_column` varchar(255) NOT NULL,
  `lang` varchar(255) NOT NULL DEFAULT 'en',
  `value` longtext,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `easy_translations_entity_lang` (`entity_id`,`entity_type`,`entity_column`,`lang`),
  KEY `easy_translations_entity_type_lang` (`entity_type`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_translations`
--

LOCK TABLES `easy_translations` WRITE;
/*!40000 ALTER TABLE `easy_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_twofa_remembers`
--

DROP TABLE IF EXISTS `easy_twofa_remembers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_twofa_remembers` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `easy_twofa_user_scheme_id` int NOT NULL,
  `expired_at` date NOT NULL,
  `device` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_easy_twofa_remembers_on_easy_twofa_user_scheme_id` (`easy_twofa_user_scheme_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_twofa_remembers`
--

LOCK TABLES `easy_twofa_remembers` WRITE;
/*!40000 ALTER TABLE `easy_twofa_remembers` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_twofa_remembers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_twofa_user_schemes`
--

DROP TABLE IF EXISTS `easy_twofa_user_schemes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_twofa_user_schemes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT '0',
  `scheme_key` varchar(255) NOT NULL,
  `settings` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_index_easy_twofa_user_schemes_user_id` (`user_id`),
  KEY `index_easy_twofa_user_schemes_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_twofa_user_schemes`
--

LOCK TABLES `easy_twofa_user_schemes` WRITE;
/*!40000 ALTER TABLE `easy_twofa_user_schemes` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_twofa_user_schemes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_user_read_entities`
--

DROP TABLE IF EXISTS `easy_user_read_entities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_user_read_entities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `entity_type` varchar(255) NOT NULL,
  `entity_id` int NOT NULL,
  `read_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_easy_read_user_entities_1` (`user_id`,`entity_type`,`entity_id`),
  KEY `idx_easy_read_user_entities_2` (`entity_type`,`entity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_user_read_entities`
--

LOCK TABLES `easy_user_read_entities` WRITE;
/*!40000 ALTER TABLE `easy_user_read_entities` DISABLE KEYS */;
INSERT INTO `easy_user_read_entities` VALUES (1,1,'Issue',1,'2021-08-23 17:58:01');
/*!40000 ALTER TABLE `easy_user_read_entities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_user_time_calendar_exceptions`
--

DROP TABLE IF EXISTS `easy_user_time_calendar_exceptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_user_time_calendar_exceptions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `calendar_id` int NOT NULL,
  `exception_date` date NOT NULL,
  `working_hours` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_easy_user_time_calendar_exceptions_on_calendar_id` (`calendar_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_user_time_calendar_exceptions`
--

LOCK TABLES `easy_user_time_calendar_exceptions` WRITE;
/*!40000 ALTER TABLE `easy_user_time_calendar_exceptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_user_time_calendar_exceptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_user_time_calendar_holidays`
--

DROP TABLE IF EXISTS `easy_user_time_calendar_holidays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_user_time_calendar_holidays` (
  `id` int NOT NULL AUTO_INCREMENT,
  `calendar_id` int NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `holiday_date` date NOT NULL,
  `is_repeating` tinyint(1) NOT NULL DEFAULT '1',
  `ical_uid` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_ical_uid` (`calendar_id`,`ical_uid`(255)),
  KEY `index_easy_user_time_calendar_holidays_on_calendar_id` (`calendar_id`)
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_user_time_calendar_holidays`
--

LOCK TABLES `easy_user_time_calendar_holidays` WRITE;
/*!40000 ALTER TABLE `easy_user_time_calendar_holidays` DISABLE KEYS */;
INSERT INTO `easy_user_time_calendar_holidays` VALUES (1,1,'1. svátek vánoční','2007-12-25',1,'b4cfcb30-8041-4244-91bb-9af9954c5b2d'),(2,1,'2. svátek vánoční','2007-12-26',1,'f1381245-0442-9a41-9eb3-43ab84b148e2'),(3,1,'Nový rok','2008-01-01',1,'c92e67c1-1319-ad4d-9e47-b078c82732ae'),(4,1,'Svátek práce','2008-05-01',1,'520f666b-fe72-a146-b6e8-a68036f8b09f'),(5,1,'Den české státnosti','2008-09-28',1,'38aef6bb-4646-5f48-aba5-c12481cc6b8f'),(6,1,'Den boje za svobodu a demokracii','2008-11-17',1,'7233642b-1f2d-4442-befc-fa6ce63daf0f'),(7,1,'Štědrý den','2007-12-24',1,'a56cc74b-7a5b-4848-9b3f-b6b729b682ba'),(8,1,'Den obnovy samostatného českého státu (1993)','2008-01-01',1,'aca364cd-7732-0d40-bddc-8951284a8008'),(9,1,'Den vítězství (1945)','2008-05-08',1,'99803396-7b1d-4745-a5f0-df95188d6555'),(10,1,'Den vzniku samostatného československého státu (1918)','2008-10-28',1,'3f5df1be-1028-524d-9e1d-4e4bff4c4d48'),(11,1,'Den slovanských věrozvěstů Cyrila a Metoděje (863)','2008-07-05',1,'34e10e5b-b11a-5044-a9f2-7e0e45f32117'),(12,1,'Den upálení mistra Jana Husa (1415)','2008-07-06',1,'9886a881-7eac-7e43-bb8f-3a0def75a8c9'),(13,1,'Velikonoční pondělí','2008-03-24',0,'ae76d459-8ede-c44a-aee3-c1556503f6c7'),(14,1,'Velikonoční pondělí','2009-04-13',0,'abdde23e-7fdc-a645-b055-9c62c4b2dcf9'),(15,1,'Velikonoční pondělí','2010-04-05',0,'7e443818-5b3d-474c-b995-f653641eaaf9'),(16,1,'Velikonoční pondělí','2011-04-25',0,'6078a5c9-949f-9f42-8e11-5c9640fa790b'),(17,1,'Velikonoční pondělí','2012-04-09',0,'8c16e28f-5cbb-8a4b-a522-af2f88762d71'),(18,1,'Velikonoční pondělí','2013-04-01',0,'7181bc2b-aa52-a641-87ef-440dd3b5e690'),(19,1,'Velikonoční pondělí','2014-04-21',0,'6e6d4a93-341a-d04f-b76d-db1af1e69079'),(20,1,'Velikonoční pondělí','2015-04-06',0,'26fd664e-066b-6441-94bf-19048f244518'),(21,2,'Neujahr','2006-01-01',1,'928286484'),(22,2,'Heilige drei Könige','2006-01-06',1,'917544590'),(23,2,'Valentinstag','2006-02-14',1,'959125914'),(24,2,'Tag der Arbeit','2006-05-01',1,'999463355'),(25,2,'Friedensfest','2006-08-08',1,'942159081'),(26,2,'Tag der Deutschen Einheit','2006-10-03',1,'932572589'),(27,2,'Nikolaus','2006-12-06',1,'915905148'),(28,2,'Heiliger Abend','2006-12-24',1,'031bd550-c8d9-11da-9d0c-a4805e40b203'),(29,2,'Silvester','2006-12-31',1,'97f269a0-c8d9-11da-b420-f5a1afe01740'),(30,2,'2. Weihnachtstag','2006-12-26',1,'984536863'),(31,2,'1. Weihnachtstag','2006-12-25',1,'982967580'),(32,2,'Aschermittwoch','2010-02-17',0,'ff3759b0-c8ee-11da-acd9-ed295e87b219'),(33,2,'Rosenmontag','2010-02-15',0,'070612f0-c8ef-11da-a72d-a4583b6823fe'),(34,2,'Palmsonntag','2010-03-28',0,'52620920-c8ef-11da-a67c-d07ee9c733e4'),(35,2,'Karfreitag','2010-04-02',0,'5e56c5b0-c8ef-11da-8df4-e73c3b84ba44'),(36,2,'Ostermontag','2010-04-05',0,'6a6a1200-c8ef-11da-b7f6-ff38c79a62e9'),(37,2,'Ostern','2010-04-04',0,'62922da0-c8ef-11da-9b1e-89902011e8d0'),(38,2,'Muttertag','2010-05-09',0,'d02b2f50-c8ef-11da-b2c4-cdec8effa193'),(39,2,'Christi Himmelfahrt','2010-05-13',0,'eb5b9260-c8ef-11da-bfcf-c21c54abaed3'),(40,2,'Pfingsten','2010-05-23',0,'03e0e8a0-c8f0-11da-9d99-f7cd36abcaab'),(41,2,'Pfingstmontag','2010-05-24',0,'23e890c0-c8f0-11da-b726-ab52813e8e91'),(42,2,'Buß- und Bettag','2010-11-17',0,'25bf5800-c8f1-11da-8235-e09ac6e6ef93'),(43,2,'Totensonntag','2010-11-21',0,'41baf700-c8f1-11da-99c7-ac5bd910ab27'),(44,2,'Erster Advent','2010-11-28',0,'5d1dc740-c8f1-11da-89a1-cf8de886af1e'),(45,2,'Zweiter Advent','2010-12-05',0,'63792df0-c8f1-11da-92e9-91ca53599e3e'),(46,2,'Dritter Advent','2010-12-12',0,'6c0d0660-c8f1-11da-b841-cd0b2b008a9c'),(47,2,'Vierter Advent','2010-12-19',0,'7418df20-c8f1-11da-ae80-910833c1dace'),(48,2,'Mariä Himmelfahrt','2006-08-15',1,'948278340'),(49,2,'Reformationstag','2006-10-31',1,'996398531'),(50,2,'Allerheiligen','2006-11-01',1,'970745861'),(51,2,'Fronleichnam','2010-06-03',0,'36c54940-c8f0-11da-8cb4-8d3d560e0bb7'),(52,2,'Volkstrauertag','2010-11-14',0,'15dee583-d1e3-4bbc-aaeb-158934765508'),(53,2,'Rosenmontag','2011-03-07',0,'94a730e3-6512-41b0-8773-d51c32d4371a'),(54,2,'Aschermittwoch','2011-03-09',0,'faf4de51-36b6-414f-9dc0-d69c8fe6ebd6'),(55,2,'Ostermontag','2011-04-25',0,'3ea63d76-6356-46ee-99cc-cba15ae66407'),(56,2,'Palmsonntag','2011-04-17',0,'ccca9aca-2170-401c-ab6b-f2daa0e565f1'),(57,2,'Karfreitag','2011-04-22',0,'eae67c4f-341f-49cc-8ebc-9615dfaea764'),(58,2,'Ostern','2011-04-24',0,'bdeed958-88f5-4400-8547-7b58b271e20a'),(59,2,'Muttertag','2011-05-08',0,'467d4efe-293b-4a01-9f0a-cb4d15bcf975'),(60,2,'Christi Himmelfahrt','2011-06-02',0,'e6ae9f64-0eb3-4d5e-9657-cb942159ae03'),(61,2,'Pfingsten','2011-06-12',0,'0d4297e0-f45f-4694-9368-fbeac842052a'),(62,2,'Pfingstmontag','2011-06-13',0,'8f0b154f-9268-4c51-a30e-47cf6f8076f3'),(63,2,'Fronleichnam','2011-06-23',0,'b1fb550a-dfb2-4241-a92e-bd0fd06030fc'),(64,2,'Buß- und Bettag','2011-11-16',0,'5e88f764-0691-4815-a789-bc33e7632c5a'),(65,2,'Volkstrauertag','2011-11-13',0,'8a584710-1741-4276-8601-1f9b5b9a1eda'),(66,2,'Totensonntag','2011-11-20',0,'8f51ff07-cc6d-4494-acff-662362af16da'),(67,2,'Erster Advent','2011-11-27',0,'5926c63a-2fdd-4078-9921-b577cb1de5b4'),(68,2,'Zweiter Advent','2011-12-04',0,'fa9a193c-6db7-42ed-a724-f9feb1060f55'),(69,2,'Dritter Advent','2011-12-11',0,'e2563df5-a82c-4c85-8954-4fb7f2f8e939'),(70,2,'Vierter Advent','2011-12-18',0,'411572e6-2deb-40b2-941e-0f28e62a8d59'),(71,2,'Rosenmontag','2012-02-20',0,'ce38c3a9-d83f-4ee2-b3c9-f1191b488afa'),(72,2,'Aschermittwoch','2012-02-22',0,'155ff9e5-2c01-48e5-8036-0ac757853c7f'),(73,2,'Palmsonntag','2012-04-01',0,'78ce046b-6078-4f03-8a8e-cd9376a9981b'),(74,2,'Karfreitag','2012-04-06',0,'7192a187-b0f2-4c88-80b4-4d751ce427bb'),(75,2,'Ostern','2012-04-08',0,'6b81dcb2-35cb-44e7-acb2-85d9ab1e38d6'),(76,2,'Ostermontag','2012-04-09',0,'f7ec9c03-1150-4267-bb8a-cf229502165f'),(77,2,'Muttertag','2012-05-13',0,'2d5afad2-df09-402c-8fae-c800a14b2802'),(78,2,'Christi Himmelfahrt','2012-05-17',0,'199b3e65-cae5-4dc0-bd85-3bacf51fe6b2'),(79,2,'Pfingsten','2012-05-27',0,'e564065e-aa6c-4af9-b198-72319d51381d'),(80,2,'Pfingstmontag','2012-05-28',0,'3c18e1c8-79f6-4f6d-bf5d-4dc664e450ab'),(81,2,'Fronleichnam','2012-06-07',0,'70c4b344-c8db-414c-a3ed-69e9eab8f4d9'),(82,2,'Volkstrauertag','2012-11-18',0,'286dd6f8-ff87-4ef9-b45b-5891c6540cdb'),(83,2,'Buß- und Bettag','2012-11-21',0,'f5407bf1-67d5-45b8-bb4e-a3ed187600ed'),(84,2,'Totensonntag','2012-11-25',0,'46f69da6-d054-4f5a-bd93-79078c6bac2f'),(85,2,'Erster Advent','2012-12-02',0,'55dcea5c-f251-448b-9d10-c58396c2ef04'),(86,2,'Zweiter Advent','2012-12-09',0,'2285edba-4934-4abe-803d-c8f087bd47be'),(87,2,'Dritter Advent','2012-12-16',0,'2532de86-d8b1-4bb2-b2f0-bd117b446578'),(88,2,'Vierter Advent','2012-12-23',0,'cd3672ac-db86-4e33-b476-39c69fe6b937'),(89,2,'Rosenmontag','2013-02-11',0,'b1e3b5d3-ffa6-4dad-a662-720760b336f3'),(90,2,'Aschermittwoch','2013-02-13',0,'8ce10dfa-5edc-4285-8044-ecea0d5a8cc2'),(91,2,'Palmsonntag','2013-03-24',0,'ab93ddc2-f1be-4f73-b57a-4baa00f97fa2'),(92,2,'Karfreitag','2013-03-29',0,'51296a45-1bc2-47db-b2d2-56a0b1e1c33b'),(93,2,'Ostern','2013-03-31',0,'c1d947b4-1351-40f3-b8e0-24cd4d35bad4'),(94,2,'Ostermontag','2013-04-01',0,'94a2c8b8-9d04-412e-be05-f2d30d483ce3'),(95,2,'Christi Himmelfahrt','2013-05-09',0,'ae5dd4ab-9d1b-4708-9e95-e2531a7ae251'),(96,2,'Muttertag','2013-05-12',0,'228a8aee-0db2-42f8-9480-46f6671a3296'),(97,2,'Pfingsten','2013-05-19',0,'f38bd233-2ab3-4754-a420-76d182aae225'),(98,2,'Pfingstmontag','2013-05-20',0,'34e445d3-3d39-421e-b75d-60d5b4592f85'),(99,2,'Fronleichnam','2013-05-30',0,'c4de04ea-c7f1-423a-97ea-af7931427d42'),(100,2,'Volkstrauertag','2013-11-17',0,'e8782116-a554-4107-a44c-d150a9f8bf38'),(101,2,'Buß- und Bettag','2013-11-20',0,'01f6c271-a2bb-4431-8f22-9e5139a109e8'),(102,2,'Totensonntag','2013-11-24',0,'9e4fe7c3-447f-42e9-a78c-f9e4d2e7157a'),(103,2,'Erster Advent','2013-12-01',0,'59ad8edd-782a-4a74-9442-2cc6fe296f95'),(104,2,'Zweiter Advent','2013-12-08',0,'e52ef2cc-a60d-4404-b73d-9f789ffc09ca'),(105,2,'Dritter Advent','2013-12-15',0,'a992a714-b339-4bb1-9bf6-c542d60c928b'),(106,2,'Vierter Advent','2013-12-22',0,'33bd92bd-1e53-475c-a59e-1fc758b88a3a'),(107,2,'Rosenmontag','2014-03-03',0,'566584b7-85a3-4dc6-ba10-c093b77ac6f0'),(108,2,'Aschermittwoch','2014-03-05',0,'f4896b7b-65b3-4aed-bda7-08c3cbbc1c07'),(109,2,'Palmsonntag','2014-04-13',0,'e7f2816c-28e0-4b2b-9fb1-54f07422c445'),(110,2,'Karfreitag','2014-04-18',0,'14bd91b2-157c-485a-bd7e-17886f74af41'),(111,2,'Ostern','2014-04-20',0,'05e7d179-be95-457b-9bb7-558833bb8213'),(112,2,'Ostermontag','2014-04-21',0,'e7baf5f9-4b04-41e2-a2ad-1bb78d6da734'),(113,2,'Muttertag','2014-05-11',0,'517f47d2-706c-4373-ac0a-30b8721a6d96'),(114,2,'Christi Himmelfahrt','2014-05-29',0,'87547d9e-667e-4462-8589-abb73f82db12'),(115,2,'Pfingsten','2014-06-08',0,'903646bc-c595-4528-a2a5-69bf8282889f'),(116,2,'Pfingstmontag','2014-06-09',0,'d6089f35-d103-4328-812c-bc4b7c687b74'),(117,2,'Fronleichnam','2014-06-19',0,'0f5c466e-9cd0-4df5-887f-5bff1b3ce58a'),(118,2,'Buß- und Bettag','2014-11-19',0,'7b5084e3-15a5-4cbc-89b5-3e0b7ec8ec10'),(119,2,'Volkstrauertag','2014-11-16',0,'7fc525da-9482-4022-b395-0adcb3b67bde'),(120,2,'Totensonntag','2014-11-23',0,'387acb56-b3a4-410b-9d16-2b964919ff17'),(121,2,'Erster Advent','2014-11-30',0,'977cc2fd-f635-4570-93d9-ebdc0e7eba1d'),(122,2,'Zweiter Advent','2014-12-07',0,'8c5c9ad5-1165-4cd3-89a9-627466adc2db'),(123,2,'Dritter Advent','2014-12-14',0,'29dfcdb3-84cd-4e69-8d90-025e7cf9a523'),(124,2,'Vierter Advent','2014-12-21',0,'c13b3803-ff14-4e05-97b7-b5d174c809dc'),(125,2,'Rosenmontag','2015-02-16',0,'504b47ed-51dd-40cb-8e86-c3d1c8da5fb3'),(126,2,'Aschermittwoch','2015-02-18',0,'b7f15513-03da-4c83-9600-6a6e30c3f921'),(127,2,'Palmsonntag','2015-03-29',0,'0a43df68-772c-48e1-8c54-2821bf1a2584'),(128,2,'Karfreitag','2015-04-03',0,'71eb7825-0e36-4af8-81d1-dd20e488b1a8'),(129,2,'Ostern','2015-04-05',0,'b0b3f77b-b259-4849-8a04-336f42a8091b'),(130,2,'Ostermontag','2015-04-06',0,'cd55f40f-e35e-41c4-826e-c08b0d75b6a1'),(131,2,'Muttertag','2015-05-10',0,'0c3b66c5-f439-4e2f-bfe9-3b943dc5b2ff'),(132,2,'Christi Himmelfahrt','2015-05-14',0,'669904c0-9576-44b2-aa63-53f26ae44100'),(133,2,'Pfingsten','2015-05-24',0,'aaf9d355-589a-4575-bfaf-741ea6a05702'),(134,2,'Pfingstmontag','2015-05-25',0,'94f53fb4-a700-4128-a2d3-a681befa4be3'),(135,2,'Fronleichnam','2015-06-04',0,'2b3ec09f-a207-4356-b739-b997bc40a938'),(136,2,'Buß- und Bettag','2015-11-18',0,'f96cc9da-50e8-48d9-83df-388d5fc5ae20'),(137,2,'Volkstrauertag','2015-11-15',0,'f49a6a2d-f5a2-4bfe-bc1f-479b2dbd687a'),(138,2,'Totensonntag','2015-11-22',0,'d0da5e2a-dbc3-4bee-8465-aa0935989a85'),(139,2,'Erster Advent','2015-11-29',0,'82dc91b7-b1a6-47fa-aceb-1c3183502603'),(140,2,'Zweiter Advent','2015-12-06',0,'c535e762-b8a1-4414-a623-6e833e1dacd0'),(141,2,'Dritter Advent','2015-12-13',0,'50af7ba7-e511-4430-a290-a3c283969bcf'),(142,3,'Lundi de Pâques','2007-04-09',0,'5d1ae55f-3910-4de9-8b65-d652768fb2f2'),(143,3,'Ascension','2008-05-01',0,'9e19b119-f077-4ae9-934e-cb62322ca81f'),(144,3,'Jour de l\'an','2007-01-01',1,'c6a930d6-4ed5-45d8-bb3d-d3587a32b8aa'),(145,3,'Fête du Travail','2007-05-01',1,'f439c81b-fd09-4b40-a629-3a9663dd29ff'),(146,3,'Armistice 1945','2007-05-08',1,'b1c0e1ed-a09f-4fc2-aab1-170d3f661f13'),(147,3,'Ascension','2007-05-17',0,'5468e1a0-9dda-4fd2-88c0-dc3e727c1183'),(148,3,'Lundi de Pentecôte','2007-05-28',0,'67a89bb6-9ad4-461b-951c-c4c8482d8618'),(149,3,'Fête Nationale','2007-07-14',1,'00eb3adc-c059-47c8-a1c0-4ca7048051b9'),(150,3,'Assomption','2007-08-15',1,'854e5499-9276-4a96-9be3-bcbaa7caafcf'),(151,3,'Toussaint','2007-11-01',1,'725c8c16-c37a-49f0-9d2e-dc976d6c3ea5'),(152,3,'Armistice 1918','2007-11-11',1,'5218f724-6b66-434d-a8c5-138dfed64e07'),(153,3,'Noël','2007-12-25',1,'18617cde-2d15-46c6-900f-b3341a7b7f98'),(154,3,'Lundi de Pâques','2008-03-24',0,'19d50a52-f5a9-4d70-8fd7-a2caa97f6959'),(155,3,'Lundi de Pâques','2009-04-13',0,'18c90b99-edfa-4418-9bc7-992a07384967'),(156,3,'Ascension','2009-05-21',0,'b989d129-8f2f-42be-a027-183f6d81eb40'),(157,3,'Lundi de Pentecôte','2009-06-01',0,'7c6fe35c-44a5-450b-aea6-dd2baef78f06'),(158,3,'Lundi de Pâques','2010-04-05',0,'98c1c381-8632-45ce-9b11-10757face7c4'),(159,3,'Ascension','2010-05-13',0,'aaeb1ba5-60f0-4e49-a25a-c0ff949acdd9'),(160,3,'Lundi de Pentecôte','2010-05-24',0,'1f68f978-969e-4791-a7e3-cb3011134a34'),(161,3,'Ascension','2011-06-02',0,'fa0d4b5b-8eeb-4b98-b35c-b6a547b96953'),(162,3,'Lundi de Pentecôte','2011-06-13',0,'5be6194a-9fbd-45da-8e3c-568cac66b997'),(163,3,'Lundi de Pâques','2012-04-09',0,'4162d242-5468-4007-8814-10286b9589a0'),(164,3,'Ascension','2012-05-17',0,'6d368a35-6b6d-4ec1-9f48-97c53b25502e'),(165,3,'Lundi de Pentecôte','2012-05-28',0,'e8913a3d-3e84-447d-afb4-f0b082948449'),(166,3,'Lundi de Pâques','2013-04-01',0,'ebc79872-a185-4641-bc22-1092d5139efb'),(167,3,'Ascension','2013-05-09',0,'9714bd39-429b-433c-ab5c-5fd6a67e658e'),(168,3,'Lundi de Pentecôte','2013-05-20',0,'79f5f02f-e92d-417f-9637-9e2a88840583'),(169,3,'Lundi de Pâques','2014-04-21',0,'172dcce6-6f95-4c1f-ada9-e8bf2a7e8245'),(170,3,'Ascension','2014-05-29',0,'6625ed89-bf9f-478a-9796-c3dc203ab5e6'),(171,3,'Lundi de Pentecôte','2014-06-09',0,'7abad826-ab68-447f-81b2-1e04a4c2ef88'),(172,3,'Lundi de Pâques','2015-04-06',0,'cf42813f-4a74-422b-aa19-90dcefccc92d'),(173,3,'Ascension','2015-05-14',0,'e7d30f2b-d546-4b7e-8780-0754a46e6970'),(174,3,'Lundi de Pentecôte','2015-05-25',0,'a8ccc771-4e8b-4594-ae30-33e9ce384ac9'),(175,3,'Lundi de Pentecôte','2008-05-12',0,'419f1bff-a820-4d07-bf4e-1a6ec139e3df'),(176,3,'Lundi de Pâques','2011-04-25',0,'570d9fe7-cdc9-4fdf-9794-909edf520383'),(177,4,'Новый год','2010-01-01',1,'8147ef1b-8301-4ea8-b712-90a394f647a3'),(178,4,'Новогодние каникулы','2010-01-02',1,'b3408b45-b00a-4e23-b40a-57760a2e6bd1'),(179,4,'Рождество Христово','2010-01-07',1,'49660752-db14-42f7-bfa4-bd264111e513'),(180,4,'День защитника Отечества','2010-02-23',1,'14cd5330-c5d4-4580-a2d5-05986920c48e'),(181,4,'Международный женский день','2010-03-08',1,'4c8df85c-86ac-46cf-b271-877c02166e9e'),(182,4,'Праздник весны и труда','2010-05-01',1,'71c1345a-04fe-480f-a134-f5b9bed0f807'),(183,4,'День Победы','2010-05-09',1,'593ebbe1-cce3-4b01-9979-3578b3b3b7ec'),(184,4,'День России','2010-06-12',1,'fc0d48b2-41d8-4993-83eb-6e9fdbd4741a'),(185,4,'День народного единства','2010-11-04',1,'8fb6d2cc-728c-4e99-99fc-83757d05f359');
/*!40000 ALTER TABLE `easy_user_time_calendar_holidays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_user_time_calendars`
--

DROP TABLE IF EXISTS `easy_user_time_calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_user_time_calendars` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `user_id` int DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `type` varchar(2048) NOT NULL,
  `default_working_hours` float NOT NULL,
  `first_day_of_week` int NOT NULL DEFAULT '1',
  `builtin` tinyint(1) NOT NULL DEFAULT '0',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `position` int DEFAULT NULL,
  `time_from` datetime DEFAULT NULL,
  `time_to` datetime DEFAULT NULL,
  `working_week_days` text,
  `ical_url` text,
  `created_at` datetime DEFAULT '2021-08-23 17:11:19',
  `updated_at` datetime DEFAULT '2021-08-23 17:11:19',
  PRIMARY KEY (`id`),
  KEY `index_easy_user_time_calendars_on_parent_id` (`parent_id`),
  KEY `index_easy_user_time_calendars_on_user_id` (`user_id`),
  KEY `index_easy_user_time_calendars_on_position` (`position`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_user_time_calendars`
--

LOCK TABLES `easy_user_time_calendars` WRITE;
/*!40000 ALTER TABLE `easy_user_time_calendars` DISABLE KEYS */;
INSERT INTO `easy_user_time_calendars` VALUES (1,'Czech work calendar',NULL,NULL,'EasyUserWorkingTimeCalendar',8,1,0,0,1,'2021-08-23 18:00:00','2021-08-24 02:30:00',NULL,NULL,'2021-08-23 17:11:19','2021-08-23 17:11:19'),(2,'German work calendar',NULL,NULL,'EasyUserWorkingTimeCalendar',8,1,0,0,2,'2021-08-23 18:00:00','2021-08-24 02:30:00',NULL,NULL,'2021-08-23 17:11:19','2021-08-23 17:11:19'),(3,'French work calendar',NULL,NULL,'EasyUserWorkingTimeCalendar',8,1,0,0,3,'2021-08-23 18:00:00','2021-08-24 02:30:00',NULL,NULL,'2021-08-23 17:11:19','2021-08-23 17:11:19'),(4,'Russian work calendar',NULL,NULL,'EasyUserWorkingTimeCalendar',8,1,0,0,4,'2021-08-23 18:00:00','2021-08-24 02:30:00',NULL,NULL,'2021-08-23 17:11:19','2021-08-23 17:11:19'),(5,'Standard',NULL,NULL,'EasyUserWorkingTimeCalendar',8,1,1,1,5,'2021-08-23 18:00:00','2021-08-24 02:30:00',NULL,NULL,'2021-08-23 17:11:19','2021-08-23 17:11:19'),(6,'Standard',4,5,'EasyUserWorkingTimeCalendar',8,1,0,0,5,'2021-08-23 18:00:00','2021-08-24 02:30:00',NULL,NULL,'2021-08-23 17:11:19','2021-08-23 17:11:19'),(7,'Standard',1,5,'EasyUserWorkingTimeCalendar',8,1,0,0,5,'2021-08-23 18:00:00','2021-08-24 02:30:00',NULL,NULL,'2021-08-23 17:11:19','2021-08-23 17:11:19'),(8,'Standard',5,5,'EasyUserWorkingTimeCalendar',8,1,0,0,5,'2021-08-23 18:00:00','2021-08-24 02:30:00',NULL,NULL,'2021-08-23 17:11:19','2021-08-23 17:11:19');
/*!40000 ALTER TABLE `easy_user_time_calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_user_types`
--

DROP TABLE IF EXISTS `easy_user_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_user_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `position` int DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `internal` tinyint(1) NOT NULL DEFAULT '1',
  `settings` longtext,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `show_in_meeting_calendar` tinyint(1) NOT NULL DEFAULT '1',
  `easy_page_template_id` int DEFAULT NULL,
  `description` text,
  `role_id` int DEFAULT NULL,
  `partner` tinyint(1) NOT NULL DEFAULT '0',
  `builtin_role_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_user_types`
--

LOCK TABLES `easy_user_types` WRITE;
/*!40000 ALTER TABLE `easy_user_types` DISABLE KEYS */;
INSERT INTO `easy_user_types` VALUES (1,'Internal',1,1,1,'---\n- :home_icon\n- :projects\n- :issues\n- :more\n- :custom_menu\n- :before_search\n- :search\n','2021-08-23 17:12:41','2021-08-23 17:12:41',1,NULL,NULL,NULL,0,NULL),(2,'External',2,0,0,'---\n- :home_icon\n- :projects\n- :issues\n- :more\n- :custom_menu\n- :before_search\n- :search\n','2021-08-23 17:12:41','2021-08-23 17:12:41',1,NULL,NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `easy_user_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_user_types_easy_user_types`
--

DROP TABLE IF EXISTS `easy_user_types_easy_user_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_user_types_easy_user_types` (
  `easy_user_type_id` bigint NOT NULL,
  `easy_user_visible_type_id` bigint NOT NULL,
  PRIMARY KEY (`easy_user_type_id`,`easy_user_visible_type_id`),
  KEY `idx_eut2_easy_user_type_id` (`easy_user_type_id`),
  KEY `idx_eut2_easy_user_visible_type_id` (`easy_user_visible_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_user_types_easy_user_types`
--

LOCK TABLES `easy_user_types_easy_user_types` WRITE;
/*!40000 ALTER TABLE `easy_user_types_easy_user_types` DISABLE KEYS */;
INSERT INTO `easy_user_types_easy_user_types` VALUES (1,1),(1,2),(2,1),(2,2);
/*!40000 ALTER TABLE `easy_user_types_easy_user_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_webdav_locks`
--

DROP TABLE IF EXISTS `easy_webdav_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_webdav_locks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `scope` varchar(10) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `owner` varchar(50) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `expired_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_webdav_locks`
--

LOCK TABLES `easy_webdav_locks` WRITE;
/*!40000 ALTER TABLE `easy_webdav_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_webdav_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_addresses`
--

DROP TABLE IF EXISTS `email_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_addresses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `address` varchar(255) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `notify` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_email_addresses_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_addresses`
--

LOCK TABLES `email_addresses` WRITE;
/*!40000 ALTER TABLE `email_addresses` DISABLE KEYS */;
INSERT INTO `email_addresses` VALUES (1,1,'admin@example.net',1,1,'2021-08-23 17:09:53','2021-08-23 17:09:53'),(2,5,'lhs@example.com',1,1,'2021-08-23 17:53:34','2021-08-23 17:53:34');
/*!40000 ALTER TABLE `email_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enabled_modules`
--

DROP TABLE IF EXISTS `enabled_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enabled_modules` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_id` int DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `enabled_modules_project_id` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enabled_modules`
--

LOCK TABLES `enabled_modules` WRITE;
/*!40000 ALTER TABLE `enabled_modules` DISABLE KEYS */;
INSERT INTO `enabled_modules` VALUES (1,1,'issue_tracking'),(2,1,'time_tracking'),(3,1,'news'),(4,1,'documents'),(5,1,'files'),(6,1,'wiki'),(7,1,'repository'),(8,1,'boards'),(9,1,'calendar'),(10,1,'easy_wbs'),(11,1,'easy_scrum_board'),(12,1,'easy_kanban_board'),(13,1,'quick_planner'),(14,1,'easy_baselines'),(15,1,'easy_checklists'),(16,1,'dmsf'),(17,1,'easy_gantt'),(18,1,'easy_stakeholders');
/*!40000 ALTER TABLE `enabled_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enumerations`
--

DROP TABLE IF EXISTS `enumerations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enumerations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `position` int DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `project_id` int DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `position_name` varchar(30) DEFAULT NULL,
  `easy_color_scheme` varchar(255) DEFAULT NULL,
  `internal_name` varchar(255) DEFAULT NULL,
  `easy_external_id` varchar(255) DEFAULT NULL,
  `allow_time_entry_zero_hours` tinyint(1) NOT NULL DEFAULT '0',
  `allow_time_entry_negative_hours` tinyint(1) NOT NULL DEFAULT '0',
  `easy_icon` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `extra_fields` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_enumerations_on_internal_name` (`internal_name`),
  KEY `index_enumerations_on_project_id` (`project_id`),
  KEY `index_enumerations_on_id_and_type` (`id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enumerations`
--

LOCK TABLES `enumerations` WRITE;
/*!40000 ALTER TABLE `enumerations` DISABLE KEYS */;
INSERT INTO `enumerations` VALUES (1,'낮음',1,0,'IssuePriority',1,NULL,NULL,'lowest',NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL),(2,'보통',2,1,'IssuePriority',1,NULL,NULL,'default',NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL),(3,'높음',3,0,'IssuePriority',1,NULL,NULL,'high3',NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL),(4,'긴급',4,0,'IssuePriority',1,NULL,NULL,'high2',NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL),(5,'즉시',5,0,'IssuePriority',1,NULL,NULL,'highest',NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL),(6,'사용자 문서',1,0,'DocumentCategory',1,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL),(7,'기술 문서',2,0,'DocumentCategory',1,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL),(8,'설계',1,0,'TimeEntryActivity',1,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL),(9,'개발',2,0,'TimeEntryActivity',1,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `enumerations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups_users`
--

DROP TABLE IF EXISTS `groups_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groups_users` (
  `group_id` int NOT NULL,
  `user_id` int NOT NULL,
  UNIQUE KEY `groups_users_ids` (`group_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups_users`
--

LOCK TABLES `groups_users` WRITE;
/*!40000 ALTER TABLE `groups_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `import_items`
--

DROP TABLE IF EXISTS `import_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `import_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `import_id` int NOT NULL,
  `position` int NOT NULL,
  `obj_id` int DEFAULT NULL,
  `message` text,
  `unique_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_import_items_on_import_id_and_unique_id` (`import_id`,`unique_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `import_items`
--

LOCK TABLES `import_items` WRITE;
/*!40000 ALTER TABLE `import_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `import_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imports`
--

DROP TABLE IF EXISTS `imports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imports` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `user_id` int NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `settings` text,
  `total_items` int DEFAULT NULL,
  `finished` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imports`
--

LOCK TABLES `imports` WRITE;
/*!40000 ALTER TABLE `imports` DISABLE KEYS */;
/*!40000 ALTER TABLE `imports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue_categories`
--

DROP TABLE IF EXISTS `issue_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issue_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_id` int NOT NULL DEFAULT '0',
  `name` varchar(60) NOT NULL DEFAULT '',
  `assigned_to_id` int DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `lft` int NOT NULL DEFAULT '0',
  `rgt` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `issue_categories_project_id` (`project_id`),
  KEY `index_issue_categories_on_assigned_to_id` (`assigned_to_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue_categories`
--

LOCK TABLES `issue_categories` WRITE;
/*!40000 ALTER TABLE `issue_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `issue_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue_easy_sprint_relations`
--

DROP TABLE IF EXISTS `issue_easy_sprint_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issue_easy_sprint_relations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `issue_id` int DEFAULT NULL,
  `easy_sprint_id` int DEFAULT NULL,
  `relation_type` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `relation_position` int DEFAULT NULL,
  `position` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_issue_easy_sprint_relations_on_issue_id` (`issue_id`),
  KEY `index_issue_easy_sprint_relations_on_easy_sprint_id` (`easy_sprint_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue_easy_sprint_relations`
--

LOCK TABLES `issue_easy_sprint_relations` WRITE;
/*!40000 ALTER TABLE `issue_easy_sprint_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `issue_easy_sprint_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue_relations`
--

DROP TABLE IF EXISTS `issue_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issue_relations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `issue_from_id` int NOT NULL,
  `issue_to_id` int NOT NULL,
  `relation_type` varchar(255) NOT NULL DEFAULT '',
  `delay` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_issue_relations_on_issue_from_id_and_issue_to_id` (`issue_from_id`,`issue_to_id`),
  KEY `index_issue_relations_on_issue_from_id` (`issue_from_id`),
  KEY `index_issue_relations_on_issue_to_id` (`issue_to_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue_relations`
--

LOCK TABLES `issue_relations` WRITE;
/*!40000 ALTER TABLE `issue_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `issue_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue_statuses`
--

DROP TABLE IF EXISTS `issue_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issue_statuses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `description` text,
  `is_closed` tinyint(1) NOT NULL DEFAULT '0',
  `position` int DEFAULT NULL,
  `default_done_ratio` int DEFAULT NULL,
  `easy_color_scheme` varchar(255) DEFAULT NULL,
  `easy_external_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_issue_statuses_on_position` (`position`),
  KEY `index_issue_statuses_on_is_closed` (`is_closed`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue_statuses`
--

LOCK TABLES `issue_statuses` WRITE;
/*!40000 ALTER TABLE `issue_statuses` DISABLE KEYS */;
INSERT INTO `issue_statuses` VALUES (1,'신규',NULL,0,1,NULL,NULL,NULL),(2,'진행',NULL,0,2,NULL,NULL,NULL),(3,'해결',NULL,0,3,NULL,NULL,NULL),(4,'의견',NULL,0,4,NULL,NULL,NULL),(5,'완료',NULL,1,5,NULL,NULL,NULL),(6,'거절',NULL,1,6,NULL,NULL,NULL);
/*!40000 ALTER TABLE `issue_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issues`
--

DROP TABLE IF EXISTS `issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issues` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tracker_id` int NOT NULL,
  `project_id` int NOT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `description` longtext,
  `due_date` date DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `status_id` int NOT NULL,
  `assigned_to_id` int DEFAULT NULL,
  `priority_id` int NOT NULL,
  `fixed_version_id` int DEFAULT NULL,
  `author_id` int NOT NULL,
  `lock_version` int NOT NULL DEFAULT '0',
  `created_on` timestamp NULL DEFAULT NULL,
  `updated_on` timestamp NULL DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `done_ratio` int NOT NULL DEFAULT '0',
  `estimated_hours` float DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `root_id` int DEFAULT NULL,
  `lft` int DEFAULT NULL,
  `rgt` int DEFAULT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `closed_on` datetime DEFAULT NULL,
  `easy_duration` int DEFAULT NULL,
  `easy_is_easy_template` tinyint(1) DEFAULT '0',
  `activity_id` int DEFAULT NULL,
  `easy_level` int DEFAULT NULL,
  `easy_external_id` varchar(255) DEFAULT NULL,
  `easy_due_date_time` datetime DEFAULT NULL,
  `easy_is_repeating` tinyint(1) DEFAULT '0',
  `easy_repeat_settings` text,
  `easy_next_start` date DEFAULT NULL,
  `easy_start_date_time` datetime DEFAULT NULL,
  `easy_closed_by_id` int DEFAULT NULL,
  `easy_status_updated_on` datetime DEFAULT NULL,
  `easy_last_updated_by_id` int DEFAULT NULL,
  `easy_email_to` text,
  `easy_email_cc` text,
  `easy_sprint_id` int DEFAULT NULL,
  `easy_story_points` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `issues_project_id` (`project_id`),
  KEY `index_issues_on_status_id` (`status_id`),
  KEY `index_issues_on_category_id` (`category_id`),
  KEY `index_issues_on_assigned_to_id` (`assigned_to_id`),
  KEY `index_issues_on_fixed_version_id` (`fixed_version_id`),
  KEY `index_issues_on_tracker_id` (`tracker_id`),
  KEY `index_issues_on_priority_id` (`priority_id`),
  KEY `index_issues_on_author_id` (`author_id`),
  KEY `index_issues_on_created_on` (`created_on`),
  KEY `index_issues_on_root_id_and_lft_and_rgt` (`root_id`,`lft`,`rgt`),
  KEY `index_issues_on_parent_id` (`parent_id`),
  KEY `idx_issues_tree_1` (`lft`),
  KEY `index_issues_on_updated_on` (`updated_on`),
  KEY `index_issues_on_easy_sprint_id` (`easy_sprint_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issues`
--

LOCK TABLES `issues` WRITE;
/*!40000 ALTER TABLE `issues` DISABLE KEYS */;
INSERT INTO `issues` VALUES (1,1,1,'210823_업무보고','','2021-08-23',NULL,1,1,2,NULL,1,2,'2021-08-23 08:58:01','2021-08-23 09:13:40','2021-08-23',0,4,NULL,1,1,2,0,NULL,1,0,NULL,0,NULL,NULL,0,'---\nsimple_period: \'\'\nend_date: \'\'\nendtype_count_x: \'\'\nstart_timepoint: \nrepeated: \n',NULL,NULL,NULL,'2021-08-23 17:58:01',1,'','',NULL,0);
/*!40000 ALTER TABLE `issues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journal_details`
--

DROP TABLE IF EXISTS `journal_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `journal_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `journal_id` int NOT NULL DEFAULT '0',
  `property` varchar(30) NOT NULL DEFAULT '',
  `prop_key` varchar(255) NOT NULL DEFAULT '',
  `old_value` longtext,
  `value` longtext,
  PRIMARY KEY (`id`),
  KEY `journal_details_journal_id` (`journal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journal_details`
--

LOCK TABLES `journal_details` WRITE;
/*!40000 ALTER TABLE `journal_details` DISABLE KEYS */;
INSERT INTO `journal_details` VALUES (1,1,'attr','assigned_to_id','5','1');
/*!40000 ALTER TABLE `journal_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journals`
--

DROP TABLE IF EXISTS `journals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `journals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `journalized_id` int NOT NULL DEFAULT '0',
  `journalized_type` varchar(60) NOT NULL DEFAULT '',
  `user_id` int NOT NULL DEFAULT '0',
  `notes` longtext,
  `created_on` datetime NOT NULL,
  `private_notes` tinyint(1) NOT NULL DEFAULT '0',
  `easy_type` varchar(255) DEFAULT NULL,
  `is_system` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `journals_journalized_id` (`journalized_id`,`journalized_type`),
  KEY `index_journals_on_user_id` (`user_id`),
  KEY `index_journals_on_journalized_id` (`journalized_id`),
  KEY `index_journals_on_created_on` (`created_on`),
  KEY `index_journals_on_easy_type` (`easy_type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journals`
--

LOCK TABLES `journals` WRITE;
/*!40000 ALTER TABLE `journals` DISABLE KEYS */;
INSERT INTO `journals` VALUES (1,1,'Issue',1,'','2021-08-23 18:13:40',0,NULL,0);
/*!40000 ALTER TABLE `journals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_roles`
--

DROP TABLE IF EXISTS `member_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `member_id` int NOT NULL,
  `role_id` int NOT NULL,
  `inherited_from` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_member_roles_on_member_id` (`member_id`),
  KEY `index_member_roles_on_role_id` (`role_id`),
  KEY `index_member_roles_on_inherited_from` (`inherited_from`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_roles`
--

LOCK TABLES `member_roles` WRITE;
/*!40000 ALTER TABLE `member_roles` DISABLE KEYS */;
INSERT INTO `member_roles` VALUES (1,1,3,NULL),(2,2,4,NULL);
/*!40000 ALTER TABLE `member_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT '0',
  `project_id` int NOT NULL DEFAULT '0',
  `created_on` timestamp NULL DEFAULT NULL,
  `mail_notification` tinyint(1) NOT NULL DEFAULT '0',
  `easy_external_id` varchar(255) DEFAULT NULL,
  `dmsf_mail_notification` tinyint(1) DEFAULT NULL,
  `dmsf_title_format` tinytext,
  `dmsf_fast_links` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_members_on_user_id_and_project_id` (`user_id`,`project_id`),
  KEY `index_members_on_user_id` (`user_id`),
  KEY `index_members_on_project_id` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,1,1,'2021-08-23 08:52:49',0,NULL,NULL,NULL,0),(2,5,1,'2021-08-23 08:53:52',0,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `board_id` int NOT NULL,
  `parent_id` int DEFAULT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `content` text,
  `author_id` int DEFAULT NULL,
  `replies_count` int NOT NULL DEFAULT '0',
  `last_reply_id` int DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  `locked` tinyint(1) DEFAULT '0',
  `sticky` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `messages_board_id` (`board_id`),
  KEY `messages_parent_id` (`parent_id`),
  KEY `index_messages_on_last_reply_id` (`last_reply_id`),
  KEY `index_messages_on_author_id` (`author_id`),
  KEY `index_messages_on_created_on` (`created_on`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_id` int DEFAULT NULL,
  `title` varchar(60) NOT NULL DEFAULT '',
  `summary` varchar(255) DEFAULT '',
  `description` longtext,
  `author_id` int NOT NULL DEFAULT '0',
  `created_on` timestamp NULL DEFAULT NULL,
  `comments_count` int NOT NULL DEFAULT '0',
  `spinned` tinyint(1) NOT NULL DEFAULT '0',
  `easy_external_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `news_project_id` (`project_id`),
  KEY `index_news_on_author_id` (`author_id`),
  KEY `index_news_on_created_on` (`created_on`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `old_passwords`
--

DROP TABLE IF EXISTS `old_passwords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `old_passwords` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `hashed_password` varchar(40) NOT NULL DEFAULT '',
  `salt` varchar(64) NOT NULL DEFAULT '',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `old_passwords`
--

LOCK TABLES `old_passwords` WRITE;
/*!40000 ALTER TABLE `old_passwords` DISABLE KEYS */;
INSERT INTO `old_passwords` VALUES (1,1,'86e4e7cb5dfb3e7498382719e78c7713ed531f78','70561e2dbbf826b520f46275b6f4f1c5','2021-08-23 17:51:25','2021-08-23 17:51:25'),(2,5,'acdb80a072e40c6c684d12c59b2d15e494cd9610','8d6362b934141b46fbf9ebb9aed96d13','2021-08-23 17:53:34','2021-08-23 17:53:34');
/*!40000 ALTER TABLE `old_passwords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `open_id_authentication_associations`
--

DROP TABLE IF EXISTS `open_id_authentication_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `open_id_authentication_associations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `issued` int DEFAULT NULL,
  `lifetime` int DEFAULT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `assoc_type` varchar(255) DEFAULT NULL,
  `server_url` blob,
  `secret` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `open_id_authentication_associations`
--

LOCK TABLES `open_id_authentication_associations` WRITE;
/*!40000 ALTER TABLE `open_id_authentication_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `open_id_authentication_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `open_id_authentication_nonces`
--

DROP TABLE IF EXISTS `open_id_authentication_nonces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `open_id_authentication_nonces` (
  `id` int NOT NULL AUTO_INCREMENT,
  `timestamp` int NOT NULL,
  `server_url` varchar(255) DEFAULT NULL,
  `salt` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `open_id_authentication_nonces`
--

LOCK TABLES `open_id_authentication_nonces` WRITE;
/*!40000 ALTER TABLE `open_id_authentication_nonces` DISABLE KEYS */;
/*!40000 ALTER TABLE `open_id_authentication_nonces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectqueries`
--

DROP TABLE IF EXISTS `projectqueries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projectqueries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `filters` text,
  `user_id` int NOT NULL DEFAULT '0',
  `is_public` tinyint(1) NOT NULL DEFAULT '0',
  `column_names` text,
  `sort_criteria` text,
  `group_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectqueries`
--

LOCK TABLES `projectqueries` WRITE;
/*!40000 ALTER TABLE `projectqueries` DISABLE KEYS */;
/*!40000 ALTER TABLE `projectqueries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` longtext,
  `homepage` varchar(255) DEFAULT '',
  `is_public` tinyint(1) NOT NULL DEFAULT '1',
  `parent_id` int DEFAULT NULL,
  `created_on` timestamp NULL DEFAULT NULL,
  `updated_on` timestamp NULL DEFAULT NULL,
  `identifier` varchar(255) DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `lft` int DEFAULT NULL,
  `rgt` int DEFAULT NULL,
  `inherit_members` tinyint(1) NOT NULL DEFAULT '0',
  `default_version_id` int DEFAULT NULL,
  `default_assigned_to_id` int DEFAULT NULL,
  `easy_is_easy_template` tinyint(1) DEFAULT '0',
  `easy_due_date` date DEFAULT NULL,
  `author_id` int DEFAULT NULL,
  `easy_start_date` date DEFAULT NULL,
  `easy_level` int DEFAULT NULL,
  `easy_external_id` varchar(255) DEFAULT NULL,
  `easy_currency_id` int DEFAULT NULL,
  `easy_currency_code` varchar(3) DEFAULT NULL,
  `easy_priority_id` int DEFAULT NULL,
  `easy_has_custom_menu` tinyint(1) NOT NULL DEFAULT '0',
  `manager_id` bigint DEFAULT NULL,
  `account_manager_id` bigint DEFAULT NULL,
  `scheduled_for_destroy` tinyint(1) DEFAULT '0',
  `easy_baseline_for_id` int DEFAULT NULL,
  `dmsf_description` text,
  `dmsf_notification` tinyint(1) DEFAULT '0',
  `dmsf_act_as_attachable` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `index_projects_on_lft` (`lft`),
  KEY `index_projects_on_rgt` (`rgt`),
  KEY `idx_projects_tree_1` (`lft`,`rgt`),
  KEY `idx_projects_tree_2` (`lft`),
  KEY `index_projects_on_easy_is_easy_template` (`easy_is_easy_template`),
  KEY `index_projects_on_status` (`status`),
  KEY `idx_projects_parent_id` (`parent_id`),
  KEY `index_projects_on_manager_id` (`manager_id`),
  KEY `index_projects_on_account_manager_id` (`account_manager_id`),
  KEY `index_projects_on_easy_baseline_for_id` (`easy_baseline_for_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'테스트 프로젝트','','',1,NULL,'2021-08-23 08:52:49','2021-08-23 08:52:49','1',1,1,2,0,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,1);
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_activities`
--

DROP TABLE IF EXISTS `projects_activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects_activities` (
  `project_id` bigint NOT NULL,
  `activity_id` bigint NOT NULL,
  PRIMARY KEY (`project_id`,`activity_id`),
  KEY `index_projects_activities_on_project_id` (`project_id`),
  KEY `index_projects_activities_on_activity_id` (`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_activities`
--

LOCK TABLES `projects_activities` WRITE;
/*!40000 ALTER TABLE `projects_activities` DISABLE KEYS */;
INSERT INTO `projects_activities` VALUES (1,8),(1,9);
/*!40000 ALTER TABLE `projects_activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_activity_roles`
--

DROP TABLE IF EXISTS `projects_activity_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects_activity_roles` (
  `project_id` int NOT NULL,
  `activity_id` int NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`project_id`,`activity_id`,`role_id`),
  KEY `index_projects_activity_roles_on_project_id` (`project_id`),
  KEY `index_projects_activity_roles_on_project_id_and_role_id` (`project_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_activity_roles`
--

LOCK TABLES `projects_activity_roles` WRITE;
/*!40000 ALTER TABLE `projects_activity_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_activity_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_easy_checklists`
--

DROP TABLE IF EXISTS `projects_easy_checklists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects_easy_checklists` (
  `easy_checklist_id` bigint NOT NULL,
  `project_id` bigint NOT NULL,
  PRIMARY KEY (`project_id`,`easy_checklist_id`),
  KEY `index_projects_easy_checklists_on_easy_checklist_id` (`easy_checklist_id`),
  KEY `index_projects_easy_checklists_on_project_id` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_easy_checklists`
--

LOCK TABLES `projects_easy_checklists` WRITE;
/*!40000 ALTER TABLE `projects_easy_checklists` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_easy_checklists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_trackers`
--

DROP TABLE IF EXISTS `projects_trackers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects_trackers` (
  `project_id` int NOT NULL DEFAULT '0',
  `tracker_id` int NOT NULL DEFAULT '0',
  UNIQUE KEY `projects_trackers_unique` (`project_id`,`tracker_id`),
  KEY `projects_trackers_project_id` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_trackers`
--

LOCK TABLES `projects_trackers` WRITE;
/*!40000 ALTER TABLE `projects_trackers` DISABLE KEYS */;
INSERT INTO `projects_trackers` VALUES (1,1),(1,2),(1,3);
/*!40000 ALTER TABLE `projects_trackers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `queries`
--

DROP TABLE IF EXISTS `queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `queries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_id` int DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `filters` text,
  `user_id` int NOT NULL DEFAULT '0',
  `column_names` text,
  `sort_criteria` text,
  `group_by` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `visibility` int DEFAULT '0',
  `options` text,
  PRIMARY KEY (`id`),
  KEY `index_queries_on_project_id` (`project_id`),
  KEY `index_queries_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queries`
--

LOCK TABLES `queries` WRITE;
/*!40000 ALTER TABLE `queries` DISABLE KEYS */;
INSERT INTO `queries` VALUES (1,NULL,'내가 맡은 일감','---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\nassigned_to_id:\n  :operator: \"=\"\n  :values:\n  - me\nproject.status:\n  :operator: \"=\"\n  :values:\n  - \'1\'\n',0,NULL,'---\n- - priority\n  - desc\n- - updated_on\n  - desc\n',NULL,'IssueQuery',2,NULL),(2,NULL,'보고한 일감','---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\nauthor_id:\n  :operator: \"=\"\n  :values:\n  - me\nproject.status:\n  :operator: \"=\"\n  :values:\n  - \'1\'\n',0,NULL,'---\n- - updated_on\n  - desc\n',NULL,'IssueQuery',2,NULL),(3,NULL,'업데이트된 일감','---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\nupdated_by:\n  :operator: \"=\"\n  :values:\n  - me\nproject.status:\n  :operator: \"=\"\n  :values:\n  - \'1\'\n',0,NULL,'---\n- - updated_on\n  - desc\n',NULL,'IssueQuery',2,NULL),(4,NULL,'지켜보고 있는 일감','---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\nwatcher_id:\n  :operator: \"=\"\n  :values:\n  - me\nproject.status:\n  :operator: \"=\"\n  :values:\n  - \'1\'\n',0,NULL,'---\n- - updated_on\n  - desc\n',NULL,'IssueQuery',2,NULL),(5,NULL,'내 프로젝트','---\nstatus:\n  :operator: \"=\"\n  :values:\n  - \'1\'\nid:\n  :operator: \"=\"\n  :values:\n  - mine\n',0,NULL,NULL,NULL,'ProjectQuery',2,NULL),(6,NULL,'My bookmarks','---\nstatus:\n  :operator: \"=\"\n  :values:\n  - \'1\'\nid:\n  :operator: \"=\"\n  :values:\n  - bookmarks\n',0,NULL,NULL,NULL,'ProjectQuery',2,NULL),(7,NULL,'소요 시간','---\nspent_on:\n  :operator: \"*\"\n  :values:\n  - \'\'\nuser_id:\n  :operator: \"=\"\n  :values:\n  - me\n',0,NULL,'---\n- - spent_on\n  - desc\n',NULL,'TimeEntryQuery',2,'---\n:totalable_names:\n- :hours\n');
/*!40000 ALTER TABLE `queries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `queries_roles`
--

DROP TABLE IF EXISTS `queries_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `queries_roles` (
  `query_id` int NOT NULL,
  `role_id` int NOT NULL,
  UNIQUE KEY `queries_roles_ids` (`query_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queries_roles`
--

LOCK TABLES `queries_roles` WRITE;
/*!40000 ALTER TABLE `queries_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `queries_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repositories`
--

DROP TABLE IF EXISTS `repositories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `repositories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_id` int NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `login` varchar(60) DEFAULT '',
  `password` varchar(255) DEFAULT '',
  `root_url` varchar(255) DEFAULT '',
  `type` varchar(255) DEFAULT NULL,
  `path_encoding` varchar(64) DEFAULT NULL,
  `log_encoding` varchar(64) DEFAULT NULL,
  `extra_info` longtext,
  `identifier` varchar(255) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  `created_on` timestamp NULL DEFAULT NULL,
  `easy_repository_url` varchar(255) DEFAULT NULL,
  `easy_username` varchar(255) DEFAULT NULL,
  `easy_password` varchar(255) DEFAULT NULL,
  `easy_database_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_repositories_on_project_id` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repositories`
--

LOCK TABLES `repositories` WRITE;
/*!40000 ALTER TABLE `repositories` DISABLE KEYS */;
/*!40000 ALTER TABLE `repositories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `position` int DEFAULT NULL,
  `assignable` tinyint(1) DEFAULT '1',
  `builtin` int NOT NULL DEFAULT '0',
  `permissions` text,
  `issues_visibility` varchar(30) NOT NULL DEFAULT 'default',
  `users_visibility` varchar(30) NOT NULL DEFAULT 'all',
  `time_entries_visibility` varchar(30) NOT NULL DEFAULT 'all',
  `all_roles_managed` tinyint(1) NOT NULL DEFAULT '1',
  `settings` text,
  `limit_assignable_users` tinyint(1) NOT NULL DEFAULT '0',
  `easy_external_id` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `easy_printable_templates_visibility` varchar(30) NOT NULL DEFAULT 'all',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Non member',0,1,1,'---\n- :view_issues\n- :add_issues\n- :add_issue_notes\n- :save_queries\n- :view_gantt\n- :view_calendar\n- :view_time_entries\n- :view_news\n- :comment_news\n- :view_documents\n- :view_wiki_pages\n- :view_wiki_edits\n- :view_messages\n- :add_messages\n- :view_files\n- :browse_repository\n- :view_changesets\n','default','all','all',1,NULL,0,NULL,NULL,'all'),(2,'Anonymous',0,1,2,'---\n- :view_issues\n- :view_gantt\n- :view_calendar\n- :view_time_entries\n- :view_news\n- :view_documents\n- :view_wiki_pages\n- :view_wiki_edits\n- :view_messages\n- :view_files\n- :browse_repository\n- :view_changesets\n','default','all','all',1,NULL,0,NULL,NULL,'all'),(3,'관리자',1,1,0,'---\n- :add_project\n- :edit_project\n- :close_project\n- :delete_project\n- :select_project_modules\n- :manage_members\n- :manage_versions\n- :add_subprojects\n- :manage_public_queries\n- :save_queries\n- :view_issues\n- :add_issues\n- :edit_issues\n- :edit_own_issues\n- :copy_issues\n- :manage_issue_relations\n- :manage_subtasks\n- :set_issues_private\n- :set_own_issues_private\n- :add_issue_notes\n- :edit_issue_notes\n- :edit_own_issue_notes\n- :view_private_notes\n- :set_notes_private\n- :delete_issues\n- :view_issue_watchers\n- :add_issue_watchers\n- :delete_issue_watchers\n- :manage_categories\n- :view_time_entries\n- :log_time\n- :edit_time_entries\n- :edit_own_time_entries\n- :manage_project_activities\n- :view_news\n- :manage_news\n- :comment_news\n- :view_documents\n- :add_documents\n- :edit_documents\n- :delete_documents\n- :view_files\n- :manage_files\n- :view_wiki_pages\n- :view_wiki_edits\n- :export_wiki_pages\n- :edit_wiki_pages\n- :rename_wiki_pages\n- :delete_wiki_pages\n- :delete_wiki_pages_attachments\n- :protect_wiki_pages\n- :manage_wiki\n- :view_changesets\n- :browse_repository\n- :commit_access\n- :manage_related_issues\n- :manage_repository\n- :view_messages\n- :add_messages\n- :edit_messages\n- :edit_own_messages\n- :delete_messages\n- :delete_own_messages\n- :view_message_watchers\n- :add_message_watchers\n- :delete_message_watchers\n- :manage_boards\n- :view_calendar\n- :view_gantt\n- :view_easy_wbs\n- :manage_page_project_overview\n- :archive_project\n- :edit_own_projects\n- :edit_project_custom_fields\n- :create_project_from_template\n- :create_subproject_from_template\n- :create_project_template\n- :edit_project_template\n- :delete_project_template\n- :view_project_activity\n- :copy_project\n- :view_project_overview_users_query\n- :manage_bulk_version\n- :manage_global_versions\n- :manage_easy_issue_timers\n- :edit_assigned_issue\n- :move_issues\n- :edit_repeating_options_on_issue\n- :edit_without_notifications\n- :edit_issue_fixed_activity\n- :manage_own_news\n- :manage_comments\n- :delete_own_comments\n- :view_estimated_hours\n- :add_timeentries_for_other_users\n- :add_timeentries_for_other_users_on_project\n- :timelog_can_easy_locking\n- :timelog_can_easy_unlocking\n- :view_easy_attendances\n- :use_easy_attendances\n- :edit_easy_attendances\n- :cancel_own_easy_attendances\n- :delete_easy_attendances\n- :delete_own_easy_attendances\n- :view_easy_attendances_extra_info\n- :view_easy_attendance_other_users\n- :edit_easy_attendance_approval\n- :view_easy_resource_booking_module\n- :manage_easy_resource_booking_module\n- :manage_easy_resource_booking_availability\n- :manage_my_page\n- :edit_profile\n- :view_issue_timers_of_others\n- :view_custom_dashboards\n- :manage_custom_dashboards\n- :view_global_easy_sprints\n- :view_easy_scrum_overview\n- :manage_easy_scrum_overview\n- :view_easy_scrum_board\n- :manage_sprint_backlog\n- :edit_easy_scrum_board\n- :view_easy_kanban_board\n- :edit_easy_kanban_board\n- :manage_easy_buttons\n- :manage_own_easy_buttons\n- :execute_easy_buttons\n- :view_easy_calendar\n- :view_all_meetings_detail\n- :edit_easy_calendar_layout\n- :edit_meetings\n- :view_easy_printable_templates\n- :manage_easy_printable_templates\n- :manage_own_easy_printable_templates\n- :view_easy_project_attachments\n- :view_easy_global_attachments\n- :quick_planner\n- :view_easy_timesheets\n- :use_easy_to_do_list\n- :view_baselines\n- :edit_baselines\n- :view_easy_checklists\n- :create_easy_checklists\n- :change_easy_checklists_layout\n- :delete_easy_checklists\n- :manage_easy_checklist_templates\n- :create_easy_checklist_from_template\n- :enable_easy_checklist_items\n- :disable_easy_checklist_items\n- :create_easy_checklist_items\n- :edit_easy_checklist_items\n- :delete_easy_checklist_items\n- :edit_easy_attendance_approval_for_inferiors\n- :view_dmsf_file_revision_accesses\n- :view_dmsf_file_revisions\n- :view_dmsf_folders\n- :user_preferences\n- :view_dmsf_files\n- :email_documents\n- :folder_manipulation\n- :file_manipulation\n- :file_delete\n- :force_file_unlock\n- :file_approval\n- :manage_workflows\n- :display_system_folders\n- :import_by_api_advanced_importer\n- :view_easy_calculoid\n- :view_easy_integrations\n- :manage_easy_integrations\n- :view_easy_stakeholders\n- :manage_easy_stakeholders\n- :anonymize_easy_stakeholders\n- :view_easy_gantt\n- :edit_easy_gantt\n- :view_global_easy_gantt\n- :edit_global_easy_gantt\n- :view_personal_easy_gantt\n- :edit_personal_easy_gantt\n','all','all','all',1,NULL,0,NULL,NULL,'all'),(4,'개발자',2,1,0,'---\n- :manage_versions\n- :manage_categories\n- :view_issues\n- :add_issues\n- :edit_issues\n- :view_private_notes\n- :set_notes_private\n- :manage_issue_relations\n- :manage_subtasks\n- :add_issue_notes\n- :save_queries\n- :view_gantt\n- :view_calendar\n- :log_time\n- :view_time_entries\n- :view_news\n- :comment_news\n- :view_documents\n- :view_wiki_pages\n- :view_wiki_edits\n- :edit_wiki_pages\n- :delete_wiki_pages\n- :view_messages\n- :add_messages\n- :edit_own_messages\n- :view_files\n- :manage_files\n- :browse_repository\n- :view_changesets\n- :commit_access\n- :manage_related_issues\n','default','all','all',1,NULL,0,NULL,NULL,'all'),(5,'보고자',3,1,0,'---\n- :view_issues\n- :add_issues\n- :add_issue_notes\n- :save_queries\n- :view_gantt\n- :view_calendar\n- :log_time\n- :view_time_entries\n- :view_news\n- :comment_news\n- :view_documents\n- :view_wiki_pages\n- :view_wiki_edits\n- :view_messages\n- :add_messages\n- :edit_own_messages\n- :view_files\n- :browse_repository\n- :view_changesets\n','default','all','all',1,NULL,0,NULL,NULL,'all');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_managed_roles`
--

DROP TABLE IF EXISTS `roles_managed_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles_managed_roles` (
  `role_id` int NOT NULL,
  `managed_role_id` int NOT NULL,
  UNIQUE KEY `index_roles_managed_roles_on_role_id_and_managed_role_id` (`role_id`,`managed_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_managed_roles`
--

LOCK TABLES `roles_managed_roles` WRITE;
/*!40000 ALTER TABLE `roles_managed_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_managed_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rorys_enqueued_tasks`
--

DROP TABLE IF EXISTS `rorys_enqueued_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rorys_enqueued_tasks` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `start_at` datetime DEFAULT NULL,
  `data` text,
  `executor` varchar(255) DEFAULT NULL,
  `executions` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rorys_enqueued_tasks`
--

LOCK TABLES `rorys_enqueued_tasks` WRITE;
/*!40000 ALTER TABLE `rorys_enqueued_tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `rorys_enqueued_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rys_features`
--

DROP TABLE IF EXISTS `rys_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rys_features` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_index_rys_features_name` (`name`),
  KEY `index_rys_features_on_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rys_features`
--

LOCK TABLES `rys_features` WRITE;
/*!40000 ALTER TABLE `rys_features` DISABLE KEYS */;
INSERT INTO `rys_features` VALUES (1,'advanced_importer',1,'2021-08-23 17:10:21','2021-08-23 17:10:21'),(2,'easy_twofa',1,'2021-08-23 17:10:21','2021-08-23 17:10:21'),(3,'ryspec',1,'2021-08-23 17:10:21','2021-08-23 17:10:21'),(4,'easy_watchers_list_autocomplete',1,'2021-08-23 17:10:21','2021-08-23 17:10:21'),(5,'easy_swagger',1,'2021-08-23 17:10:21','2021-08-23 17:10:21'),(6,'easy_api',1,'2021-08-23 17:10:21','2021-08-23 17:10:21'),(7,'easy_calculoid',1,'2021-08-23 17:10:21','2021-08-23 17:10:21'),(8,'email_field_autocomplete',0,'2021-08-23 17:10:21','2021-08-23 17:10:21'),(9,'easy_dagre_d3',1,'2021-08-23 17:10:21','2021-08-23 17:10:21'),(10,'easy_d3',1,'2021-08-23 17:10:21','2021-08-23 17:10:21'),(11,'easy_service_manager',1,'2021-08-23 17:10:21','2021-08-23 17:10:21'),(12,'easy_sso',1,'2021-08-23 17:10:21','2021-08-23 17:10:21'),(13,'easy_zapier',1,'2021-08-23 17:10:21','2021-08-23 17:10:21'),(14,'security_user_lock',1,'2021-08-23 17:10:21','2021-08-23 17:10:21'),(15,'easy_callback_actions',1,'2021-08-23 17:10:21','2021-08-23 17:10:21'),(16,'search_in_administration',1,'2021-08-23 17:10:21','2021-08-23 17:10:21'),(17,'issue_duration',1,'2021-08-23 17:10:21','2021-08-23 17:10:21'),(18,'project_flags',1,'2021-08-23 17:10:21','2021-08-23 17:10:21'),(19,'resource_reports',1,'2021-08-23 17:10:21','2021-08-23 17:10:21'),(20,'easy_core',1,'2021-08-23 17:10:21','2021-08-23 17:10:21'),(21,'grouped_email_notifications',0,'2021-08-23 17:10:21','2021-08-23 17:10:21'),(22,'easy_computed_field_from_query',1,'2021-08-23 17:10:21','2021-08-23 17:10:21'),(23,'extended_users_context_menu',1,'2021-08-23 17:10:21','2021-08-23 17:10:21'),(24,'easy',1,'2021-08-23 17:10:21','2021-08-23 17:10:21'),(25,'easy.redmine',1,'2021-08-23 17:10:21','2021-08-23 17:10:21'),(26,'easy_integrations',1,'2021-08-23 17:10:21','2021-08-23 17:10:21'),(27,'easy_stakeholders',1,'2021-08-23 17:10:21','2021-08-23 17:10:21'),(28,'show_last_comments_on_issue',1,'2021-08-23 17:10:21','2021-08-23 17:10:21'),(29,'show_last_comments_on_issue.show',0,'2021-08-23 17:10:21','2021-08-23 17:10:21'),(30,'show_last_comments_on_issue.index',1,'2021-08-23 17:10:21','2021-08-23 17:10:21'),(31,'custom_builtin_role',0,'2021-08-23 17:10:21','2021-08-23 17:10:21'),(32,'dependent_list_custom_field',1,'2021-08-23 17:10:21','2021-08-23 17:10:21');
/*!40000 ALTER TABLE `rys_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_easy_data_migrations`
--

DROP TABLE IF EXISTS `schema_easy_data_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schema_easy_data_migrations` (
  `plugin` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `options` text,
  PRIMARY KEY (`plugin`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_easy_data_migrations`
--

LOCK TABLES `schema_easy_data_migrations` WRITE;
/*!40000 ALTER TABLE `schema_easy_data_migrations` DISABLE KEYS */;
INSERT INTO `schema_easy_data_migrations` VALUES ('easy_agile_board','20140203142338',NULL),('easy_agile_board','20140204232302',NULL),('easy_agile_board','20140820144400',NULL),('easy_agile_board','20150930093835',NULL),('easy_agile_board','20160229093235',NULL),('easy_agile_board','20160816144100',NULL),('easy_agile_board','20160919180401',NULL),('easy_agile_board','20161004155959',NULL),('easy_agile_board','20161116161400',NULL),('easy_agile_board','20161122111002',NULL),('easy_agile_board','20171017151000',NULL),('easy_buttons','20150821133213',NULL),('easy_buttons','20160209123213',NULL),('easy_buttons','20210514111515',NULL),('easy_calendar','20140918103307',NULL),('easy_calendar','20140924081400',NULL),('easy_calendar','20151006124434',NULL),('easy_calendar','20160926120623',NULL),('easy_calendar','20190419110651',NULL),('easy_calendar','20200207073921',NULL),('easy_calendar','20210325104325',NULL),('easy_calendar','20210520173022',NULL),('easy_extensions','20110301114800',NULL),('easy_extensions','20110414183800',NULL),('easy_extensions','20110503131137',NULL),('easy_extensions','20120607092314',NULL),('easy_extensions','20130327185100',NULL),('easy_extensions','20131118163839',NULL),('easy_extensions','20140218160600',NULL),('easy_extensions','20140423102400',NULL),('easy_extensions','20140723149500',NULL),('easy_extensions','20140723254500',NULL),('easy_extensions','20140731171226',NULL),('easy_extensions','20140731254600',NULL),('easy_extensions','20140731696600',NULL),('easy_extensions','20140731820100',NULL),('easy_extensions','20140804128100',NULL),('easy_extensions','20140808155600',NULL),('easy_extensions','20140817152300',NULL),('easy_extensions','20140909100916',NULL),('easy_extensions','20141015100600',NULL),('easy_extensions','20141112123900',NULL),('easy_extensions','20141211145659',NULL),('easy_extensions','20141220140400',NULL),('easy_extensions','20150081316240',NULL),('easy_extensions','20150114174430',NULL),('easy_extensions','20150122232400',NULL),('easy_extensions','20150127175145',NULL),('easy_extensions','20150202142839',NULL),('easy_extensions','20150211094218',NULL),('easy_extensions','20150213105300',NULL),('easy_extensions','20150226161700',NULL),('easy_extensions','20150304103452',NULL),('easy_extensions','20150305171700',NULL),('easy_extensions','20150317142113',NULL),('easy_extensions','20150319121700',NULL),('easy_extensions','20150331170500',NULL),('easy_extensions','20150420103000',NULL),('easy_extensions','20150507101839',NULL),('easy_extensions','20150707165533',NULL),('easy_extensions','20150716112559',NULL),('easy_extensions','20150720174759',NULL),('easy_extensions','20150824145500',NULL),('easy_extensions','20150828091200',NULL),('easy_extensions','20151009115100',NULL),('easy_extensions','20160205082936',NULL),('easy_extensions','20160205113100',NULL),('easy_extensions','20160517112800',NULL),('easy_extensions','20160719113100',NULL),('easy_extensions','20160901112200',NULL),('easy_extensions','20161004122100',NULL),('easy_extensions','20161216121100',NULL),('easy_extensions','20170201112100',NULL),('easy_extensions','20170526121500',NULL),('easy_extensions','20170526121502',NULL),('easy_extensions','20170526121503',NULL),('easy_extensions','20170727143129',NULL),('easy_extensions','20170805101118',NULL),('easy_extensions','20170807130600',NULL),('easy_extensions','20171101135838',NULL),('easy_extensions','20180212105500',NULL),('easy_extensions','20180813141409',NULL),('easy_extensions','20180903121549',NULL),('easy_extensions','20180907143800',NULL),('easy_extensions','20190520113200',NULL),('easy_extensions','20190816151600',NULL),('easy_extensions','20210101071250',NULL),('easy_extensions','20210201113321',NULL),('easy_extensions','20210418234539',NULL),('easy_extensions','20210419153618',NULL),('easy_extensions','20210421162016',NULL),('easy_extensions','20210513011918',NULL),('easy_extensions','20210513175802',NULL),('easy_printable_templates','20180425122102',NULL),('easy_quick_project_planner','20140428162936',NULL),('easy_redmine','20190513072308',NULL),('easy_resource_base','20201214134858',NULL),('easy_theme_designer','20141015100700',NULL),('easy_theme_designer','20190620111707',NULL),('easy_theme_designer','20190724154920',NULL),('easy_timesheets','20141002122300',NULL),('easy_timesheets','20201029062156',NULL);
/*!40000 ALTER TABLE `schema_easy_data_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('1'),('1-easy_data_templates'),('1-easy_extensions'),('1-redmine_dmsf'),('10'),('10-easy_extensions'),('100'),('101'),('102'),('103'),('104'),('105'),('106'),('107'),('108'),('11'),('11-easy_extensions'),('12'),('12-easy_extensions'),('13'),('13-easy_extensions'),('14'),('14-easy_extensions'),('15'),('15-easy_extensions'),('16'),('16-easy_extensions'),('17'),('17-easy_extensions'),('18'),('18-easy_extensions'),('19'),('19-easy_extensions'),('2'),('2-easy_data_templates'),('2-easy_extensions'),('2-redmine_dmsf'),('20'),('20-easy_extensions'),('20090214190337'),('20090312172426'),('20090312194159'),('20090318181151'),('20090323224724'),('20090401221305'),('20090401231134'),('20090403001910'),('20090406161854'),('20090425161243'),('20090503121501'),('20090503121505'),('20090503121510'),('20090614091200'),('20090704172350'),('20090704172355'),('20090704172358'),('20091010093521'),('20091017212227'),('20091017212457'),('20091017212644'),('20091017212938'),('20091017213027'),('20091017213113'),('20091017213151'),('20091017213228'),('20091017213257'),('20091017213332'),('20091017213444'),('20091017213536'),('20091017213642'),('20091017213716'),('20091017213757'),('20091017213835'),('20091017213910'),('20091017214015'),('20091017214107'),('20091017214136'),('20091017214236'),('20091017214308'),('20091017214336'),('20091017214406'),('20091017214440'),('20091017214519'),('20091017214611'),('20091017214644'),('20091017214720'),('20091017214750'),('20091025163651'),('20091108092559'),('20091114105931'),('20091123212029'),('20091205124427'),('20091220183509'),('20091220183727'),('20091220184736'),('20091225164732'),('20091227112908'),('20100129193402'),('20100129193813'),('20100221100219'),('20100313132032'),('20100313171051'),('20100705164950'),('20100819172912'),('20101104182107'),('20101107130441'),('20101114115114'),('20101114115359'),('20110220160626'),('20110221154300-easy_extensions'),('201102220931-easy_extensions'),('201102220943-easy_extensions'),('20110223180944'),('20110223180953'),('20110224000000'),('20110224131000-easy_extensions'),('20110226120112'),('20110226120132'),('20110227125750'),('20110228000000'),('20110228000100'),('20110228222800-easy_extensions'),('20110302132700-easy_extensions'),('20110302135700-easy_extensions'),('20110304105500-easy_extensions'),('20110305220700-easy_extensions'),('20110308104700-easy_extensions'),('20110312144500-easy_extensions'),('20110316121200-easy_extensions'),('20110401192910'),('20110408103312'),('20110411200800-easy_extensions'),('20110412065600'),('20110413150800-easy_extensions'),('20110415133426-easy_extensions'),('20110502001400-easy_extensions'),('20110503143600-easy_extensions'),('20110504094153-easy_extensions'),('20110505190000-easy_extensions'),('20110510132800-easy_extensions'),('20110511000000'),('20110520100500-easy_extensions'),('20110530204200-easy_data_templates'),('20110531161100-easy_extensions'),('20110622132700-easy_extensions'),('20110628155400-easy_extensions'),('20110721145700-easy_extensions'),('20110722170000-easy_extensions'),('20110805105000-easy_extensions'),('20110811151100-easy_extensions'),('20110823194100-easy_extensions'),('20110902000000'),('20111003130000-easy_extensions'),('20111011131800-easy_extensions'),('20111104143000-easy_extensions'),('20111109163500-easy_extensions'),('20111114112101-easy_extensions'),('20111114180000-easy_extensions'),('20111114180001-easy_extensions'),('20111128090128-easy_extensions'),('20111128181200-easy_extensions'),('20111129131609-easy_extensions'),('20111129150134-easy_extensions'),('20111130102000-easy_extensions'),('20111201105000-easy_extensions'),('20111201201315'),('20111227155700-easy_extensions'),('20111228153000-easy_extensions'),('20111228164700-easy_extensions'),('20111228185900-easy_extensions'),('20111228213300-easy_extensions'),('20120102095500-easy_extensions'),('20120103113700-easy_extensions'),('20120112104233-easy_extensions'),('20120115143024'),('20120115143100'),('20120115143126'),('20120117104600-easy_extensions'),('20120127174243'),('20120205111326'),('20120206133708-easy_extensions'),('20120209155137-easy_extensions'),('20120220153105-easy_extensions'),('20120223110929'),('20120224141428-easy_extensions'),('20120224143628-easy_extensions'),('20120227144205-easy_extensions'),('20120227150400-easy_extensions'),('20120229144000-easy_data_templates'),('20120229144100-easy_data_templates'),('20120229144200-easy_data_templates'),('20120301153455'),('20120302110757-easy_extensions'),('20120302111221-easy_extensions'),('20120305152444-easy_extensions'),('20120306083900-easy_extensions'),('20120307144746-easy_extensions'),('20120308094313-easy_extensions'),('20120312125535-easy_extensions'),('20120313160800-easy_extensions'),('20120313161400-easy_extensions'),('20120313174928-easy_extensions'),('20120315010080-easy_extensions'),('20120320095700-easy_extensions'),('20120321083000-easy_extensions'),('20120323103700-easy_extensions'),('20120326145200-easy_extensions'),('20120326150700-easy_extensions'),('20120327110924-easy_extensions'),('20120328100600-easy_extensions'),('20120328101800-easy_extensions'),('20120329152500-easy_extensions'),('20120329170000-easy_extensions'),('20120413152200-easy_extensions'),('20120422150750'),('20120423144728-easy_extensions'),('20120424091100-easy_extensions'),('20120424111500-easy_extensions'),('20120503101500-easy_extensions'),('20120510121200-easy_extensions'),('20120510121800-easy_extensions'),('20120514152700-easy_extensions'),('20120515132100-easy_extensions'),('20120515162700-easy_extensions'),('20120515164500-easy_extensions'),('20120515175100-easy_extensions'),('20120516151500-easy_extensions'),('20120516152000-easy_extensions'),('20120516163500-easy_extensions'),('20120517103900-easy_extensions'),('20120517104100-easy_extensions'),('20120529092400-easy_extensions'),('20120605114046-easy_extensions'),('20120605135521-easy_extensions'),('20120605141122-easy_extensions'),('20120605150828-easy_extensions'),('20120607161102-easy_extensions'),('20120608103700-easy_extensions'),('20120611122600-easy_extensions'),('20120615083500-easy_extensions'),('20120625120000-easy_extensions'),('20120626121448-easy_extensions'),('20120705074331'),('20120707064544'),('20120714122000'),('20120714122100'),('20120714122200'),('20120717151000-easy_extensions'),('20120717151800-easy_extensions'),('20120719150500-easy_extensions'),('20120723184300-easy_extensions'),('20120723184500-easy_extensions'),('20120731164049'),('20120801092321-easy_extensions'),('20120801160045-easy_extensions'),('20120806084830-easy_extensions'),('20120809124000-easy_redmine'),('20120816112000-easy_extensions'),('20120816112700-easy_extensions'),('20120816112900-easy_extensions'),('20120822072148-easy_extensions'),('20120822100401-redmine_dmsf'),('20120822100402-redmine_dmsf'),('20120822100403-redmine_dmsf'),('20120822100404-redmine_dmsf'),('20120822131300-easy_extensions'),('20120831072228-easy_extensions'),('20120831173528-easy_extensions'),('20120905113028-easy_extensions'),('20120914162509-easy_extensions'),('20120918094649-easy_extensions'),('20120919092133-easy_extensions'),('20120930112914'),('20121010133928-easy_extensions'),('20121010134628-easy_extensions'),('20121011151200-easy_extensions'),('20121018094200-easy_extensions'),('20121022074522-easy_extensions'),('20121025102600-easy_extensions'),('20121026002032'),('20121026003537'),('20121029090300-easy_extensions'),('20121105160528-easy_extensions'),('20121105170900-easy_extensions'),('20121106114900-easy_extensions'),('20121108112000-easy_extensions'),('20121114121528-easy_extensions'),('20121122144000-easy_extensions'),('20121126162300-easy_extensions'),('20121204172800-easy_extensions'),('20121205103000-easy_extensions'),('20121209123234'),('20121209123358'),('20121212120700-easy_extensions'),('20121213084931'),('20121218161329-easy_extensions'),('20121219104200-easy_extensions'),('20121219121500-easy_extensions'),('20121219151000-easy_extensions'),('20121228152300-easy_extensions'),('20121228161400-easy_extensions'),('20130102094100-easy_extensions'),('20130110122628'),('20130115153453-easy_extensions'),('20130116132338-easy_extensions'),('20130131105304-easy_extensions'),('20130201184705'),('20130202090625'),('20130207175206'),('20130207181455'),('20130213120500-easy_extensions'),('20130213121500-easy_extensions'),('20130215073721'),('20130215111127'),('20130215111141'),('20130217094251'),('20130225114627-easy_extensions'),('20130226104701-easy_extensions'),('20130312155900-easy_extensions'),('20130312164300-easy_extensions'),('20130318150924-easy_extensions'),('20130319181300-easy_extensions'),('20130322154440-easy_extensions'),('20130325121205-easy_extensions'),('20130327175128-easy_extensions'),('20130329123607-easy_extensions'),('20130409100735-easy_extensions'),('20130411164100-easy_extensions'),('20130412144300-easy_extensions'),('20130412163200-easy_extensions'),('20130412163600-easy_extensions'),('20130412172000-easy_extensions'),('20130416130327-easy_extensions'),('20130416140456-easy_extensions'),('20130502144300-easy_extensions'),('20130502152300-easy_extensions'),('20130506180900-easy_project_attachments'),('20130507201400-easy_extensions'),('20130519222344-easy_extensions'),('20130522135108-easy_extensions'),('20130524234518-easy_extensions'),('20130602092539'),('20130603095549-easy_extensions'),('20130603172200-easy_to_do_list'),('20130603172500-easy_to_do_list'),('20130604113611-easy_extensions'),('20130605134318-easy_extensions'),('20130606102000-easy_to_do_list'),('20130610102122-easy_extensions'),('20130610104116-easy_extensions'),('20130617130017-easy_extensions'),('20130618145400-easy_to_do_list'),('20130619143608-easy_extensions'),('20130620121853-easy_extensions'),('20130701110000-easy_extensions'),('20130710093100-easy_extensions'),('20130710182539'),('20130711000837-easy_extensions'),('20130711103800-easy_extensions'),('20130713104233'),('20130713111657'),('20130723092700-easy_extensions'),('20130725133311-easy_extensions'),('20130729070143'),('20130805092328-easy_redmine'),('20130805094142-easy_redmine'),('20130807133300-easy_extensions'),('20130809084400-easy_printable_templates'),('20130809100200-easy_extensions'),('20130809100500-easy_extensions'),('20130814103900-easy_printable_templates'),('20130814123100-easy_printable_templates'),('20130814133200-easy_extensions'),('20130814140000-easy_extensions'),('20130816113622-easy_extensions'),('20130819013955-redmine_dmsf'),('20130822121106-easy_extensions'),('20130822121107-easy_extensions'),('20130905161742-easy_calendar'),('20130908113704-easy_extensions'),('20130911093849-easy_extensions'),('20130911193200'),('20130913091100-easy_extensions'),('20130918144042-easy_extensions'),('20130919165231-easy_extensions'),('20130925133250-easy_calendar'),('20131004113137'),('20131005100610'),('20131015232043-easy_extensions'),('20131025091455-easy_extensions'),('20131029160704-easy_calendar'),('20131031105615-easy_extensions'),('20131104110153-easy_extensions'),('20131106124700-easy_extensions'),('20131108122550-easy_extensions'),('20131108141401-redmine_dmsf'),('20131108141402-redmine_dmsf'),('20131113141401-redmine_dmsf'),('20131113141402-redmine_dmsf'),('20131113141403-redmine_dmsf'),('20131118202928-easy_agile_board'),('20131120112500-easy_extensions'),('20131120113100-easy_extensions'),('20131120122909-easy_extensions'),('20131121151754-easy_agile_board'),('20131124175346'),('20131126152903-easy_extensions'),('20131205213903-easy_extensions'),('20131206143602-easy_calendar'),('20131206175214-easy_calendar'),('20131210180802'),('20131214094309'),('20131215104612'),('20131218183023'),('20140101143228-easy_agile_board'),('20140114184301-easy_extensions'),('20140203151605-easy_agile_board'),('20140207102100-easy_extensions'),('20140213113300-easy_extensions'),('20140217092417-easy_calendar'),('20140228130325'),('20140314132501-redmine_dmsf'),('20140317133000-easy_extensions'),('20140319194800-easy_extensions'),('20140327111631-easy_extensions'),('20140402124300-easy_agile_board'),('20140402131600-easy_extensions'),('20140402135400-easy_extensions'),('20140417081941-easy_extensions'),('20140519133201-redmine_dmsf'),('20140519152500-easy_extensions'),('20140519185912-easy_extensions'),('20140613104200-easy_extensions'),('20140625082318-easy_extensions'),('20140625082319-easy_extensions'),('20140708153500-easy_extensions'),('20140721132200-easy_extensions'),('20140723148400-easy_extensions'),('20140723544400-easy_extensions'),('20140731627100-easy_extensions'),('20140731696500-easy_extensions'),('20140731746500-easy_extensions'),('20140804126600-easy_extensions'),('20140808154200-easy_extensions'),('20140813133402-easy_extensions'),('20140817134200-easy_extensions'),('20140817134300-easy_extensions'),('20140817134400-easy_extensions'),('20140819112200-easy_extensions'),('20140819311184-easy_extensions'),('20140820101400-easy_extensions'),('20140821002800-easy_agile_board'),('20140827090714-easy_theme_designer'),('20140902311184-easy_extensions'),('20140903143914'),('20140905113922-easy_theme_designer'),('20140911164400-easy_agile_board'),('20140918172150-easy_calendar'),('20140920094058'),('20140923124746-easy_theme_designer'),('20140930110400-easy_extensions'),('20140930192700-easy_timesheets'),('20141006150300-easy_extensions'),('20141008110200-easy_extensions'),('20141013102501-redmine_dmsf'),('20141015132701-redmine_dmsf'),('20141024092734-easy_theme_designer'),('20141029181752'),('20141029181824'),('20141029510200-easy_extensions'),('20141030183926-easy_extensions'),('20141103328200-easy_extensions'),('20141109112308'),('20141112121500-easy_extensions'),('20141112133700-easy_extensions'),('20141122124142'),('20141127172200-easy_extensions'),('20141130160300-easy_extensions'),('20141201170600-easy_extensions'),('20141204101337-easy_extensions'),('20141204105557-easy_extensions'),('20141205143001-redmine_dmsf'),('20141212095435-easy_timesheets'),('20141216155931-easy_extensions'),('20141218152000-easy_extensions'),('20150113194759'),('20150113211532'),('20150113213922'),('20150113213955'),('20150114174120-easy_extensions'),('20150120152101-redmine_dmsf'),('20150123092600-easy_extensions'),('20150123132000-easy_extensions'),('20150128140219'),('20150128141826'),('20150129151622-easy_extensions'),('20150129151623-easy_extensions'),('20150129151624-easy_extensions'),('20150130052716-redmine_dmsf'),('20150202010301-redmine_dmsf'),('20150208105930'),('20150210104052-easy_calendar'),('20150210121400-easy_agile_board'),('20150213104500-easy_extensions'),('20150224000100-easy_extensions'),('20150225120334-easy_theme_designer'),('20150225182633-easy_extensions'),('20150226115600-easy_extensions'),('20150302161700-easy_agile_board'),('20150305111600-easy_extensions'),('20150305123600-easy_extensions'),('20150309202400-easy_extensions'),('20150310171701-easy_extensions'),('20150310171702-easy_extensions'),('20150310171703-easy_extensions'),('20150310171704-easy_extensions'),('20150311174800-easy_printable_templates'),('20150316093400-easy_extensions'),('20150325151332-easy_extensions'),('20150326172800-easy_extensions'),('20150416128200-easy_extensions'),('20150503112100-easy_extensions'),('20150510083747'),('20150511112100-easy_extensions'),('20150514141655-easy_extensions'),('20150525103953'),('20150526183158'),('20150528084820'),('20150528092912'),('20150528093249'),('20150604113949-easy_extensions'),('20150604130700-easy_extensions'),('20150609144500-easy_extensions'),('20150615180500-easy_agile_board'),('20150616144348-easy_extensions'),('20150622074452-easy_extensions'),('20150622083513-easy_extensions'),('20150705172511'),('20150709082623-easy_extensions'),('20150709162200-easy_timesheets'),('20150713081915-easy_extensions'),('20150720161356-easy_extensions'),('20150721112554-easy_calendar'),('20150724131953-easy_calendar'),('20150725112753'),('20150728155500-easy_extensions'),('20150730122707'),('20150730122735'),('20150730180200-easy_checklist'),('20150803041115-easy_extensions'),('20150803101000-easy_extensions'),('20150806043113-easy_extensions'),('20150806102000-easy_extensions'),('20150810233049-easy_baseline'),('20150812122322-easy_baseline'),('20150819070233-easy_buttons'),('20150819102130-easy_buttons'),('20150824013213-easy_extensions'),('20150902135653-easy_extensions'),('20150907104323-easy_extensions'),('20150910080152-easy_buttons'),('20150910153701-redmine_dmsf'),('20150911130340-easy_extensions'),('20150917133800-easy_extensions'),('20150921204850'),('20150921210243'),('20150925141400-easy_extensions'),('20150930093749-easy_agile_board'),('20151005125200-easy_extensions'),('20151009112700-easy_extensions'),('20151020141801-redmine_dmsf'),('20151020182334'),('20151020182731'),('20151021105323-easy_extensions'),('20151021184614'),('20151021185456'),('20151021190616'),('20151024082034'),('20151025072118'),('20151030095005-easy_printable_templates'),('20151030150323'),('20151030163706-easy_extensions'),('20151031095005'),('20151102112706-easy_extensions'),('20151103141600-easy_extensions'),('20151124095957-easy_extensions'),('20151209100001-redmine_dmsf'),('20151222160457-easy_extensions'),('20160106132708-easy_extensions'),('20160119183000-easy_checklist'),('20160127121200-easy_extensions'),('20160205082324-easy_extensions'),('20160215125801-redmine_dmsf'),('20160217133001-redmine_dmsf'),('20160222140401-redmine_dmsf'),('20160309105100-easy_extensions'),('20160309151725-easy_agile_board'),('20160314154810-easy_extensions'),('20160404080304'),('20160406102100-easy_extensions'),('20160416072926'),('20160420023749-easy_agile_board'),('20160421150501-redmine_dmsf'),('20160509132602-easy_extensions'),('20160519091249-easy_extensions'),('20160519161300'),('20160524121900-easy_extensions'),('20160526101100-easy_extensions'),('20160529063352'),('20160601074220-easy_extensions'),('20160615143000-easy_extensions'),('20160617122000-easy_extensions'),('20160620114000-easy_extensions'),('20160624090800-easy_extensions'),('20160627151200-easy_agile_board'),('20160629102100-easy_extensions'),('20160629164300-easy_extensions'),('20160630133000-easy_extensions'),('20160707170702-easy_extensions'),('20160714122500-easy_extensions'),('20160726132515-easy_extensions'),('20160804124700-easy_to_do_list'),('20160816163400-easy_extensions'),('20160818164701-easy_agile_board'),('20160818164703-easy_printable_templates'),('20160818164704-easy_theme_designer'),('20160818170300-easy_extensions'),('20160819145600-easy_extensions'),('20160830121800-easy_extensions'),('20160902124700-easy_agile_board'),('20160908104332-easy_extensions'),('20160914080945-easy_agile_board'),('20160919130209-easy_extensions'),('20160920095443-easy_checklist'),('20161001122012'),('20161002133421'),('20161003120300-easy_extensions'),('20161010081301'),('20161010081528'),('20161010081600'),('20161101140000-easy_extensions'),('20161124142300-easy_extensions'),('20161124151041-easy_extensions'),('20161126094932'),('20161129124100-easy_extensions'),('20161130112630-easy_calendar'),('20161219083958-easy_calendar'),('20161220091118'),('20161223133200-redmine_dmsf'),('20170103164701-redmine_dmsf'),('20170109121543-easy_extensions'),('20170111145934-easy_extensions'),('20170118142001-redmine_dmsf'),('20170123104138-easy_extensions'),('20170129133900-easy_extensions'),('20170203132310-easy_theme_designer'),('20170204214753-redmine_dmsf'),('20170207050700'),('20170209114729-easy_extensions'),('20170213152215-easy_gantt'),('20170214153223-redmine_dmsf'),('20170215091600-easy_extensions'),('20170217141601-redmine_dmsf'),('20170224134615-easy_gantt'),('20170302015225'),('20170306150955-easy_extensions'),('20170308145000-easy_extensions'),('20170309214320'),('20170315124431-easy_calendar'),('20170316125000-easy_extensions'),('20170320051650'),('20170323131231-redmine_dmsf'),('20170330131901-redmine_dmsf'),('20170418090031'),('20170419144536'),('20170421101901-redmine_dmsf'),('20170422104901-redmine_dmsf'),('20170429162300-easy_extensions'),('20170522132600-easy_agile_board'),('20170526144701-redmine_dmsf'),('20170529101100-easy_extensions'),('20170601082200-easy_org_chart'),('20170608124405-easy_wbs'),('20170614100250-easy_extensions'),('20170614172400-easy_extensions'),('20170619095520-easy_extensions'),('20170723112801'),('20170724072029-easy_extensions'),('20170727142643-easy_extensions'),('20170802134537-easy_extensions'),('20170808045520-easy_extensions'),('20170809045520-easy_extensions'),('20170815055120-easy_extensions'),('20170913052120-easy_extensions'),('20170925103728-easy_resource_base'),('20170925103811-easy_resource_base'),('20171013074743-easy_extensions'),('20171027085745'),('20171027124101-redmine_dmsf'),('20171101133449-easy_extensions'),('20171110155901-redmine_dmsf'),('20171114085000-easy_extensions'),('20171212110452-easy_extensions'),('20171219090810-easy_extensions'),('20180216152501-redmine_dmsf'),('20180327143626-easy_extensions'),('20180403040110-easy_extensions'),('20180404092312-easy_extensions'),('20180415201714-easy_extensions'),('20180423124102-easy_printable_templates'),('20180430110205'),('20180501132547'),('20180510082835-easy_custom_field_permissions'),('20180801145456-easy_extensions'),('20180816241114-easy_extensions'),('20180830161201-easy_extensions'),('20180903132101-redmine_dmsf'),('20180907114648'),('20180907134900-easy_extensions'),('20180910105100-easy_extensions'),('20180913072918'),('20180923082945'),('20180923091603'),('20181109125122-easy_extensions'),('20181121112228-easy_calendar'),('20181121133833-easy_calendar'),('20181217123719-easy_calendar'),('20181217211514-easy_extensions'),('20190108110406'),('20190108110655'),('20190108160937'),('20190116073500-easy_extensions'),('20190121013400-easy_extensions'),('20190206121100'),('20190304080334-easy_extensions'),('20190313103900-easy_extensions'),('20190315094151'),('20190315102101'),('20190320112900-easy_extensions'),('20190404135621'),('20190413161553-easy_resource_base'),('20190510070108'),('20190514063544-easy_calendar'),('20190528010734-easy_extensions'),('20190528124400-easy_buttons'),('20190529081921-easy_extensions'),('20190620135549'),('20190703083429-easy_extensions'),('20190711071836-easy_extensions'),('20190816145700-easy_extensions'),('20190917064227-easy_theme_designer'),('20190920093200'),('20190920103252-easy_extensions'),('20191007064345'),('20191011071937'),('20191028074247-easy_calendar'),('20191031090952-easy_extensions'),('20191101124827'),('20191122042912-easy_extensions'),('20191210074508'),('20191210212700-easy_extensions'),('20191211093526'),('20191216093700-easy_extensions'),('20192703123101-redmine_dmsf'),('20200212123704'),('20200214131511'),('20200218142414-redmine_dmsf'),('20200320074837'),('20200423071301-redmine_dmsf'),('20200506043400-easy_extensions'),('20200526171600-easy_extensions'),('20200526172300-easy_extensions'),('20200526172800-easy_extensions'),('20200717142502'),('20200813075501-redmine_dmsf'),('20200819105422-easy_extensions'),('20200826153401'),('20200826153402'),('20201019080836-easy_extensions'),('20201022171300-easy_extensions'),('20201023111958-easy_extensions'),('20201129181504-easy_extensions'),('20201214131430-easy_resource_base'),('20210115120901-redmine_dmsf'),('20210127090830-easy_resource_base'),('20210128104853'),('20210216172632-easy_extensions'),('20210305092302'),('20210315083825'),('20210318141300-easy_extensions'),('20210318153300-easy_extensions'),('20210324164003-easy_calendar'),('20210412050118'),('20210412143200-easy_extensions'),('20210414143400-easy_extensions'),('20210415143540-easy_extensions'),('20210415153180-easy_extensions'),('20210415156180-easy_extensions'),('20210427150834'),('20210429052402'),('20210430150720-easy_extensions'),('20210611171300-easy_extensions'),('20210628083745-easy_extensions'),('21'),('21-easy_extensions'),('22'),('23'),('23-easy_extensions'),('24'),('25'),('25-easy_extensions'),('26'),('27'),('27-easy_extensions'),('28'),('28-easy_extensions'),('29'),('29-easy_extensions'),('3'),('3-easy_extensions'),('3-redmine_dmsf'),('30'),('30-easy_extensions'),('31'),('31-easy_extensions'),('32'),('33'),('34'),('34-easy_extensions'),('35'),('36'),('37'),('38'),('39'),('4'),('4-easy_extensions'),('4-redmine_dmsf'),('40'),('41'),('42'),('43'),('44'),('45'),('46'),('47'),('48'),('49'),('5'),('5-easy_extensions'),('5-redmine_dmsf'),('50'),('51'),('52'),('53'),('54'),('55'),('56'),('57'),('58'),('59'),('6'),('6-redmine_dmsf'),('60'),('61'),('62'),('63'),('64'),('65'),('66'),('67'),('68'),('69'),('7'),('7-easy_extensions'),('7-redmine_dmsf'),('70'),('71'),('72'),('73'),('74'),('75'),('76'),('77'),('78'),('79'),('8'),('8-easy_extensions'),('80'),('81'),('82'),('83'),('84'),('85'),('86'),('87'),('88'),('89'),('9'),('9-easy_extensions'),('90'),('91'),('92'),('93'),('94'),('95'),('96'),('97'),('98'),('99');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` text,
  `updated_on` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_settings_on_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'ui_theme','easy_widescreen','2021-08-23 08:10:45'),(2,'default_language','ko','2021-08-24 01:55:02'),(3,'parent_issue_dates','independent','2021-08-23 08:12:43'),(4,'parent_issue_priority','independent','2021-08-23 08:12:43'),(5,'parent_issue_done_ratio','independent','2021-08-23 08:12:43'),(6,'per_page_options','25','2021-08-23 08:12:44'),(7,'search_results_per_page','10','2021-08-23 08:12:44'),(8,'notified_events','---\n- issue_added\n- issue_updated\n- meeting\n','2021-08-23 08:12:45'),(9,'default_projects_tracker_ids','---\n- \'1\'\n- \'2\'\n- \'3\'\n','2021-08-23 08:51:53'),(10,'force_default_language_for_anonymous','1','2021-08-23 09:13:14'),(11,'force_default_language_for_loggedin','1','2021-08-23 09:13:14'),(12,'start_of_week','','2021-08-23 09:13:14'),(13,'date_format','','2021-08-23 09:13:14'),(14,'time_format','','2021-08-23 09:13:14'),(15,'user_format','firstname_lastname','2021-08-23 09:13:14'),(16,'default_users_time_zone','','2021-08-23 09:13:14'),(17,'gravatar_enabled','0','2021-08-23 09:13:14'),(18,'gravatar_default','identicon','2021-08-23 09:13:14'),(19,'thumbnails_enabled','1','2021-08-23 09:13:14'),(20,'thumbnails_size','100','2021-08-23 09:13:14'),(21,'rest_api_enabled','1','2021-08-23 09:13:20'),(22,'jsonp_enabled','1','2021-08-23 09:13:20');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggings`
--

DROP TABLE IF EXISTS `taggings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taggings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tag_id` int DEFAULT NULL,
  `taggable_type` varchar(255) DEFAULT NULL,
  `taggable_id` int DEFAULT NULL,
  `tagger_type` varchar(255) DEFAULT NULL,
  `tagger_id` int DEFAULT NULL,
  `context` varchar(128) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taggings_idx` (`tag_id`,`taggable_id`,`taggable_type`,`context`,`tagger_id`,`tagger_type`),
  KEY `index_taggings_on_taggable_id_and_taggable_type_and_context` (`taggable_id`,`taggable_type`,`context`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggings`
--

LOCK TABLES `taggings` WRITE;
/*!40000 ALTER TABLE `taggings` DISABLE KEYS */;
/*!40000 ALTER TABLE `taggings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `taggings_count` int DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_tags_on_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_entries`
--

DROP TABLE IF EXISTS `time_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_entries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_id` int NOT NULL,
  `author_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  `issue_id` int DEFAULT NULL,
  `hours` float NOT NULL,
  `comments` text,
  `activity_id` int NOT NULL,
  `spent_on` date NOT NULL,
  `tyear` int NOT NULL,
  `tmonth` int NOT NULL,
  `tweek` int NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  `easy_range_from` datetime DEFAULT NULL,
  `easy_range_to` datetime DEFAULT NULL,
  `easy_external_id` varchar(255) DEFAULT NULL,
  `entity_id` int DEFAULT NULL,
  `entity_type` varchar(255) DEFAULT NULL,
  `easy_locked` tinyint(1) NOT NULL DEFAULT '0',
  `easy_locked_by_id` int DEFAULT NULL,
  `easy_locked_at` datetime DEFAULT NULL,
  `easy_unlocked_by_id` int DEFAULT NULL,
  `easy_unlocked_at` datetime DEFAULT NULL,
  `easy_divided_hours` float NOT NULL DEFAULT '0',
  `easy_timesheet_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `time_entries_project_id` (`project_id`),
  KEY `time_entries_issue_id` (`issue_id`),
  KEY `index_time_entries_on_activity_id` (`activity_id`),
  KEY `index_time_entries_on_user_id` (`user_id`),
  KEY `index_time_entries_on_created_on` (`created_on`),
  KEY `idx_time_entries_created_on_desc` (`created_on` DESC),
  KEY `index_time_entries_on_spent_on` (`spent_on`),
  KEY `idx_te_eti1` (`easy_timesheet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_entries`
--

LOCK TABLES `time_entries` WRITE;
/*!40000 ALTER TABLE `time_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tokens`
--

DROP TABLE IF EXISTS `tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tokens` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT '0',
  `action` varchar(30) NOT NULL DEFAULT '',
  `value` varchar(40) NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL,
  `updated_on` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tokens_value` (`value`),
  KEY `index_tokens_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tokens`
--

LOCK TABLES `tokens` WRITE;
/*!40000 ALTER TABLE `tokens` DISABLE KEYS */;
INSERT INTO `tokens` VALUES (1,1,'api','84f8899312a2fa5d55cd4506db89a829f21c9a37','2021-08-23 17:10:33','2021-08-23 08:10:33'),(2,1,'feeds','dfbe663265333bf53e8b2f4d79efa59d3feab802','2021-08-23 17:10:33','2021-08-23 08:10:33'),(3,4,'api','95f0e8462bc1bd40c80345d9329c555cc73cbfe8','2021-08-23 17:11:54','2021-08-23 08:11:54'),(6,5,'feeds','fc36165855aa51179a240673cde830ab2d6c5414','2021-08-23 17:53:34','2021-08-23 08:53:34'),(7,5,'api','70cb9f1e55ad3639cb3c0ea6e5d9d2be941565eb','2021-08-23 17:53:34','2021-08-23 08:53:34'),(8,1,'session','ea037920a963a36efcc5b16c5c841ffd6aceb40e','2021-08-24 10:54:38','2021-08-24 01:57:12'),(9,1,'session','b0e6c058358dd2e1b610abe65645a75d3942d6c1','2021-08-31 17:35:08','2021-08-31 08:35:08');
/*!40000 ALTER TABLE `tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trackers`
--

DROP TABLE IF EXISTS `trackers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trackers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  `is_in_chlog` tinyint(1) NOT NULL DEFAULT '0',
  `position` int DEFAULT NULL,
  `is_in_roadmap` tinyint(1) NOT NULL DEFAULT '1',
  `fields_bits` int DEFAULT '0',
  `default_status_id` int DEFAULT NULL,
  `easy_color_scheme` varchar(255) DEFAULT NULL,
  `internal_name` varchar(255) DEFAULT NULL,
  `easy_external_id` varchar(255) DEFAULT NULL,
  `easy_send_invitation` tinyint(1) DEFAULT NULL,
  `easy_do_not_allow_close_if_subtasks_opened` tinyint(1) DEFAULT NULL,
  `easy_do_not_allow_close_if_no_attachments` tinyint(1) DEFAULT NULL,
  `easy_icon` varchar(255) DEFAULT NULL,
  `easy_distributed_tasks` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_trackers_on_internal_name` (`internal_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trackers`
--

LOCK TABLES `trackers` WRITE;
/*!40000 ALTER TABLE `trackers` DISABLE KEYS */;
INSERT INTO `trackers` VALUES (1,'결함',NULL,1,1,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(2,'새기능',NULL,1,2,1,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(3,'지원',NULL,0,3,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `trackers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_preferences`
--

DROP TABLE IF EXISTS `user_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_preferences` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT '0',
  `others` longtext,
  `hide_mail` tinyint(1) DEFAULT '1',
  `time_zone` varchar(255) DEFAULT NULL,
  `user_time_entry_setting` varchar(255) NOT NULL DEFAULT 'hours',
  `hours_format` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_user_preferences_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_preferences`
--

LOCK TABLES `user_preferences` WRITE;
/*!40000 ALTER TABLE `user_preferences` DISABLE KEYS */;
INSERT INTO `user_preferences` VALUES (1,1,'---\n:no_self_notified: \'1\'\n:no_notified_as_previous_assignee: \n:my_page_settings: {}\n:my_page_layout_migrated: true\n:my_page_layout:\n  left:\n  - issuesassignedtome\n  right:\n  - issuesreportedbyme\n:recently_used_project_ids: \'1\'\n:dmsf_attachments_upload_choice: \n',1,'','hours',NULL),(2,4,'---\n:no_self_notified: \'1\'\n:no_notified_as_previous_assignee: \n:my_page_layout:\n  left:\n  - issuesassignedtome\n  right:\n  - issuesreportedbyme\n:my_page_settings: {}\n',1,'','hours',NULL),(3,5,'---\n:no_self_notified: \'1\'\n:no_notified_as_previous_assignee: \'0\'\n:no_notified_if_issue_closing: \'0\'\n:no_notification_ever: \'0\'\n:number_alignment: \'0\'\n:comments_sorting: asc\n:hide_notification_passwd_expiration: \'0\'\n:disable_automatic_loading: \'0\'\n:global_time_entries_visibility: \'0\'\n:warn_on_leaving_unsaved: \'1\'\n:textarea_font: \'\'\n:my_page_layout:\n  left:\n  - issuesassignedtome\n  right:\n  - issuesreportedbyme\n:my_page_settings: {}\n',1,'','hours','short');
/*!40000 ALTER TABLE `user_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userqueries`
--

DROP TABLE IF EXISTS `userqueries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userqueries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `filters` text,
  `user_id` int NOT NULL DEFAULT '0',
  `is_public` tinyint(1) NOT NULL DEFAULT '0',
  `column_names` text,
  `sort_criteria` text,
  `group_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userqueries`
--

LOCK TABLES `userqueries` WRITE;
/*!40000 ALTER TABLE `userqueries` DISABLE KEYS */;
/*!40000 ALTER TABLE `userqueries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `login` varchar(255) NOT NULL DEFAULT '',
  `hashed_password` varchar(40) NOT NULL DEFAULT '',
  `firstname` varchar(30) NOT NULL DEFAULT '',
  `lastname` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '1',
  `last_login_on` datetime DEFAULT NULL,
  `language` varchar(5) DEFAULT '',
  `auth_source_id` int DEFAULT NULL,
  `created_on` timestamp NULL DEFAULT NULL,
  `updated_on` timestamp NULL DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `identity_url` varchar(255) DEFAULT NULL,
  `mail_notification` varchar(255) NOT NULL DEFAULT '',
  `salt` varchar(64) DEFAULT NULL,
  `must_change_passwd` tinyint(1) NOT NULL DEFAULT '0',
  `passwd_changed_on` datetime DEFAULT NULL,
  `failed_login_attempts` int NOT NULL DEFAULT '0',
  `blocked_at` datetime DEFAULT NULL,
  `twofa_scheme` varchar(255) DEFAULT NULL,
  `twofa_totp_key` varchar(255) DEFAULT NULL,
  `twofa_totp_last_used_at` int DEFAULT NULL,
  `easy_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  `easy_external_id` varchar(255) DEFAULT NULL,
  `easy_user_type_id` int DEFAULT NULL,
  `easy_lesser_admin` tinyint(1) NOT NULL DEFAULT '0',
  `easy_lesser_admin_permissions` text,
  `easy_mail_signature` text,
  `self_registered` tinyint(1) DEFAULT '0',
  `easy_digest_token` varchar(255) DEFAULT NULL,
  `sso_provider` varchar(255) DEFAULT NULL,
  `sso_uuid` varchar(255) DEFAULT NULL,
  `internal_name` varchar(255) DEFAULT NULL,
  `easy_avatar_url` varchar(255) DEFAULT NULL,
  `easy_online_status` int NOT NULL DEFAULT '0',
  `easy_online_status_changed_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_users_on_id_and_type` (`id`,`type`),
  KEY `index_users_on_auth_source_id` (`auth_source_id`),
  KEY `index_users_on_type` (`type`),
  KEY `idx_u_sso` (`sso_provider`,`sso_uuid`),
  KEY `index_users_on_easy_online_status` (`easy_online_status`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','86e4e7cb5dfb3e7498382719e78c7713ed531f78','Redmine','Admin',NULL,1,1,'2021-08-31 17:35:08','',NULL,'2021-08-23 08:09:18','2021-08-23 08:51:27','User',NULL,'all','70561e2dbbf826b520f46275b6f4f1c5',0,'2021-08-23 17:51:25',0,NULL,NULL,NULL,NULL,0,NULL,1,0,NULL,NULL,0,'eca7008360cbecead8a542bd4d328f60',NULL,NULL,NULL,NULL,0,NULL),(2,'','','','Anonymous users',NULL,0,1,NULL,'',NULL,'2021-08-23 08:09:52','2021-08-23 08:09:52','GroupAnonymous',NULL,'',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,1,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL),(3,'','','','Non member users',NULL,0,1,NULL,'',NULL,'2021-08-23 08:09:52','2021-08-23 08:09:52','GroupNonMember',NULL,'',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,1,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL),(4,'','','','Anonymous',NULL,0,0,NULL,'',NULL,'2021-08-23 08:11:54','2021-08-23 08:16:33','AnonymousUser',NULL,'only_my_events',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL),(5,'lhs','acdb80a072e40c6c684d12c59b2d15e494cd9610','이해성','대리',NULL,0,1,NULL,'ko',NULL,'2021-08-23 08:53:34','2021-08-23 08:53:34','User',NULL,'only_my_events','8d6362b934141b46fbf9ebb9aed96d13',0,'2021-08-23 17:53:34',0,NULL,NULL,NULL,NULL,0,NULL,1,0,NULL,'',0,'9b4ff9bf647cf64316828ca4dd21ccd6',NULL,NULL,NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `versions`
--

DROP TABLE IF EXISTS `versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `versions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_id` int NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `effective_date` date DEFAULT NULL,
  `created_on` timestamp NULL DEFAULT NULL,
  `updated_on` timestamp NULL DEFAULT NULL,
  `wiki_page_title` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'open',
  `sharing` varchar(255) NOT NULL DEFAULT 'none',
  `easy_version_category_id` int DEFAULT NULL,
  `easy_external_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `versions_project_id` (`project_id`),
  KEY `index_versions_on_sharing` (`sharing`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `versions`
--

LOCK TABLES `versions` WRITE;
/*!40000 ALTER TABLE `versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `watchers`
--

DROP TABLE IF EXISTS `watchers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `watchers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `watchable_type` varchar(255) NOT NULL DEFAULT '',
  `watchable_id` int NOT NULL DEFAULT '0',
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `watchers_user_id_type` (`user_id`,`watchable_type`),
  KEY `index_watchers_on_user_id` (`user_id`),
  KEY `index_watchers_on_watchable_id_and_watchable_type` (`watchable_id`,`watchable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `watchers`
--

LOCK TABLES `watchers` WRITE;
/*!40000 ALTER TABLE `watchers` DISABLE KEYS */;
/*!40000 ALTER TABLE `watchers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_content_versions`
--

DROP TABLE IF EXISTS `wiki_content_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wiki_content_versions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `wiki_content_id` int NOT NULL,
  `page_id` int NOT NULL,
  `author_id` int DEFAULT NULL,
  `data` longblob,
  `compression` varchar(6) DEFAULT '',
  `comments` varchar(1024) DEFAULT '',
  `updated_on` datetime NOT NULL,
  `version` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wiki_content_versions_wcid` (`wiki_content_id`),
  KEY `index_wiki_content_versions_on_updated_on` (`updated_on`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_content_versions`
--

LOCK TABLES `wiki_content_versions` WRITE;
/*!40000 ALTER TABLE `wiki_content_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_content_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_contents`
--

DROP TABLE IF EXISTS `wiki_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wiki_contents` (
  `id` int NOT NULL AUTO_INCREMENT,
  `page_id` int NOT NULL,
  `author_id` int DEFAULT NULL,
  `text` longtext,
  `comments` varchar(1024) DEFAULT '',
  `updated_on` datetime NOT NULL,
  `version` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wiki_contents_page_id` (`page_id`),
  KEY `index_wiki_contents_on_author_id` (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_contents`
--

LOCK TABLES `wiki_contents` WRITE;
/*!40000 ALTER TABLE `wiki_contents` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_pages`
--

DROP TABLE IF EXISTS `wiki_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wiki_pages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `wiki_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_on` datetime NOT NULL,
  `protected` tinyint(1) NOT NULL DEFAULT '0',
  `parent_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wiki_pages_wiki_id_title` (`wiki_id`,`title`),
  KEY `index_wiki_pages_on_wiki_id` (`wiki_id`),
  KEY `index_wiki_pages_on_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_pages`
--

LOCK TABLES `wiki_pages` WRITE;
/*!40000 ALTER TABLE `wiki_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_redirects`
--

DROP TABLE IF EXISTS `wiki_redirects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wiki_redirects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `wiki_id` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `redirects_to` varchar(255) DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `redirects_to_wiki_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wiki_redirects_wiki_id_title` (`wiki_id`,`title`),
  KEY `index_wiki_redirects_on_wiki_id` (`wiki_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_redirects`
--

LOCK TABLES `wiki_redirects` WRITE;
/*!40000 ALTER TABLE `wiki_redirects` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_redirects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wikis`
--

DROP TABLE IF EXISTS `wikis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wikis` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_id` int NOT NULL,
  `start_page` varchar(255) NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `wikis_project_id` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wikis`
--

LOCK TABLES `wikis` WRITE;
/*!40000 ALTER TABLE `wikis` DISABLE KEYS */;
INSERT INTO `wikis` VALUES (1,1,'Wiki',1);
/*!40000 ALTER TABLE `wikis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflows`
--

DROP TABLE IF EXISTS `workflows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workflows` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tracker_id` int NOT NULL DEFAULT '0',
  `old_status_id` int NOT NULL DEFAULT '0',
  `new_status_id` int NOT NULL DEFAULT '0',
  `role_id` int NOT NULL DEFAULT '0',
  `assignee` tinyint(1) NOT NULL DEFAULT '0',
  `author` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(30) DEFAULT NULL,
  `field_name` varchar(30) DEFAULT NULL,
  `rule` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wkfs_role_tracker_old_status` (`role_id`,`tracker_id`,`old_status_id`),
  KEY `index_workflows_on_old_status_id` (`old_status_id`),
  KEY `index_workflows_on_role_id` (`role_id`),
  KEY `index_workflows_on_new_status_id` (`new_status_id`),
  KEY `index_workflows_on_tracker_id` (`tracker_id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflows`
--

LOCK TABLES `workflows` WRITE;
/*!40000 ALTER TABLE `workflows` DISABLE KEYS */;
INSERT INTO `workflows` VALUES (1,1,1,2,3,0,0,'WorkflowTransition',NULL,NULL),(2,1,1,3,3,0,0,'WorkflowTransition',NULL,NULL),(3,1,1,4,3,0,0,'WorkflowTransition',NULL,NULL),(4,1,1,5,3,0,0,'WorkflowTransition',NULL,NULL),(5,1,1,6,3,0,0,'WorkflowTransition',NULL,NULL),(6,1,2,1,3,0,0,'WorkflowTransition',NULL,NULL),(7,1,2,3,3,0,0,'WorkflowTransition',NULL,NULL),(8,1,2,4,3,0,0,'WorkflowTransition',NULL,NULL),(9,1,2,5,3,0,0,'WorkflowTransition',NULL,NULL),(10,1,2,6,3,0,0,'WorkflowTransition',NULL,NULL),(11,1,3,1,3,0,0,'WorkflowTransition',NULL,NULL),(12,1,3,2,3,0,0,'WorkflowTransition',NULL,NULL),(13,1,3,4,3,0,0,'WorkflowTransition',NULL,NULL),(14,1,3,5,3,0,0,'WorkflowTransition',NULL,NULL),(15,1,3,6,3,0,0,'WorkflowTransition',NULL,NULL),(16,1,4,1,3,0,0,'WorkflowTransition',NULL,NULL),(17,1,4,2,3,0,0,'WorkflowTransition',NULL,NULL),(18,1,4,3,3,0,0,'WorkflowTransition',NULL,NULL),(19,1,4,5,3,0,0,'WorkflowTransition',NULL,NULL),(20,1,4,6,3,0,0,'WorkflowTransition',NULL,NULL),(21,1,5,1,3,0,0,'WorkflowTransition',NULL,NULL),(22,1,5,2,3,0,0,'WorkflowTransition',NULL,NULL),(23,1,5,3,3,0,0,'WorkflowTransition',NULL,NULL),(24,1,5,4,3,0,0,'WorkflowTransition',NULL,NULL),(25,1,5,6,3,0,0,'WorkflowTransition',NULL,NULL),(26,1,6,1,3,0,0,'WorkflowTransition',NULL,NULL),(27,1,6,2,3,0,0,'WorkflowTransition',NULL,NULL),(28,1,6,3,3,0,0,'WorkflowTransition',NULL,NULL),(29,1,6,4,3,0,0,'WorkflowTransition',NULL,NULL),(30,1,6,5,3,0,0,'WorkflowTransition',NULL,NULL),(31,2,1,2,3,0,0,'WorkflowTransition',NULL,NULL),(32,2,1,3,3,0,0,'WorkflowTransition',NULL,NULL),(33,2,1,4,3,0,0,'WorkflowTransition',NULL,NULL),(34,2,1,5,3,0,0,'WorkflowTransition',NULL,NULL),(35,2,1,6,3,0,0,'WorkflowTransition',NULL,NULL),(36,2,2,1,3,0,0,'WorkflowTransition',NULL,NULL),(37,2,2,3,3,0,0,'WorkflowTransition',NULL,NULL),(38,2,2,4,3,0,0,'WorkflowTransition',NULL,NULL),(39,2,2,5,3,0,0,'WorkflowTransition',NULL,NULL),(40,2,2,6,3,0,0,'WorkflowTransition',NULL,NULL),(41,2,3,1,3,0,0,'WorkflowTransition',NULL,NULL),(42,2,3,2,3,0,0,'WorkflowTransition',NULL,NULL),(43,2,3,4,3,0,0,'WorkflowTransition',NULL,NULL),(44,2,3,5,3,0,0,'WorkflowTransition',NULL,NULL),(45,2,3,6,3,0,0,'WorkflowTransition',NULL,NULL),(46,2,4,1,3,0,0,'WorkflowTransition',NULL,NULL),(47,2,4,2,3,0,0,'WorkflowTransition',NULL,NULL),(48,2,4,3,3,0,0,'WorkflowTransition',NULL,NULL),(49,2,4,5,3,0,0,'WorkflowTransition',NULL,NULL),(50,2,4,6,3,0,0,'WorkflowTransition',NULL,NULL),(51,2,5,1,3,0,0,'WorkflowTransition',NULL,NULL),(52,2,5,2,3,0,0,'WorkflowTransition',NULL,NULL),(53,2,5,3,3,0,0,'WorkflowTransition',NULL,NULL),(54,2,5,4,3,0,0,'WorkflowTransition',NULL,NULL),(55,2,5,6,3,0,0,'WorkflowTransition',NULL,NULL),(56,2,6,1,3,0,0,'WorkflowTransition',NULL,NULL),(57,2,6,2,3,0,0,'WorkflowTransition',NULL,NULL),(58,2,6,3,3,0,0,'WorkflowTransition',NULL,NULL),(59,2,6,4,3,0,0,'WorkflowTransition',NULL,NULL),(60,2,6,5,3,0,0,'WorkflowTransition',NULL,NULL),(61,3,1,2,3,0,0,'WorkflowTransition',NULL,NULL),(62,3,1,3,3,0,0,'WorkflowTransition',NULL,NULL),(63,3,1,4,3,0,0,'WorkflowTransition',NULL,NULL),(64,3,1,5,3,0,0,'WorkflowTransition',NULL,NULL),(65,3,1,6,3,0,0,'WorkflowTransition',NULL,NULL),(66,3,2,1,3,0,0,'WorkflowTransition',NULL,NULL),(67,3,2,3,3,0,0,'WorkflowTransition',NULL,NULL),(68,3,2,4,3,0,0,'WorkflowTransition',NULL,NULL),(69,3,2,5,3,0,0,'WorkflowTransition',NULL,NULL),(70,3,2,6,3,0,0,'WorkflowTransition',NULL,NULL),(71,3,3,1,3,0,0,'WorkflowTransition',NULL,NULL),(72,3,3,2,3,0,0,'WorkflowTransition',NULL,NULL),(73,3,3,4,3,0,0,'WorkflowTransition',NULL,NULL),(74,3,3,5,3,0,0,'WorkflowTransition',NULL,NULL),(75,3,3,6,3,0,0,'WorkflowTransition',NULL,NULL),(76,3,4,1,3,0,0,'WorkflowTransition',NULL,NULL),(77,3,4,2,3,0,0,'WorkflowTransition',NULL,NULL),(78,3,4,3,3,0,0,'WorkflowTransition',NULL,NULL),(79,3,4,5,3,0,0,'WorkflowTransition',NULL,NULL),(80,3,4,6,3,0,0,'WorkflowTransition',NULL,NULL),(81,3,5,1,3,0,0,'WorkflowTransition',NULL,NULL),(82,3,5,2,3,0,0,'WorkflowTransition',NULL,NULL),(83,3,5,3,3,0,0,'WorkflowTransition',NULL,NULL),(84,3,5,4,3,0,0,'WorkflowTransition',NULL,NULL),(85,3,5,6,3,0,0,'WorkflowTransition',NULL,NULL),(86,3,6,1,3,0,0,'WorkflowTransition',NULL,NULL),(87,3,6,2,3,0,0,'WorkflowTransition',NULL,NULL),(88,3,6,3,3,0,0,'WorkflowTransition',NULL,NULL),(89,3,6,4,3,0,0,'WorkflowTransition',NULL,NULL),(90,3,6,5,3,0,0,'WorkflowTransition',NULL,NULL),(91,1,1,2,4,0,0,'WorkflowTransition',NULL,NULL),(92,1,1,3,4,0,0,'WorkflowTransition',NULL,NULL),(93,1,1,4,4,0,0,'WorkflowTransition',NULL,NULL),(94,1,1,5,4,0,0,'WorkflowTransition',NULL,NULL),(95,1,2,3,4,0,0,'WorkflowTransition',NULL,NULL),(96,1,2,4,4,0,0,'WorkflowTransition',NULL,NULL),(97,1,2,5,4,0,0,'WorkflowTransition',NULL,NULL),(98,1,3,2,4,0,0,'WorkflowTransition',NULL,NULL),(99,1,3,4,4,0,0,'WorkflowTransition',NULL,NULL),(100,1,3,5,4,0,0,'WorkflowTransition',NULL,NULL),(101,1,4,2,4,0,0,'WorkflowTransition',NULL,NULL),(102,1,4,3,4,0,0,'WorkflowTransition',NULL,NULL),(103,1,4,5,4,0,0,'WorkflowTransition',NULL,NULL),(104,2,1,2,4,0,0,'WorkflowTransition',NULL,NULL),(105,2,1,3,4,0,0,'WorkflowTransition',NULL,NULL),(106,2,1,4,4,0,0,'WorkflowTransition',NULL,NULL),(107,2,1,5,4,0,0,'WorkflowTransition',NULL,NULL),(108,2,2,3,4,0,0,'WorkflowTransition',NULL,NULL),(109,2,2,4,4,0,0,'WorkflowTransition',NULL,NULL),(110,2,2,5,4,0,0,'WorkflowTransition',NULL,NULL),(111,2,3,2,4,0,0,'WorkflowTransition',NULL,NULL),(112,2,3,4,4,0,0,'WorkflowTransition',NULL,NULL),(113,2,3,5,4,0,0,'WorkflowTransition',NULL,NULL),(114,2,4,2,4,0,0,'WorkflowTransition',NULL,NULL),(115,2,4,3,4,0,0,'WorkflowTransition',NULL,NULL),(116,2,4,5,4,0,0,'WorkflowTransition',NULL,NULL),(117,3,1,2,4,0,0,'WorkflowTransition',NULL,NULL),(118,3,1,3,4,0,0,'WorkflowTransition',NULL,NULL),(119,3,1,4,4,0,0,'WorkflowTransition',NULL,NULL),(120,3,1,5,4,0,0,'WorkflowTransition',NULL,NULL),(121,3,2,3,4,0,0,'WorkflowTransition',NULL,NULL),(122,3,2,4,4,0,0,'WorkflowTransition',NULL,NULL),(123,3,2,5,4,0,0,'WorkflowTransition',NULL,NULL),(124,3,3,2,4,0,0,'WorkflowTransition',NULL,NULL),(125,3,3,4,4,0,0,'WorkflowTransition',NULL,NULL),(126,3,3,5,4,0,0,'WorkflowTransition',NULL,NULL),(127,3,4,2,4,0,0,'WorkflowTransition',NULL,NULL),(128,3,4,3,4,0,0,'WorkflowTransition',NULL,NULL),(129,3,4,5,4,0,0,'WorkflowTransition',NULL,NULL),(130,1,1,5,5,0,0,'WorkflowTransition',NULL,NULL),(131,1,2,5,5,0,0,'WorkflowTransition',NULL,NULL),(132,1,3,5,5,0,0,'WorkflowTransition',NULL,NULL),(133,1,4,5,5,0,0,'WorkflowTransition',NULL,NULL),(134,1,3,4,5,0,0,'WorkflowTransition',NULL,NULL),(135,2,1,5,5,0,0,'WorkflowTransition',NULL,NULL),(136,2,2,5,5,0,0,'WorkflowTransition',NULL,NULL),(137,2,3,5,5,0,0,'WorkflowTransition',NULL,NULL),(138,2,4,5,5,0,0,'WorkflowTransition',NULL,NULL),(139,2,3,4,5,0,0,'WorkflowTransition',NULL,NULL),(140,3,1,5,5,0,0,'WorkflowTransition',NULL,NULL),(141,3,2,5,5,0,0,'WorkflowTransition',NULL,NULL),(142,3,3,5,5,0,0,'WorkflowTransition',NULL,NULL),(143,3,4,5,5,0,0,'WorkflowTransition',NULL,NULL),(144,3,3,4,5,0,0,'WorkflowTransition',NULL,NULL);
/*!40000 ALTER TABLE `workflows` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-31 17:38:53
