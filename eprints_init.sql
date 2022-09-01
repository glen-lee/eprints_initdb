-- MariaDB dump 10.19  Distrib 10.9.2-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: pub
-- ------------------------------------------------------
-- Server version	10.9.2-MariaDB-1:10.9.2+maria~ubu2204

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `access`
--

DROP TABLE IF EXISTS `access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access` (
  `accessid` int(11) NOT NULL DEFAULT 0,
  `datestamp_year` smallint(6) DEFAULT NULL,
  `datestamp_month` smallint(6) DEFAULT NULL,
  `datestamp_day` smallint(6) DEFAULT NULL,
  `datestamp_hour` smallint(6) DEFAULT NULL,
  `datestamp_minute` smallint(6) DEFAULT NULL,
  `datestamp_second` smallint(6) DEFAULT NULL,
  `requester_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `requester_user_agent` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `requester_country` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `requester_institution` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `referring_entity_id` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `service_type_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `referent_id` int(11) DEFAULT NULL,
  `referent_docid` int(11) DEFAULT NULL,
  PRIMARY KEY (`accessid`),
  KEY `datestamp_year_5` (`datestamp_year`,`datestamp_month`,`datestamp_day`,`datestamp_hour`,`datestamp_minute`,`datestamp_second`),
  KEY `referent_id_0` (`referent_id`),
  KEY `referent_docid_0` (`referent_docid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access`
--

LOCK TABLES `access` WRITE;
/*!40000 ALTER TABLE `access` DISABLE KEYS */;
/*!40000 ALTER TABLE `access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `access__ordervalues_en`
--

DROP TABLE IF EXISTS `access__ordervalues_en`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access__ordervalues_en` (
  `accessid` int(11) NOT NULL DEFAULT 0,
  `datestamp` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `requester_id` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `requester_user_agent` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `requester_country` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `requester_institution` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `referring_entity_id` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `service_type_id` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `referent_id` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `referent_docid` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`accessid`),
  CONSTRAINT `access__ordervalues_en_fk` FOREIGN KEY (`accessid`) REFERENCES `access` (`accessid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access__ordervalues_en`
--

LOCK TABLES `access__ordervalues_en` WRITE;
/*!40000 ALTER TABLE `access__ordervalues_en` DISABLE KEYS */;
/*!40000 ALTER TABLE `access__ordervalues_en` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cachemap`
--

DROP TABLE IF EXISTS `cachemap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cachemap` (
  `cachemapid` int(11) NOT NULL DEFAULT 0,
  `created` int(11) DEFAULT NULL,
  `lastused` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `searchexp` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `oneshot` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`cachemapid`),
  KEY `created_0` (`created`),
  KEY `lastused_0` (`lastused`),
  KEY `userid_0` (`userid`),
  KEY `oneshot_0` (`oneshot`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cachemap`
--

LOCK TABLES `cachemap` WRITE;
/*!40000 ALTER TABLE `cachemap` DISABLE KEYS */;
/*!40000 ALTER TABLE `cachemap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cachemap__ordervalues_en`
--

DROP TABLE IF EXISTS `cachemap__ordervalues_en`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cachemap__ordervalues_en` (
  `cachemapid` int(11) NOT NULL DEFAULT 0,
  `created` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `lastused` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `userid` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `searchexp` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `oneshot` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`cachemapid`),
  CONSTRAINT `cachemap__ordervalues_en_fk` FOREIGN KEY (`cachemapid`) REFERENCES `cachemap` (`cachemapid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cachemap__ordervalues_en`
--

LOCK TABLES `cachemap__ordervalues_en` WRITE;
/*!40000 ALTER TABLE `cachemap__ordervalues_en` DISABLE KEYS */;
/*!40000 ALTER TABLE `cachemap__ordervalues_en` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `citationcache`
--

DROP TABLE IF EXISTS `citationcache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `citationcache` (
  `citationcacheid` int(11) NOT NULL DEFAULT 0,
  `datasetid` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `objectid` int(11) DEFAULT NULL,
  `style` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `citation_text` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `timestamp_year` smallint(6) DEFAULT NULL,
  `timestamp_month` smallint(6) DEFAULT NULL,
  `timestamp_day` smallint(6) DEFAULT NULL,
  `timestamp_hour` smallint(6) DEFAULT NULL,
  `timestamp_minute` smallint(6) DEFAULT NULL,
  `timestamp_second` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`citationcacheid`),
  KEY `datasetid_0` (`datasetid`),
  KEY `objectid_0` (`objectid`),
  KEY `style_0` (`style`),
  KEY `timestamp_year_5` (`timestamp_year`,`timestamp_month`,`timestamp_day`,`timestamp_hour`,`timestamp_minute`,`timestamp_second`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citationcache`
--

LOCK TABLES `citationcache` WRITE;
/*!40000 ALTER TABLE `citationcache` DISABLE KEYS */;
/*!40000 ALTER TABLE `citationcache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `citationcache__ordervalues_en`
--

DROP TABLE IF EXISTS `citationcache__ordervalues_en`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `citationcache__ordervalues_en` (
  `citationcacheid` int(11) NOT NULL DEFAULT 0,
  `datasetid` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `objectid` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `style` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `citation_text` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `timestamp` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`citationcacheid`),
  CONSTRAINT `citationcache__ordervalues_en_fk` FOREIGN KEY (`citationcacheid`) REFERENCES `citationcache` (`citationcacheid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citationcache__ordervalues_en`
--

LOCK TABLES `citationcache__ordervalues_en` WRITE;
/*!40000 ALTER TABLE `citationcache__ordervalues_en` DISABLE KEYS */;
/*!40000 ALTER TABLE `citationcache__ordervalues_en` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `counters`
--

DROP TABLE IF EXISTS `counters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `counters` (
  `countername` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `counter` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`countername`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counters`
--

LOCK TABLES `counters` WRITE;
/*!40000 ALTER TABLE `counters` DISABLE KEYS */;
INSERT INTO `counters` VALUES
('accessid',0),
('cachemapid',0),
('citationcacheid',0),
('documentid',0),
('eprintid',1),
('fileid',2),
('historyid',2),
('importid',0),
('messageid',1),
('metafieldid',0),
('requestid',0),
('savedsearchid',0),
('tripleid',0),
('userid',1);
/*!40000 ALTER TABLE `counters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document`
--

DROP TABLE IF EXISTS `document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document` (
  `docid` int(11) NOT NULL DEFAULT 0,
  `rev_number` int(11) DEFAULT NULL,
  `eprintid` int(11) DEFAULT NULL,
  `pos` int(11) DEFAULT NULL,
  `placement` int(11) DEFAULT NULL,
  `mime_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `format` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `formatdesc` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `language` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `security` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `license` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `main` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `date_embargo_year` smallint(6) DEFAULT NULL,
  `date_embargo_month` smallint(6) DEFAULT NULL,
  `date_embargo_day` smallint(6) DEFAULT NULL,
  `date_embargo_retained_year` smallint(6) DEFAULT NULL,
  `date_embargo_retained_month` smallint(6) DEFAULT NULL,
  `date_embargo_retained_day` smallint(6) DEFAULT NULL,
  `embargo_reason` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `upload_url` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `media_duration` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `media_audio_codec` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `media_video_codec` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `media_width` int(11) DEFAULT NULL,
  `media_height` int(11) DEFAULT NULL,
  `media_aspect_ratio` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `media_sample_start` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `media_sample_stop` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`docid`),
  KEY `rev_number_0` (`rev_number`),
  KEY `eprintid_0` (`eprintid`),
  KEY `pos_0` (`pos`),
  KEY `placement_0` (`placement`),
  KEY `mime_type_0` (`mime_type`),
  KEY `format_0` (`format`),
  KEY `language_0` (`language`),
  KEY `security_0` (`security`),
  KEY `license_0` (`license`),
  KEY `main_0` (`main`),
  KEY `date_embargo_year_2` (`date_embargo_year`,`date_embargo_month`,`date_embargo_day`),
  KEY `date_embargo_retained_year_2` (`date_embargo_retained_year`,`date_embargo_retained_month`,`date_embargo_retained_day`),
  KEY `embargo_reason_0` (`embargo_reason`),
  KEY `content_0` (`content`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document`
--

LOCK TABLES `document` WRITE;
/*!40000 ALTER TABLE `document` DISABLE KEYS */;
/*!40000 ALTER TABLE `document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document__index`
--

DROP TABLE IF EXISTS `document__index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document__index` (
  `fieldword` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL DEFAULT 0,
  `ids` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`fieldword`,`pos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document__index`
--

LOCK TABLES `document__index` WRITE;
/*!40000 ALTER TABLE `document__index` DISABLE KEYS */;
/*!40000 ALTER TABLE `document__index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document__index_grep`
--

DROP TABLE IF EXISTS `document__index_grep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document__index_grep` (
  `fieldname` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `grepstring` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `docid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`fieldname`,`grepstring`,`docid`),
  KEY `document__index_grep_fk` (`docid`),
  CONSTRAINT `document__index_grep_fk` FOREIGN KEY (`docid`) REFERENCES `document` (`docid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document__index_grep`
--

LOCK TABLES `document__index_grep` WRITE;
/*!40000 ALTER TABLE `document__index_grep` DISABLE KEYS */;
/*!40000 ALTER TABLE `document__index_grep` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document__ordervalues_en`
--

DROP TABLE IF EXISTS `document__ordervalues_en`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document__ordervalues_en` (
  `docid` int(11) NOT NULL DEFAULT 0,
  `rev_number` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `files` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `eprintid` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `pos` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `placement` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `mime_type` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `format` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `formatdesc` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `language` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `security` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `license` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `main` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `date_embargo` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `date_embargo_retained` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `embargo_reason` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `upload_url` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `relation` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `relation_type` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `relation_uri` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `media` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `media_duration` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `media_audio_codec` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `media_video_codec` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `media_width` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `media_height` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `media_aspect_ratio` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `media_sample_start` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `media_sample_stop` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`docid`),
  CONSTRAINT `document__ordervalues_en_fk` FOREIGN KEY (`docid`) REFERENCES `document` (`docid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document__ordervalues_en`
--

LOCK TABLES `document__ordervalues_en` WRITE;
/*!40000 ALTER TABLE `document__ordervalues_en` DISABLE KEYS */;
/*!40000 ALTER TABLE `document__ordervalues_en` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document__rindex`
--

DROP TABLE IF EXISTS `document__rindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document__rindex` (
  `field` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `word` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `docid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`field`,`word`,`docid`),
  KEY `docid_1` (`docid`,`field`),
  CONSTRAINT `document__rindex_fk` FOREIGN KEY (`docid`) REFERENCES `document` (`docid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document__rindex`
--

LOCK TABLES `document__rindex` WRITE;
/*!40000 ALTER TABLE `document__rindex` DISABLE KEYS */;
/*!40000 ALTER TABLE `document__rindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_relation_type`
--

DROP TABLE IF EXISTS `document_relation_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_relation_type` (
  `docid` int(11) NOT NULL DEFAULT 0,
  `pos` int(11) NOT NULL DEFAULT 0,
  `relation_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`docid`,`pos`),
  KEY `relation_type_0` (`relation_type`),
  CONSTRAINT `document_relation_type_fk` FOREIGN KEY (`docid`) REFERENCES `document` (`docid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_relation_type`
--

LOCK TABLES `document_relation_type` WRITE;
/*!40000 ALTER TABLE `document_relation_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_relation_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_relation_uri`
--

DROP TABLE IF EXISTS `document_relation_uri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_relation_uri` (
  `docid` int(11) NOT NULL DEFAULT 0,
  `pos` int(11) NOT NULL DEFAULT 0,
  `relation_uri` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`docid`,`pos`),
  KEY `relation_uri_0` (`relation_uri`),
  CONSTRAINT `document_relation_uri_fk` FOREIGN KEY (`docid`) REFERENCES `document` (`docid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_relation_uri`
--

LOCK TABLES `document_relation_uri` WRITE;
/*!40000 ALTER TABLE `document_relation_uri` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_relation_uri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eprint`
--

DROP TABLE IF EXISTS `eprint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eprint` (
  `eprintid` int(11) NOT NULL DEFAULT 0,
  `rev_number` int(11) DEFAULT NULL,
  `eprint_status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `importid` int(11) DEFAULT NULL,
  `source` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `dir` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `datestamp_year` smallint(6) DEFAULT NULL,
  `datestamp_month` smallint(6) DEFAULT NULL,
  `datestamp_day` smallint(6) DEFAULT NULL,
  `datestamp_hour` smallint(6) DEFAULT NULL,
  `datestamp_minute` smallint(6) DEFAULT NULL,
  `datestamp_second` smallint(6) DEFAULT NULL,
  `lastmod_year` smallint(6) DEFAULT NULL,
  `lastmod_month` smallint(6) DEFAULT NULL,
  `lastmod_day` smallint(6) DEFAULT NULL,
  `lastmod_hour` smallint(6) DEFAULT NULL,
  `lastmod_minute` smallint(6) DEFAULT NULL,
  `lastmod_second` smallint(6) DEFAULT NULL,
  `status_changed_year` smallint(6) DEFAULT NULL,
  `status_changed_month` smallint(6) DEFAULT NULL,
  `status_changed_day` smallint(6) DEFAULT NULL,
  `status_changed_hour` smallint(6) DEFAULT NULL,
  `status_changed_minute` smallint(6) DEFAULT NULL,
  `status_changed_second` smallint(6) DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `succeeds` int(11) DEFAULT NULL,
  `commentary` int(11) DEFAULT NULL,
  `metadata_visibility` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `fileinfo` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `item_issues_count` int(11) DEFAULT NULL,
  `sword_depositor` int(11) DEFAULT NULL,
  `edit_lock_user` int(11) DEFAULT NULL,
  `edit_lock_since` int(11) DEFAULT NULL,
  `edit_lock_until` int(11) DEFAULT NULL,
  `template` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `title` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `ispublished` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `keywords` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `note` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `suggestions` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `abstract` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `date_year` smallint(6) DEFAULT NULL,
  `date_month` smallint(6) DEFAULT NULL,
  `date_day` smallint(6) DEFAULT NULL,
  `date_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `publisher` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `official_url` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `id_number` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `data_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `contact_email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `full_text_status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `monograph_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `pres_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `series` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `publication` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `volume` varchar(6) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `number` varchar(6) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `article_number` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `place_of_pub` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `pagerange` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `pages` int(11) DEFAULT NULL,
  `event_title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `event_location` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `event_dates` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `event_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `patent_applicant` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `institution` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `department` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `thesis_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `thesis_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `refereed` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `isbn` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `issn` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `book_title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `edition` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `referencetext` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `output_media` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `num_pieces` int(11) DEFAULT NULL,
  `composition_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `pedagogic_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `completion_time` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `task_purpose` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `learning_level` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `gscholar_impact` int(11) DEFAULT NULL,
  `gscholar_cluster` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `gscholar_datestamp_year` smallint(6) DEFAULT NULL,
  `gscholar_datestamp_month` smallint(6) DEFAULT NULL,
  `gscholar_datestamp_day` smallint(6) DEFAULT NULL,
  `gscholar_datestamp_hour` smallint(6) DEFAULT NULL,
  `gscholar_datestamp_minute` smallint(6) DEFAULT NULL,
  `gscholar_datestamp_second` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`eprintid`),
  KEY `eprint_status_0` (`eprint_status`),
  KEY `userid_0` (`userid`),
  KEY `importid_0` (`importid`),
  KEY `datestamp_year_5` (`datestamp_year`,`datestamp_month`,`datestamp_day`,`datestamp_hour`,`datestamp_minute`,`datestamp_second`),
  KEY `lastmod_year_5` (`lastmod_year`,`lastmod_month`,`lastmod_day`,`lastmod_hour`,`lastmod_minute`,`lastmod_second`),
  KEY `status_changed_year_5` (`status_changed_year`,`status_changed_month`,`status_changed_day`,`status_changed_hour`,`status_changed_minute`,`status_changed_second`),
  KEY `type_0` (`type`),
  KEY `succeeds_0` (`succeeds`),
  KEY `metadata_visibility_0` (`metadata_visibility`),
  KEY `item_issues_count_0` (`item_issues_count`),
  KEY `sword_depositor_0` (`sword_depositor`),
  KEY `template_0` (`template`),
  KEY `ispublished_0` (`ispublished`),
  KEY `date_year_2` (`date_year`,`date_month`,`date_day`),
  KEY `date_type_0` (`date_type`),
  KEY `id_number_0` (`id_number`),
  KEY `contact_email_0` (`contact_email`),
  KEY `full_text_status_0` (`full_text_status`),
  KEY `monograph_type_0` (`monograph_type`),
  KEY `pres_type_0` (`pres_type`),
  KEY `event_type_0` (`event_type`),
  KEY `thesis_type_0` (`thesis_type`),
  KEY `thesis_name_0` (`thesis_name`),
  KEY `refereed_0` (`refereed`),
  KEY `num_pieces_0` (`num_pieces`),
  KEY `pedagogic_type_0` (`pedagogic_type`),
  KEY `gscholar_impact_0` (`gscholar_impact`),
  KEY `gscholar_cluster_0` (`gscholar_cluster`),
  KEY `gscholar_datestamp_year_5` (`gscholar_datestamp_year`,`gscholar_datestamp_month`,`gscholar_datestamp_day`,`gscholar_datestamp_hour`,`gscholar_datestamp_minute`,`gscholar_datestamp_second`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eprint`
--

LOCK TABLES `eprint` WRITE;
/*!40000 ALTER TABLE `eprint` DISABLE KEYS */;
INSERT INTO `eprint` VALUES
(1,2,'inbox',1,NULL,NULL,'disk0/00/00/00/01',NULL,NULL,NULL,NULL,NULL,NULL,2022,9,1,6,56,23,2022,9,1,6,50,2,'article',NULL,NULL,'show',NULL,NULL,NULL,1,1662015002,1662018983,NULL,'tes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `eprint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eprint__index`
--

DROP TABLE IF EXISTS `eprint__index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eprint__index` (
  `fieldword` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL DEFAULT 0,
  `ids` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`fieldword`,`pos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eprint__index`
--

LOCK TABLES `eprint__index` WRITE;
/*!40000 ALTER TABLE `eprint__index` DISABLE KEYS */;
/*!40000 ALTER TABLE `eprint__index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eprint__index_grep`
--

DROP TABLE IF EXISTS `eprint__index_grep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eprint__index_grep` (
  `fieldname` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `grepstring` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `eprintid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`fieldname`,`grepstring`,`eprintid`),
  KEY `eprint__index_grep_fk` (`eprintid`),
  CONSTRAINT `eprint__index_grep_fk` FOREIGN KEY (`eprintid`) REFERENCES `eprint` (`eprintid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eprint__index_grep`
--

LOCK TABLES `eprint__index_grep` WRITE;
/*!40000 ALTER TABLE `eprint__index_grep` DISABLE KEYS */;
/*!40000 ALTER TABLE `eprint__index_grep` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eprint__ordervalues_en`
--

DROP TABLE IF EXISTS `eprint__ordervalues_en`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eprint__ordervalues_en` (
  `eprintid` int(11) NOT NULL DEFAULT 0,
  `rev_number` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `documents` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `files` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `eprint_status` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `userid` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `importid` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `source` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `dir` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `datestamp` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `lastmod` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `status_changed` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `type` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `succeeds` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `commentary` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `metadata_visibility` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `fileinfo` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `relation` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `relation_type` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `relation_uri` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `item_issues` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `item_issues_id` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `item_issues_type` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `item_issues_description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `item_issues_timestamp` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `item_issues_status` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `item_issues_reported_by` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `item_issues_resolved_by` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `item_issues_comment` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `item_issues_count` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `sword_depositor` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `edit_lock` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `edit_lock_user` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `edit_lock_since` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `edit_lock_until` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `template` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `creators` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `creators_name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `creators_id` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `contributors` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `contributors_type` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `contributors_name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `contributors_id` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `corp_creators` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `title` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `ispublished` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `subjects` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `divisions` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `keywords` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `note` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `suggestions` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `abstract` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `date` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `date_type` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `publisher` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `official_url` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `id_number` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `data_type` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `copyright_holders` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `contact_email` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `full_text_status` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `monograph_type` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `pres_type` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `series` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `publication` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `volume` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `number` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `article_number` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `place_of_pub` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `pagerange` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `pages` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `event_title` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `event_location` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `event_dates` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `event_type` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `patent_applicant` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `institution` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `department` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `thesis_type` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `thesis_name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `refereed` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `isbn` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `issn` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `book_title` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `edition` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `editors` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `editors_name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `editors_id` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `related_url` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `related_url_url` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `related_url_type` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `referencetext` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `funders` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `projects` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `output_media` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `num_pieces` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `composition_type` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `pedagogic_type` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `completion_time` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `task_purpose` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `skill_areas` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `learning_level` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `gscholar` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `gscholar_impact` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `gscholar_cluster` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `gscholar_datestamp` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`eprintid`),
  CONSTRAINT `eprint__ordervalues_en_fk` FOREIGN KEY (`eprintid`) REFERENCES `eprint` (`eprintid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eprint__ordervalues_en`
--

LOCK TABLES `eprint__ordervalues_en` WRITE;
/*!40000 ALTER TABLE `eprint__ordervalues_en` DISABLE KEYS */;
INSERT INTO `eprint__ordervalues_en` VALUES
(1,'00000000000000000002',NULL,NULL,'User Workarea','00000000000000000001',NULL,NULL,'disk0/00/00/00/01',NULL,'2022-09-01 06:56:23','2022-09-01 06:50:02','000000',NULL,NULL,'Always Show',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00000000001662018983',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'tes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'None',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `eprint__ordervalues_en` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eprint__rindex`
--

DROP TABLE IF EXISTS `eprint__rindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eprint__rindex` (
  `field` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `word` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `eprintid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`field`,`word`,`eprintid`),
  KEY `eprintid_1` (`eprintid`,`field`),
  CONSTRAINT `eprint__rindex_fk` FOREIGN KEY (`eprintid`) REFERENCES `eprint` (`eprintid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eprint__rindex`
--

LOCK TABLES `eprint__rindex` WRITE;
/*!40000 ALTER TABLE `eprint__rindex` DISABLE KEYS */;
/*!40000 ALTER TABLE `eprint__rindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eprint_contributors_id`
--

DROP TABLE IF EXISTS `eprint_contributors_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eprint_contributors_id` (
  `eprintid` int(11) NOT NULL DEFAULT 0,
  `pos` int(11) NOT NULL DEFAULT 0,
  `contributors_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`eprintid`,`pos`),
  CONSTRAINT `eprint_contributors_id_fk` FOREIGN KEY (`eprintid`) REFERENCES `eprint` (`eprintid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eprint_contributors_id`
--

LOCK TABLES `eprint_contributors_id` WRITE;
/*!40000 ALTER TABLE `eprint_contributors_id` DISABLE KEYS */;
/*!40000 ALTER TABLE `eprint_contributors_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eprint_contributors_name`
--

DROP TABLE IF EXISTS `eprint_contributors_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eprint_contributors_name` (
  `eprintid` int(11) NOT NULL DEFAULT 0,
  `pos` int(11) NOT NULL DEFAULT 0,
  `contributors_name_family` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `contributors_name_given` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `contributors_name_lineage` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `contributors_name_honourific` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`eprintid`,`pos`),
  KEY `contributors_name_family_0` (`contributors_name_family`),
  CONSTRAINT `eprint_contributors_name_fk` FOREIGN KEY (`eprintid`) REFERENCES `eprint` (`eprintid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eprint_contributors_name`
--

LOCK TABLES `eprint_contributors_name` WRITE;
/*!40000 ALTER TABLE `eprint_contributors_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `eprint_contributors_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eprint_contributors_type`
--

DROP TABLE IF EXISTS `eprint_contributors_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eprint_contributors_type` (
  `eprintid` int(11) NOT NULL DEFAULT 0,
  `pos` int(11) NOT NULL DEFAULT 0,
  `contributors_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`eprintid`,`pos`),
  KEY `contributors_type_0` (`contributors_type`),
  CONSTRAINT `eprint_contributors_type_fk` FOREIGN KEY (`eprintid`) REFERENCES `eprint` (`eprintid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eprint_contributors_type`
--

LOCK TABLES `eprint_contributors_type` WRITE;
/*!40000 ALTER TABLE `eprint_contributors_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `eprint_contributors_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eprint_copyright_holders`
--

DROP TABLE IF EXISTS `eprint_copyright_holders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eprint_copyright_holders` (
  `eprintid` int(11) NOT NULL DEFAULT 0,
  `pos` int(11) NOT NULL DEFAULT 0,
  `copyright_holders` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`eprintid`,`pos`),
  CONSTRAINT `eprint_copyright_holders_fk` FOREIGN KEY (`eprintid`) REFERENCES `eprint` (`eprintid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eprint_copyright_holders`
--

LOCK TABLES `eprint_copyright_holders` WRITE;
/*!40000 ALTER TABLE `eprint_copyright_holders` DISABLE KEYS */;
/*!40000 ALTER TABLE `eprint_copyright_holders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eprint_corp_creators`
--

DROP TABLE IF EXISTS `eprint_corp_creators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eprint_corp_creators` (
  `eprintid` int(11) NOT NULL DEFAULT 0,
  `pos` int(11) NOT NULL DEFAULT 0,
  `corp_creators` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`eprintid`,`pos`),
  CONSTRAINT `eprint_corp_creators_fk` FOREIGN KEY (`eprintid`) REFERENCES `eprint` (`eprintid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eprint_corp_creators`
--

LOCK TABLES `eprint_corp_creators` WRITE;
/*!40000 ALTER TABLE `eprint_corp_creators` DISABLE KEYS */;
/*!40000 ALTER TABLE `eprint_corp_creators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eprint_creators_id`
--

DROP TABLE IF EXISTS `eprint_creators_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eprint_creators_id` (
  `eprintid` int(11) NOT NULL DEFAULT 0,
  `pos` int(11) NOT NULL DEFAULT 0,
  `creators_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`eprintid`,`pos`),
  CONSTRAINT `eprint_creators_id_fk` FOREIGN KEY (`eprintid`) REFERENCES `eprint` (`eprintid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eprint_creators_id`
--

LOCK TABLES `eprint_creators_id` WRITE;
/*!40000 ALTER TABLE `eprint_creators_id` DISABLE KEYS */;
/*!40000 ALTER TABLE `eprint_creators_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eprint_creators_name`
--

DROP TABLE IF EXISTS `eprint_creators_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eprint_creators_name` (
  `eprintid` int(11) NOT NULL DEFAULT 0,
  `pos` int(11) NOT NULL DEFAULT 0,
  `creators_name_family` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `creators_name_given` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `creators_name_lineage` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `creators_name_honourific` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`eprintid`,`pos`),
  KEY `creators_name_family_0` (`creators_name_family`),
  CONSTRAINT `eprint_creators_name_fk` FOREIGN KEY (`eprintid`) REFERENCES `eprint` (`eprintid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eprint_creators_name`
--

LOCK TABLES `eprint_creators_name` WRITE;
/*!40000 ALTER TABLE `eprint_creators_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `eprint_creators_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eprint_divisions`
--

DROP TABLE IF EXISTS `eprint_divisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eprint_divisions` (
  `eprintid` int(11) NOT NULL DEFAULT 0,
  `pos` int(11) NOT NULL DEFAULT 0,
  `divisions` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`eprintid`,`pos`),
  KEY `divisions_0` (`divisions`),
  CONSTRAINT `eprint_divisions_fk` FOREIGN KEY (`eprintid`) REFERENCES `eprint` (`eprintid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eprint_divisions`
--

LOCK TABLES `eprint_divisions` WRITE;
/*!40000 ALTER TABLE `eprint_divisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `eprint_divisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eprint_editors_id`
--

DROP TABLE IF EXISTS `eprint_editors_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eprint_editors_id` (
  `eprintid` int(11) NOT NULL DEFAULT 0,
  `pos` int(11) NOT NULL DEFAULT 0,
  `editors_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`eprintid`,`pos`),
  CONSTRAINT `eprint_editors_id_fk` FOREIGN KEY (`eprintid`) REFERENCES `eprint` (`eprintid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eprint_editors_id`
--

LOCK TABLES `eprint_editors_id` WRITE;
/*!40000 ALTER TABLE `eprint_editors_id` DISABLE KEYS */;
/*!40000 ALTER TABLE `eprint_editors_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eprint_editors_name`
--

DROP TABLE IF EXISTS `eprint_editors_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eprint_editors_name` (
  `eprintid` int(11) NOT NULL DEFAULT 0,
  `pos` int(11) NOT NULL DEFAULT 0,
  `editors_name_family` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `editors_name_given` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `editors_name_lineage` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `editors_name_honourific` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`eprintid`,`pos`),
  KEY `editors_name_family_0` (`editors_name_family`),
  CONSTRAINT `eprint_editors_name_fk` FOREIGN KEY (`eprintid`) REFERENCES `eprint` (`eprintid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eprint_editors_name`
--

LOCK TABLES `eprint_editors_name` WRITE;
/*!40000 ALTER TABLE `eprint_editors_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `eprint_editors_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eprint_funders`
--

DROP TABLE IF EXISTS `eprint_funders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eprint_funders` (
  `eprintid` int(11) NOT NULL DEFAULT 0,
  `pos` int(11) NOT NULL DEFAULT 0,
  `funders` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`eprintid`,`pos`),
  CONSTRAINT `eprint_funders_fk` FOREIGN KEY (`eprintid`) REFERENCES `eprint` (`eprintid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eprint_funders`
--

LOCK TABLES `eprint_funders` WRITE;
/*!40000 ALTER TABLE `eprint_funders` DISABLE KEYS */;
/*!40000 ALTER TABLE `eprint_funders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eprint_item_issues_comment`
--

DROP TABLE IF EXISTS `eprint_item_issues_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eprint_item_issues_comment` (
  `eprintid` int(11) NOT NULL DEFAULT 0,
  `pos` int(11) NOT NULL DEFAULT 0,
  `item_issues_comment` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`eprintid`,`pos`),
  CONSTRAINT `eprint_item_issues_comment_fk` FOREIGN KEY (`eprintid`) REFERENCES `eprint` (`eprintid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eprint_item_issues_comment`
--

LOCK TABLES `eprint_item_issues_comment` WRITE;
/*!40000 ALTER TABLE `eprint_item_issues_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `eprint_item_issues_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eprint_item_issues_description`
--

DROP TABLE IF EXISTS `eprint_item_issues_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eprint_item_issues_description` (
  `eprintid` int(11) NOT NULL DEFAULT 0,
  `pos` int(11) NOT NULL DEFAULT 0,
  `item_issues_description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`eprintid`,`pos`),
  CONSTRAINT `eprint_item_issues_description_fk` FOREIGN KEY (`eprintid`) REFERENCES `eprint` (`eprintid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eprint_item_issues_description`
--

LOCK TABLES `eprint_item_issues_description` WRITE;
/*!40000 ALTER TABLE `eprint_item_issues_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `eprint_item_issues_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eprint_item_issues_id`
--

DROP TABLE IF EXISTS `eprint_item_issues_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eprint_item_issues_id` (
  `eprintid` int(11) NOT NULL DEFAULT 0,
  `pos` int(11) NOT NULL DEFAULT 0,
  `item_issues_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`eprintid`,`pos`),
  KEY `item_issues_id_0` (`item_issues_id`),
  CONSTRAINT `eprint_item_issues_id_fk` FOREIGN KEY (`eprintid`) REFERENCES `eprint` (`eprintid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eprint_item_issues_id`
--

LOCK TABLES `eprint_item_issues_id` WRITE;
/*!40000 ALTER TABLE `eprint_item_issues_id` DISABLE KEYS */;
/*!40000 ALTER TABLE `eprint_item_issues_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eprint_item_issues_reported_by`
--

DROP TABLE IF EXISTS `eprint_item_issues_reported_by`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eprint_item_issues_reported_by` (
  `eprintid` int(11) NOT NULL DEFAULT 0,
  `pos` int(11) NOT NULL DEFAULT 0,
  `item_issues_reported_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`eprintid`,`pos`),
  KEY `item_issues_reported_by_0` (`item_issues_reported_by`),
  CONSTRAINT `eprint_item_issues_reported_by_fk` FOREIGN KEY (`eprintid`) REFERENCES `eprint` (`eprintid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eprint_item_issues_reported_by`
--

LOCK TABLES `eprint_item_issues_reported_by` WRITE;
/*!40000 ALTER TABLE `eprint_item_issues_reported_by` DISABLE KEYS */;
/*!40000 ALTER TABLE `eprint_item_issues_reported_by` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eprint_item_issues_resolved_by`
--

DROP TABLE IF EXISTS `eprint_item_issues_resolved_by`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eprint_item_issues_resolved_by` (
  `eprintid` int(11) NOT NULL DEFAULT 0,
  `pos` int(11) NOT NULL DEFAULT 0,
  `item_issues_resolved_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`eprintid`,`pos`),
  KEY `item_issues_resolved_by_0` (`item_issues_resolved_by`),
  CONSTRAINT `eprint_item_issues_resolved_by_fk` FOREIGN KEY (`eprintid`) REFERENCES `eprint` (`eprintid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eprint_item_issues_resolved_by`
--

LOCK TABLES `eprint_item_issues_resolved_by` WRITE;
/*!40000 ALTER TABLE `eprint_item_issues_resolved_by` DISABLE KEYS */;
/*!40000 ALTER TABLE `eprint_item_issues_resolved_by` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eprint_item_issues_status`
--

DROP TABLE IF EXISTS `eprint_item_issues_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eprint_item_issues_status` (
  `eprintid` int(11) NOT NULL DEFAULT 0,
  `pos` int(11) NOT NULL DEFAULT 0,
  `item_issues_status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`eprintid`,`pos`),
  KEY `item_issues_status_0` (`item_issues_status`),
  CONSTRAINT `eprint_item_issues_status_fk` FOREIGN KEY (`eprintid`) REFERENCES `eprint` (`eprintid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eprint_item_issues_status`
--

LOCK TABLES `eprint_item_issues_status` WRITE;
/*!40000 ALTER TABLE `eprint_item_issues_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `eprint_item_issues_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eprint_item_issues_timestamp`
--

DROP TABLE IF EXISTS `eprint_item_issues_timestamp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eprint_item_issues_timestamp` (
  `eprintid` int(11) NOT NULL DEFAULT 0,
  `pos` int(11) NOT NULL DEFAULT 0,
  `item_issues_timestamp_year` smallint(6) DEFAULT NULL,
  `item_issues_timestamp_month` smallint(6) DEFAULT NULL,
  `item_issues_timestamp_day` smallint(6) DEFAULT NULL,
  `item_issues_timestamp_hour` smallint(6) DEFAULT NULL,
  `item_issues_timestamp_minute` smallint(6) DEFAULT NULL,
  `item_issues_timestamp_second` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`eprintid`,`pos`),
  KEY `item_issues_timestamp_year_5` (`item_issues_timestamp_year`,`item_issues_timestamp_month`,`item_issues_timestamp_day`,`item_issues_timestamp_hour`,`item_issues_timestamp_minute`,`item_issues_timestamp_second`),
  CONSTRAINT `eprint_item_issues_timestamp_fk` FOREIGN KEY (`eprintid`) REFERENCES `eprint` (`eprintid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eprint_item_issues_timestamp`
--

LOCK TABLES `eprint_item_issues_timestamp` WRITE;
/*!40000 ALTER TABLE `eprint_item_issues_timestamp` DISABLE KEYS */;
/*!40000 ALTER TABLE `eprint_item_issues_timestamp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eprint_item_issues_type`
--

DROP TABLE IF EXISTS `eprint_item_issues_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eprint_item_issues_type` (
  `eprintid` int(11) NOT NULL DEFAULT 0,
  `pos` int(11) NOT NULL DEFAULT 0,
  `item_issues_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`eprintid`,`pos`),
  KEY `item_issues_type_0` (`item_issues_type`),
  CONSTRAINT `eprint_item_issues_type_fk` FOREIGN KEY (`eprintid`) REFERENCES `eprint` (`eprintid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eprint_item_issues_type`
--

LOCK TABLES `eprint_item_issues_type` WRITE;
/*!40000 ALTER TABLE `eprint_item_issues_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `eprint_item_issues_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eprint_projects`
--

DROP TABLE IF EXISTS `eprint_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eprint_projects` (
  `eprintid` int(11) NOT NULL DEFAULT 0,
  `pos` int(11) NOT NULL DEFAULT 0,
  `projects` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`eprintid`,`pos`),
  CONSTRAINT `eprint_projects_fk` FOREIGN KEY (`eprintid`) REFERENCES `eprint` (`eprintid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eprint_projects`
--

LOCK TABLES `eprint_projects` WRITE;
/*!40000 ALTER TABLE `eprint_projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `eprint_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eprint_related_url_type`
--

DROP TABLE IF EXISTS `eprint_related_url_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eprint_related_url_type` (
  `eprintid` int(11) NOT NULL DEFAULT 0,
  `pos` int(11) NOT NULL DEFAULT 0,
  `related_url_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`eprintid`,`pos`),
  KEY `related_url_type_0` (`related_url_type`),
  CONSTRAINT `eprint_related_url_type_fk` FOREIGN KEY (`eprintid`) REFERENCES `eprint` (`eprintid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eprint_related_url_type`
--

LOCK TABLES `eprint_related_url_type` WRITE;
/*!40000 ALTER TABLE `eprint_related_url_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `eprint_related_url_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eprint_related_url_url`
--

DROP TABLE IF EXISTS `eprint_related_url_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eprint_related_url_url` (
  `eprintid` int(11) NOT NULL DEFAULT 0,
  `pos` int(11) NOT NULL DEFAULT 0,
  `related_url_url` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`eprintid`,`pos`),
  CONSTRAINT `eprint_related_url_url_fk` FOREIGN KEY (`eprintid`) REFERENCES `eprint` (`eprintid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eprint_related_url_url`
--

LOCK TABLES `eprint_related_url_url` WRITE;
/*!40000 ALTER TABLE `eprint_related_url_url` DISABLE KEYS */;
/*!40000 ALTER TABLE `eprint_related_url_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eprint_relation_type`
--

DROP TABLE IF EXISTS `eprint_relation_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eprint_relation_type` (
  `eprintid` int(11) NOT NULL DEFAULT 0,
  `pos` int(11) NOT NULL DEFAULT 0,
  `relation_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`eprintid`,`pos`),
  CONSTRAINT `eprint_relation_type_fk` FOREIGN KEY (`eprintid`) REFERENCES `eprint` (`eprintid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eprint_relation_type`
--

LOCK TABLES `eprint_relation_type` WRITE;
/*!40000 ALTER TABLE `eprint_relation_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `eprint_relation_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eprint_relation_uri`
--

DROP TABLE IF EXISTS `eprint_relation_uri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eprint_relation_uri` (
  `eprintid` int(11) NOT NULL DEFAULT 0,
  `pos` int(11) NOT NULL DEFAULT 0,
  `relation_uri` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`eprintid`,`pos`),
  CONSTRAINT `eprint_relation_uri_fk` FOREIGN KEY (`eprintid`) REFERENCES `eprint` (`eprintid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eprint_relation_uri`
--

LOCK TABLES `eprint_relation_uri` WRITE;
/*!40000 ALTER TABLE `eprint_relation_uri` DISABLE KEYS */;
/*!40000 ALTER TABLE `eprint_relation_uri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eprint_skill_areas`
--

DROP TABLE IF EXISTS `eprint_skill_areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eprint_skill_areas` (
  `eprintid` int(11) NOT NULL DEFAULT 0,
  `pos` int(11) NOT NULL DEFAULT 0,
  `skill_areas` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`eprintid`,`pos`),
  CONSTRAINT `eprint_skill_areas_fk` FOREIGN KEY (`eprintid`) REFERENCES `eprint` (`eprintid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eprint_skill_areas`
--

LOCK TABLES `eprint_skill_areas` WRITE;
/*!40000 ALTER TABLE `eprint_skill_areas` DISABLE KEYS */;
/*!40000 ALTER TABLE `eprint_skill_areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eprint_subjects`
--

DROP TABLE IF EXISTS `eprint_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eprint_subjects` (
  `eprintid` int(11) NOT NULL DEFAULT 0,
  `pos` int(11) NOT NULL DEFAULT 0,
  `subjects` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`eprintid`,`pos`),
  KEY `subjects_0` (`subjects`),
  CONSTRAINT `eprint_subjects_fk` FOREIGN KEY (`eprintid`) REFERENCES `eprint` (`eprintid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eprint_subjects`
--

LOCK TABLES `eprint_subjects` WRITE;
/*!40000 ALTER TABLE `eprint_subjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `eprint_subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_queue`
--

DROP TABLE IF EXISTS `event_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_queue` (
  `eventqueueid` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `cleanup` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `start_time_year` smallint(6) DEFAULT NULL,
  `start_time_month` smallint(6) DEFAULT NULL,
  `start_time_day` smallint(6) DEFAULT NULL,
  `start_time_hour` smallint(6) DEFAULT NULL,
  `start_time_minute` smallint(6) DEFAULT NULL,
  `start_time_second` smallint(6) DEFAULT NULL,
  `end_time_year` smallint(6) DEFAULT NULL,
  `end_time_month` smallint(6) DEFAULT NULL,
  `end_time_day` smallint(6) DEFAULT NULL,
  `end_time_hour` smallint(6) DEFAULT NULL,
  `end_time_minute` smallint(6) DEFAULT NULL,
  `end_time_second` smallint(6) DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `pluginid` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `action` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `params` blob DEFAULT NULL,
  PRIMARY KEY (`eventqueueid`),
  KEY `cleanup_0` (`cleanup`),
  KEY `priority_0` (`priority`),
  KEY `start_time_year_5` (`start_time_year`,`start_time_month`,`start_time_day`,`start_time_hour`,`start_time_minute`,`start_time_second`),
  KEY `end_time_year_5` (`end_time_year`,`end_time_month`,`end_time_day`,`end_time_hour`,`end_time_minute`,`end_time_second`),
  KEY `status_0` (`status`),
  KEY `userid_0` (`userid`),
  KEY `pluginid_0` (`pluginid`),
  KEY `action_0` (`action`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_queue`
--

LOCK TABLES `event_queue` WRITE;
/*!40000 ALTER TABLE `event_queue` DISABLE KEYS */;
INSERT INTO `event_queue` VALUES
('00670bc3c083fd33abb0f6bf5107b31a','TRUE',NULL,2022,9,1,6,56,7,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/TX\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('0107d4b482f2f8535bbff67ea93e3e1d','TRUE',NULL,2022,9,1,6,55,59,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/KDC\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('01af7d3a3c71f14580cea658bc170409','TRUE',NULL,2022,9,1,6,55,52,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/sch_bio'),
('01ea23979eb4b6ea904c4f3c78df3a5a','TRUE',NULL,2022,9,1,6,56,5,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/RE\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('01f13c576962700aa2e0edb4426c46d1','TRUE',NULL,2022,9,1,6,55,53,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/BH'),
('01f83858f418a9704434fddcbb101495','TRUE',NULL,2022,9,1,6,56,0,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/LB1501\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('0203ae8b84a1db26adfbac84b0738ef6','TRUE',NULL,2022,9,1,6,56,2,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/PD\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('0211ff2f11011282724c288ceabc490d','TRUE',NULL,2022,9,1,6,55,52,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/sch_med\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('02368c164253f938b8bac5bb1c4f14e2','TRUE',NULL,2022,9,1,6,56,2,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/PD'),
('046eb922ab8dc4e00381efae0c575fbc','TRUE',NULL,2022,9,1,6,56,7,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/TJ\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('04be7b387c13c15c12afb4379f6ee820','TRUE',NULL,2022,9,1,6,56,4,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/QK'),
('05536f1d7db1343ed4acc4a2747ae530','TRUE',NULL,2022,9,1,6,55,53,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/BS\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('059e2dab9b0207a9a368ce0d40168783','TRUE',NULL,2022,9,1,6,56,5,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/RS'),
('05a8e2f35c671f9f5d7d097a5eca76ea','TRUE',NULL,2022,9,1,6,55,59,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/JN101'),
('064e381f68a26083d22a01dc3ff77465','TRUE',NULL,2022,9,1,6,56,4,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/QP\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('06686af0832dde41fc73bcb80522034e','TRUE',NULL,2022,9,1,6,56,3,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/QA76\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('066dc2dd7ebaf0f38ac4d5f976082cf2','TRUE',NULL,2022,9,1,6,56,1,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/N1'),
('0736f62270ef735b22406e1733db64d2','TRUE',NULL,2022,9,1,6,56,8,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/ZA4450'),
('07e5256b0cc6cdfad84a54dd28a388ff','TRUE',NULL,2022,9,1,6,55,56,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/F1001\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('0824062145601040d87ce250597ff77e','TRUE',NULL,2022,9,1,6,56,23,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',1,NULL,'Event::Indexer','index','	\0\0\0\n/id/eprint/1\nlastmod\nedit_lock_until\ntitle'),
('08391356de3afb044fc834470d7a46b9','TRUE',NULL,2022,9,1,6,56,1,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/NE'),
('08af230ede847df674904c1dbd0344f4','TRUE',NULL,2022,9,1,6,55,55,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/D731\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('08c3cf12e2c01b7f3828600c5894b7f2','TRUE',NULL,2022,9,1,6,56,0,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/L1\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('0910b07bd92073d39b71b68a848760bb','TRUE',NULL,2022,9,1,6,55,58,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/HQ\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('098ac9883a40701f52ff3e6c40b105f0','TRUE',NULL,2022,9,1,6,55,51,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/sch_civ\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('09aca0b981f2290fd89dc345032a4a00','TRUE',NULL,2022,9,1,6,56,8,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/Z004'),
('09deeac0f1d64f2bf0e1c5cd4473475f','TRUE',NULL,2022,9,1,6,56,4,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/RA1001'),
('0a53bf6ebc6b7fec5785ae40ce47f480','TRUE',NULL,2022,9,1,6,56,6,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/S1\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('0b033a436f33ae01e1b997f4b0950f3e','TRUE',NULL,2022,9,1,6,55,54,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/CJ'),
('0b7e929df38d81c74acc5b7de106a9cf','TRUE',NULL,2022,9,1,6,56,5,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/RA1001\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('0b9c2b47f7540447338bf328ac243ce9','TRUE',NULL,2022,9,1,6,55,54,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/BV1460'),
('0cb0bbcce45cb149d7a29c687d15eb09','TRUE',NULL,2022,9,1,6,56,2,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/PC\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('0cb768ed2895c8656e75af645c66f6c3','TRUE',NULL,2022,9,1,6,55,54,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/CR'),
('0d93ff57e15cbc97328394247e334739','TRUE',NULL,2022,9,1,6,55,51,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/fac_law'),
('0da05977255e089c1bab723621d9d50e','TRUE',NULL,2022,9,1,6,56,2,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/PB1501'),
('0dde5ba5b29d0097480df19bac10de90','TRUE',NULL,2022,9,1,6,55,56,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0\r/id/subject/F'),
('0f5040b93793863b1f1c7b51fc4e185e','TRUE',NULL,2022,9,1,6,55,53,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/BQ'),
('0feeca809bc5f9224e83c8e9df2e7173','TRUE',NULL,2022,9,1,6,56,5,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/RC1200\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('1041ff0743a34788779c9379b8425297','TRUE',NULL,2022,9,1,6,55,56,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/DK'),
('104d0385e3c3b871bf369915d70de80d','TRUE',NULL,2022,9,1,6,55,52,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/sch_bio\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('11da68a9a121b4c7bf860da9f86e870a','TRUE',NULL,2022,9,1,6,56,3,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/QA75'),
('1454592ae26a96979a3056e74a7eaa99','TRUE',NULL,2022,9,1,6,56,1,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/M1\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('148c0bb013f402a59afb6ce3dc2f6968','TRUE',NULL,2022,9,1,6,56,0,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/LF\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('15925b9cba65dfaef97dc8cf2a76ebf9','TRUE',NULL,2022,9,1,6,56,4,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/QH426'),
('1630479e55b8fda081cf50edd63e1beb','TRUE',NULL,2022,9,1,6,56,4,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/QM\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('164e0046970d00935ad096955ec53254','TRUE',NULL,2022,9,1,6,55,57,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/HA'),
('16ed054736f627effbf74be1123c6575','TRUE',NULL,2022,9,1,6,56,2,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/PJ'),
('1780536ae6d1fcbbba692a7a509515f5','TRUE',NULL,2022,9,1,6,55,59,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/JS\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('17ee844f3f5ba9cf9d1c4c9792b9b627','TRUE',NULL,2022,9,1,6,55,53,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/BP\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('17fb26e976e1cf6429735b86d8d93867','TRUE',NULL,2022,9,1,6,56,4,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/QR355'),
('189b8f4f537de7239a60dbd8e063aa78','TRUE',NULL,2022,9,1,6,55,56,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/F001\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('18ca30f7efc32c0fbe7d8adffd2116d2','TRUE',NULL,2022,9,1,6,56,1,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/NC'),
('19948f31338401a1d8cd32761dd2a12c','TRUE',NULL,2022,9,1,6,56,1,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/ND\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('19bc6837d985b3e34bd359ea5491ca68','TRUE',NULL,2022,9,1,6,56,5,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/RJ101'),
('1a8b4287ea658a12d5aad9d3e08a0ccc','TRUE',NULL,2022,9,1,6,56,0,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/LE'),
('1ae70b8cf630f4a27774628676e9118f','TRUE',NULL,2022,9,1,6,55,59,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/JQ\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('1c62c6568d5fdf3db14b322ce22c0d56','TRUE',NULL,2022,9,1,6,56,4,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/QH426\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('1cc658f847a5ce29ef2c8846efd7305f','TRUE',NULL,2022,9,1,6,55,57,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/HA\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('1d90b263af75bfa4b97432b0c90357d8','TRUE',NULL,2022,9,1,6,55,57,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n\r/id/subject/G\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('1dd109fa23202259513691d15ecface6','TRUE',NULL,2022,9,1,6,55,59,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/JN\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('1e29f55ea00f229c0380616c5b968720','TRUE',NULL,2022,9,1,6,55,58,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/HV'),
('1e8a59e97452d58ab95284c7cc8aef4a','TRUE',NULL,2022,9,1,6,56,3,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/PN1990\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('1eee731a39b363d9fa4c2d061c088477','TRUE',NULL,2022,9,1,6,55,52,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/fac_med'),
('20c3a9ac89f0038ac37bfb1c8ac636ff','TRUE',NULL,2022,9,1,6,55,54,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/BX\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('2117817e74b9e1faa4a6733d7d1f80b3','TRUE',NULL,2022,9,1,6,56,7,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/TH\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('21c8d604e1af33302770971d16af97b5','TRUE',NULL,2022,9,1,6,55,56,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0\r/id/subject/G'),
('21f1c94cb50ccd04bb97e414a4f280cd','TRUE',NULL,2022,9,1,6,56,3,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/QA'),
('22b97e2cd86f59fdf313861bfbec66ea','TRUE',NULL,2022,9,1,6,56,2,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/PK'),
('22ba7a1edc4849d4f55dc08230b7b219','TRUE',NULL,2022,9,1,6,56,1,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0\r/id/subject/N'),
('22d792165eb010ec24c13b7cac899491','TRUE',NULL,2022,9,1,6,55,51,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/sch_mat'),
('2342bfd9af95c19ebde6ab450497bf74','TRUE',NULL,2022,9,1,6,55,52,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/sch_med'),
('24467e25119ea74c54f96f60ae06017c','TRUE',NULL,2022,9,1,6,56,7,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/TR'),
('25a626bead3ab184b71dca0bd68e19e7','TRUE',NULL,2022,9,1,6,56,6,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/T201'),
('25a80cdd0c4e90b8e4dc8f61d985141d','TRUE',NULL,2022,9,1,6,55,52,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/AC'),
('25e289200f03349108b1e9b0ce5d0cc8','TRUE',NULL,2022,9,1,6,56,1,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/LT\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('260b5b22ab02851e8b0b8e844b76b1e7','TRUE',NULL,2022,9,1,6,55,54,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/CD\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('262e35ce8e49084143f07d60f74124d6','TRUE',NULL,2022,9,1,6,55,57,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n\r/id/subject/H\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('263f5feb84a0312e59e41dc993ca9ba4','TRUE',NULL,2022,9,1,6,55,53,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0\r/id/subject/B'),
('26b49e0f6c504f3889c9dda1ca51b4d2','TRUE',NULL,2022,9,1,6,55,56,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/E151\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('26bcbfae85f04cde3d69bc40f88d2c61','TRUE',NULL,2022,9,1,6,55,53,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/BJ'),
('26cb85f3db456f41e9f7c062930dedea','TRUE',NULL,2022,9,1,6,55,57,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/GF\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('271161ab8cd4b8781e74dcddfd7668cc','TRUE',NULL,2022,9,1,6,55,56,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/DL\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('2735d4a7be1560ff506c529b1577b11b','TRUE',NULL,2022,9,1,6,56,8,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n\r/id/subject/Z\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('273dc9f3592c5c9663f555c069398d74','TRUE',NULL,2022,9,1,6,56,1,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0\r/id/subject/M'),
('276b9334feba3fe6dc84475d9a78542c','TRUE',NULL,2022,9,1,6,56,3,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/PN0080\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('27991c0d9103a97d07014b54295be072','TRUE',NULL,2022,9,1,6,56,6,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0\r/id/subject/S'),
('281f4e8602e39cc3bc7d7c9c4984f74a','TRUE',NULL,2022,9,1,6,56,5,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/RJ\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('284102220165e842877adab3d43d8166','TRUE',NULL,2022,9,1,6,56,1,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n\r/id/subject/M\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('28fa038823e2ef89a5beff71675c03e8','TRUE',NULL,2022,9,1,6,56,4,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/QD\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('2908156d1eea9cf5f3b8ca54b70d56a7','TRUE',NULL,2022,9,1,6,56,7,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0\r/id/subject/V'),
('29c3c7617a631a0e968d4ec9ae2a52eb','TRUE',NULL,2022,9,1,6,55,53,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/B1\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('2a2c01b2f9eab259f207a3819cf13c99','TRUE',NULL,2022,9,1,6,55,53,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/BQ\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('2abfc6db54266c8f6ffb12105cd854c4','TRUE',NULL,2022,9,1,6,56,7,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n\r/id/subject/U\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('2aee833b913e9f9c69a001670db1f023','TRUE',NULL,2022,9,1,6,56,6,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/TC'),
('2b2f5adc7f1774f3e5fc03d39f767900','TRUE',NULL,2022,9,1,6,55,54,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0\r/id/subject/C'),
('2b3682d58807e0fe6b824545243f2c16','TRUE',NULL,2022,9,1,6,55,59,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/JF\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('2b36fa6d33a04a3c173f1d31ea96041a','TRUE',NULL,2022,9,1,6,55,53,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/B1'),
('2c234cc8968ec4541b04674cdbe04942','TRUE',NULL,2022,9,1,6,56,1,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/LG\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('2c2d8b3ee263c318815293ef7960627e','TRUE',NULL,2022,9,1,6,56,4,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/QM'),
('2cc96c50e310e236547ecc91b172fdfa','TRUE',NULL,2022,9,1,6,55,54,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/CD'),
('2cfcaf2b0346beb18310fedd3b874acb','TRUE',NULL,2022,9,1,6,55,57,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/HB\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('2efb6f06ed4130194f2efbf3ada8c702','TRUE',NULL,2022,9,1,6,56,0,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/LB1501'),
('2f3acff88a05e5435b62a30c6b94c406','TRUE',NULL,2022,9,1,6,55,55,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/D111'),
('300dcbbe27675cd99690be3537bb3bc9','TRUE',NULL,2022,9,1,6,55,53,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/BR\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('3038fb8fe86f46558f1b822e301b4d34','TRUE',NULL,2022,9,1,6,55,51,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/fac_eng'),
('307fe19029aaf29f9a82eb2bba654d63','TRUE',NULL,2022,9,1,6,55,55,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/D890\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('30c659fae3c87758987d8e828d591a43','TRUE',NULL,2022,9,1,6,55,55,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/D880'),
('313ed00b432b2ba5ce8c797190f7d8ce','TRUE',NULL,2022,9,1,6,55,54,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/CN'),
('315fe828bb57cbe69bd801e0ea4fecba','TRUE',NULL,2022,9,1,6,55,58,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/HS\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('316ec4453e5f190515bf33c6a4d9f035','TRUE',NULL,2022,9,1,6,55,57,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/HD28\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('3267f79d75e166d464608849e269855b','TRUE',NULL,2022,9,1,6,55,52,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/sch_psy\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('341122db3d350801a4631befdecad830','TRUE',NULL,2022,9,1,6,55,58,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/HN'),
('34f2027a628804905dc5c8dce552cce1','TRUE',NULL,2022,9,1,6,55,58,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/HV\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('35060e18bf28b23bec22713fb6f3e584','TRUE',NULL,2022,9,1,6,56,7,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/TG'),
('359bb5ddd58571c3793288cc1ef8d97e','TRUE',NULL,2022,9,1,6,55,51,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/sch_civ'),
('362052e65d7c6ef54a4928d1930f8bda','TRUE',NULL,2022,9,1,6,56,4,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/QH301'),
('36e9bc2930fc9a3a272b7dfe2eb04d38','TRUE',NULL,2022,9,1,6,55,53,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/AZ\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('37857aeb50fabaae5aca40a90ca5ebaa','TRUE',NULL,2022,9,1,6,55,58,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/HF5601'),
('37c91283111622bc78dea4e14221b9bb','TRUE',NULL,2022,9,1,6,55,58,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/HT'),
('38014b3672b336c45b2777d0f1f930ac','TRUE',NULL,2022,9,1,6,55,53,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/BT'),
('39d7f14329d185398155f7c99dec69e7','TRUE',NULL,2022,9,1,6,56,0,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/LB1603'),
('39f6a5f4760e9a2dde947ffadf2f27bf','TRUE',NULL,2022,9,1,6,55,57,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/HB'),
('3a1bb0c39dd8f81ef84566f4604c277c','TRUE',NULL,2022,9,1,6,55,54,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/CR\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('3a3620370a917d6bd1bfa82c75e34d07','TRUE',NULL,2022,9,1,6,56,5,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/RC'),
('3a52a84089869bb0018138830f4bf20d','TRUE',NULL,2022,9,1,6,55,57,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/GB\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('3b024d0e5da3e74c2b815c35ddf32120','TRUE',NULL,2022,9,1,6,55,55,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/DF'),
('3b986f772ef741617ee7123ed32bfa55','TRUE',NULL,2022,9,1,6,56,3,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/PT'),
('3c11ce3982c44cb9712cbbadc0c7909e','TRUE',NULL,2022,9,1,6,56,2,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/PF'),
('3c6ba2bdf98bb802864d311e61e9a3b2','TRUE',NULL,2022,9,1,6,55,52,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/AZ'),
('3cbb58bf6a24aa829860689a109830a5','TRUE',NULL,2022,9,1,6,55,51,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/sch_phy\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('3d87fe9610c6b8820421fa290dc8458d','TRUE',NULL,2022,9,1,6,55,56,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/DR'),
('3dd142824afae837f80c989f5d607872','TRUE',NULL,2022,9,1,6,56,3,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/PN2000\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('3dd95ceb7d8e1ecd1a9d4153eb2a1a88','TRUE',NULL,2022,9,1,6,56,4,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/QC\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('3e217c8dece1bab3d1e58383fc5801a0','TRUE',NULL,2022,9,1,6,56,0,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/KF\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('3e4f9c3e38b7dcec3df68591d2e4a5a6','TRUE',NULL,2022,9,1,6,55,55,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/DC\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('3ee62f8e1ce4d096f428dd880b9daad4','TRUE',NULL,2022,9,1,6,55,59,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/JZ\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('3f1c08ae941f74ba53f2d3dd6f6c1606','TRUE',NULL,2022,9,1,6,56,0,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/LF'),
('3f41bfe14adad2ffa9c2d834dcbe231f','TRUE',NULL,2022,9,1,6,55,53,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/BM\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('3f9845af93fae275192df8aa7c601fdf','TRUE',NULL,2022,9,1,6,56,2,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/PL'),
('3fa979e72b9697fdc6575a71906ff727','TRUE',NULL,2022,9,1,6,55,59,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/JC\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('3fac92f55aca6f70937f31c52db81e42','TRUE',NULL,2022,9,1,6,56,6,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/TC\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('4237db3a4df64e1fe02d007c95423277','TRUE',NULL,2022,9,1,6,55,54,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/CD921'),
('42d2cc1ce8c763f7a49a129a379c968e','TRUE',NULL,2022,9,1,6,55,54,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/BV\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('44980b97c044c84540975afbb6d38dc0','TRUE',NULL,2022,9,1,6,56,8,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/ZA4450\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('4530b4a165a5435953bd55f7c8785af2','TRUE',NULL,2022,9,1,6,56,6,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/SF'),
('45461d4297c2cb6744dff1c0c242cfc8','TRUE',NULL,2022,9,1,6,56,6,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/RX\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('45c74f60fd55904942a60fda75637391','TRUE',NULL,2022,9,1,6,55,52,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/sch_edu\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('45de0e75b3bdab332479c29a55c6c439','TRUE',NULL,2022,9,1,6,55,52,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/sch_man\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('468697d8bab7a445ffad69b89bd69d29','TRUE',NULL,2022,9,1,6,56,0,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/LB2361'),
('49ace56fadf13ead5c97d5da97b0f151','TRUE',NULL,2022,9,1,6,56,3,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/PN1990'),
('4a5faeb62da778cbd6394b327b446fba','TRUE',NULL,2022,9,1,6,56,5,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/RM\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('4a8999b784f17105eca4086de3f1961d','TRUE',NULL,2022,9,1,6,56,2,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/PI'),
('4b301d372ea2a355fd636120a09d1cf2','TRUE',NULL,2022,9,1,6,55,56,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/DJK'),
('4b5a11f7cbddef4da8ad6c3a67ac6cf6','TRUE',NULL,2022,9,1,6,56,5,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/RC0254'),
('4bd3ff642e98bf729db3245e9c768c9a','TRUE',NULL,2022,9,1,6,56,3,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/PZ\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('4c28b2f3e965ba769b5ec7104db569b9','TRUE',NULL,2022,9,1,6,56,6,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/T1\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('4c846509d6fdbfb41a832a5ed4ff2f97','TRUE',NULL,2022,9,1,6,55,51,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/divisions'),
('4df536d688b8c4dafec80782e863908e','TRUE',NULL,2022,9,1,6,55,55,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/DA\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('4e33cd2f18e47614a42b08bad8eab18a','TRUE',NULL,2022,9,1,6,56,2,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/PH'),
('4e52b625f42d03c53142fdf0c98cbe4c','TRUE',NULL,2022,9,1,6,56,2,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/PG\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('4e5cc646c098974c87466f51e2f9aebf','TRUE',NULL,2022,9,1,6,55,57,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/HD'),
('4eb25e413b84566324aa16403827da21','TRUE',NULL,2022,9,1,6,56,4,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/QH301\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('4f9be5d89739989ebd3b6898c9986ec6','TRUE',NULL,2022,9,1,6,55,56,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/DS'),
('50149f364cf8572fa8ec3770b7d1a901','TRUE',NULL,2022,9,1,6,56,5,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/RV\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('5122349991b89c9ecdfe9335ce4efdae','TRUE',NULL,2022,9,1,6,55,58,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/JA'),
('514df933adbf1ee9d2a43947ecd0d54a','TRUE',NULL,2022,9,1,6,55,54,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n\r/id/subject/D\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('52525a348aa035904504d9da2da7798d','TRUE',NULL,2022,9,1,6,55,56,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/DP'),
('52a1d344113761ece330d6b2557b3c4b','TRUE',NULL,2022,9,1,6,55,51,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/sch_che'),
('52cba6cede662ca7a436e0b97112393e','TRUE',NULL,2022,9,1,6,55,58,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/J1'),
('53ae60e8b383aba979c293e6580466e8','TRUE',NULL,2022,9,1,6,56,2,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/PA\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('54fd132cabb59412f730f1a64d75ca5f','TRUE',NULL,2022,9,1,6,55,58,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/HE\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('552f2a12514bcf57758d2be2f777e7f5','TRUE',NULL,2022,9,1,6,55,52,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/sch_law\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('555eda7a8f933d5fe1540e275c325cae','TRUE',NULL,2022,9,1,6,56,7,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/TN'),
('556f637c727e05cc3e040800d8fa383b','TRUE',NULL,2022,9,1,6,55,54,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/D1\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('55a88417a49d97993d37fda8806430c6','TRUE',NULL,2022,9,1,6,56,1,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/NC\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('55f5199f03adbf3c507f7b99e8d8e6db','TRUE',NULL,2022,9,1,6,56,5,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/RJ101\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('5628b0406e7290967096df0f4baa00c0','TRUE',NULL,2022,9,1,6,56,4,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/QR'),
('5637e0729448f4f6be9cd874ffe9f821','TRUE',NULL,2022,9,1,6,56,3,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/PR'),
('5683117ef93c83fbcbb7862784ba2f10','TRUE',NULL,2022,9,1,6,55,59,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/JX'),
('56d6798addd8f1175220209371b8ad47','TRUE',NULL,2022,9,1,6,55,57,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/GE\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('58382a1a76778ccd574d46abf63c7ae2','TRUE',NULL,2022,9,1,6,56,8,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/Z719'),
('58a45183168cc2b91d0db38aa550c6cd','TRUE',NULL,2022,9,1,6,56,2,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/PB'),
('58c4ad0049631308db2195f60dd87e4a','TRUE',NULL,2022,9,1,6,56,5,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/RG'),
('59890d5aaf10e4b673d87b44191d5ef5','TRUE',NULL,2022,9,1,6,56,3,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/PN1993\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('599cfd3c0cfbd0d6562e177c15da1de8','TRUE',NULL,2022,9,1,6,56,4,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0\r/id/subject/R'),
('59d560cf47aa5f6bcdaa66c75c16c25d','TRUE',NULL,2022,9,1,6,56,5,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/RL\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('5a06afd09b8ac1c4c7a2035b1d8423f2','TRUE',NULL,2022,9,1,6,55,57,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/GE'),
('5a681730436f7b6c260bb1b96b4110a8','TRUE',NULL,2022,9,1,6,56,1,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/NE\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('5ad8db2f1322bb8c2956ffc422807686','TRUE',NULL,2022,9,1,6,56,7,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/U1\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('5b13168706f0660cc84b7ae047fd39eb','TRUE',NULL,2022,9,1,6,55,59,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/JV\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('5b17cc02643b0d36ca02a5bd52055c87','TRUE',NULL,2022,9,1,6,56,4,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/QR180'),
('5b34e6082171330c19ac2235458f1dd0','TRUE',NULL,2022,9,1,6,56,7,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/TK'),
('5c0d10db599a3bf65ff5af53838dba4b','TRUE',NULL,2022,9,1,6,55,58,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/HM'),
('5c6ba2f487f912acd166410a7c45199b','TRUE',NULL,2022,9,1,6,56,4,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/RA\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('5cd54dd3b7af384a14fb28d7efaac12e','TRUE',NULL,2022,9,1,6,55,52,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/AI\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('5cf3e3822c2cd753089d58b106b0b4a7','TRUE',NULL,2022,9,1,6,55,56,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/F1001'),
('5e382aead3a2aea564e5181274b651b0','TRUE',NULL,2022,9,1,6,56,1,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/NB'),
('5e7201dfe66fd58ec2272e608ba0671f','TRUE',NULL,2022,9,1,6,55,53,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/BD'),
('5ea3d149c2d9a92b6ccaa5602a045ee5','TRUE',NULL,2022,9,1,6,56,5,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/RD\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('5fba23ef745bcaf4b3451d22497db3b0','TRUE',NULL,2022,9,1,6,56,2,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/PB\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('5ff7dac4259f8035034807e6c1787565','TRUE',NULL,2022,9,1,6,55,52,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/subjects\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('600dc37277b3dce511ee432add25df6d','TRUE',NULL,2022,9,1,6,55,58,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n\r/id/subject/J\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('602f791fe0ec595e2b85c0ec1b980f04','TRUE',NULL,2022,9,1,6,56,7,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0\r/id/subject/U'),
('603f6b8e11bdd931aa442b6e426a00eb','TRUE',NULL,2022,9,1,6,55,55,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/D501\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('60d393bbc5ada4429b9e3b9bf68dbba0','TRUE',NULL,2022,9,1,6,56,1,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/NX'),
('628db945186d30a8c7550f560c4fa96d','TRUE',NULL,2022,9,1,6,55,57,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/GF'),
('62d2c2b5f3f872e7020044e89fbaac15','TRUE',NULL,2022,9,1,6,56,2,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/PN0080'),
('6392e12c463da64efece2d669cfb9ac7','TRUE',NULL,2022,9,1,6,55,57,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/H1'),
('64cfa7f4626228227753addef844e5e9','TRUE',NULL,2022,9,1,6,55,57,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/GT\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('64ff0590e45efa7e14a5e35fb40a3dd6','TRUE',NULL,2022,9,1,6,56,7,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/TJ'),
('657355c15f2de0a2ce10a3831e8b049a','TRUE',NULL,2022,9,1,6,56,1,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/N1\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('65d148e503933b52170803ee65a36828','TRUE',NULL,2022,9,1,6,56,6,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/TA\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('65d38d5a2b591ac46e3e5d626a3afd22','TRUE',NULL,2022,9,1,6,56,0,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/LA\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('66c76ee6fb5d0c0bade9a0a20e7db71a','TRUE',NULL,2022,9,1,6,56,0,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/LB2300\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('670af77cddd813f10caa4e7081f562df','TRUE',NULL,2022,9,1,6,56,1,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/NK\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('674b1e5b5eb4994992192eb56e4dc1fa','TRUE',NULL,2022,9,1,6,55,57,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/HD28'),
('67b0cffaeffc58988aee5a6c6e5d3f11','TRUE',NULL,2022,9,1,6,55,54,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/C1'),
('67f68e2ab2eca5d553ddc2487c34f1a5','TRUE',NULL,2022,9,1,6,55,58,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/HN\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('68306c024b0257ffa8a500c729bdc907','TRUE',NULL,2022,9,1,6,55,55,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/D839'),
('68440c72300f83a587e8ff0a404f615b','TRUE',NULL,2022,9,1,6,55,54,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/CB'),
('687bc053734ac44c9932f4ab2335a012','TRUE',NULL,2022,9,1,6,55,53,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/BC'),
('6a027949daa2acc2b49117db65288491','TRUE',NULL,2022,9,1,6,56,0,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/LB\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('6a78942805a30f63378e31c05ebe1731','TRUE',NULL,2022,9,1,6,56,5,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/RG\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('6b4418c66b3012eacff4ce0d3bc40013','TRUE',NULL,2022,9,1,6,56,3,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/PQ'),
('6b7b99a4240f2bd9ddd06c897619d9db','TRUE',NULL,2022,9,1,6,56,0,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/LC\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('6bcfce8c74419ab958c52586515a2a28','TRUE',NULL,2022,9,1,6,56,0,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/LC'),
('6cb0f3867efb50f781b749c71c3f8564','TRUE',NULL,2022,9,1,6,56,2,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/PI\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('6cd795e8c696d119a22c8f0a2ef84c17','TRUE',NULL,2022,9,1,6,56,6,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n\r/id/subject/T\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('6da3433e2d062d4937485146e9f8b52a','TRUE',NULL,2022,9,1,6,56,8,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/ZA'),
('6e2c429f3d66d6ee1e6781305d7f0a0b','TRUE',NULL,2022,9,1,6,55,59,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/JL'),
('6e69e47c23803895016dfb15d32aa1c5','TRUE',NULL,2022,9,1,6,56,7,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/TX'),
('6f27397cc4b6d0432e6a4528da38f292','TRUE',NULL,2022,9,1,6,56,6,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/SB\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('6fe5fdb0e72b908a480175fb79753f35','TRUE',NULL,2022,9,1,6,56,6,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/TF'),
('7067e931907f1ee155d7b1cde07fb174','TRUE',NULL,2022,9,1,6,56,4,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/RA0421\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('70a1470744d7195c06837c44b88d387d','TRUE',NULL,2022,9,1,6,56,7,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/VM'),
('70ca92cb3719cf675402584b5e2ec219','TRUE',NULL,2022,9,1,6,56,1,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/P1'),
('711f1a87b303e94d8ff4ab4db4e961cb','TRUE',NULL,2022,9,1,6,55,53,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/BP'),
('739e984310aca5453ea2d521cfd294f1','TRUE',NULL,2022,9,1,6,56,0,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n\r/id/subject/L\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('73b547e8892f1d2750f1a03a0b05fd20','TRUE',NULL,2022,9,1,6,56,5,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/RL'),
('751af4a3df1ce1c280e55d6254802058','TRUE',NULL,2022,9,1,6,55,57,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/H1\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('76759e9c80d97b5f5a8961e34f82e1a2','TRUE',NULL,2022,9,1,6,55,59,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/KDC'),
('779c13ebeee90bea2376dd72199a8027','TRUE',NULL,2022,9,1,6,56,3,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/QC'),
('78000c8bde0938271e9af770600bcab9','TRUE',NULL,2022,9,1,6,55,59,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/JL\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('78d16e67b5ae26493093a91e8429be0b','TRUE',NULL,2022,9,1,6,55,56,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/DP\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('78e12a983670a01ad8563770e543f5d5','TRUE',NULL,2022,9,1,6,56,6,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/SB'),
('7928aaf96607d03b3d55203c2188f0c1','TRUE',NULL,2022,9,1,6,55,54,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/CT\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('7a2dd1d7bc0bb9ee585c5b1fa49ce02c','TRUE',NULL,2022,9,1,6,55,51,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/sch_eng'),
('7b051afac6921ddf2a169a3d4fdfa489','TRUE',NULL,2022,9,1,6,55,56,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/E151'),
('7c0c9843668db46638b3d3654dd29dbf','TRUE',NULL,2022,9,1,6,56,5,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/RF'),
('7c7e6049342b47c6e1f9284debac68da','TRUE',NULL,2022,9,1,6,56,2,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/PH\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('7cac821a6036b765d3a33c017150eddf','TRUE',NULL,2022,9,1,6,55,54,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/CS'),
('7d47ac9d140bf08c9270909cbd58ea0a','TRUE',NULL,2022,9,1,6,56,2,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/PJ\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('7dcdbffe6f4eee2a483c04ad02efb36a','TRUE',NULL,2022,9,1,6,56,1,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/NK'),
('7dd0fed8299e6ba7e88bfa2197f138bb','TRUE',NULL,2022,9,1,6,55,56,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/F1201'),
('7df03208966d29c9feb114e886c03c86','TRUE',NULL,2022,9,1,6,56,3,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/Q1'),
('7dfef11abf0270489394846540cb9e57','TRUE',NULL,2022,9,1,6,56,1,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/NB\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('7f5398fdff84fa1fb7ec37fa70a25f7a','TRUE',NULL,2022,9,1,6,55,54,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/CE\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('7fe50a12fbef9fb5abae6f5f8235b74f','TRUE',NULL,2022,9,1,6,55,59,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/JN1187\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('7fee51960b2ea977dbf072aa2a29fcfa','TRUE',NULL,2022,9,1,6,55,56,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/E11'),
('80e32fbd97ea9fd0f2a48ce61573030c','TRUE',NULL,2022,9,1,6,55,59,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/JC'),
('812932fa2db7473de20a0c51402a09b9','TRUE',NULL,2022,9,1,6,55,53,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/BF'),
('8188eebbe69850eb6cbded2a6e6fd602','TRUE',NULL,2022,9,1,6,55,58,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/HG\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('81ee40f4407aab995f7c049943b071c9','TRUE',NULL,2022,9,1,6,55,51,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/sch_che\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('81fb16114b007fc5d923d3ea5e995221','TRUE',NULL,2022,9,1,6,50,2,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',1,NULL,'Event::RDF','clear_triples','	\0\0\0\n/id/eprint/1'),
('8366175962e4f15e8a39dc0badba2d01','TRUE',NULL,2022,9,1,6,56,2,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/PM\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('83b4d24ebe48b078c2a13b7026b224d2','TRUE',NULL,2022,9,1,6,55,53,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/BJ\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('83ed79af3b0638111af4cccd61b3b75a','TRUE',NULL,2022,9,1,6,56,7,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/TP'),
('842c86c0fafff03f6064b4950be33238','TRUE',NULL,2022,9,1,6,55,55,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/DB\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('84302e66deb74a9e4dddb3ee9c5aaa98','TRUE',NULL,2022,9,1,6,55,59,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/JF'),
('8576428e7f30288b045a229244c90835','TRUE',NULL,2022,9,1,6,55,55,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/DD'),
('864ba341fa53ec572c06ba4a19d40cf2','TRUE',NULL,2022,9,1,6,56,3,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/Q1\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('8657af294a93bdccedb13550a804e0a6','TRUE',NULL,2022,9,1,6,55,55,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/D204\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('86b5a263df33d407c2d9be25f94b4402','TRUE',NULL,2022,9,1,6,56,2,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/P1\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('871e9b2f4b8b3d5494ca8bc0d926b6df','TRUE',NULL,2022,9,1,6,56,6,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/T1'),
('875117135467de5931e8a40806f36673','TRUE',NULL,2022,9,1,6,56,6,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/SF\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('87d2859a3259731184edf0fc7346f2f7','TRUE',NULL,2022,9,1,6,55,58,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/J1\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('884bd47fe9f5f74e85bcee1de40129aa','TRUE',NULL,2022,9,1,6,55,58,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/HD61\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('88664babb2248843f87d7b26ca91c69c','TRUE',NULL,2022,9,1,6,55,51,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/sch_ecs\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('886c0049ca7c193ac8fb24f3f8838014','TRUE',NULL,2022,9,1,6,55,55,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/DF\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('888e9f07a6768da352ba9067c618784b','TRUE',NULL,2022,9,1,6,55,55,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/DD\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('89052f8ffa06f4651ab1e67f7cffd458','TRUE',NULL,2022,9,1,6,56,6,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/RX'),
('89950a1502fa818fec4faaba5f844bbe','TRUE',NULL,2022,9,1,6,55,59,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/JN'),
('8a18fc7eac2de979d564f9c63b089139','TRUE',NULL,2022,9,1,6,55,56,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/DU'),
('8c136d99694f0ceb981ab3fba7ee9702','TRUE',NULL,2022,9,1,6,55,52,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/AM\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('8c97a5034dc9a257503972a29a8698c2','TRUE',NULL,2022,9,1,6,55,53,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/BF\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('8c982f4692334e90e1635a74649935c5','TRUE',NULL,2022,9,1,6,55,55,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/D501'),
('8cc0f4959c135d5152c0c4c6b6fb6009','TRUE',NULL,2022,9,1,6,55,59,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/KD\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('8ec311a7817c2b15635059e6dd478b75','TRUE',NULL,2022,9,1,6,55,52,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/sch_art'),
('8ed850a3c32991fd1ab2eb3a7573fb7e','TRUE',NULL,2022,9,1,6,55,55,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/DE'),
('8eefb51445588d203a2d43ed5f33024c','TRUE',NULL,2022,9,1,6,55,52,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/AS'),
('8f1bfe23a8c9955705915364b087ed24','TRUE',NULL,2022,9,1,6,56,7,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/TS'),
('9023f1a97705e9eb5e20afd03f1b5312','TRUE',NULL,2022,9,1,6,55,51,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/sch_mat\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('9041ff4574136f4a493f3c684141487f','TRUE',NULL,2022,9,1,6,56,3,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/QA76'),
('908f8d8a5ba8301e57b51ef6306b9f56','TRUE',NULL,2022,9,1,6,55,56,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/DT\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('9372ffeb14734b65dd284f9be4f14140','TRUE',NULL,2022,9,1,6,56,0,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/LD\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('9394af5424a15341d7876346305f140c','TRUE',NULL,2022,9,1,6,56,1,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0\r/id/subject/P'),
('93b4233cfae6ad70546253329243bc88','TRUE',NULL,2022,9,1,6,56,3,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/PN0441\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('940655bd41f0e0b5f93aa95492a88310','TRUE',NULL,2022,9,1,6,50,2,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',1,NULL,'Event::Indexer','index','	\0\0\0\n\n/id/eprint/1\n\reprint_status\nstatus_changed\neprintid\nuserid\ndir\nfull_text_status\nlastmod\ntype\nmetadata_visibility'),
('9414efe69d05ef00ef7a7381966bd0d6','TRUE',NULL,2022,9,1,6,55,52,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/sch_soc\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('94a5d0231e50d42807ad96635665a156','TRUE',NULL,2022,9,1,6,55,52,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/sch_hum\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('94a98eae816a3bb20feeccb9cbb17bee','TRUE',NULL,2022,9,1,6,55,55,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/DA'),
('950d9aca1fc7353f66b45241f9a16a01','TRUE',NULL,2022,9,1,6,55,57,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/GN\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('9535ea6d071159f1b5033aeef6965c61','TRUE',NULL,2022,9,1,6,56,5,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/RB\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('957c28bc1c0010263ccc09e022663645','TRUE',NULL,2022,9,1,6,56,1,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/NX\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('95eaa2077c091636d8c846537b7bd501','TRUE',NULL,2022,9,1,6,55,57,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/GA'),
('96276eac5ab326b1960404d30512649c','TRUE',NULL,2022,9,1,6,55,51,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/sch_ecs'),
('96b8f810e0766ef7a396632e01d120c5','TRUE',NULL,2022,9,1,6,56,1,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/MT\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('96ffa4fcba68760f37eef0564a94fedd','TRUE',NULL,2022,9,1,6,56,0,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/LC5201'),
('9703b41760084a9d4f829d15e3cfcda5','TRUE',NULL,2022,9,1,6,55,57,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/HC\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('970574a6dd3724594c2234bff8ac6541','TRUE',NULL,2022,9,1,6,55,54,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/CN\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('97808591018599623c712d5d68e78aa4','TRUE',NULL,2022,9,1,6,55,58,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/HX\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('97c29fdaa909d58c85225d1d87499dd4','TRUE',NULL,2022,9,1,6,55,58,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/HT\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('98ddb3baabba39a9b43508edba8c3712','TRUE',NULL,2022,9,1,6,55,58,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/HF\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('997d630ec4379013a8b2f5ea5dcc63a6','TRUE',NULL,2022,9,1,6,56,3,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/PT\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('99879033d3e4ad89aa1a68f6de99c367','TRUE',NULL,2022,9,1,6,56,4,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/QD'),
('9a9d713cbb98375c2ed04b3f9737b170','TRUE',NULL,2022,9,1,6,56,5,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/RS\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('9b1bd545baef97b515d66d33b18097bb','TRUE',NULL,2022,9,1,6,56,7,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/TH'),
('9b548b427b0bbd499861f909674d32bd','TRUE',NULL,2022,9,1,6,56,1,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/MT'),
('9b56eef59b400a36356dfe39e65b9a1f','TRUE',NULL,2022,9,1,6,55,57,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/GB'),
('9c03c985f4888b458a1109c8266b4c71','TRUE',NULL,2022,9,1,6,55,53,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n\r/id/subject/B\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('9cb969957f769d661643e1766ea8419d','TRUE',NULL,2022,9,1,6,56,5,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/RB'),
('9d4434b49c05ce682d3cb25db2bcd28c','TRUE',NULL,2022,9,1,6,56,8,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/Z665\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('9d6405b756d0547067d28046e108bdde','TRUE',NULL,2022,9,1,6,56,3,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/PN2000'),
('9dfe9988dab953ec247c426c44751594','TRUE',NULL,2022,9,1,6,56,7,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/TT'),
('9e5736b6f5bfd33c46c081130472fe96','TRUE',NULL,2022,9,1,6,55,58,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/HF5601\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('9ec1db44430ae5549c8373c7a6a86f7b','TRUE',NULL,2022,9,1,6,56,0,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/LB'),
('9ee0a4569370ac4142d673163107754e','TRUE',NULL,2022,9,1,6,56,6,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/TE\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('9f0f0711c1d974823d81a3fb4231c44b','TRUE',NULL,2022,9,1,6,55,59,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/JZ'),
('9f4b35b0a47823d7fb3b144c9faf52ca','TRUE',NULL,2022,9,1,6,56,6,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/SH'),
('9f51947015e25399f3ab88a470565afa','TRUE',NULL,2022,9,1,6,56,8,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/Z665'),
('9f6ead1faedcbf48413a3292afd1afd4','TRUE',NULL,2022,9,1,6,56,1,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n\r/id/subject/N\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('a05abd42ad84f132a47a49751c88ca8b','TRUE',NULL,2022,9,1,6,56,0,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/LE\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('a0656f6de49469bdc0e2bdb2649f76c9','TRUE',NULL,2022,9,1,6,55,55,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/D204'),
('a0c5a1c390060319b9b283c8e0e5950c','TRUE',NULL,2022,9,1,6,56,4,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/QH'),
('a1130b516f0b01ead06f5fd0e61f2d14','TRUE',NULL,2022,9,1,6,56,0,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/KZ'),
('a23dac94c797a9e224fad411b359b61a','TRUE',NULL,2022,9,1,6,56,6,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/SK'),
('a281f41c7bb8b2f6794a3b12200bf065','TRUE',NULL,2022,9,1,6,55,58,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/HJ'),
('a2a17d299b66d5ab573996006eed2e0b','TRUE',NULL,2022,9,1,6,56,3,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/QB'),
('a2c6d10056c5100bb3a4f00855faec97','TRUE',NULL,2022,9,1,6,56,5,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/RD'),
('a329ca82fbbd49b34b00fbdd5a602c8b','TRUE',NULL,2022,9,1,6,56,5,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/RC1200'),
('a37228010e71e1a4eef8e5a8bf417529','TRUE',NULL,2022,9,1,6,56,2,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/PC'),
('a3f26a5e25d4edeecc003446eb8c095b','TRUE',NULL,2022,9,1,6,55,52,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/AS\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('a48c69b3cc2e5f7fa498c55667829325','TRUE',NULL,2022,9,1,6,56,3,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/QB\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('a48da57de6fac282eeae8f25fac9d448','TRUE',NULL,2022,9,1,6,55,57,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/GA\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('a4b5a548ad4350b8d3a10778e194414e','TRUE',NULL,2022,9,1,6,56,5,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/RJ'),
('a4b67922d6c49352ca39420f71ecb036','TRUE',NULL,2022,9,1,6,56,4,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/QR\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('a4e04f6b2d7a262b2fd92f3806a91aa2','TRUE',NULL,2022,9,1,6,56,6,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/TA'),
('a53933fccd05404a50b22182cba333e6','TRUE',NULL,2022,9,1,6,56,4,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/QR180\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('a563cbd7e76e157dc890d56245d16b58','TRUE',NULL,2022,9,1,6,56,7,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/TN\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('a5b2a4ead6b609743698c1cdc12c10c7','TRUE',NULL,2022,9,1,6,56,3,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/PN1993'),
('a5c28a00e48d7cf2bfeb10dc6f3e01b7','TRUE',NULL,2022,9,1,6,56,3,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/PR\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('a5e158afafab8bc44c1e0573dcc1afbd','TRUE',NULL,2022,9,1,6,56,0,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/LD'),
('a5fa41e48501fd15fc2031f2774a5270','TRUE',NULL,2022,9,1,6,56,4,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/R1'),
('a62d64f1935b7bd561881b5472323359','TRUE',NULL,2022,9,1,6,55,57,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/HC'),
('a64fef28ec0c4d780735e736092a112e','TRUE',NULL,2022,9,1,6,56,5,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/RC0321\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('a91a83b11d8293dc3fa25ac3bd1a0b25','TRUE',NULL,2022,9,1,6,56,6,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/SD\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('aa187147d62de2516361b26af5042101','TRUE',NULL,2022,9,1,6,55,56,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/DH'),
('aa671585188f0f443b5862b1d95deecf','TRUE',NULL,2022,9,1,6,56,7,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/U1'),
('aad3c561dc24dd0647555f7b7c78ea60','TRUE',NULL,2022,9,1,6,55,53,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/BL'),
('aaf09e9bedd55615b9e56464be4293ea','TRUE',NULL,2022,9,1,6,55,52,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/sch_art\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('aaf731c7b4d2600f2c53b3099aa29860','TRUE',NULL,2022,9,1,6,55,54,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/CC'),
('ab22b0ab07405458cf2ee25e5df3bd72','TRUE',NULL,2022,9,1,6,56,4,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/R1\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('ab33766dd0dc785245d161084729906c','TRUE',NULL,2022,9,1,6,55,57,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/GR'),
('ab704c990945d279ec226aa9f124a923','TRUE',NULL,2022,9,1,6,55,54,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/CS\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('abcacdd24eaa5618998d762be24793c8','TRUE',NULL,2022,9,1,6,56,5,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/RV'),
('ac3c965ed1e17ec5fef883ac5378b65b','TRUE',NULL,2022,9,1,6,55,52,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/sch_man'),
('ad114727a23fde91ca68df65c239908a','TRUE',NULL,2022,9,1,6,56,5,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/RC0254\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('ad7f66231cf79484f277e49fd66fba8e','TRUE',NULL,2022,9,1,6,56,1,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/ML\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('ad8fa36c12502618c822c88ddf84bc91','TRUE',NULL,2022,9,1,6,56,7,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/TR\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('ae6dc4f693a4841c1401e167b2688210','TRUE',NULL,2022,9,1,6,56,6,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/RZ'),
('ae8b7b45f73b773715cbc10d3f7cde3d','TRUE',NULL,2022,9,1,6,55,51,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/sch_geo'),
('af1b86b73038ddafa141b821667998bc','TRUE',NULL,2022,9,1,6,55,58,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/HX'),
('aff74dd57243c3941c5fc52de40500c4','TRUE',NULL,2022,9,1,6,56,3,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/PQ\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('b0592fd0b65f884ff408870b1ed62ae0','TRUE',NULL,2022,9,1,6,56,2,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/PF\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('b07c605f75a6258876911b036246b566','TRUE',NULL,2022,9,1,6,55,52,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/fac_law\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('b1460d78a649b32e338e67842c952c5e','TRUE',NULL,2022,9,1,6,55,53,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/BR'),
('b14987fbf8c0ab16b8498c93ae260e4f','TRUE',NULL,2022,9,1,6,56,4,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/RA0421'),
('b1663796f81ca5d3d9d1246e08dc35bf','TRUE',NULL,2022,9,1,6,55,56,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/E11\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('b16d0d102ff261f9e30c742a923ca111','TRUE',NULL,2022,9,1,6,55,57,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/GT'),
('b1ada1ced7232ba93ab56318b3483453','TRUE',NULL,2022,9,1,6,55,57,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/HD\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('b1cea906a3d45966b391481fdf87f56e','TRUE',NULL,2022,9,1,6,55,58,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/HM\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('b219cbd0b8acabb25583032ed092a4ef','TRUE',NULL,2022,9,1,6,56,4,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/RA'),
('b2a39afb73248c42066d5c71cf49feba','TRUE',NULL,2022,9,1,6,55,54,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n\r/id/subject/C\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('b32a358b9676e5f9f5211263ecf1d9a1','TRUE',NULL,2022,9,1,6,56,6,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/SD'),
('b32cc0349237c7f6dcbb58d6add3c2fe','TRUE',NULL,2022,9,1,6,55,54,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/C1\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('b36e33fd1147004f602e7db2a3efa367','TRUE',NULL,2022,9,1,6,55,53,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/BC\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('b381843dacbba01f798661890ff4852a','TRUE',NULL,2022,9,1,6,55,59,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0\r/id/subject/K'),
('b39df765dd8e75b6afb1fa1b8edaee91','TRUE',NULL,2022,9,1,6,56,8,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/ZA4050'),
('b3cda0f38f1a5064b35d354143503185','TRUE',NULL,2022,9,1,6,55,56,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/DJ\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('b4a931e452a1e2c82a170e8c4e584a40','TRUE',NULL,2022,9,1,6,55,52,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/AC\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('b613bc9df6b10d18de7312eb44f76a6c','TRUE',NULL,2022,9,1,6,56,4,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/QP'),
('b67f919f837706f077c3363b154ec4eb','TRUE',NULL,2022,9,1,6,55,52,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/sch_hum'),
('b6c3cbc70cd2ef1cd8394044187833a0','TRUE',NULL,2022,9,1,6,55,57,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/GV'),
('b6d99b745e76f74cac6777c9f4c9293d','TRUE',NULL,2022,9,1,6,56,1,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/LT'),
('b83ccd45dd49f339855243054352e4eb','TRUE',NULL,2022,9,1,6,55,52,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/sch_law'),
('b85a330e9cb456d360417042e1076385','TRUE',NULL,2022,9,1,6,55,58,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/HF'),
('b97845943c547a1000500b4c134e99d5','TRUE',NULL,2022,9,1,6,55,54,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/BV1460\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('b9a7d365dd179bdcca36726d52a4011c','TRUE',NULL,2022,9,1,6,56,3,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/QA75\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('ba5de3b105e132169dd2101c5a5cee3e','TRUE',NULL,2022,9,1,6,56,4,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/QL'),
('ba82755ec8583da60dfc3f8638f64453','TRUE',NULL,2022,9,1,6,55,54,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/BX'),
('baa3923ec1b7c984f046f4971ffca336','TRUE',NULL,2022,9,1,6,55,55,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/DE\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('bad0317c6fd75f3f0103409276fc82ba','TRUE',NULL,2022,9,1,6,55,53,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/BM'),
('bb38efb8d5f4f603d1202dbe2ad0ee2b','TRUE',NULL,2022,9,1,6,32,19,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0\n\n/id/user/1'),
('bbf70e861dcda1bb06be7dd562a28ef3','TRUE',NULL,2022,9,1,6,56,3,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/QA\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('bc1d5a93cc8d71139dd4896855285cff','TRUE',NULL,2022,9,1,6,56,7,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/V1'),
('bc7e9b304609af0b7c9ee318cfd08204','TRUE',NULL,2022,9,1,6,56,5,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/RC0321'),
('bc84522a61c022a3078f21a836a994f6','TRUE',NULL,2022,9,1,6,55,57,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/GN'),
('bcb8fd51d36287f9d517f64daf94539c','TRUE',NULL,2022,9,1,6,55,57,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/GC'),
('bcc44947ecc572f2a616eb0acae7a617','TRUE',NULL,2022,9,1,6,55,58,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/HE'),
('bcd94aff104fd1c03e4132e7bfd20be5','TRUE',NULL,2022,9,1,6,55,56,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/DS\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('bcebf244b3209e235cf09db2ea6f1dc3','TRUE',NULL,2022,9,1,6,55,55,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/DAW\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('bd2df6e4907ca14301a1754e2eca9202','TRUE',NULL,2022,9,1,6,55,58,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/JA\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('bd5d720988ff5770e929ce722c8a76cb','TRUE',NULL,2022,9,1,6,56,5,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/RC\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('be4faf50a1a20c374a85fcc2efa6fb80','TRUE',NULL,2022,9,1,6,56,5,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/RK\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('be7d5c5c7532cbd0d83b3b61c464abe6','TRUE',NULL,2022,9,1,6,55,53,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/BT\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('bf1698e88cc91c3cc72cd7ce42f19a69','TRUE',NULL,2022,9,1,6,55,55,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/D731'),
('c0662a3bd2a09f5adb6aed894ae161f8','TRUE',NULL,2022,9,1,6,55,54,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/CD921\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('c0a641b55f61df16ace6711091fe6fe2','TRUE',NULL,2022,9,1,6,55,56,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/DK\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('c12f44838f5f6aa09ce7653a9a2121ad','TRUE',NULL,2022,9,1,6,55,52,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/AM'),
('c1464617ab7fcff46884986fab114f51','TRUE',NULL,2022,9,1,6,55,53,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/BD\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('c16b7ef6e9c958d15e7f152557bb840e','TRUE',NULL,2022,9,1,6,56,2,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/PN'),
('c1af18ae113606be3d37e413bbc3b9e2','TRUE',NULL,2022,9,1,6,56,6,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/T201\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('c26ee672ebbd203a2bc05d214c0bdc1f','TRUE',NULL,2022,9,1,6,55,51,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/fac_eng\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('c2a0c2311f578b021f6c85875e4ac200','TRUE',NULL,2022,9,1,6,56,4,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/QE'),
('c376ec53c5c416455e3cc293bd34c32d','TRUE',NULL,2022,9,1,6,56,0,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0\r/id/subject/L'),
('c3b3b9e89a79e4aa88943cee59d9d5e0','TRUE',NULL,2022,9,1,6,55,57,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0\r/id/subject/H'),
('c40c98b34465ac4a93364ef9cab0f593','TRUE',NULL,2022,9,1,6,56,4,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/QH\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('c47759a189a5e3c14ec71ed13c0e4fbe','TRUE',NULL,2022,9,1,6,55,59,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/JX\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('c51112880aca46da982f7663ba6dc931','TRUE',NULL,2022,9,1,6,55,55,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/D839\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('c53d464c42428afadea96a4c791532d9','TRUE',NULL,2022,9,1,6,55,59,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/JS'),
('c596e5709a6a1b12f4dbb19d46e81587','TRUE',NULL,2022,9,1,6,56,7,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/TT\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('c63b2df615d27bd4067c57687d8a7307','TRUE',NULL,2022,9,1,6,55,55,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/DG'),
('c6845c6fa1a0f5565a4d7bd8e03f7ffb','TRUE',NULL,2022,9,1,6,56,6,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/TD\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('c76ac4b6f387d9b848bcf4c4263b8fd0','TRUE',NULL,2022,9,1,6,55,53,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/BL\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('c78f1d748f4837b40e07470417979dc3','TRUE',NULL,2022,9,1,6,56,6,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0\r/id/subject/T'),
('c805a9097ff25d3bdbd832ac1d4bfbfb','TRUE',NULL,2022,9,1,6,56,0,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/KF'),
('c8d000aa0e6ec5a63d2fe7506937c771','TRUE',NULL,2022,9,1,6,55,56,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/DR\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('c8fba87d0b753a8ed0fce930e80c4fb7','TRUE',NULL,2022,9,1,6,55,57,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/HD61'),
('c93b2ea4de9da47b711b6021f7908d8f','TRUE',NULL,2022,9,1,6,56,5,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/RM'),
('c9531f303e8dc80c526d573d0a146528','TRUE',NULL,2022,9,1,6,56,2,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/PK\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('c9820795b45641c6c68b04b1fe9d590b','TRUE',NULL,2022,9,1,6,55,59,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/JV'),
('c98521080fc7eb39102bb59ce1626146','TRUE',NULL,2022,9,1,6,55,51,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/sch_eng\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('ca455046dbac3f58ae98fc7db58954ee','TRUE',NULL,2022,9,1,6,56,0,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/L1'),
('ca70baa4086aa6dfb454817ee020ccd1','TRUE',NULL,2022,9,1,6,56,1,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/NA\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('cab1b963c8c6576d0c00ef0c08310857','TRUE',NULL,2022,9,1,6,56,4,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/QR355\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('cc7521d17ac9e6498bd5b4724cf2ef48','TRUE',NULL,2022,9,1,6,55,54,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/CC\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('cced0c23a5fa194f34d59909e542751c','TRUE',NULL,2022,9,1,6,55,58,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/HJ\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('cd3797e03e1bf0d79e73ee565d191dda','TRUE',NULL,2022,9,1,6,56,2,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/PA'),
('cdf7822c38ba3a2724c95a65a200fb5b','TRUE',NULL,2022,9,1,6,56,6,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/SK\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('ce611757e9233f30f7f09950763a872d','TRUE',NULL,2022,9,1,6,56,1,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/NA'),
('ce660862f4fe61bad45be2cae31117be','TRUE',NULL,2022,9,1,6,55,53,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/BH\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('ce669a0d6c1c1ac453611abe92b3030c','TRUE',NULL,2022,9,1,6,55,59,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/JK'),
('ce679f392a9c221a84b8cb57c2fbad07','TRUE',NULL,2022,9,1,6,56,6,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n\r/id/subject/S\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('ce7995ee8c11828f79dde490c3c334f9','TRUE',NULL,2022,9,1,6,56,7,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/TK\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('cedaccbcb7e035241ee9dfb72036f905','TRUE',NULL,2022,9,1,6,56,0,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/LB2300'),
('cf853bfee6efd34c27e963c776b0ced9','TRUE',NULL,2022,9,1,6,55,54,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0\r/id/subject/D'),
('d043bbb3b3751153f9eb8727f2d5904f','TRUE',NULL,2022,9,1,6,56,7,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/TF\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('d1084c4b56871048c7cfc6f1d972a081','TRUE',NULL,2022,9,1,6,55,54,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/CE'),
('d1908ea69e0ffc844a970b03a91e010c','TRUE',NULL,2022,9,1,6,56,7,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n\r/id/subject/V\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('d2de42083f8307bd682d59fed4b5089a','TRUE',NULL,2022,9,1,6,56,1,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/ML'),
('d321c753621dcf49443ac287db6638f7','TRUE',NULL,2022,9,1,6,56,1,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n\r/id/subject/P\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('d38ace29d5b6e42f62759b5c6edb0925','TRUE',NULL,2022,9,1,6,56,1,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/M1'),
('d3ad30a3615fc35d9b05b6a57c07cd1e','TRUE',NULL,2022,9,1,6,50,2,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',1,NULL,'Event::Indexer','index_all','	\0\0\0\n/id/eprint/1'),
('d407fe6b3cf8d3e768cd4497e32e3105','TRUE',NULL,2022,9,1,6,56,7,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/VM\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('d41f8aa364b6fb0f369f59ce406ca23f','TRUE',NULL,2022,9,1,6,55,59,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/JN101\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('d4376971951ac3b8ab499d4460275395','TRUE',NULL,2022,9,1,6,55,56,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/DT'),
('d440eb3b101152a0066d14d2716c5615','TRUE',NULL,2022,9,1,6,55,56,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n\r/id/subject/E\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('d472727322c0cad4649de7b44e9fdd38','TRUE',NULL,2022,9,1,6,55,55,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/D051'),
('d48b0832ca2d973a48bbfc28ed66fa8b','TRUE',NULL,2022,9,1,6,55,58,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0\r/id/subject/J'),
('d4a81e577c154b6cf515efd1e1f70330','TRUE',NULL,2022,9,1,6,55,55,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/D890'),
('d4ab86a454513e15d5e5bd1d3cf3c2bc','TRUE',NULL,2022,9,1,6,55,57,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/G1'),
('d571473e16f3d739d026253766c02e4c','TRUE',NULL,2022,9,1,6,56,5,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/RF\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('d6623f6de5391754584046079a5b64a6','TRUE',NULL,2022,9,1,6,55,56,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/DL'),
('d672dd51a26516491326383fbe230156','TRUE',NULL,2022,9,1,6,55,55,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/D901\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('d744d7efe013e60e2bc508010f44d1de','TRUE',NULL,2022,9,1,6,55,54,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/CB\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('d7532b4d306da0365185c8dd2be60714','TRUE',NULL,2022,9,1,6,56,5,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/RE'),
('d79930321c0ac74dd2e086e560364e75','TRUE',NULL,2022,9,1,6,55,55,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/DB'),
('d7b79faf7439f2a6d636251a160eb91d','TRUE',NULL,2022,9,1,6,55,51,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/sch_phy'),
('d82647db8f61eae72ce44d6bb1da1d55','TRUE',NULL,2022,9,1,6,56,3,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/PZ'),
('d842c465e745ee14643e7c47c2fe070b','TRUE',NULL,2022,9,1,6,55,57,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/GV\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('d8c7546e6f49bea13f116e274216be93','TRUE',NULL,2022,9,1,6,55,56,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n\r/id/subject/F\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('d8f59cf51a0bf7bdbb111cf48b855c43','TRUE',NULL,2022,9,1,6,56,6,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/TE'),
('d90b6fbc5061eaf7213d0bf3a2cb1e48','TRUE',NULL,2022,9,1,6,55,52,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/sch_psy'),
('d92ba4e9746e2a31683a21669b957896','TRUE',NULL,2022,9,1,6,56,3,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/PS'),
('d92c4093d348c5ad4b7c98e7907afc3c','TRUE',NULL,2022,9,1,6,56,3,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0\r/id/subject/Q'),
('d9519458b46d3c954f7f04df5fa67dca','TRUE',NULL,2022,9,1,6,55,56,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/DJ'),
('d9a123ee331012597fac31c574323e70','TRUE',NULL,2022,9,1,6,55,59,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/JQ'),
('da74505bf10724d7c1ce9d8108b1e172','TRUE',NULL,2022,9,1,6,56,8,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/Z719\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('db24a978a0bdab199b279d03a663c119','TRUE',NULL,2022,9,1,6,56,0,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/LB2361\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('dbf4f0edc741f9abc0d18e9a4a616882','TRUE',NULL,2022,9,1,6,56,4,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n\r/id/subject/R\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('dcbba9412052875222e4ef69885e9ea4','TRUE',NULL,2022,9,1,6,55,55,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/DAW'),
('dd1e1d435c695a01df5929af6a86113b','TRUE',NULL,2022,9,1,6,55,52,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/sch_soc'),
('dd42c76f40eb910ce8850d0b13eeddd4','TRUE',NULL,2022,9,1,6,55,56,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/DH\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('ddab95867f4aee8b0ec04e262fa6c290','TRUE',NULL,2022,9,1,6,55,59,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/JN1187'),
('ddeca987af1fbd9020716c40520f004c','TRUE',NULL,2022,9,1,6,55,52,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/fac_med\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('ddfef0e666af529747ea37830314463e','TRUE',NULL,2022,9,1,6,55,56,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/F001'),
('e10c2c152ba7ef19c694fd56a4dff701','TRUE',NULL,2022,9,1,6,55,59,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/K1'),
('e11d4bcbc84602d79862b892399bd8df','TRUE',NULL,2022,9,1,6,55,52,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n\r/id/subject/A\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('e14479d4c7b7cd7336cfcc64f08104f5','TRUE',NULL,2022,9,1,6,56,0,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/LC5201\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('e1590107ededd7b29259987e6fc86e4d','TRUE',NULL,2022,9,1,6,56,4,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/QK\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('e2769633d85b7bfe90d5f674ad7c174c','TRUE',NULL,2022,9,1,6,55,55,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/D901'),
('e2b455a46fb6243fd13f8a01693e11b5','TRUE',NULL,2022,9,1,6,56,4,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/QL\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('e338dff0178eb383397997145341aace','TRUE',NULL,2022,9,1,6,55,58,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/HG'),
('e3a6ee5b14d3d597bf9b43a1517009d4','TRUE',NULL,2022,9,1,6,56,6,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/TD'),
('e4fafdc2b1da976ef63dc75674a37d66','TRUE',NULL,2022,9,1,6,55,54,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/CJ\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('e51361e91fe0b08ce98f327ae02040ab','TRUE',NULL,2022,9,1,6,56,7,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/TS\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('e5a16ae043a4b474b3cacc82962467e4','TRUE',NULL,2022,9,1,6,55,58,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/HS'),
('e5eb99b274e55256c3ba193414bb861a','TRUE',NULL,2022,9,1,6,56,7,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/TL'),
('e62dd31a9267936566e80315256a14a0','TRUE',NULL,2022,9,1,6,56,5,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/RT\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('e666f477c30a30d7a47672ccfbe852e8','TRUE',NULL,2022,9,1,6,56,0,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/LB1603\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('e6e5c6b285e3784a9c84bea75ddf7fbe','TRUE',NULL,2022,9,1,6,56,3,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n\r/id/subject/Q\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('e7866d2121f6142f922ce7e29654abc8','TRUE',NULL,2022,9,1,6,56,2,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/PM'),
('e7bcc752c3ef890699c800f4e00da1e8','TRUE',NULL,2022,9,1,6,56,2,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/PG'),
('e839306492fb45ffa0fca31e1e049041','TRUE',NULL,2022,9,1,6,55,52,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/sch_edu'),
('e8546467de5d16d30b90b87d8cb3c47c','TRUE',NULL,2022,9,1,6,56,6,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/S1'),
('e98760b4bc4f84bae380ca32698e6b0c','TRUE',NULL,2022,9,1,6,56,2,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/PL\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('e9d1a72216aba1786a99da8b81f18cff','TRUE',NULL,2022,9,1,6,56,3,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/PN0441'),
('e9dc7340cfc837144bb62b6c9e6c041e','TRUE',NULL,2022,9,1,6,56,3,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/PS\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('ea902724825ad911800f82762bc360f5','TRUE',NULL,2022,9,1,6,56,6,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/SH\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('ec22be8df4a97349036f818a3ae4245e','TRUE',NULL,2022,9,1,6,56,8,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/ZA4050\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('ec334be0fa7c0c9f74e56366e9e82781','TRUE',NULL,2022,9,1,6,56,7,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/TG\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('ec7b814b5dfa7f0bd2c3e01faa0c46b5','TRUE',NULL,2022,9,1,6,56,4,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/QE\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('ec93e00a434e9804520d997f34b79b17','TRUE',NULL,2022,9,1,6,56,5,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/RK'),
('ed28668bf9bf2251fb15843821f425c7','TRUE',NULL,2022,9,1,6,55,56,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/DG\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('ed8ee446bd7e8e8e82728f3ee6adea36','TRUE',NULL,2022,9,1,6,55,55,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/D051\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('edf8b5773e386573ebef19a3d16da36f','TRUE',NULL,2022,9,1,6,55,54,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/CT'),
('ee7f8e9f0aa3aa5f044f0368e94ca054','TRUE',NULL,2022,9,1,6,55,57,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/GR\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('eeae7245ea2869832fc3332460b87d98','TRUE',NULL,2022,9,1,6,55,59,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/K1\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('ef26a4a3bd4a2159fa87ea314cda295f','TRUE',NULL,2022,9,1,6,56,2,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/PE'),
('ef592ddb5c8e0e77f53a2546b09110be','TRUE',NULL,2022,9,1,6,55,57,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/G1\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('ef64bb3bcbc3f6948d1a60836220fef6','TRUE',NULL,2022,9,1,6,55,59,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/JK\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('efb7ac464a43c44c6f96bd1aa5b4910c','TRUE',NULL,2022,9,1,6,55,51,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/divisions\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('efc6a8665756e76a06391e78f07041ce','TRUE',NULL,2022,9,1,6,56,8,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/Z004\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('f032563baebe31b2770e2e9ded87d36c','TRUE',NULL,2022,9,1,6,55,55,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/DC'),
('f037f463f8cadbf1c4e1a797d977ff4f','TRUE',NULL,2022,9,1,6,55,52,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0\r/id/subject/A'),
('f060c89fbd2e92fea6b1e6b652d1d2f0','TRUE',NULL,2022,9,1,6,55,51,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/sch_geo\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('f097c639fd82173746545589fe51521d','TRUE',NULL,2022,9,1,6,55,56,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/DJK\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('f10aaeea086529fd035eb72d76c1bbcc','TRUE',NULL,2022,9,1,6,55,56,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0\r/id/subject/E'),
('f1d887f5d9cf23de714df8808102bbfe','TRUE',NULL,2022,9,1,6,55,59,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n\r/id/subject/K\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('f284d8b2303c30d788c87bfd86ea0f1d','TRUE',NULL,2022,9,1,6,56,2,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/PE\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('f2da3ddd5f4053e9bb4bba37b5d21fad','TRUE',NULL,2022,9,1,6,55,52,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/subjects'),
('f324c1aa076a84c1ea32c25c0ac04d0e','TRUE',NULL,2022,9,1,6,56,8,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/ZA\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('f45ec808d6bf21980178115fb98491b4','TRUE',NULL,2022,9,1,6,55,55,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/D111\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('f4715a3a3af9751fa9b539ab1e725cd3','TRUE',NULL,2022,9,1,6,55,53,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/BS'),
('f60f7ef749068df66919f19ddbb614bf','TRUE',NULL,2022,9,1,6,56,1,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/ND'),
('f689c10b0c1fa1673cb269a49f142b70','TRUE',NULL,2022,9,1,6,55,53,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/BV'),
('f69c8ccd21a9e7139f63bf849a7a9e0b','TRUE',NULL,2022,9,1,6,56,0,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/LA'),
('f69ff8dde638ebfb6d0c31983afe75ae','TRUE',NULL,2022,9,1,6,55,56,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/DU\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('f75ebd5ca5859e3266178e987b954336','TRUE',NULL,2022,9,1,6,56,7,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/V1\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('f80552fe09ec9673cada52d31a03d0cb','TRUE',NULL,2022,9,1,6,55,54,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/D1'),
('f80f651442c35e34d44f725c62bcd923','TRUE',NULL,2022,9,1,6,55,55,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/D880\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('f81cd846ab5e7b687e9b190bc3f6413e','TRUE',NULL,2022,9,1,6,56,7,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/TP\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('f919ef163a1ccf9ff3bbc788ea16d143','TRUE',NULL,2022,9,1,6,55,52,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/AI'),
('f97cf3b948eddde6e7cd826cb5780ee3','TRUE',NULL,2022,9,1,6,56,1,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/LG'),
('f9b20dd2793158977fd3f2c8d9947e09','TRUE',NULL,2022,9,1,6,55,57,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/GC\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('fa901cd8135a4123f1175c7c1b33ac07','TRUE',NULL,2022,9,1,6,55,58,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/HQ'),
('fab924724a66394155f89a12b93b65d6','TRUE',NULL,2022,9,1,6,56,0,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/KZ\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('fc0c760a56b975a2d87137b3a161e2ff','TRUE',NULL,2022,9,1,6,55,56,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/F1201\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('fc8abe68b796091595345fd577debe14','TRUE',NULL,2022,9,1,6,56,7,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/TL\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('fca7f0870c8d25b4018422a1fc0a4314','TRUE',NULL,2022,9,1,6,56,6,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/RZ\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('fd23ac0b565e11e86ba117b93636dc82','TRUE',NULL,2022,9,1,6,56,8,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0\r/id/subject/Z'),
('fd78a98595723dc5944b696d6c83c6d4','TRUE',NULL,2022,9,1,6,55,59,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/KD'),
('fec685f8c1d30eba56090603b6a366df','TRUE',NULL,2022,9,1,6,56,5,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0/id/subject/RT'),
('ff080ce7b645c12383800327447dba73','TRUE',NULL,2022,9,1,6,56,2,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/PN\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents'),
('ff8e47f2503581d4b7c92c5951bc7089','TRUE',NULL,2022,9,1,6,56,2,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index','	\0\0\0\n/id/subject/PB1501\ndepositable\nsortvalue_lang\n	ancestors\n	name_lang\nsortvalue_sortvalue\n\nrev_number\n	name_name\n	subjectid\nparents');
/*!40000 ALTER TABLE `event_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_queue__ordervalues_en`
--

DROP TABLE IF EXISTS `event_queue__ordervalues_en`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_queue__ordervalues_en` (
  `eventqueueid` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `cleanup` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `priority` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `start_time` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `end_time` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `status` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `userid` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `pluginid` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `action` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `params` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`eventqueueid`),
  CONSTRAINT `event_queue__ordervalues_en_fk` FOREIGN KEY (`eventqueueid`) REFERENCES `event_queue` (`eventqueueid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_queue__ordervalues_en`
--

LOCK TABLES `event_queue__ordervalues_en` WRITE;
/*!40000 ALTER TABLE `event_queue__ordervalues_en` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_queue__ordervalues_en` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `file`
--

DROP TABLE IF EXISTS `file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `file` (
  `fileid` int(11) NOT NULL DEFAULT 0,
  `datasetid` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `objectid` int(11) DEFAULT NULL,
  `filename` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `mime_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `hash` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `hash_type` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `filesize` bigint(20) DEFAULT NULL,
  `mtime_year` smallint(6) DEFAULT NULL,
  `mtime_month` smallint(6) DEFAULT NULL,
  `mtime_day` smallint(6) DEFAULT NULL,
  `mtime_hour` smallint(6) DEFAULT NULL,
  `mtime_minute` smallint(6) DEFAULT NULL,
  `mtime_second` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`fileid`),
  KEY `datasetid_0` (`datasetid`),
  KEY `objectid_0` (`objectid`),
  KEY `filename_0` (`filename`),
  KEY `hash_0` (`hash`),
  KEY `hash_type_0` (`hash_type`),
  KEY `mtime_year_5` (`mtime_year`,`mtime_month`,`mtime_day`,`mtime_hour`,`mtime_minute`,`mtime_second`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file`
--

LOCK TABLES `file` WRITE;
/*!40000 ALTER TABLE `file` DISABLE KEYS */;
INSERT INTO `file` VALUES
(1,'history',1,'dataobj.xml','text/xml','d3bb8cc1b8b77bc928402a665857e084','MD5',490,2022,9,1,6,50,2),
(2,'history',2,'dataobj.xml','text/xml','7325ea3e625c9b9c85afa419a7ce7656','MD5',511,2022,9,1,6,56,23);
/*!40000 ALTER TABLE `file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `file__ordervalues_en`
--

DROP TABLE IF EXISTS `file__ordervalues_en`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `file__ordervalues_en` (
  `fileid` int(11) NOT NULL DEFAULT 0,
  `datasetid` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `objectid` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `filename` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `mime_type` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `hash` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `hash_type` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `filesize` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `mtime` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `url` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `data` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `copies` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `copies_pluginid` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `copies_sourceid` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`fileid`),
  CONSTRAINT `file__ordervalues_en_fk` FOREIGN KEY (`fileid`) REFERENCES `file` (`fileid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file__ordervalues_en`
--

LOCK TABLES `file__ordervalues_en` WRITE;
/*!40000 ALTER TABLE `file__ordervalues_en` DISABLE KEYS */;
/*!40000 ALTER TABLE `file__ordervalues_en` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `file_copies_pluginid`
--

DROP TABLE IF EXISTS `file_copies_pluginid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `file_copies_pluginid` (
  `fileid` int(11) NOT NULL DEFAULT 0,
  `pos` int(11) NOT NULL DEFAULT 0,
  `copies_pluginid` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`fileid`,`pos`),
  KEY `copies_pluginid_0` (`copies_pluginid`),
  CONSTRAINT `file_copies_pluginid_fk` FOREIGN KEY (`fileid`) REFERENCES `file` (`fileid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file_copies_pluginid`
--

LOCK TABLES `file_copies_pluginid` WRITE;
/*!40000 ALTER TABLE `file_copies_pluginid` DISABLE KEYS */;
INSERT INTO `file_copies_pluginid` VALUES
(1,0,'Storage::Local'),
(2,0,'Storage::Local');
/*!40000 ALTER TABLE `file_copies_pluginid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `file_copies_sourceid`
--

DROP TABLE IF EXISTS `file_copies_sourceid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `file_copies_sourceid` (
  `fileid` int(11) NOT NULL DEFAULT 0,
  `pos` int(11) NOT NULL DEFAULT 0,
  `copies_sourceid` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`fileid`,`pos`),
  KEY `copies_sourceid_0` (`copies_sourceid`),
  CONSTRAINT `file_copies_sourceid_fk` FOREIGN KEY (`fileid`) REFERENCES `file` (`fileid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file_copies_sourceid`
--

LOCK TABLES `file_copies_sourceid` WRITE;
/*!40000 ALTER TABLE `file_copies_sourceid` DISABLE KEYS */;
INSERT INTO `file_copies_sourceid` VALUES
(1,0,'1.xml'),
(2,0,'2.xml');
/*!40000 ALTER TABLE `file_copies_sourceid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history` (
  `historyid` int(11) NOT NULL DEFAULT 0,
  `userid` int(11) DEFAULT NULL,
  `actor` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `datasetid` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `objectid` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `timestamp_year` smallint(6) DEFAULT NULL,
  `timestamp_month` smallint(6) DEFAULT NULL,
  `timestamp_day` smallint(6) DEFAULT NULL,
  `timestamp_hour` smallint(6) DEFAULT NULL,
  `timestamp_minute` smallint(6) DEFAULT NULL,
  `timestamp_second` smallint(6) DEFAULT NULL,
  `action` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `details` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`historyid`),
  KEY `userid_0` (`userid`),
  KEY `datasetid_0` (`datasetid`),
  KEY `objectid_0` (`objectid`),
  KEY `revision_0` (`revision`),
  KEY `timestamp_year_5` (`timestamp_year`,`timestamp_month`,`timestamp_day`,`timestamp_hour`,`timestamp_minute`,`timestamp_second`),
  KEY `action_0` (`action`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
INSERT INTO `history` VALUES
(1,1,'Unnamed user with email admin@pub.eprints <mailto:admin@pub.eprints>','eprint',1,1,2022,9,1,6,50,2,'create','dir|eprint_status|eprintid|full_text_status|lastmod|metadata_visibility|rev_number|status_changed|type|userid'),
(2,1,'Unnamed user with email admin@pub.eprints <mailto:admin@pub.eprints>','eprint',1,2,2022,9,1,6,56,23,'modify','edit_lock_until|lastmod|title');
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history__ordervalues_en`
--

DROP TABLE IF EXISTS `history__ordervalues_en`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history__ordervalues_en` (
  `historyid` int(11) NOT NULL DEFAULT 0,
  `userid` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `actor` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `datasetid` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `objectid` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `revision` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `timestamp` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `action` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `details` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`historyid`),
  CONSTRAINT `history__ordervalues_en_fk` FOREIGN KEY (`historyid`) REFERENCES `history` (`historyid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history__ordervalues_en`
--

LOCK TABLES `history__ordervalues_en` WRITE;
/*!40000 ALTER TABLE `history__ordervalues_en` DISABLE KEYS */;
/*!40000 ALTER TABLE `history__ordervalues_en` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `import`
--

DROP TABLE IF EXISTS `import`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `import` (
  `importid` int(11) NOT NULL DEFAULT 0,
  `datestamp_year` smallint(6) DEFAULT NULL,
  `datestamp_month` smallint(6) DEFAULT NULL,
  `datestamp_day` smallint(6) DEFAULT NULL,
  `datestamp_hour` smallint(6) DEFAULT NULL,
  `datestamp_minute` smallint(6) DEFAULT NULL,
  `datestamp_second` smallint(6) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `source_repository` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `url` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `last_run_year` smallint(6) DEFAULT NULL,
  `last_run_month` smallint(6) DEFAULT NULL,
  `last_run_day` smallint(6) DEFAULT NULL,
  `last_run_hour` smallint(6) DEFAULT NULL,
  `last_run_minute` smallint(6) DEFAULT NULL,
  `last_run_second` smallint(6) DEFAULT NULL,
  `last_success_year` smallint(6) DEFAULT NULL,
  `last_success_month` smallint(6) DEFAULT NULL,
  `last_success_day` smallint(6) DEFAULT NULL,
  `last_success_hour` smallint(6) DEFAULT NULL,
  `last_success_minute` smallint(6) DEFAULT NULL,
  `last_success_second` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`importid`),
  KEY `datestamp_year_5` (`datestamp_year`,`datestamp_month`,`datestamp_day`,`datestamp_hour`,`datestamp_minute`,`datestamp_second`),
  KEY `userid_0` (`userid`),
  KEY `last_run_year_5` (`last_run_year`,`last_run_month`,`last_run_day`,`last_run_hour`,`last_run_minute`,`last_run_second`),
  KEY `last_success_year_5` (`last_success_year`,`last_success_month`,`last_success_day`,`last_success_hour`,`last_success_minute`,`last_success_second`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `import`
--

LOCK TABLES `import` WRITE;
/*!40000 ALTER TABLE `import` DISABLE KEYS */;
/*!40000 ALTER TABLE `import` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `import__ordervalues_en`
--

DROP TABLE IF EXISTS `import__ordervalues_en`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `import__ordervalues_en` (
  `importid` int(11) NOT NULL DEFAULT 0,
  `datestamp` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `userid` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `source_repository` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `url` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `last_run` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `last_success` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`importid`),
  CONSTRAINT `import__ordervalues_en_fk` FOREIGN KEY (`importid`) REFERENCES `import` (`importid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `import__ordervalues_en`
--

LOCK TABLES `import__ordervalues_en` WRITE;
/*!40000 ALTER TABLE `import__ordervalues_en` DISABLE KEYS */;
/*!40000 ALTER TABLE `import__ordervalues_en` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loginticket`
--

DROP TABLE IF EXISTS `loginticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loginticket` (
  `code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `securecode` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  `expires` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`code`),
  KEY `securecode_0` (`securecode`),
  KEY `userid_0` (`userid`),
  KEY `ip_0` (`ip`),
  KEY `time_0` (`time`),
  KEY `expires_0` (`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loginticket`
--

LOCK TABLES `loginticket` WRITE;
/*!40000 ALTER TABLE `loginticket` DISABLE KEYS */;
INSERT INTO `loginticket` VALUES
('2b8b118130575cc23bbc04cb60866566','5567f281716adbc87d9d21f23f3b143f',1,'172.29.0.1',1662014997,1662620189);
/*!40000 ALTER TABLE `loginticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loginticket__ordervalues_en`
--

DROP TABLE IF EXISTS `loginticket__ordervalues_en`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loginticket__ordervalues_en` (
  `code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `securecode` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `userid` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `ip` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `time` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `expires` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`code`),
  CONSTRAINT `loginticket__ordervalues_en_fk` FOREIGN KEY (`code`) REFERENCES `loginticket` (`code`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loginticket__ordervalues_en`
--

LOCK TABLES `loginticket__ordervalues_en` WRITE;
/*!40000 ALTER TABLE `loginticket__ordervalues_en` DISABLE KEYS */;
/*!40000 ALTER TABLE `loginticket__ordervalues_en` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `messageid` int(11) NOT NULL DEFAULT 0,
  `datestamp_year` smallint(6) DEFAULT NULL,
  `datestamp_month` smallint(6) DEFAULT NULL,
  `datestamp_day` smallint(6) DEFAULT NULL,
  `datestamp_hour` smallint(6) DEFAULT NULL,
  `datestamp_minute` smallint(6) DEFAULT NULL,
  `datestamp_second` smallint(6) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `message` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`messageid`),
  KEY `datestamp_year_5` (`datestamp_year`,`datestamp_month`,`datestamp_day`,`datestamp_hour`,`datestamp_minute`,`datestamp_second`),
  KEY `userid_0` (`userid`),
  KEY `type_0` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message__ordervalues_en`
--

DROP TABLE IF EXISTS `message__ordervalues_en`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message__ordervalues_en` (
  `messageid` int(11) NOT NULL DEFAULT 0,
  `datestamp` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `userid` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `type` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `message` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`messageid`),
  CONSTRAINT `message__ordervalues_en_fk` FOREIGN KEY (`messageid`) REFERENCES `message` (`messageid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message__ordervalues_en`
--

LOCK TABLES `message__ordervalues_en` WRITE;
/*!40000 ALTER TABLE `message__ordervalues_en` DISABLE KEYS */;
/*!40000 ALTER TABLE `message__ordervalues_en` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mf`
--

DROP TABLE IF EXISTS `mf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mf` (
  `metafieldid` int(11) NOT NULL DEFAULT 0,
  `mfdatasetid` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `provenance` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `required` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `multiple` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `allow_null` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `export_as_xml` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `volatile` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `min_resolution` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `sql_index` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `render_input` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `render_value` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `input_ordered` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `maxlength` int(11) DEFAULT NULL,
  `browse_link` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `top` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `datasetid` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `set_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `options` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `render_order` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `hide_honourific` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `hide_lineage` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `family_first` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `input_style` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `input_rows` int(11) DEFAULT NULL,
  `input_cols` int(11) DEFAULT NULL,
  `input_boxes` int(11) DEFAULT NULL,
  `sql_counter` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `default_value` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`metafieldid`),
  KEY `mfdatasetid_0` (`mfdatasetid`),
  KEY `parent_0` (`parent`),
  KEY `type_0` (`type`),
  KEY `provenance_0` (`provenance`),
  KEY `required_0` (`required`),
  KEY `multiple_0` (`multiple`),
  KEY `allow_null_0` (`allow_null`),
  KEY `export_as_xml_0` (`export_as_xml`),
  KEY `volatile_0` (`volatile`),
  KEY `min_resolution_0` (`min_resolution`),
  KEY `sql_index_0` (`sql_index`),
  KEY `input_ordered_0` (`input_ordered`),
  KEY `maxlength_0` (`maxlength`),
  KEY `render_order_0` (`render_order`),
  KEY `hide_honourific_0` (`hide_honourific`),
  KEY `hide_lineage_0` (`hide_lineage`),
  KEY `family_first_0` (`family_first`),
  KEY `input_style_0` (`input_style`),
  KEY `input_rows_0` (`input_rows`),
  KEY `input_cols_0` (`input_cols`),
  KEY `input_boxes_0` (`input_boxes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mf`
--

LOCK TABLES `mf` WRITE;
/*!40000 ALTER TABLE `mf` DISABLE KEYS */;
/*!40000 ALTER TABLE `mf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mf__ordervalues_en`
--

DROP TABLE IF EXISTS `mf__ordervalues_en`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mf__ordervalues_en` (
  `metafieldid` int(11) NOT NULL DEFAULT 0,
  `mfdatasetid` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `parent` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `fields` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `type` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `provenance` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `required` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `multiple` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `allow_null` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `export_as_xml` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `volatile` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `min_resolution` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `sql_index` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `render_input` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `render_value` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `input_ordered` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `maxlength` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `browse_link` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `top` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `datasetid` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `set_name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `options` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `render_order` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `hide_honourific` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `hide_lineage` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `family_first` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `input_style` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `input_rows` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `input_cols` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `input_boxes` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `sql_counter` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `default_value` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `phrase_name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `phrase_name_text` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `phrase_name_lang` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `phrase_help` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `phrase_help_text` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `phrase_help_lang` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`metafieldid`),
  CONSTRAINT `mf__ordervalues_en_fk` FOREIGN KEY (`metafieldid`) REFERENCES `mf` (`metafieldid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mf__ordervalues_en`
--

LOCK TABLES `mf__ordervalues_en` WRITE;
/*!40000 ALTER TABLE `mf__ordervalues_en` DISABLE KEYS */;
/*!40000 ALTER TABLE `mf__ordervalues_en` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mf_phrase_help_lang`
--

DROP TABLE IF EXISTS `mf_phrase_help_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mf_phrase_help_lang` (
  `metafieldid` int(11) NOT NULL DEFAULT 0,
  `pos` int(11) NOT NULL DEFAULT 0,
  `phrase_help_lang` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`metafieldid`,`pos`),
  KEY `phrase_help_lang_0` (`phrase_help_lang`),
  CONSTRAINT `mf_phrase_help_lang_fk` FOREIGN KEY (`metafieldid`) REFERENCES `mf` (`metafieldid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mf_phrase_help_lang`
--

LOCK TABLES `mf_phrase_help_lang` WRITE;
/*!40000 ALTER TABLE `mf_phrase_help_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `mf_phrase_help_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mf_phrase_help_text`
--

DROP TABLE IF EXISTS `mf_phrase_help_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mf_phrase_help_text` (
  `metafieldid` int(11) NOT NULL DEFAULT 0,
  `pos` int(11) NOT NULL DEFAULT 0,
  `phrase_help_text` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`metafieldid`,`pos`),
  CONSTRAINT `mf_phrase_help_text_fk` FOREIGN KEY (`metafieldid`) REFERENCES `mf` (`metafieldid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mf_phrase_help_text`
--

LOCK TABLES `mf_phrase_help_text` WRITE;
/*!40000 ALTER TABLE `mf_phrase_help_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `mf_phrase_help_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mf_phrase_name_lang`
--

DROP TABLE IF EXISTS `mf_phrase_name_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mf_phrase_name_lang` (
  `metafieldid` int(11) NOT NULL DEFAULT 0,
  `pos` int(11) NOT NULL DEFAULT 0,
  `phrase_name_lang` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`metafieldid`,`pos`),
  KEY `phrase_name_lang_0` (`phrase_name_lang`),
  CONSTRAINT `mf_phrase_name_lang_fk` FOREIGN KEY (`metafieldid`) REFERENCES `mf` (`metafieldid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mf_phrase_name_lang`
--

LOCK TABLES `mf_phrase_name_lang` WRITE;
/*!40000 ALTER TABLE `mf_phrase_name_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `mf_phrase_name_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mf_phrase_name_text`
--

DROP TABLE IF EXISTS `mf_phrase_name_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mf_phrase_name_text` (
  `metafieldid` int(11) NOT NULL DEFAULT 0,
  `pos` int(11) NOT NULL DEFAULT 0,
  `phrase_name_text` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`metafieldid`,`pos`),
  CONSTRAINT `mf_phrase_name_text_fk` FOREIGN KEY (`metafieldid`) REFERENCES `mf` (`metafieldid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mf_phrase_name_text`
--

LOCK TABLES `mf_phrase_name_text` WRITE;
/*!40000 ALTER TABLE `mf_phrase_name_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `mf_phrase_name_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request`
--

DROP TABLE IF EXISTS `request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request` (
  `requestid` int(11) NOT NULL DEFAULT 0,
  `eprintid` int(11) DEFAULT NULL,
  `docid` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `datestamp_year` smallint(6) DEFAULT NULL,
  `datestamp_month` smallint(6) DEFAULT NULL,
  `datestamp_day` smallint(6) DEFAULT NULL,
  `datestamp_hour` smallint(6) DEFAULT NULL,
  `datestamp_minute` smallint(6) DEFAULT NULL,
  `datestamp_second` smallint(6) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `requester_email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `reason` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `expiry_date_year` smallint(6) DEFAULT NULL,
  `expiry_date_month` smallint(6) DEFAULT NULL,
  `expiry_date_day` smallint(6) DEFAULT NULL,
  `expiry_date_hour` smallint(6) DEFAULT NULL,
  `expiry_date_minute` smallint(6) DEFAULT NULL,
  `expiry_date_second` smallint(6) DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`requestid`),
  KEY `eprintid_0` (`eprintid`),
  KEY `datestamp_year_5` (`datestamp_year`,`datestamp_month`,`datestamp_day`,`datestamp_hour`,`datestamp_minute`,`datestamp_second`),
  KEY `userid_0` (`userid`),
  KEY `email_0` (`email`),
  KEY `requester_email_0` (`requester_email`),
  KEY `expiry_date_year_5` (`expiry_date_year`,`expiry_date_month`,`expiry_date_day`,`expiry_date_hour`,`expiry_date_minute`,`expiry_date_second`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request`
--

LOCK TABLES `request` WRITE;
/*!40000 ALTER TABLE `request` DISABLE KEYS */;
/*!40000 ALTER TABLE `request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request__index`
--

DROP TABLE IF EXISTS `request__index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request__index` (
  `fieldword` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL DEFAULT 0,
  `ids` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`fieldword`,`pos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request__index`
--

LOCK TABLES `request__index` WRITE;
/*!40000 ALTER TABLE `request__index` DISABLE KEYS */;
/*!40000 ALTER TABLE `request__index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request__index_grep`
--

DROP TABLE IF EXISTS `request__index_grep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request__index_grep` (
  `fieldname` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `grepstring` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `requestid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`fieldname`,`grepstring`,`requestid`),
  KEY `request__index_grep_fk` (`requestid`),
  CONSTRAINT `request__index_grep_fk` FOREIGN KEY (`requestid`) REFERENCES `request` (`requestid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request__index_grep`
--

LOCK TABLES `request__index_grep` WRITE;
/*!40000 ALTER TABLE `request__index_grep` DISABLE KEYS */;
/*!40000 ALTER TABLE `request__index_grep` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request__ordervalues_en`
--

DROP TABLE IF EXISTS `request__ordervalues_en`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request__ordervalues_en` (
  `requestid` int(11) NOT NULL DEFAULT 0,
  `eprintid` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `docid` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `datestamp` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `userid` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `email` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `requester_email` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `reason` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `expiry_date` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `code` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `captcha` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`requestid`),
  CONSTRAINT `request__ordervalues_en_fk` FOREIGN KEY (`requestid`) REFERENCES `request` (`requestid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request__ordervalues_en`
--

LOCK TABLES `request__ordervalues_en` WRITE;
/*!40000 ALTER TABLE `request__ordervalues_en` DISABLE KEYS */;
/*!40000 ALTER TABLE `request__ordervalues_en` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request__rindex`
--

DROP TABLE IF EXISTS `request__rindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request__rindex` (
  `field` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `word` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `requestid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`field`,`word`,`requestid`),
  KEY `requestid_1` (`requestid`,`field`),
  CONSTRAINT `request__rindex_fk` FOREIGN KEY (`requestid`) REFERENCES `request` (`requestid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request__rindex`
--

LOCK TABLES `request__rindex` WRITE;
/*!40000 ALTER TABLE `request__rindex` DISABLE KEYS */;
/*!40000 ALTER TABLE `request__rindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saved_search`
--

DROP TABLE IF EXISTS `saved_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saved_search` (
  `id` int(11) NOT NULL DEFAULT 0,
  `userid` int(11) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `spec` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `frequency` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `mailempty` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `additional_recipients` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `public` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userid_0` (`userid`),
  KEY `frequency_0` (`frequency`),
  KEY `mailempty_0` (`mailempty`),
  KEY `public_0` (`public`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saved_search`
--

LOCK TABLES `saved_search` WRITE;
/*!40000 ALTER TABLE `saved_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `saved_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saved_search__index`
--

DROP TABLE IF EXISTS `saved_search__index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saved_search__index` (
  `fieldword` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL DEFAULT 0,
  `ids` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`fieldword`,`pos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saved_search__index`
--

LOCK TABLES `saved_search__index` WRITE;
/*!40000 ALTER TABLE `saved_search__index` DISABLE KEYS */;
/*!40000 ALTER TABLE `saved_search__index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saved_search__index_grep`
--

DROP TABLE IF EXISTS `saved_search__index_grep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saved_search__index_grep` (
  `fieldname` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `grepstring` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`fieldname`,`grepstring`,`id`),
  KEY `saved_search__index_grep_fk` (`id`),
  CONSTRAINT `saved_search__index_grep_fk` FOREIGN KEY (`id`) REFERENCES `saved_search` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saved_search__index_grep`
--

LOCK TABLES `saved_search__index_grep` WRITE;
/*!40000 ALTER TABLE `saved_search__index_grep` DISABLE KEYS */;
/*!40000 ALTER TABLE `saved_search__index_grep` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saved_search__ordervalues_en`
--

DROP TABLE IF EXISTS `saved_search__ordervalues_en`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saved_search__ordervalues_en` (
  `id` int(11) NOT NULL DEFAULT 0,
  `userid` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `spec` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `frequency` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `mailempty` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `additional_recipients` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `public` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `saved_search__ordervalues_en_fk` FOREIGN KEY (`id`) REFERENCES `saved_search` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saved_search__ordervalues_en`
--

LOCK TABLES `saved_search__ordervalues_en` WRITE;
/*!40000 ALTER TABLE `saved_search__ordervalues_en` DISABLE KEYS */;
/*!40000 ALTER TABLE `saved_search__ordervalues_en` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saved_search__rindex`
--

DROP TABLE IF EXISTS `saved_search__rindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saved_search__rindex` (
  `field` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `word` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`field`,`word`,`id`),
  KEY `id_1` (`id`,`field`),
  CONSTRAINT `saved_search__rindex_fk` FOREIGN KEY (`id`) REFERENCES `saved_search` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saved_search__rindex`
--

LOCK TABLES `saved_search__rindex` WRITE;
/*!40000 ALTER TABLE `saved_search__rindex` DISABLE KEYS */;
/*!40000 ALTER TABLE `saved_search__rindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subject` (
  `subjectid` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `rev_number` int(11) DEFAULT NULL,
  `depositable` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`subjectid`),
  KEY `rev_number_0` (`rev_number`),
  KEY `depositable_0` (`depositable`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` VALUES
('A',2,'FALSE'),
('AC',2,'TRUE'),
('AI',2,'TRUE'),
('AM',2,'TRUE'),
('AS',2,'TRUE'),
('AZ',2,'TRUE'),
('B',2,'FALSE'),
('B1',2,'TRUE'),
('BC',2,'TRUE'),
('BD',2,'TRUE'),
('BF',2,'TRUE'),
('BH',2,'TRUE'),
('BJ',2,'TRUE'),
('BL',2,'TRUE'),
('BM',2,'TRUE'),
('BP',2,'TRUE'),
('BQ',2,'TRUE'),
('BR',2,'TRUE'),
('BS',2,'TRUE'),
('BT',2,'TRUE'),
('BV',2,'TRUE'),
('BV1460',2,'TRUE'),
('BX',2,'TRUE'),
('C',2,'FALSE'),
('C1',2,'TRUE'),
('CB',2,'TRUE'),
('CC',2,'TRUE'),
('CD',2,'TRUE'),
('CD921',2,'TRUE'),
('CE',2,'TRUE'),
('CJ',2,'TRUE'),
('CN',2,'TRUE'),
('CR',2,'TRUE'),
('CS',2,'TRUE'),
('CT',2,'TRUE'),
('D',2,'FALSE'),
('D051',2,'TRUE'),
('D1',2,'TRUE'),
('D111',2,'TRUE'),
('D204',2,'TRUE'),
('D501',2,'TRUE'),
('D731',2,'TRUE'),
('D839',2,'TRUE'),
('D880',2,'TRUE'),
('D890',2,'TRUE'),
('D901',2,'TRUE'),
('DA',2,'TRUE'),
('DAW',2,'TRUE'),
('DB',2,'TRUE'),
('DC',2,'TRUE'),
('DD',2,'TRUE'),
('DE',2,'TRUE'),
('DF',2,'TRUE'),
('DG',2,'TRUE'),
('DH',2,'TRUE'),
('DJ',2,'TRUE'),
('DJK',2,'TRUE'),
('DK',2,'TRUE'),
('DL',2,'TRUE'),
('DP',2,'TRUE'),
('DR',2,'TRUE'),
('DS',2,'TRUE'),
('DT',2,'TRUE'),
('DU',2,'TRUE'),
('E',2,'FALSE'),
('E11',2,'TRUE'),
('E151',2,'TRUE'),
('F',2,'FALSE'),
('F001',2,'TRUE'),
('F1001',2,'TRUE'),
('F1201',2,'TRUE'),
('G',2,'FALSE'),
('G1',2,'TRUE'),
('GA',2,'TRUE'),
('GB',2,'TRUE'),
('GC',2,'TRUE'),
('GE',2,'TRUE'),
('GF',2,'TRUE'),
('GN',2,'TRUE'),
('GR',2,'TRUE'),
('GT',2,'TRUE'),
('GV',2,'TRUE'),
('H',2,'FALSE'),
('H1',2,'TRUE'),
('HA',2,'TRUE'),
('HB',2,'TRUE'),
('HC',2,'TRUE'),
('HD',2,'TRUE'),
('HD28',2,'TRUE'),
('HD61',2,'TRUE'),
('HE',2,'TRUE'),
('HF',2,'TRUE'),
('HF5601',2,'TRUE'),
('HG',2,'TRUE'),
('HJ',2,'TRUE'),
('HM',2,'TRUE'),
('HN',2,'TRUE'),
('HQ',2,'TRUE'),
('HS',2,'TRUE'),
('HT',2,'TRUE'),
('HV',2,'TRUE'),
('HX',2,'TRUE'),
('J',2,'FALSE'),
('J1',2,'TRUE'),
('JA',2,'TRUE'),
('JC',2,'TRUE'),
('JF',2,'TRUE'),
('JK',2,'TRUE'),
('JL',2,'TRUE'),
('JN',2,'TRUE'),
('JN101',2,'TRUE'),
('JN1187',2,'TRUE'),
('JQ',2,'TRUE'),
('JS',2,'TRUE'),
('JV',2,'TRUE'),
('JX',2,'TRUE'),
('JZ',2,'TRUE'),
('K',2,'FALSE'),
('K1',2,'TRUE'),
('KD',2,'TRUE'),
('KDC',2,'TRUE'),
('KF',2,'TRUE'),
('KZ',2,'TRUE'),
('L',2,'FALSE'),
('L1',2,'TRUE'),
('LA',2,'TRUE'),
('LB',2,'TRUE'),
('LB1501',2,'TRUE'),
('LB1603',2,'TRUE'),
('LB2300',2,'TRUE'),
('LB2361',2,'TRUE'),
('LC',2,'TRUE'),
('LC5201',2,'TRUE'),
('LD',2,'TRUE'),
('LE',2,'TRUE'),
('LF',2,'TRUE'),
('LG',2,'TRUE'),
('LT',2,'TRUE'),
('M',2,'FALSE'),
('M1',2,'TRUE'),
('ML',2,'TRUE'),
('MT',2,'TRUE'),
('N',2,'FALSE'),
('N1',2,'TRUE'),
('NA',2,'TRUE'),
('NB',2,'TRUE'),
('NC',2,'TRUE'),
('ND',2,'TRUE'),
('NE',2,'TRUE'),
('NK',2,'TRUE'),
('NX',2,'TRUE'),
('P',2,'FALSE'),
('P1',2,'TRUE'),
('PA',2,'TRUE'),
('PB',2,'TRUE'),
('PB1501',2,'TRUE'),
('PC',2,'TRUE'),
('PD',2,'TRUE'),
('PE',2,'TRUE'),
('PF',2,'TRUE'),
('PG',2,'TRUE'),
('PH',2,'TRUE'),
('PI',2,'TRUE'),
('PJ',2,'TRUE'),
('PK',2,'TRUE'),
('PL',2,'TRUE'),
('PM',2,'TRUE'),
('PN',2,'TRUE'),
('PN0080',2,'TRUE'),
('PN0441',2,'TRUE'),
('PN1990',2,'TRUE'),
('PN1993',2,'TRUE'),
('PN2000',2,'TRUE'),
('PQ',2,'TRUE'),
('PR',2,'TRUE'),
('PS',2,'TRUE'),
('PT',2,'TRUE'),
('PZ',2,'TRUE'),
('Q',2,'FALSE'),
('Q1',2,'TRUE'),
('QA',2,'TRUE'),
('QA75',2,'TRUE'),
('QA76',2,'TRUE'),
('QB',2,'TRUE'),
('QC',2,'TRUE'),
('QD',2,'TRUE'),
('QE',2,'TRUE'),
('QH',2,'TRUE'),
('QH301',2,'TRUE'),
('QH426',2,'TRUE'),
('QK',2,'TRUE'),
('QL',2,'TRUE'),
('QM',2,'TRUE'),
('QP',2,'TRUE'),
('QR',2,'TRUE'),
('QR180',2,'TRUE'),
('QR355',2,'TRUE'),
('R',2,'FALSE'),
('R1',2,'TRUE'),
('RA',2,'TRUE'),
('RA0421',2,'TRUE'),
('RA1001',2,'TRUE'),
('RB',2,'TRUE'),
('RC',2,'TRUE'),
('RC0254',2,'TRUE'),
('RC0321',2,'TRUE'),
('RC1200',2,'TRUE'),
('RD',2,'TRUE'),
('RE',2,'TRUE'),
('RF',2,'TRUE'),
('RG',2,'TRUE'),
('RJ',2,'TRUE'),
('RJ101',2,'TRUE'),
('RK',2,'TRUE'),
('RL',2,'TRUE'),
('RM',2,'TRUE'),
('RS',2,'TRUE'),
('RT',2,'TRUE'),
('RV',2,'TRUE'),
('RX',2,'TRUE'),
('RZ',2,'TRUE'),
('S',2,'FALSE'),
('S1',2,'TRUE'),
('SB',2,'TRUE'),
('SD',2,'TRUE'),
('SF',2,'TRUE'),
('SH',2,'TRUE'),
('SK',2,'TRUE'),
('T',2,'FALSE'),
('T1',2,'TRUE'),
('T201',2,'TRUE'),
('TA',2,'TRUE'),
('TC',2,'TRUE'),
('TD',2,'TRUE'),
('TE',2,'TRUE'),
('TF',2,'TRUE'),
('TG',2,'TRUE'),
('TH',2,'TRUE'),
('TJ',2,'TRUE'),
('TK',2,'TRUE'),
('TL',2,'TRUE'),
('TN',2,'TRUE'),
('TP',2,'TRUE'),
('TR',2,'TRUE'),
('TS',2,'TRUE'),
('TT',2,'TRUE'),
('TX',2,'TRUE'),
('U',2,'FALSE'),
('U1',2,'TRUE'),
('V',2,'FALSE'),
('V1',2,'TRUE'),
('VM',2,'TRUE'),
('Z',2,'FALSE'),
('Z004',2,'TRUE'),
('Z665',2,'TRUE'),
('Z719',2,'TRUE'),
('ZA',2,'TRUE'),
('ZA4050',2,'TRUE'),
('ZA4450',2,'TRUE'),
('divisions',2,'FALSE'),
('fac_eng',2,'FALSE'),
('fac_law',2,'FALSE'),
('fac_med',2,'FALSE'),
('sch_art',2,'TRUE'),
('sch_bio',2,'TRUE'),
('sch_che',2,'TRUE'),
('sch_civ',2,'TRUE'),
('sch_ecs',2,'TRUE'),
('sch_edu',2,'TRUE'),
('sch_eng',2,'TRUE'),
('sch_geo',2,'TRUE'),
('sch_hum',2,'TRUE'),
('sch_law',2,'TRUE'),
('sch_man',2,'TRUE'),
('sch_mat',2,'TRUE'),
('sch_med',2,'TRUE'),
('sch_phy',2,'TRUE'),
('sch_psy',2,'TRUE'),
('sch_soc',2,'TRUE'),
('subjects',2,'FALSE');
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject__index`
--

DROP TABLE IF EXISTS `subject__index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subject__index` (
  `fieldword` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL DEFAULT 0,
  `ids` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`fieldword`,`pos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject__index`
--

LOCK TABLES `subject__index` WRITE;
/*!40000 ALTER TABLE `subject__index` DISABLE KEYS */;
/*!40000 ALTER TABLE `subject__index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject__index_grep`
--

DROP TABLE IF EXISTS `subject__index_grep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subject__index_grep` (
  `fieldname` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `grepstring` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `subjectid` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`fieldname`,`grepstring`,`subjectid`),
  KEY `subject__index_grep_fk` (`subjectid`),
  CONSTRAINT `subject__index_grep_fk` FOREIGN KEY (`subjectid`) REFERENCES `subject` (`subjectid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject__index_grep`
--

LOCK TABLES `subject__index_grep` WRITE;
/*!40000 ALTER TABLE `subject__index_grep` DISABLE KEYS */;
/*!40000 ALTER TABLE `subject__index_grep` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject__ordervalues_en`
--

DROP TABLE IF EXISTS `subject__ordervalues_en`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subject__ordervalues_en` (
  `subjectid` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `rev_number` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `name_name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `name_sortvalue` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `name_lang` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `parents` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `ancestors` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `depositable` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `sortvalue` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `sortvalue_sortvalue` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `sortvalue_lang` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`subjectid`),
  CONSTRAINT `subject__ordervalues_en_fk` FOREIGN KEY (`subjectid`) REFERENCES `subject` (`subjectid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject__ordervalues_en`
--

LOCK TABLES `subject__ordervalues_en` WRITE;
/*!40000 ALTER TABLE `subject__ordervalues_en` DISABLE KEYS */;
INSERT INTO `subject__ordervalues_en` VALUES
('A','00000000000000000002',NULL,'A General Works',NULL,'000024','subjects','A:subjects:ROOT','FALSE',NULL,'A General Works','000024'),
('AC','00000000000000000002',NULL,'AC Collections. Series. Collected works',NULL,'000024','A','AC:A:subjects:ROOT','TRUE',NULL,'AC Collections. Series. Collected works','000024'),
('AI','00000000000000000002',NULL,'AI Indexes (General)',NULL,'000024','A','AI:A:subjects:ROOT','TRUE',NULL,'AI Indexes (General)','000024'),
('AM','00000000000000000002',NULL,'AM Museums (General). Collectors and collecting (General)',NULL,'000024','A','AM:A:subjects:ROOT','TRUE',NULL,'AM Museums (General). Collectors and collecting (General)','000024'),
('AS','00000000000000000002',NULL,'AS Academies and learned societies (General)',NULL,'000024','A','AS:A:subjects:ROOT','TRUE',NULL,'AS Academies and learned societies (General)','000024'),
('AZ','00000000000000000002',NULL,'AZ History of Scholarship The Humanities',NULL,'000024','A','AZ:A:subjects:ROOT','TRUE',NULL,'AZ History of Scholarship The Humanities','000024'),
('B','00000000000000000002',NULL,'B Philosophy. Psychology. Religion',NULL,'000024','subjects','B:subjects:ROOT','FALSE',NULL,'B Philosophy. Psychology. Religion','000024'),
('B1','00000000000000000002',NULL,'B Philosophy (General)',NULL,'000024','B','B1:B:subjects:ROOT','TRUE',NULL,'B Philosophy (General)','000024'),
('BC','00000000000000000002',NULL,'BC Logic',NULL,'000024','B','BC:B:subjects:ROOT','TRUE',NULL,'BC Logic','000024'),
('BD','00000000000000000002',NULL,'BD Speculative Philosophy',NULL,'000024','B','BD:B:subjects:ROOT','TRUE',NULL,'BD Speculative Philosophy','000024'),
('BF','00000000000000000002',NULL,'BF Psychology',NULL,'000024','B','BF:B:subjects:ROOT','TRUE',NULL,'BF Psychology','000024'),
('BH','00000000000000000002',NULL,'BH Aesthetics',NULL,'000024','B','BH:B:subjects:ROOT','TRUE',NULL,'BH Aesthetics','000024'),
('BJ','00000000000000000002',NULL,'BJ Ethics',NULL,'000024','B','BJ:B:subjects:ROOT','TRUE',NULL,'BJ Ethics','000024'),
('BL','00000000000000000002',NULL,'BL Religion',NULL,'000024','B','BL:B:subjects:ROOT','TRUE',NULL,'BL Religion','000024'),
('BM','00000000000000000002',NULL,'BM Judaism',NULL,'000024','B','BM:B:subjects:ROOT','TRUE',NULL,'BM Judaism','000024'),
('BP','00000000000000000002',NULL,'BP Islam. Bahaism. Theosophy, etc',NULL,'000024','B','BP:B:subjects:ROOT','TRUE',NULL,'BP Islam. Bahaism. Theosophy, etc','000024'),
('BQ','00000000000000000002',NULL,'BQ Buddhism',NULL,'000024','B','BQ:B:subjects:ROOT','TRUE',NULL,'BQ Buddhism','000024'),
('BR','00000000000000000002',NULL,'BR Christianity',NULL,'000024','B','BR:B:subjects:ROOT','TRUE',NULL,'BR Christianity','000024'),
('BS','00000000000000000002',NULL,'BS The Bible',NULL,'000024','B','BS:B:subjects:ROOT','TRUE',NULL,'BS The Bible','000024'),
('BT','00000000000000000002',NULL,'BT Doctrinal Theology',NULL,'000024','B','BT:B:subjects:ROOT','TRUE',NULL,'BT Doctrinal Theology','000024'),
('BV','00000000000000000002',NULL,'BV Practical Theology',NULL,'000024','B','BV:B:subjects:ROOT','TRUE',NULL,'BV Practical Theology','000024'),
('BV1460','00000000000000000002',NULL,'BV1460 Religious Education',NULL,'000024','BV','BV1460:BV:B:subjects:ROOT','TRUE',NULL,'BV1460 Religious Education','000024'),
('BX','00000000000000000002',NULL,'BX Christian Denominations',NULL,'000024','B','BX:B:subjects:ROOT','TRUE',NULL,'BX Christian Denominations','000024'),
('C','00000000000000000002',NULL,'C Auxiliary Sciences of History',NULL,'000024','subjects','C:subjects:ROOT','FALSE',NULL,'C Auxiliary Sciences of History','000024'),
('C1','00000000000000000002',NULL,'C Auxiliary sciences of history (General)',NULL,'000024','C','C1:C:subjects:ROOT','TRUE',NULL,'C Auxiliary sciences of history (General)','000024'),
('CB','00000000000000000002',NULL,'CB History of civilization',NULL,'000024','C','CB:C:subjects:ROOT','TRUE',NULL,'CB History of civilization','000024'),
('CC','00000000000000000002',NULL,'CC Archaeology',NULL,'000024','C','CC:C:subjects:ROOT','TRUE',NULL,'CC Archaeology','000024'),
('CD','00000000000000000002',NULL,'CD Diplomatics. Archives. Seals',NULL,'000024','C','CD:C:subjects:ROOT','TRUE',NULL,'CD Diplomatics. Archives. Seals','000024'),
('CD921','00000000000000000002',NULL,'CD921 Archives',NULL,'000024','CD','CD921:CD:C:subjects:ROOT','TRUE',NULL,'CD921 Archives','000024'),
('CE','00000000000000000002',NULL,'CE Technical chronology. Calendar',NULL,'000024','C','CE:C:subjects:ROOT','TRUE',NULL,'CE Technical chronology. Calendar','000024'),
('CJ','00000000000000000002',NULL,'CJ Numismatics',NULL,'000024','C','CJ:C:subjects:ROOT','TRUE',NULL,'CJ Numismatics','000024'),
('CN','00000000000000000002',NULL,'CN Inscriptions. Epigraphy.',NULL,'000024','C','CN:C:subjects:ROOT','TRUE',NULL,'CN Inscriptions. Epigraphy.','000024'),
('CR','00000000000000000002',NULL,'CR Heraldry',NULL,'000024','C','CR:C:subjects:ROOT','TRUE',NULL,'CR Heraldry','000024'),
('CS','00000000000000000002',NULL,'CS Genealogy',NULL,'000024','C','CS:C:subjects:ROOT','TRUE',NULL,'CS Genealogy','000024'),
('CT','00000000000000000002',NULL,'CT Biography',NULL,'000024','C','CT:C:subjects:ROOT','TRUE',NULL,'CT Biography','000024'),
('D','00000000000000000002',NULL,'D History General and Old World',NULL,'000024','subjects','D:subjects:ROOT','FALSE',NULL,'D History General and Old World','000024'),
('D051','00000000000000000002',NULL,'D051 Ancient History',NULL,'000024','D1','D051:D1:D:subjects:ROOT','TRUE',NULL,'D051 Ancient History','000024'),
('D1','00000000000000000002',NULL,'D History (General)',NULL,'000024','D','D1:D:subjects:ROOT','TRUE',NULL,'D History (General)','000024'),
('D111','00000000000000000002',NULL,'D111 Medieval History',NULL,'000024','D1','D111:D1:D:subjects:ROOT','TRUE',NULL,'D111 Medieval History','000024'),
('D204','00000000000000000002',NULL,'D204 Modern History',NULL,'000024','D1','D204:D1:D:subjects:ROOT','TRUE',NULL,'D204 Modern History','000024'),
('D501','00000000000000000002',NULL,'D501 World War I',NULL,'000024','D1','D501:D1:D:subjects:ROOT','TRUE',NULL,'D501 World War I','000024'),
('D731','00000000000000000002',NULL,'D731 World War II',NULL,'000024','D1','D731:D1:D:subjects:ROOT','TRUE',NULL,'D731 World War II','000024'),
('D839','00000000000000000002',NULL,'D839 Post-war History, 1945 on',NULL,'000024','D1','D839:D1:D:subjects:ROOT','TRUE',NULL,'D839 Post-war History, 1945 on','000024'),
('D880','00000000000000000002',NULL,'D880 Developing Countries',NULL,'000024','D1','D880:D1:D:subjects:ROOT','TRUE',NULL,'D880 Developing Countries','000024'),
('D890','00000000000000000002',NULL,'D890 Eastern Hemisphere',NULL,'000024','D1','D890:D1:D:subjects:ROOT','TRUE',NULL,'D890 Eastern Hemisphere','000024'),
('D901','00000000000000000002',NULL,'D901 Europe (General)',NULL,'000024','D1','D901:D1:D:subjects:ROOT','TRUE',NULL,'D901 Europe (General)','000024'),
('DA','00000000000000000002',NULL,'DA Great Britain',NULL,'000024','D','DA:D:subjects:ROOT','TRUE',NULL,'DA Great Britain','000024'),
('DAW','00000000000000000002',NULL,'DAW Central Europe',NULL,'000024','DA','DAW:DA:D:subjects:ROOT','TRUE',NULL,'DAW Central Europe','000024'),
('DB','00000000000000000002',NULL,'DB Austria',NULL,'000024','D','DB:D:subjects:ROOT','TRUE',NULL,'DB Austria','000024'),
('DC','00000000000000000002',NULL,'DC France',NULL,'000024','D','DC:D:subjects:ROOT','TRUE',NULL,'DC France','000024'),
('DD','00000000000000000002',NULL,'DD Germany',NULL,'000024','D','DD:D:subjects:ROOT','TRUE',NULL,'DD Germany','000024'),
('DE','00000000000000000002',NULL,'DE The Mediterranean Region. The Greco-Roman World',NULL,'000024','D','DE:D:subjects:ROOT','TRUE',NULL,'DE The Mediterranean Region. The Greco-Roman World','000024'),
('DF','00000000000000000002',NULL,'DF Greece',NULL,'000024','D','DF:D:subjects:ROOT','TRUE',NULL,'DF Greece','000024'),
('DG','00000000000000000002',NULL,'DG Italy',NULL,'000024','D','DG:D:subjects:ROOT','TRUE',NULL,'DG Italy','000024'),
('DH','00000000000000000002',NULL,'DH Netherlands (The Low Countries)',NULL,'000024','D','DH:D:subjects:ROOT','TRUE',NULL,'DH Netherlands (The Low Countries)','000024'),
('DJ','00000000000000000002',NULL,'DJ Netherlands (Holland)',NULL,'000024','D','DJ:D:subjects:ROOT','TRUE',NULL,'DJ Netherlands (Holland)','000024'),
('DJK','00000000000000000002',NULL,'DJK Eastern Europe',NULL,'000024','DJ','DJK:DJ:D:subjects:ROOT','TRUE',NULL,'DJK Eastern Europe','000024'),
('DK','00000000000000000002',NULL,'DK Russia. Soviet Union. Former Soviet Republics',NULL,'000024','D','DK:D:subjects:ROOT','TRUE',NULL,'DK Russia. Soviet Union. Former Soviet Republics','000024'),
('DL','00000000000000000002',NULL,'DL Northern Europe. Scandinavia',NULL,'000024','D','DL:D:subjects:ROOT','TRUE',NULL,'DL Northern Europe. Scandinavia','000024'),
('DP','00000000000000000002',NULL,'DP Spain',NULL,'000024','D','DP:D:subjects:ROOT','TRUE',NULL,'DP Spain','000024'),
('DR','00000000000000000002',NULL,'DR Balkan Peninsula',NULL,'000024','D','DR:D:subjects:ROOT','TRUE',NULL,'DR Balkan Peninsula','000024'),
('DS','00000000000000000002',NULL,'DS Asia',NULL,'000024','D','DS:D:subjects:ROOT','TRUE',NULL,'DS Asia','000024'),
('DT','00000000000000000002',NULL,'DT Africa',NULL,'000024','D','DT:D:subjects:ROOT','TRUE',NULL,'DT Africa','000024'),
('DU','00000000000000000002',NULL,'DU Oceania (South Seas)',NULL,'000024','D','DU:D:subjects:ROOT','TRUE',NULL,'DU Oceania (South Seas)','000024'),
('E','00000000000000000002',NULL,'E History America',NULL,'000024','subjects','E:subjects:ROOT','FALSE',NULL,'E History America','000024'),
('E11','00000000000000000002',NULL,'E11 America (General)',NULL,'000024','E','E11:E:subjects:ROOT','TRUE',NULL,'E11 America (General)','000024'),
('E151','00000000000000000002',NULL,'E151 United States (General)',NULL,'000024','E','E151:E:subjects:ROOT','TRUE',NULL,'E151 United States (General)','000024'),
('F','00000000000000000002',NULL,'F History United States, Canada, Latin America',NULL,'000024','subjects','F:subjects:ROOT','FALSE',NULL,'F History United States, Canada, Latin America','000024'),
('F001','00000000000000000002',NULL,'F001 United States local history',NULL,'000024','F','F001:F:subjects:ROOT','TRUE',NULL,'F001 United States local history','000024'),
('F1001','00000000000000000002',NULL,'F1001 Canada (General)',NULL,'000024','F','F1001:F:subjects:ROOT','TRUE',NULL,'F1001 Canada (General)','000024'),
('F1201','00000000000000000002',NULL,'F1201 Latin America (General)',NULL,'000024','F','F1201:F:subjects:ROOT','TRUE',NULL,'F1201 Latin America (General)','000024'),
('G','00000000000000000002',NULL,'G Geography. Anthropology. Recreation',NULL,'000024','subjects','G:subjects:ROOT','FALSE',NULL,'G Geography. Anthropology. Recreation','000024'),
('G1','00000000000000000002',NULL,'G Geography (General)',NULL,'000024','G','G1:G:subjects:ROOT','TRUE',NULL,'G Geography (General)','000024'),
('GA','00000000000000000002',NULL,'GA Mathematical geography. Cartography',NULL,'000024','G','GA:G:subjects:ROOT','TRUE',NULL,'GA Mathematical geography. Cartography','000024'),
('GB','00000000000000000002',NULL,'GB Physical geography',NULL,'000024','G','GB:G:subjects:ROOT','TRUE',NULL,'GB Physical geography','000024'),
('GC','00000000000000000002',NULL,'GC Oceanography',NULL,'000024','G','GC:G:subjects:ROOT','TRUE',NULL,'GC Oceanography','000024'),
('GE','00000000000000000002',NULL,'GE Environmental Sciences',NULL,'000024','G','GE:G:subjects:ROOT','TRUE',NULL,'GE Environmental Sciences','000024'),
('GF','00000000000000000002',NULL,'GF Human ecology. Anthropogeography',NULL,'000024','G','GF:G:subjects:ROOT','TRUE',NULL,'GF Human ecology. Anthropogeography','000024'),
('GN','00000000000000000002',NULL,'GN Anthropology',NULL,'000024','G','GN:G:subjects:ROOT','TRUE',NULL,'GN Anthropology','000024'),
('GR','00000000000000000002',NULL,'GR Folklore',NULL,'000024','G','GR:G:subjects:ROOT','TRUE',NULL,'GR Folklore','000024'),
('GT','00000000000000000002',NULL,'GT Manners and customs',NULL,'000024','G','GT:G:subjects:ROOT','TRUE',NULL,'GT Manners and customs','000024'),
('GV','00000000000000000002',NULL,'GV Recreation Leisure',NULL,'000024','G','GV:G:subjects:ROOT','TRUE',NULL,'GV Recreation Leisure','000024'),
('H','00000000000000000002',NULL,'H Social Sciences',NULL,'000024','subjects','H:subjects:ROOT','FALSE',NULL,'H Social Sciences','000024'),
('H1','00000000000000000002',NULL,'H Social Sciences (General)',NULL,'000024','H','H1:H:subjects:ROOT','TRUE',NULL,'H Social Sciences (General)','000024'),
('HA','00000000000000000002',NULL,'HA Statistics',NULL,'000024','H','HA:H:subjects:ROOT','TRUE',NULL,'HA Statistics','000024'),
('HB','00000000000000000002',NULL,'HB Economic Theory',NULL,'000024','H','HB:H:subjects:ROOT','TRUE',NULL,'HB Economic Theory','000024'),
('HC','00000000000000000002',NULL,'HC Economic History and Conditions',NULL,'000024','H','HC:H:subjects:ROOT','TRUE',NULL,'HC Economic History and Conditions','000024'),
('HD','00000000000000000002',NULL,'HD Industries. Land use. Labor',NULL,'000024','H','HD:H:subjects:ROOT','TRUE',NULL,'HD Industries. Land use. Labor','000024'),
('HD28','00000000000000000002',NULL,'HD28 Management. Industrial Management',NULL,'000024','HD','HD28:HD:H:subjects:ROOT','TRUE',NULL,'HD28 Management. Industrial Management','000024'),
('HD61','00000000000000000002',NULL,'HD61 Risk Management',NULL,'000024','HD','HD61:HD:H:subjects:ROOT','TRUE',NULL,'HD61 Risk Management','000024'),
('HE','00000000000000000002',NULL,'HE Transportation and Communications',NULL,'000024','H','HE:H:subjects:ROOT','TRUE',NULL,'HE Transportation and Communications','000024'),
('HF','00000000000000000002',NULL,'HF Commerce',NULL,'000024','H','HF:H:subjects:ROOT','TRUE',NULL,'HF Commerce','000024'),
('HF5601','00000000000000000002',NULL,'HF5601 Accounting',NULL,'000024','HF','HF5601:HF:H:subjects:ROOT','TRUE',NULL,'HF5601 Accounting','000024'),
('HG','00000000000000000002',NULL,'HG Finance',NULL,'000024','H','HG:H:subjects:ROOT','TRUE',NULL,'HG Finance','000024'),
('HJ','00000000000000000002',NULL,'HJ Public Finance',NULL,'000024','H','HJ:H:subjects:ROOT','TRUE',NULL,'HJ Public Finance','000024'),
('HM','00000000000000000002',NULL,'HM Sociology',NULL,'000024','H','HM:H:subjects:ROOT','TRUE',NULL,'HM Sociology','000024'),
('HN','00000000000000000002',NULL,'HN Social history and conditions. Social problems. Social  reform',NULL,'000024','H','HN:H:subjects:ROOT','TRUE',NULL,'HN Social history and conditions. Social problems. Social  reform','000024'),
('HQ','00000000000000000002',NULL,'HQ The family. Marriage. Woman',NULL,'000024','H','HQ:H:subjects:ROOT','TRUE',NULL,'HQ The family. Marriage. Woman','000024'),
('HS','00000000000000000002',NULL,'HS Societies secret benevolent etc',NULL,'000024','H','HS:H:subjects:ROOT','TRUE',NULL,'HS Societies secret benevolent etc','000024'),
('HT','00000000000000000002',NULL,'HT Communities. Classes. Races',NULL,'000024','H','HT:H:subjects:ROOT','TRUE',NULL,'HT Communities. Classes. Races','000024'),
('HV','00000000000000000002',NULL,'HV Social pathology. Social and public welfare',NULL,'000024','H','HV:H:subjects:ROOT','TRUE',NULL,'HV Social pathology. Social and public welfare','000024'),
('HX','00000000000000000002',NULL,'HX Socialism. Communism. Anarchism',NULL,'000024','H','HX:H:subjects:ROOT','TRUE',NULL,'HX Socialism. Communism. Anarchism','000024'),
('J','00000000000000000002',NULL,'J Political Science',NULL,'000024','subjects','J:subjects:ROOT','FALSE',NULL,'J Political Science','000024'),
('J1','00000000000000000002',NULL,'J General legislative and executive papers',NULL,'000024','J','J1:J:subjects:ROOT','TRUE',NULL,'J General legislative and executive papers','000024'),
('JA','00000000000000000002',NULL,'JA Political science (General)',NULL,'000024','J','JA:J:subjects:ROOT','TRUE',NULL,'JA Political science (General)','000024'),
('JC','00000000000000000002',NULL,'JC Political theory',NULL,'000024','J','JC:J:subjects:ROOT','TRUE',NULL,'JC Political theory','000024'),
('JF','00000000000000000002',NULL,'JF Political institutions (General)',NULL,'000024','J','JF:J:subjects:ROOT','TRUE',NULL,'JF Political institutions (General)','000024'),
('JK','00000000000000000002',NULL,'JK Political institutions (United States)',NULL,'000024','J','JK:J:subjects:ROOT','TRUE',NULL,'JK Political institutions (United States)','000024'),
('JL','00000000000000000002',NULL,'JL Political institutions (America except United States)',NULL,'000024','J','JL:J:subjects:ROOT','TRUE',NULL,'JL Political institutions (America except United States)','000024'),
('JN','00000000000000000002',NULL,'JN Political institutions (Europe)',NULL,'000024','J','JN:J:subjects:ROOT','TRUE',NULL,'JN Political institutions (Europe)','000024'),
('JN101','00000000000000000002',NULL,'JN101 Great Britain',NULL,'000024','JN','JN101:JN:J:subjects:ROOT','TRUE',NULL,'JN101 Great Britain','000024'),
('JN1187','00000000000000000002',NULL,'JN1187 Scotland',NULL,'000024','JN','JN1187:JN:J:subjects:ROOT','TRUE',NULL,'JN1187 Scotland','000024'),
('JQ','00000000000000000002',NULL,'JQ Political institutions Asia',NULL,'000024','J','JQ:J:subjects:ROOT','TRUE',NULL,'JQ Political institutions Asia','000024'),
('JS','00000000000000000002',NULL,'JS Local government Municipal government',NULL,'000024','J','JS:J:subjects:ROOT','TRUE',NULL,'JS Local government Municipal government','000024'),
('JV','00000000000000000002',NULL,'JV Colonies and colonization. Emigration and immigration. International migration',NULL,'000024','J','JV:J:subjects:ROOT','TRUE',NULL,'JV Colonies and colonization. Emigration and immigration. International migration','000024'),
('JX','00000000000000000002',NULL,'JX International law',NULL,'000024','J','JX:J:subjects:ROOT','TRUE',NULL,'JX International law','000024'),
('JZ','00000000000000000002',NULL,'JZ International relations',NULL,'000024','J','JZ:J:subjects:ROOT','TRUE',NULL,'JZ International relations','000024'),
('K','00000000000000000002',NULL,'K Law',NULL,'000024','subjects','K:subjects:ROOT','FALSE',NULL,'K Law','000024'),
('K1','00000000000000000002',NULL,'K Law (General)',NULL,'000024','K','K1:K:subjects:ROOT','TRUE',NULL,'K Law (General)','000024'),
('KD','00000000000000000002',NULL,'KD England and Wales',NULL,'000024','K','KD:K:subjects:ROOT','TRUE',NULL,'KD England and Wales','000024'),
('KDC','00000000000000000002',NULL,'KDC Scotland',NULL,'000024','KD','KDC:KD:K:subjects:ROOT','TRUE',NULL,'KDC Scotland','000024'),
('KF','00000000000000000002',NULL,'KF United States Federal Law',NULL,'000024','K','KF:K:subjects:ROOT','TRUE',NULL,'KF United States Federal Law','000024'),
('KZ','00000000000000000002',NULL,'KZ Law of Nations',NULL,'000024','K','KZ:K:subjects:ROOT','TRUE',NULL,'KZ Law of Nations','000024'),
('L','00000000000000000002',NULL,'L Education',NULL,'000024','subjects','L:subjects:ROOT','FALSE',NULL,'L Education','000024'),
('L1','00000000000000000002',NULL,'L Education (General)',NULL,'000024','L','L1:L:subjects:ROOT','TRUE',NULL,'L Education (General)','000024'),
('LA','00000000000000000002',NULL,'LA History of education',NULL,'000024','L','LA:L:subjects:ROOT','TRUE',NULL,'LA History of education','000024'),
('LB','00000000000000000002',NULL,'LB Theory and practice of education',NULL,'000024','L','LB:L:subjects:ROOT','TRUE',NULL,'LB Theory and practice of education','000024'),
('LB1501','00000000000000000002',NULL,'LB1501 Primary Education',NULL,'000024','LB','LB1501:LB:L:subjects:ROOT','TRUE',NULL,'LB1501 Primary Education','000024'),
('LB1603','00000000000000000002',NULL,'LB1603 Secondary Education. High schools',NULL,'000024','LB','LB1603:LB:L:subjects:ROOT','TRUE',NULL,'LB1603 Secondary Education. High schools','000024'),
('LB2300','00000000000000000002',NULL,'LB2300 Higher Education',NULL,'000024','LB','LB2300:LB:L:subjects:ROOT','TRUE',NULL,'LB2300 Higher Education','000024'),
('LB2361','00000000000000000002',NULL,'LB2361 Curriculum',NULL,'000024','LB','LB2361:LB:L:subjects:ROOT','TRUE',NULL,'LB2361 Curriculum','000024'),
('LC','00000000000000000002',NULL,'LC Special aspects of education',NULL,'000024','L','LC:L:subjects:ROOT','TRUE',NULL,'LC Special aspects of education','000024'),
('LC5201','00000000000000000002',NULL,'LC5201 Education extension. Adult education. Continuing education',NULL,'000024','LC','LC5201:LC:L:subjects:ROOT','TRUE',NULL,'LC5201 Education extension. Adult education. Continuing education','000024'),
('LD','00000000000000000002',NULL,'LD Individual institutions (United States)',NULL,'000024','L','LD:L:subjects:ROOT','TRUE',NULL,'LD Individual institutions (United States)','000024'),
('LE','00000000000000000002',NULL,'LE Individual institutions (America except United States)',NULL,'000024','L','LE:L:subjects:ROOT','TRUE',NULL,'LE Individual institutions (America except United States)','000024'),
('LF','00000000000000000002',NULL,'LF Individual institutions (Europe)',NULL,'000024','L','LF:L:subjects:ROOT','TRUE',NULL,'LF Individual institutions (Europe)','000024'),
('LG','00000000000000000002',NULL,'LG Individual institutions (Asia. Africa)',NULL,'000024','L','LG:L:subjects:ROOT','TRUE',NULL,'LG Individual institutions (Asia. Africa)','000024'),
('LT','00000000000000000002',NULL,'LT Textbooks',NULL,'000024','L','LT:L:subjects:ROOT','TRUE',NULL,'LT Textbooks','000024'),
('M','00000000000000000002',NULL,'M Music and Books on Music',NULL,'000024','subjects','M:subjects:ROOT','FALSE',NULL,'M Music and Books on Music','000024'),
('M1','00000000000000000002',NULL,'M Music',NULL,'000024','M','M1:M:subjects:ROOT','TRUE',NULL,'M Music','000024'),
('ML','00000000000000000002',NULL,'ML Literature of music',NULL,'000024','M','ML:M:subjects:ROOT','TRUE',NULL,'ML Literature of music','000024'),
('MT','00000000000000000002',NULL,'MT Musical instruction and study',NULL,'000024','M','MT:M:subjects:ROOT','TRUE',NULL,'MT Musical instruction and study','000024'),
('N','00000000000000000002',NULL,'N Fine Arts',NULL,'000024','subjects','N:subjects:ROOT','FALSE',NULL,'N Fine Arts','000024'),
('N1','00000000000000000002',NULL,'N Visual arts (General) For photography, see TR',NULL,'000024','N','N1:N:subjects:ROOT','TRUE',NULL,'N Visual arts (General) For photography, see TR','000024'),
('NA','00000000000000000002',NULL,'NA Architecture',NULL,'000024','N','NA:N:subjects:ROOT','TRUE',NULL,'NA Architecture','000024'),
('NB','00000000000000000002',NULL,'NB Sculpture',NULL,'000024','N','NB:N:subjects:ROOT','TRUE',NULL,'NB Sculpture','000024'),
('NC','00000000000000000002',NULL,'NC Drawing Design Illustration',NULL,'000024','N','NC:N:subjects:ROOT','TRUE',NULL,'NC Drawing Design Illustration','000024'),
('ND','00000000000000000002',NULL,'ND Painting',NULL,'000024','N','ND:N:subjects:ROOT','TRUE',NULL,'ND Painting','000024'),
('NE','00000000000000000002',NULL,'NE Print media',NULL,'000024','N','NE:N:subjects:ROOT','TRUE',NULL,'NE Print media','000024'),
('NK','00000000000000000002',NULL,'NK Decorative arts Applied arts Decoration and ornament',NULL,'000024','N','NK:N:subjects:ROOT','TRUE',NULL,'NK Decorative arts Applied arts Decoration and ornament','000024'),
('NX','00000000000000000002',NULL,'NX Arts in general',NULL,'000024','N','NX:N:subjects:ROOT','TRUE',NULL,'NX Arts in general','000024'),
('P','00000000000000000002',NULL,'P Language and Literature',NULL,'000024','subjects','P:subjects:ROOT','FALSE',NULL,'P Language and Literature','000024'),
('P1','00000000000000000002',NULL,'P Philology. Linguistics',NULL,'000024','P','P1:P:subjects:ROOT','TRUE',NULL,'P Philology. Linguistics','000024'),
('PA','00000000000000000002',NULL,'PA Classical philology',NULL,'000024','P','PA:P:subjects:ROOT','TRUE',NULL,'PA Classical philology','000024'),
('PB','00000000000000000002',NULL,'PB Modern European Languages',NULL,'000024','P','PB:P:subjects:ROOT','TRUE',NULL,'PB Modern European Languages','000024'),
('PB1501','00000000000000000002',NULL,'PB1501 Gaelic (Scottish Gaelic, Erse)',NULL,'000024','PB','PB1501:PB:P:subjects:ROOT','TRUE',NULL,'PB1501 Gaelic (Scottish Gaelic, Erse)','000024'),
('PC','00000000000000000002',NULL,'PC Romance languages',NULL,'000024','P','PC:P:subjects:ROOT','TRUE',NULL,'PC Romance languages','000024'),
('PD','00000000000000000002',NULL,'PD Germanic languages',NULL,'000024','P','PD:P:subjects:ROOT','TRUE',NULL,'PD Germanic languages','000024'),
('PE','00000000000000000002',NULL,'PE English',NULL,'000024','P','PE:P:subjects:ROOT','TRUE',NULL,'PE English','000024'),
('PF','00000000000000000002',NULL,'PF West Germanic',NULL,'000024','P','PF:P:subjects:ROOT','TRUE',NULL,'PF West Germanic','000024'),
('PG','00000000000000000002',NULL,'PG Slavic, Baltic, Albanian languages and literature',NULL,'000024','P','PG:P:subjects:ROOT','TRUE',NULL,'PG Slavic, Baltic, Albanian languages and literature','000024'),
('PH','00000000000000000002',NULL,'PH Finno-Ugrian, Basque languages and literatures',NULL,'000024','P','PH:P:subjects:ROOT','TRUE',NULL,'PH Finno-Ugrian, Basque languages and literatures','000024'),
('PI','00000000000000000002',NULL,'PI Oriental languages and literatures',NULL,'000024','P','PI:P:subjects:ROOT','TRUE',NULL,'PI Oriental languages and literatures','000024'),
('PJ','00000000000000000002',NULL,'PJ Semitic',NULL,'000024','P','PJ:P:subjects:ROOT','TRUE',NULL,'PJ Semitic','000024'),
('PK','00000000000000000002',NULL,'PK Indo-Iranian',NULL,'000024','P','PK:P:subjects:ROOT','TRUE',NULL,'PK Indo-Iranian','000024'),
('PL','00000000000000000002',NULL,'PL Languages and literatures of Eastern Asia, Africa, Oceania',NULL,'000024','P','PL:P:subjects:ROOT','TRUE',NULL,'PL Languages and literatures of Eastern Asia, Africa, Oceania','000024'),
('PM','00000000000000000002',NULL,'PM Hyperborean, Indian, and Artificial languages',NULL,'000024','P','PM:P:subjects:ROOT','TRUE',NULL,'PM Hyperborean, Indian, and Artificial languages','000024'),
('PN','00000000000000000002',NULL,'PN Literature (General)',NULL,'000024','P','PN:P:subjects:ROOT','TRUE',NULL,'PN Literature (General)','000024'),
('PN0080','00000000000000000002',NULL,'PN0080 Criticism',NULL,'000024','PN','PN0080:PN:P:subjects:ROOT','TRUE',NULL,'PN0080 Criticism','000024'),
('PN0441','00000000000000000002',NULL,'PN0441 Literary History',NULL,'000024','PN','PN0441:PN:P:subjects:ROOT','TRUE',NULL,'PN0441 Literary History','000024'),
('PN1990','00000000000000000002',NULL,'PN1990 Broadcasting',NULL,'000024','PN','PN1990:PN:P:subjects:ROOT','TRUE',NULL,'PN1990 Broadcasting','000024'),
('PN1993','00000000000000000002',NULL,'PN1993 Motion Pictures',NULL,'000024','PN','PN1993:PN:P:subjects:ROOT','TRUE',NULL,'PN1993 Motion Pictures','000024'),
('PN2000','00000000000000000002',NULL,'PN2000 Dramatic representation. The Theater',NULL,'000024','PN','PN2000:PN:P:subjects:ROOT','TRUE',NULL,'PN2000 Dramatic representation. The Theater','000024'),
('PQ','00000000000000000002',NULL,'PQ Romance literatures',NULL,'000024','P','PQ:P:subjects:ROOT','TRUE',NULL,'PQ Romance literatures','000024'),
('PR','00000000000000000002',NULL,'PR English literature',NULL,'000024','P','PR:P:subjects:ROOT','TRUE',NULL,'PR English literature','000024'),
('PS','00000000000000000002',NULL,'PS American literature',NULL,'000024','P','PS:P:subjects:ROOT','TRUE',NULL,'PS American literature','000024'),
('PT','00000000000000000002',NULL,'PT Germanic literature',NULL,'000024','P','PT:P:subjects:ROOT','TRUE',NULL,'PT Germanic literature','000024'),
('PZ','00000000000000000002',NULL,'PZ Childrens literature',NULL,'000024','P','PZ:P:subjects:ROOT','TRUE',NULL,'PZ Childrens literature','000024'),
('Q','00000000000000000002',NULL,'Q Science',NULL,'000024','subjects','Q:subjects:ROOT','FALSE',NULL,'Q Science','000024'),
('Q1','00000000000000000002',NULL,'Q Science (General)',NULL,'000024','Q','Q1:Q:subjects:ROOT','TRUE',NULL,'Q Science (General)','000024'),
('QA','00000000000000000002',NULL,'QA Mathematics',NULL,'000024','Q','QA:Q:subjects:ROOT','TRUE',NULL,'QA Mathematics','000024'),
('QA75','00000000000000000002',NULL,'QA75 Electronic computers. Computer science',NULL,'000024','QA','QA75:QA:Q:subjects:ROOT','TRUE',NULL,'QA75 Electronic computers. Computer science','000024'),
('QA76','00000000000000000002',NULL,'QA76 Computer software',NULL,'000024','QA','QA76:QA:Q:subjects:ROOT','TRUE',NULL,'QA76 Computer software','000024'),
('QB','00000000000000000002',NULL,'QB Astronomy',NULL,'000024','Q','QB:Q:subjects:ROOT','TRUE',NULL,'QB Astronomy','000024'),
('QC','00000000000000000002',NULL,'QC Physics',NULL,'000024','Q','QC:Q:subjects:ROOT','TRUE',NULL,'QC Physics','000024'),
('QD','00000000000000000002',NULL,'QD Chemistry',NULL,'000024','Q','QD:Q:subjects:ROOT','TRUE',NULL,'QD Chemistry','000024'),
('QE','00000000000000000002',NULL,'QE Geology',NULL,'000024','Q','QE:Q:subjects:ROOT','TRUE',NULL,'QE Geology','000024'),
('QH','00000000000000000002',NULL,'QH Natural history',NULL,'000024','Q','QH:Q:subjects:ROOT','TRUE',NULL,'QH Natural history','000024'),
('QH301','00000000000000000002',NULL,'QH301 Biology',NULL,'000024','QH','QH301:QH:Q:subjects:ROOT','TRUE',NULL,'QH301 Biology','000024'),
('QH426','00000000000000000002',NULL,'QH426 Genetics',NULL,'000024','QH','QH426:QH:Q:subjects:ROOT','TRUE',NULL,'QH426 Genetics','000024'),
('QK','00000000000000000002',NULL,'QK Botany',NULL,'000024','Q','QK:Q:subjects:ROOT','TRUE',NULL,'QK Botany','000024'),
('QL','00000000000000000002',NULL,'QL Zoology',NULL,'000024','Q','QL:Q:subjects:ROOT','TRUE',NULL,'QL Zoology','000024'),
('QM','00000000000000000002',NULL,'QM Human anatomy',NULL,'000024','Q','QM:Q:subjects:ROOT','TRUE',NULL,'QM Human anatomy','000024'),
('QP','00000000000000000002',NULL,'QP Physiology',NULL,'000024','Q','QP:Q:subjects:ROOT','TRUE',NULL,'QP Physiology','000024'),
('QR','00000000000000000002',NULL,'QR Microbiology',NULL,'000024','Q','QR:Q:subjects:ROOT','TRUE',NULL,'QR Microbiology','000024'),
('QR180','00000000000000000002',NULL,'QR180 Immunology',NULL,'000024','QR','QR180:QR:Q:subjects:ROOT','TRUE',NULL,'QR180 Immunology','000024'),
('QR355','00000000000000000002',NULL,'QR355 Virology',NULL,'000024','QR','QR355:QR:Q:subjects:ROOT','TRUE',NULL,'QR355 Virology','000024'),
('R','00000000000000000002',NULL,'R Medicine',NULL,'000024','subjects','R:subjects:ROOT','FALSE',NULL,'R Medicine','000024'),
('R1','00000000000000000002',NULL,'R Medicine (General)',NULL,'000024','R','R1:R:subjects:ROOT','TRUE',NULL,'R Medicine (General)','000024'),
('RA','00000000000000000002',NULL,'RA Public aspects of medicine',NULL,'000024','R','RA:R:subjects:ROOT','TRUE',NULL,'RA Public aspects of medicine','000024'),
('RA0421','00000000000000000002',NULL,'RA0421 Public health. Hygiene. Preventive Medicine',NULL,'000024','RA','RA0421:RA:R:subjects:ROOT','TRUE',NULL,'RA0421 Public health. Hygiene. Preventive Medicine','000024'),
('RA1001','00000000000000000002',NULL,'RA1001 Forensic Medicine. Medical jurisprudence. Legal medicine',NULL,'000024','RA','RA1001:RA:R:subjects:ROOT','TRUE',NULL,'RA1001 Forensic Medicine. Medical jurisprudence. Legal medicine','000024'),
('RB','00000000000000000002',NULL,'RB Pathology',NULL,'000024','R','RB:R:subjects:ROOT','TRUE',NULL,'RB Pathology','000024'),
('RC','00000000000000000002',NULL,'RC Internal medicine',NULL,'000024','R','RC:R:subjects:ROOT','TRUE',NULL,'RC Internal medicine','000024'),
('RC0254','00000000000000000002',NULL,'RC0254 Neoplasms. Tumors. Oncology (including Cancer)',NULL,'000024','RC','RC0254:RC:R:subjects:ROOT','TRUE',NULL,'RC0254 Neoplasms. Tumors. Oncology (including Cancer)','000024'),
('RC0321','00000000000000000002',NULL,'RC0321 Neuroscience. Biological psychiatry. Neuropsychiatry',NULL,'000024','RC','RC0321:RC:R:subjects:ROOT','TRUE',NULL,'RC0321 Neuroscience. Biological psychiatry. Neuropsychiatry','000024'),
('RC1200','00000000000000000002',NULL,'RC1200 Sports Medicine',NULL,'000024','RC','RC1200:RC:R:subjects:ROOT','TRUE',NULL,'RC1200 Sports Medicine','000024'),
('RD','00000000000000000002',NULL,'RD Surgery',NULL,'000024','R','RD:R:subjects:ROOT','TRUE',NULL,'RD Surgery','000024'),
('RE','00000000000000000002',NULL,'RE Ophthalmology',NULL,'000024','R','RE:R:subjects:ROOT','TRUE',NULL,'RE Ophthalmology','000024'),
('RF','00000000000000000002',NULL,'RF Otorhinolaryngology',NULL,'000024','R','RF:R:subjects:ROOT','TRUE',NULL,'RF Otorhinolaryngology','000024'),
('RG','00000000000000000002',NULL,'RG Gynecology and obstetrics',NULL,'000024','R','RG:R:subjects:ROOT','TRUE',NULL,'RG Gynecology and obstetrics','000024'),
('RJ','00000000000000000002',NULL,'RJ Pediatrics',NULL,'000024','R','RJ:R:subjects:ROOT','TRUE',NULL,'RJ Pediatrics','000024'),
('RJ101','00000000000000000002',NULL,'RJ101 Child Health. Child health services',NULL,'000024','RJ','RJ101:RJ:R:subjects:ROOT','TRUE',NULL,'RJ101 Child Health. Child health services','000024'),
('RK','00000000000000000002',NULL,'RK Dentistry',NULL,'000024','R','RK:R:subjects:ROOT','TRUE',NULL,'RK Dentistry','000024'),
('RL','00000000000000000002',NULL,'RL Dermatology',NULL,'000024','R','RL:R:subjects:ROOT','TRUE',NULL,'RL Dermatology','000024'),
('RM','00000000000000000002',NULL,'RM Therapeutics. Pharmacology',NULL,'000024','R','RM:R:subjects:ROOT','TRUE',NULL,'RM Therapeutics. Pharmacology','000024'),
('RS','00000000000000000002',NULL,'RS Pharmacy and materia medica',NULL,'000024','R','RS:R:subjects:ROOT','TRUE',NULL,'RS Pharmacy and materia medica','000024'),
('RT','00000000000000000002',NULL,'RT Nursing',NULL,'000024','R','RT:R:subjects:ROOT','TRUE',NULL,'RT Nursing','000024'),
('RV','00000000000000000002',NULL,'RV Botanic, Thomsonian, and eclectic medicine',NULL,'000024','R','RV:R:subjects:ROOT','TRUE',NULL,'RV Botanic, Thomsonian, and eclectic medicine','000024'),
('RX','00000000000000000002',NULL,'RX Homeopathy',NULL,'000024','R','RX:R:subjects:ROOT','TRUE',NULL,'RX Homeopathy','000024'),
('RZ','00000000000000000002',NULL,'RZ Other systems of medicine',NULL,'000024','R','RZ:R:subjects:ROOT','TRUE',NULL,'RZ Other systems of medicine','000024'),
('S','00000000000000000002',NULL,'S Agriculture',NULL,'000024','subjects','S:subjects:ROOT','FALSE',NULL,'S Agriculture','000024'),
('S1','00000000000000000002',NULL,'S Agriculture (General)',NULL,'000024','S','S1:S:subjects:ROOT','TRUE',NULL,'S Agriculture (General)','000024'),
('SB','00000000000000000002',NULL,'SB Plant culture',NULL,'000024','S','SB:S:subjects:ROOT','TRUE',NULL,'SB Plant culture','000024'),
('SD','00000000000000000002',NULL,'SD Forestry',NULL,'000024','S','SD:S:subjects:ROOT','TRUE',NULL,'SD Forestry','000024'),
('SF','00000000000000000002',NULL,'SF Animal culture',NULL,'000024','S','SF:S:subjects:ROOT','TRUE',NULL,'SF Animal culture','000024'),
('SH','00000000000000000002',NULL,'SH Aquaculture. Fisheries. Angling',NULL,'000024','S','SH:S:subjects:ROOT','TRUE',NULL,'SH Aquaculture. Fisheries. Angling','000024'),
('SK','00000000000000000002',NULL,'SK Hunting sports',NULL,'000024','S','SK:S:subjects:ROOT','TRUE',NULL,'SK Hunting sports','000024'),
('T','00000000000000000002',NULL,'T Technology',NULL,'000024','subjects','T:subjects:ROOT','FALSE',NULL,'T Technology','000024'),
('T1','00000000000000000002',NULL,'T Technology (General)',NULL,'000024','T','T1:T:subjects:ROOT','TRUE',NULL,'T Technology (General)','000024'),
('T201','00000000000000000002',NULL,'T201 Patents. Trademarks',NULL,'000024','T1','T201:T1:T:subjects:ROOT','TRUE',NULL,'T201 Patents. Trademarks','000024'),
('TA','00000000000000000002',NULL,'TA Engineering (General). Civil engineering (General)',NULL,'000024','T','TA:T:subjects:ROOT','TRUE',NULL,'TA Engineering (General). Civil engineering (General)','000024'),
('TC','00000000000000000002',NULL,'TC Hydraulic engineering. Ocean engineering',NULL,'000024','T','TC:T:subjects:ROOT','TRUE',NULL,'TC Hydraulic engineering. Ocean engineering','000024'),
('TD','00000000000000000002',NULL,'TD Environmental technology. Sanitary engineering',NULL,'000024','T','TD:T:subjects:ROOT','TRUE',NULL,'TD Environmental technology. Sanitary engineering','000024'),
('TE','00000000000000000002',NULL,'TE Highway engineering. Roads and pavements',NULL,'000024','T','TE:T:subjects:ROOT','TRUE',NULL,'TE Highway engineering. Roads and pavements','000024'),
('TF','00000000000000000002',NULL,'TF Railroad engineering and operation',NULL,'000024','T','TF:T:subjects:ROOT','TRUE',NULL,'TF Railroad engineering and operation','000024'),
('TG','00000000000000000002',NULL,'TG Bridge engineering',NULL,'000024','T','TG:T:subjects:ROOT','TRUE',NULL,'TG Bridge engineering','000024'),
('TH','00000000000000000002',NULL,'TH Building construction',NULL,'000024','T','TH:T:subjects:ROOT','TRUE',NULL,'TH Building construction','000024'),
('TJ','00000000000000000002',NULL,'TJ Mechanical engineering and machinery',NULL,'000024','T','TJ:T:subjects:ROOT','TRUE',NULL,'TJ Mechanical engineering and machinery','000024'),
('TK','00000000000000000002',NULL,'TK Electrical engineering. Electronics Nuclear engineering',NULL,'000024','T','TK:T:subjects:ROOT','TRUE',NULL,'TK Electrical engineering. Electronics Nuclear engineering','000024'),
('TL','00000000000000000002',NULL,'TL Motor vehicles. Aeronautics. Astronautics',NULL,'000024','T','TL:T:subjects:ROOT','TRUE',NULL,'TL Motor vehicles. Aeronautics. Astronautics','000024'),
('TN','00000000000000000002',NULL,'TN Mining engineering. Metallurgy',NULL,'000024','T','TN:T:subjects:ROOT','TRUE',NULL,'TN Mining engineering. Metallurgy','000024'),
('TP','00000000000000000002',NULL,'TP Chemical technology',NULL,'000024','T','TP:T:subjects:ROOT','TRUE',NULL,'TP Chemical technology','000024'),
('TR','00000000000000000002',NULL,'TR Photography',NULL,'000024','T','TR:T:subjects:ROOT','TRUE',NULL,'TR Photography','000024'),
('TS','00000000000000000002',NULL,'TS Manufactures',NULL,'000024','T','TS:T:subjects:ROOT','TRUE',NULL,'TS Manufactures','000024'),
('TT','00000000000000000002',NULL,'TT Handicrafts Arts and crafts',NULL,'000024','T','TT:T:subjects:ROOT','TRUE',NULL,'TT Handicrafts Arts and crafts','000024'),
('TX','00000000000000000002',NULL,'TX Home economics',NULL,'000024','T','TX:T:subjects:ROOT','TRUE',NULL,'TX Home economics','000024'),
('U','00000000000000000002',NULL,'U Military Science',NULL,'000024','subjects','U:subjects:ROOT','FALSE',NULL,'U Military Science','000024'),
('U1','00000000000000000002',NULL,'U Military Science (General)',NULL,'000024','U','U1:U:subjects:ROOT','TRUE',NULL,'U Military Science (General)','000024'),
('V','00000000000000000002',NULL,'V Naval Science',NULL,'000024','subjects','V:subjects:ROOT','FALSE',NULL,'V Naval Science','000024'),
('V1','00000000000000000002',NULL,'V Naval Science (General)',NULL,'000024','V','V1:V:subjects:ROOT','TRUE',NULL,'V Naval Science (General)','000024'),
('VM','00000000000000000002',NULL,'VM Naval architecture. Shipbuilding. Marine engineering',NULL,'000024','V','VM:V:subjects:ROOT','TRUE',NULL,'VM Naval architecture. Shipbuilding. Marine engineering','000024'),
('Z','00000000000000000002',NULL,'Z Bibliography. Library Science. Information Resources',NULL,'000024','subjects','Z:subjects:ROOT','FALSE',NULL,'Z Bibliography. Library Science. Information Resources','000024'),
('Z004','00000000000000000002',NULL,'Z004 Books. Writing. Paleography',NULL,'000024','Z','Z004:Z:subjects:ROOT','TRUE',NULL,'Z004 Books. Writing. Paleography','000024'),
('Z665','00000000000000000002',NULL,'Z665 Library Science. Information Science',NULL,'000024','Z','Z665:Z:subjects:ROOT','TRUE',NULL,'Z665 Library Science. Information Science','000024'),
('Z719','00000000000000000002',NULL,'Z719 Libraries (General)',NULL,'000024','Z','Z719:Z:subjects:ROOT','TRUE',NULL,'Z719 Libraries (General)','000024'),
('ZA','00000000000000000002',NULL,'ZA Information resources',NULL,'000024','Z','ZA:Z:subjects:ROOT','TRUE',NULL,'ZA Information resources','000024'),
('ZA4050','00000000000000000002',NULL,'ZA4050 Electronic information resources',NULL,'000024','ZA','ZA4050:ZA:Z:subjects:ROOT','TRUE',NULL,'ZA4050 Electronic information resources','000024'),
('ZA4450','00000000000000000002',NULL,'ZA4450 Databases',NULL,'000024','ZA','ZA4450:ZA:Z:subjects:ROOT','TRUE',NULL,'ZA4450 Databases','000024'),
('divisions','00000000000000000002',NULL,'University Structure',NULL,'000024','ROOT','divisions:ROOT','FALSE',NULL,'University Structure','000024'),
('fac_eng','00000000000000000002',NULL,'Faculty of Engineering, Science and Mathematics',NULL,'000024','divisions','fac_eng:divisions:ROOT','FALSE',NULL,'Faculty of Engineering, Science and Mathematics','000024'),
('fac_law','00000000000000000002',NULL,'Faculty of Law, Arts and Social Sciences',NULL,'000024','divisions','fac_law:divisions:ROOT','FALSE',NULL,'Faculty of Law, Arts and Social Sciences','000024'),
('fac_med','00000000000000000002',NULL,'Faculty of Medicine, Health and Life Sciences',NULL,'000024','divisions','fac_med:divisions:ROOT','FALSE',NULL,'Faculty of Medicine, Health and Life Sciences','000024'),
('sch_art','00000000000000000002',NULL,'School of Art',NULL,'000024','fac_law','sch_art:fac_law:divisions:ROOT','TRUE',NULL,'School of Art','000024'),
('sch_bio','00000000000000000002',NULL,'School of Biological Sciences',NULL,'000024','fac_med','sch_bio:fac_med:divisions:ROOT','TRUE',NULL,'School of Biological Sciences','000024'),
('sch_che','00000000000000000002',NULL,'School of Chemistry',NULL,'000024','fac_eng','sch_che:fac_eng:divisions:ROOT','TRUE',NULL,'School of Chemistry','000024'),
('sch_civ','00000000000000000002',NULL,'School of Civil Engineering and the Environment',NULL,'000024','fac_eng','sch_civ:fac_eng:divisions:ROOT','TRUE',NULL,'School of Civil Engineering and the Environment','000024'),
('sch_ecs','00000000000000000002',NULL,'School of Electronics and Computer Science',NULL,'000024','fac_eng','sch_ecs:fac_eng:divisions:ROOT','TRUE',NULL,'School of Electronics and Computer Science','000024'),
('sch_edu','00000000000000000002',NULL,'School of Education',NULL,'000024','fac_law','sch_edu:fac_law:divisions:ROOT','TRUE',NULL,'School of Education','000024'),
('sch_eng','00000000000000000002',NULL,'School of Engineering Sciences',NULL,'000024','fac_eng','sch_eng:fac_eng:divisions:ROOT','TRUE',NULL,'School of Engineering Sciences','000024'),
('sch_geo','00000000000000000002',NULL,'School of Geography',NULL,'000024','fac_eng','sch_geo:fac_eng:divisions:ROOT','TRUE',NULL,'School of Geography','000024'),
('sch_hum','00000000000000000002',NULL,'School of Humanities',NULL,'000024','fac_law','sch_hum:fac_law:divisions:ROOT','TRUE',NULL,'School of Humanities','000024'),
('sch_law','00000000000000000002',NULL,'School of Law',NULL,'000024','fac_law','sch_law:fac_law:divisions:ROOT','TRUE',NULL,'School of Law','000024'),
('sch_man','00000000000000000002',NULL,'School of Management',NULL,'000024','fac_law','sch_man:fac_law:divisions:ROOT','TRUE',NULL,'School of Management','000024'),
('sch_mat','00000000000000000002',NULL,'School of Mathematics',NULL,'000024','fac_eng','sch_mat:fac_eng:divisions:ROOT','TRUE',NULL,'School of Mathematics','000024'),
('sch_med','00000000000000000002',NULL,'School of Medicine',NULL,'000024','fac_med','sch_med:fac_med:divisions:ROOT','TRUE',NULL,'School of Medicine','000024'),
('sch_phy','00000000000000000002',NULL,'School of Physics',NULL,'000024','fac_eng','sch_phy:fac_eng:divisions:ROOT','TRUE',NULL,'School of Physics','000024'),
('sch_psy','00000000000000000002',NULL,'School of Psychology',NULL,'000024','fac_med','sch_psy:fac_med:divisions:ROOT','TRUE',NULL,'School of Psychology','000024'),
('sch_soc','00000000000000000002',NULL,'School of Social Sciences',NULL,'000024','fac_law','sch_soc:fac_law:divisions:ROOT','TRUE',NULL,'School of Social Sciences','000024'),
('subjects','00000000000000000002',NULL,'Library of Congress Subject Areas',NULL,'000024','ROOT','subjects:ROOT','FALSE',NULL,'Library of Congress Subject Areas','000024');
/*!40000 ALTER TABLE `subject__ordervalues_en` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject__rindex`
--

DROP TABLE IF EXISTS `subject__rindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subject__rindex` (
  `field` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `word` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `subjectid` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`field`,`word`,`subjectid`),
  KEY `subjectid_1` (`subjectid`,`field`),
  CONSTRAINT `subject__rindex_fk` FOREIGN KEY (`subjectid`) REFERENCES `subject` (`subjectid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject__rindex`
--

LOCK TABLES `subject__rindex` WRITE;
/*!40000 ALTER TABLE `subject__rindex` DISABLE KEYS */;
/*!40000 ALTER TABLE `subject__rindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject_ancestors`
--

DROP TABLE IF EXISTS `subject_ancestors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subject_ancestors` (
  `subjectid` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL DEFAULT 0,
  `ancestors` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`subjectid`,`pos`),
  KEY `ancestors_0` (`ancestors`),
  CONSTRAINT `subject_ancestors_fk` FOREIGN KEY (`subjectid`) REFERENCES `subject` (`subjectid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject_ancestors`
--

LOCK TABLES `subject_ancestors` WRITE;
/*!40000 ALTER TABLE `subject_ancestors` DISABLE KEYS */;
INSERT INTO `subject_ancestors` VALUES
('A',0,'A'),
('AC',1,'A'),
('AI',1,'A'),
('AM',1,'A'),
('AS',1,'A'),
('AZ',1,'A'),
('AC',0,'AC'),
('AI',0,'AI'),
('AM',0,'AM'),
('AS',0,'AS'),
('AZ',0,'AZ'),
('B',0,'B'),
('B1',1,'B'),
('BC',1,'B'),
('BD',1,'B'),
('BF',1,'B'),
('BH',1,'B'),
('BJ',1,'B'),
('BL',1,'B'),
('BM',1,'B'),
('BP',1,'B'),
('BQ',1,'B'),
('BR',1,'B'),
('BS',1,'B'),
('BT',1,'B'),
('BV',1,'B'),
('BV1460',2,'B'),
('BX',1,'B'),
('B1',0,'B1'),
('BC',0,'BC'),
('BD',0,'BD'),
('BF',0,'BF'),
('BH',0,'BH'),
('BJ',0,'BJ'),
('BL',0,'BL'),
('BM',0,'BM'),
('BP',0,'BP'),
('BQ',0,'BQ'),
('BR',0,'BR'),
('BS',0,'BS'),
('BT',0,'BT'),
('BV',0,'BV'),
('BV1460',1,'BV'),
('BV1460',0,'BV1460'),
('BX',0,'BX'),
('C',0,'C'),
('C1',1,'C'),
('CB',1,'C'),
('CC',1,'C'),
('CD',1,'C'),
('CD921',2,'C'),
('CE',1,'C'),
('CJ',1,'C'),
('CN',1,'C'),
('CR',1,'C'),
('CS',1,'C'),
('CT',1,'C'),
('C1',0,'C1'),
('CB',0,'CB'),
('CC',0,'CC'),
('CD',0,'CD'),
('CD921',1,'CD'),
('CD921',0,'CD921'),
('CE',0,'CE'),
('CJ',0,'CJ'),
('CN',0,'CN'),
('CR',0,'CR'),
('CS',0,'CS'),
('CT',0,'CT'),
('D',0,'D'),
('D051',2,'D'),
('D1',1,'D'),
('D111',2,'D'),
('D204',2,'D'),
('D501',2,'D'),
('D731',2,'D'),
('D839',2,'D'),
('D880',2,'D'),
('D890',2,'D'),
('D901',2,'D'),
('DA',1,'D'),
('DAW',2,'D'),
('DB',1,'D'),
('DC',1,'D'),
('DD',1,'D'),
('DE',1,'D'),
('DF',1,'D'),
('DG',1,'D'),
('DH',1,'D'),
('DJ',1,'D'),
('DJK',2,'D'),
('DK',1,'D'),
('DL',1,'D'),
('DP',1,'D'),
('DR',1,'D'),
('DS',1,'D'),
('DT',1,'D'),
('DU',1,'D'),
('D051',0,'D051'),
('D051',1,'D1'),
('D1',0,'D1'),
('D111',1,'D1'),
('D204',1,'D1'),
('D501',1,'D1'),
('D731',1,'D1'),
('D839',1,'D1'),
('D880',1,'D1'),
('D890',1,'D1'),
('D901',1,'D1'),
('D111',0,'D111'),
('D204',0,'D204'),
('D501',0,'D501'),
('D731',0,'D731'),
('D839',0,'D839'),
('D880',0,'D880'),
('D890',0,'D890'),
('D901',0,'D901'),
('DA',0,'DA'),
('DAW',1,'DA'),
('DAW',0,'DAW'),
('DB',0,'DB'),
('DC',0,'DC'),
('DD',0,'DD'),
('DE',0,'DE'),
('DF',0,'DF'),
('DG',0,'DG'),
('DH',0,'DH'),
('DJ',0,'DJ'),
('DJK',1,'DJ'),
('DJK',0,'DJK'),
('DK',0,'DK'),
('DL',0,'DL'),
('DP',0,'DP'),
('DR',0,'DR'),
('DS',0,'DS'),
('DT',0,'DT'),
('DU',0,'DU'),
('E',0,'E'),
('E11',1,'E'),
('E151',1,'E'),
('E11',0,'E11'),
('E151',0,'E151'),
('F',0,'F'),
('F001',1,'F'),
('F1001',1,'F'),
('F1201',1,'F'),
('F001',0,'F001'),
('F1001',0,'F1001'),
('F1201',0,'F1201'),
('G',0,'G'),
('G1',1,'G'),
('GA',1,'G'),
('GB',1,'G'),
('GC',1,'G'),
('GE',1,'G'),
('GF',1,'G'),
('GN',1,'G'),
('GR',1,'G'),
('GT',1,'G'),
('GV',1,'G'),
('G1',0,'G1'),
('GA',0,'GA'),
('GB',0,'GB'),
('GC',0,'GC'),
('GE',0,'GE'),
('GF',0,'GF'),
('GN',0,'GN'),
('GR',0,'GR'),
('GT',0,'GT'),
('GV',0,'GV'),
('H',0,'H'),
('H1',1,'H'),
('HA',1,'H'),
('HB',1,'H'),
('HC',1,'H'),
('HD',1,'H'),
('HD28',2,'H'),
('HD61',2,'H'),
('HE',1,'H'),
('HF',1,'H'),
('HF5601',2,'H'),
('HG',1,'H'),
('HJ',1,'H'),
('HM',1,'H'),
('HN',1,'H'),
('HQ',1,'H'),
('HS',1,'H'),
('HT',1,'H'),
('HV',1,'H'),
('HX',1,'H'),
('H1',0,'H1'),
('HA',0,'HA'),
('HB',0,'HB'),
('HC',0,'HC'),
('HD',0,'HD'),
('HD28',1,'HD'),
('HD61',1,'HD'),
('HD28',0,'HD28'),
('HD61',0,'HD61'),
('HE',0,'HE'),
('HF',0,'HF'),
('HF5601',1,'HF'),
('HF5601',0,'HF5601'),
('HG',0,'HG'),
('HJ',0,'HJ'),
('HM',0,'HM'),
('HN',0,'HN'),
('HQ',0,'HQ'),
('HS',0,'HS'),
('HT',0,'HT'),
('HV',0,'HV'),
('HX',0,'HX'),
('J',0,'J'),
('J1',1,'J'),
('JA',1,'J'),
('JC',1,'J'),
('JF',1,'J'),
('JK',1,'J'),
('JL',1,'J'),
('JN',1,'J'),
('JN101',2,'J'),
('JN1187',2,'J'),
('JQ',1,'J'),
('JS',1,'J'),
('JV',1,'J'),
('JX',1,'J'),
('JZ',1,'J'),
('J1',0,'J1'),
('JA',0,'JA'),
('JC',0,'JC'),
('JF',0,'JF'),
('JK',0,'JK'),
('JL',0,'JL'),
('JN',0,'JN'),
('JN101',1,'JN'),
('JN1187',1,'JN'),
('JN101',0,'JN101'),
('JN1187',0,'JN1187'),
('JQ',0,'JQ'),
('JS',0,'JS'),
('JV',0,'JV'),
('JX',0,'JX'),
('JZ',0,'JZ'),
('K',0,'K'),
('K1',1,'K'),
('KD',1,'K'),
('KDC',2,'K'),
('KF',1,'K'),
('KZ',1,'K'),
('K1',0,'K1'),
('KD',0,'KD'),
('KDC',1,'KD'),
('KDC',0,'KDC'),
('KF',0,'KF'),
('KZ',0,'KZ'),
('L',0,'L'),
('L1',1,'L'),
('LA',1,'L'),
('LB',1,'L'),
('LB1501',2,'L'),
('LB1603',2,'L'),
('LB2300',2,'L'),
('LB2361',2,'L'),
('LC',1,'L'),
('LC5201',2,'L'),
('LD',1,'L'),
('LE',1,'L'),
('LF',1,'L'),
('LG',1,'L'),
('LT',1,'L'),
('L1',0,'L1'),
('LA',0,'LA'),
('LB',0,'LB'),
('LB1501',1,'LB'),
('LB1603',1,'LB'),
('LB2300',1,'LB'),
('LB2361',1,'LB'),
('LB1501',0,'LB1501'),
('LB1603',0,'LB1603'),
('LB2300',0,'LB2300'),
('LB2361',0,'LB2361'),
('LC',0,'LC'),
('LC5201',1,'LC'),
('LC5201',0,'LC5201'),
('LD',0,'LD'),
('LE',0,'LE'),
('LF',0,'LF'),
('LG',0,'LG'),
('LT',0,'LT'),
('M',0,'M'),
('M1',1,'M'),
('ML',1,'M'),
('MT',1,'M'),
('M1',0,'M1'),
('ML',0,'ML'),
('MT',0,'MT'),
('N',0,'N'),
('N1',1,'N'),
('NA',1,'N'),
('NB',1,'N'),
('NC',1,'N'),
('ND',1,'N'),
('NE',1,'N'),
('NK',1,'N'),
('NX',1,'N'),
('N1',0,'N1'),
('NA',0,'NA'),
('NB',0,'NB'),
('NC',0,'NC'),
('ND',0,'ND'),
('NE',0,'NE'),
('NK',0,'NK'),
('NX',0,'NX'),
('P',0,'P'),
('P1',1,'P'),
('PA',1,'P'),
('PB',1,'P'),
('PB1501',2,'P'),
('PC',1,'P'),
('PD',1,'P'),
('PE',1,'P'),
('PF',1,'P'),
('PG',1,'P'),
('PH',1,'P'),
('PI',1,'P'),
('PJ',1,'P'),
('PK',1,'P'),
('PL',1,'P'),
('PM',1,'P'),
('PN',1,'P'),
('PN0080',2,'P'),
('PN0441',2,'P'),
('PN1990',2,'P'),
('PN1993',2,'P'),
('PN2000',2,'P'),
('PQ',1,'P'),
('PR',1,'P'),
('PS',1,'P'),
('PT',1,'P'),
('PZ',1,'P'),
('P1',0,'P1'),
('PA',0,'PA'),
('PB',0,'PB'),
('PB1501',1,'PB'),
('PB1501',0,'PB1501'),
('PC',0,'PC'),
('PD',0,'PD'),
('PE',0,'PE'),
('PF',0,'PF'),
('PG',0,'PG'),
('PH',0,'PH'),
('PI',0,'PI'),
('PJ',0,'PJ'),
('PK',0,'PK'),
('PL',0,'PL'),
('PM',0,'PM'),
('PN',0,'PN'),
('PN0080',1,'PN'),
('PN0441',1,'PN'),
('PN1990',1,'PN'),
('PN1993',1,'PN'),
('PN2000',1,'PN'),
('PN0080',0,'PN0080'),
('PN0441',0,'PN0441'),
('PN1990',0,'PN1990'),
('PN1993',0,'PN1993'),
('PN2000',0,'PN2000'),
('PQ',0,'PQ'),
('PR',0,'PR'),
('PS',0,'PS'),
('PT',0,'PT'),
('PZ',0,'PZ'),
('Q',0,'Q'),
('Q1',1,'Q'),
('QA',1,'Q'),
('QA75',2,'Q'),
('QA76',2,'Q'),
('QB',1,'Q'),
('QC',1,'Q'),
('QD',1,'Q'),
('QE',1,'Q'),
('QH',1,'Q'),
('QH301',2,'Q'),
('QH426',2,'Q'),
('QK',1,'Q'),
('QL',1,'Q'),
('QM',1,'Q'),
('QP',1,'Q'),
('QR',1,'Q'),
('QR180',2,'Q'),
('QR355',2,'Q'),
('Q1',0,'Q1'),
('QA',0,'QA'),
('QA75',1,'QA'),
('QA76',1,'QA'),
('QA75',0,'QA75'),
('QA76',0,'QA76'),
('QB',0,'QB'),
('QC',0,'QC'),
('QD',0,'QD'),
('QE',0,'QE'),
('QH',0,'QH'),
('QH301',1,'QH'),
('QH426',1,'QH'),
('QH301',0,'QH301'),
('QH426',0,'QH426'),
('QK',0,'QK'),
('QL',0,'QL'),
('QM',0,'QM'),
('QP',0,'QP'),
('QR',0,'QR'),
('QR180',1,'QR'),
('QR355',1,'QR'),
('QR180',0,'QR180'),
('QR355',0,'QR355'),
('R',0,'R'),
('R1',1,'R'),
('RA',1,'R'),
('RA0421',2,'R'),
('RA1001',2,'R'),
('RB',1,'R'),
('RC',1,'R'),
('RC0254',2,'R'),
('RC0321',2,'R'),
('RC1200',2,'R'),
('RD',1,'R'),
('RE',1,'R'),
('RF',1,'R'),
('RG',1,'R'),
('RJ',1,'R'),
('RJ101',2,'R'),
('RK',1,'R'),
('RL',1,'R'),
('RM',1,'R'),
('RS',1,'R'),
('RT',1,'R'),
('RV',1,'R'),
('RX',1,'R'),
('RZ',1,'R'),
('R1',0,'R1'),
('RA',0,'RA'),
('RA0421',1,'RA'),
('RA1001',1,'RA'),
('RA0421',0,'RA0421'),
('RA1001',0,'RA1001'),
('RB',0,'RB'),
('RC',0,'RC'),
('RC0254',1,'RC'),
('RC0321',1,'RC'),
('RC1200',1,'RC'),
('RC0254',0,'RC0254'),
('RC0321',0,'RC0321'),
('RC1200',0,'RC1200'),
('RD',0,'RD'),
('RE',0,'RE'),
('RF',0,'RF'),
('RG',0,'RG'),
('RJ',0,'RJ'),
('RJ101',1,'RJ'),
('RJ101',0,'RJ101'),
('RK',0,'RK'),
('RL',0,'RL'),
('RM',0,'RM'),
('A',2,'ROOT'),
('AC',3,'ROOT'),
('AI',3,'ROOT'),
('AM',3,'ROOT'),
('AS',3,'ROOT'),
('AZ',3,'ROOT'),
('B',2,'ROOT'),
('B1',3,'ROOT'),
('BC',3,'ROOT'),
('BD',3,'ROOT'),
('BF',3,'ROOT'),
('BH',3,'ROOT'),
('BJ',3,'ROOT'),
('BL',3,'ROOT'),
('BM',3,'ROOT'),
('BP',3,'ROOT'),
('BQ',3,'ROOT'),
('BR',3,'ROOT'),
('BS',3,'ROOT'),
('BT',3,'ROOT'),
('BV',3,'ROOT'),
('BV1460',4,'ROOT'),
('BX',3,'ROOT'),
('C',2,'ROOT'),
('C1',3,'ROOT'),
('CB',3,'ROOT'),
('CC',3,'ROOT'),
('CD',3,'ROOT'),
('CD921',4,'ROOT'),
('CE',3,'ROOT'),
('CJ',3,'ROOT'),
('CN',3,'ROOT'),
('CR',3,'ROOT'),
('CS',3,'ROOT'),
('CT',3,'ROOT'),
('D',2,'ROOT'),
('D051',4,'ROOT'),
('D1',3,'ROOT'),
('D111',4,'ROOT'),
('D204',4,'ROOT'),
('D501',4,'ROOT'),
('D731',4,'ROOT'),
('D839',4,'ROOT'),
('D880',4,'ROOT'),
('D890',4,'ROOT'),
('D901',4,'ROOT'),
('DA',3,'ROOT'),
('DAW',4,'ROOT'),
('DB',3,'ROOT'),
('DC',3,'ROOT'),
('DD',3,'ROOT'),
('DE',3,'ROOT'),
('DF',3,'ROOT'),
('DG',3,'ROOT'),
('DH',3,'ROOT'),
('DJ',3,'ROOT'),
('DJK',4,'ROOT'),
('DK',3,'ROOT'),
('DL',3,'ROOT'),
('DP',3,'ROOT'),
('DR',3,'ROOT'),
('DS',3,'ROOT'),
('DT',3,'ROOT'),
('DU',3,'ROOT'),
('E',2,'ROOT'),
('E11',3,'ROOT'),
('E151',3,'ROOT'),
('F',2,'ROOT'),
('F001',3,'ROOT'),
('F1001',3,'ROOT'),
('F1201',3,'ROOT'),
('G',2,'ROOT'),
('G1',3,'ROOT'),
('GA',3,'ROOT'),
('GB',3,'ROOT'),
('GC',3,'ROOT'),
('GE',3,'ROOT'),
('GF',3,'ROOT'),
('GN',3,'ROOT'),
('GR',3,'ROOT'),
('GT',3,'ROOT'),
('GV',3,'ROOT'),
('H',2,'ROOT'),
('H1',3,'ROOT'),
('HA',3,'ROOT'),
('HB',3,'ROOT'),
('HC',3,'ROOT'),
('HD',3,'ROOT'),
('HD28',4,'ROOT'),
('HD61',4,'ROOT'),
('HE',3,'ROOT'),
('HF',3,'ROOT'),
('HF5601',4,'ROOT'),
('HG',3,'ROOT'),
('HJ',3,'ROOT'),
('HM',3,'ROOT'),
('HN',3,'ROOT'),
('HQ',3,'ROOT'),
('HS',3,'ROOT'),
('HT',3,'ROOT'),
('HV',3,'ROOT'),
('HX',3,'ROOT'),
('J',2,'ROOT'),
('J1',3,'ROOT'),
('JA',3,'ROOT'),
('JC',3,'ROOT'),
('JF',3,'ROOT'),
('JK',3,'ROOT'),
('JL',3,'ROOT'),
('JN',3,'ROOT'),
('JN101',4,'ROOT'),
('JN1187',4,'ROOT'),
('JQ',3,'ROOT'),
('JS',3,'ROOT'),
('JV',3,'ROOT'),
('JX',3,'ROOT'),
('JZ',3,'ROOT'),
('K',2,'ROOT'),
('K1',3,'ROOT'),
('KD',3,'ROOT'),
('KDC',4,'ROOT'),
('KF',3,'ROOT'),
('KZ',3,'ROOT'),
('L',2,'ROOT'),
('L1',3,'ROOT'),
('LA',3,'ROOT'),
('LB',3,'ROOT'),
('LB1501',4,'ROOT'),
('LB1603',4,'ROOT'),
('LB2300',4,'ROOT'),
('LB2361',4,'ROOT'),
('LC',3,'ROOT'),
('LC5201',4,'ROOT'),
('LD',3,'ROOT'),
('LE',3,'ROOT'),
('LF',3,'ROOT'),
('LG',3,'ROOT'),
('LT',3,'ROOT'),
('M',2,'ROOT'),
('M1',3,'ROOT'),
('ML',3,'ROOT'),
('MT',3,'ROOT'),
('N',2,'ROOT'),
('N1',3,'ROOT'),
('NA',3,'ROOT'),
('NB',3,'ROOT'),
('NC',3,'ROOT'),
('ND',3,'ROOT'),
('NE',3,'ROOT'),
('NK',3,'ROOT'),
('NX',3,'ROOT'),
('P',2,'ROOT'),
('P1',3,'ROOT'),
('PA',3,'ROOT'),
('PB',3,'ROOT'),
('PB1501',4,'ROOT'),
('PC',3,'ROOT'),
('PD',3,'ROOT'),
('PE',3,'ROOT'),
('PF',3,'ROOT'),
('PG',3,'ROOT'),
('PH',3,'ROOT'),
('PI',3,'ROOT'),
('PJ',3,'ROOT'),
('PK',3,'ROOT'),
('PL',3,'ROOT'),
('PM',3,'ROOT'),
('PN',3,'ROOT'),
('PN0080',4,'ROOT'),
('PN0441',4,'ROOT'),
('PN1990',4,'ROOT'),
('PN1993',4,'ROOT'),
('PN2000',4,'ROOT'),
('PQ',3,'ROOT'),
('PR',3,'ROOT'),
('PS',3,'ROOT'),
('PT',3,'ROOT'),
('PZ',3,'ROOT'),
('Q',2,'ROOT'),
('Q1',3,'ROOT'),
('QA',3,'ROOT'),
('QA75',4,'ROOT'),
('QA76',4,'ROOT'),
('QB',3,'ROOT'),
('QC',3,'ROOT'),
('QD',3,'ROOT'),
('QE',3,'ROOT'),
('QH',3,'ROOT'),
('QH301',4,'ROOT'),
('QH426',4,'ROOT'),
('QK',3,'ROOT'),
('QL',3,'ROOT'),
('QM',3,'ROOT'),
('QP',3,'ROOT'),
('QR',3,'ROOT'),
('QR180',4,'ROOT'),
('QR355',4,'ROOT'),
('R',2,'ROOT'),
('R1',3,'ROOT'),
('RA',3,'ROOT'),
('RA0421',4,'ROOT'),
('RA1001',4,'ROOT'),
('RB',3,'ROOT'),
('RC',3,'ROOT'),
('RC0254',4,'ROOT'),
('RC0321',4,'ROOT'),
('RC1200',4,'ROOT'),
('RD',3,'ROOT'),
('RE',3,'ROOT'),
('RF',3,'ROOT'),
('RG',3,'ROOT'),
('RJ',3,'ROOT'),
('RJ101',4,'ROOT'),
('RK',3,'ROOT'),
('RL',3,'ROOT'),
('RM',3,'ROOT'),
('RS',3,'ROOT'),
('RT',3,'ROOT'),
('RV',3,'ROOT'),
('RX',3,'ROOT'),
('RZ',3,'ROOT'),
('S',2,'ROOT'),
('S1',3,'ROOT'),
('SB',3,'ROOT'),
('SD',3,'ROOT'),
('SF',3,'ROOT'),
('SH',3,'ROOT'),
('SK',3,'ROOT'),
('T',2,'ROOT'),
('T1',3,'ROOT'),
('T201',4,'ROOT'),
('TA',3,'ROOT'),
('TC',3,'ROOT'),
('TD',3,'ROOT'),
('TE',3,'ROOT'),
('TF',3,'ROOT'),
('TG',3,'ROOT'),
('TH',3,'ROOT'),
('TJ',3,'ROOT'),
('TK',3,'ROOT'),
('TL',3,'ROOT'),
('TN',3,'ROOT'),
('TP',3,'ROOT'),
('TR',3,'ROOT'),
('TS',3,'ROOT'),
('TT',3,'ROOT'),
('TX',3,'ROOT'),
('U',2,'ROOT'),
('U1',3,'ROOT'),
('V',2,'ROOT'),
('V1',3,'ROOT'),
('VM',3,'ROOT'),
('Z',2,'ROOT'),
('Z004',3,'ROOT'),
('Z665',3,'ROOT'),
('Z719',3,'ROOT'),
('ZA',3,'ROOT'),
('ZA4050',4,'ROOT'),
('ZA4450',4,'ROOT'),
('divisions',1,'ROOT'),
('fac_eng',2,'ROOT'),
('fac_law',2,'ROOT'),
('fac_med',2,'ROOT'),
('sch_art',3,'ROOT'),
('sch_bio',3,'ROOT'),
('sch_che',3,'ROOT'),
('sch_civ',3,'ROOT'),
('sch_ecs',3,'ROOT'),
('sch_edu',3,'ROOT'),
('sch_eng',3,'ROOT'),
('sch_geo',3,'ROOT'),
('sch_hum',3,'ROOT'),
('sch_law',3,'ROOT'),
('sch_man',3,'ROOT'),
('sch_mat',3,'ROOT'),
('sch_med',3,'ROOT'),
('sch_phy',3,'ROOT'),
('sch_psy',3,'ROOT'),
('sch_soc',3,'ROOT'),
('subjects',1,'ROOT'),
('RS',0,'RS'),
('RT',0,'RT'),
('RV',0,'RV'),
('RX',0,'RX'),
('RZ',0,'RZ'),
('S',0,'S'),
('S1',1,'S'),
('SB',1,'S'),
('SD',1,'S'),
('SF',1,'S'),
('SH',1,'S'),
('SK',1,'S'),
('S1',0,'S1'),
('SB',0,'SB'),
('SD',0,'SD'),
('SF',0,'SF'),
('SH',0,'SH'),
('SK',0,'SK'),
('T',0,'T'),
('T1',1,'T'),
('T201',2,'T'),
('TA',1,'T'),
('TC',1,'T'),
('TD',1,'T'),
('TE',1,'T'),
('TF',1,'T'),
('TG',1,'T'),
('TH',1,'T'),
('TJ',1,'T'),
('TK',1,'T'),
('TL',1,'T'),
('TN',1,'T'),
('TP',1,'T'),
('TR',1,'T'),
('TS',1,'T'),
('TT',1,'T'),
('TX',1,'T'),
('T1',0,'T1'),
('T201',1,'T1'),
('T201',0,'T201'),
('TA',0,'TA'),
('TC',0,'TC'),
('TD',0,'TD'),
('TE',0,'TE'),
('TF',0,'TF'),
('TG',0,'TG'),
('TH',0,'TH'),
('TJ',0,'TJ'),
('TK',0,'TK'),
('TL',0,'TL'),
('TN',0,'TN'),
('TP',0,'TP'),
('TR',0,'TR'),
('TS',0,'TS'),
('TT',0,'TT'),
('TX',0,'TX'),
('U',0,'U'),
('U1',1,'U'),
('U1',0,'U1'),
('V',0,'V'),
('V1',1,'V'),
('VM',1,'V'),
('V1',0,'V1'),
('VM',0,'VM'),
('Z',0,'Z'),
('Z004',1,'Z'),
('Z665',1,'Z'),
('Z719',1,'Z'),
('ZA',1,'Z'),
('ZA4050',2,'Z'),
('ZA4450',2,'Z'),
('Z004',0,'Z004'),
('Z665',0,'Z665'),
('Z719',0,'Z719'),
('ZA',0,'ZA'),
('ZA4050',1,'ZA'),
('ZA4450',1,'ZA'),
('ZA4050',0,'ZA4050'),
('ZA4450',0,'ZA4450'),
('divisions',0,'divisions'),
('fac_eng',1,'divisions'),
('fac_law',1,'divisions'),
('fac_med',1,'divisions'),
('sch_art',2,'divisions'),
('sch_bio',2,'divisions'),
('sch_che',2,'divisions'),
('sch_civ',2,'divisions'),
('sch_ecs',2,'divisions'),
('sch_edu',2,'divisions'),
('sch_eng',2,'divisions'),
('sch_geo',2,'divisions'),
('sch_hum',2,'divisions'),
('sch_law',2,'divisions'),
('sch_man',2,'divisions'),
('sch_mat',2,'divisions'),
('sch_med',2,'divisions'),
('sch_phy',2,'divisions'),
('sch_psy',2,'divisions'),
('sch_soc',2,'divisions'),
('fac_eng',0,'fac_eng'),
('sch_che',1,'fac_eng'),
('sch_civ',1,'fac_eng'),
('sch_ecs',1,'fac_eng'),
('sch_eng',1,'fac_eng'),
('sch_geo',1,'fac_eng'),
('sch_mat',1,'fac_eng'),
('sch_phy',1,'fac_eng'),
('fac_law',0,'fac_law'),
('sch_art',1,'fac_law'),
('sch_edu',1,'fac_law'),
('sch_hum',1,'fac_law'),
('sch_law',1,'fac_law'),
('sch_man',1,'fac_law'),
('sch_soc',1,'fac_law'),
('fac_med',0,'fac_med'),
('sch_bio',1,'fac_med'),
('sch_med',1,'fac_med'),
('sch_psy',1,'fac_med'),
('sch_art',0,'sch_art'),
('sch_bio',0,'sch_bio'),
('sch_che',0,'sch_che'),
('sch_civ',0,'sch_civ'),
('sch_ecs',0,'sch_ecs'),
('sch_edu',0,'sch_edu'),
('sch_eng',0,'sch_eng'),
('sch_geo',0,'sch_geo'),
('sch_hum',0,'sch_hum'),
('sch_law',0,'sch_law'),
('sch_man',0,'sch_man'),
('sch_mat',0,'sch_mat'),
('sch_med',0,'sch_med'),
('sch_phy',0,'sch_phy'),
('sch_psy',0,'sch_psy'),
('sch_soc',0,'sch_soc'),
('A',1,'subjects'),
('AC',2,'subjects'),
('AI',2,'subjects'),
('AM',2,'subjects'),
('AS',2,'subjects'),
('AZ',2,'subjects'),
('B',1,'subjects'),
('B1',2,'subjects'),
('BC',2,'subjects'),
('BD',2,'subjects'),
('BF',2,'subjects'),
('BH',2,'subjects'),
('BJ',2,'subjects'),
('BL',2,'subjects'),
('BM',2,'subjects'),
('BP',2,'subjects'),
('BQ',2,'subjects'),
('BR',2,'subjects'),
('BS',2,'subjects'),
('BT',2,'subjects'),
('BV',2,'subjects'),
('BV1460',3,'subjects'),
('BX',2,'subjects'),
('C',1,'subjects'),
('C1',2,'subjects'),
('CB',2,'subjects'),
('CC',2,'subjects'),
('CD',2,'subjects'),
('CD921',3,'subjects'),
('CE',2,'subjects'),
('CJ',2,'subjects'),
('CN',2,'subjects'),
('CR',2,'subjects'),
('CS',2,'subjects'),
('CT',2,'subjects'),
('D',1,'subjects'),
('D051',3,'subjects'),
('D1',2,'subjects'),
('D111',3,'subjects'),
('D204',3,'subjects'),
('D501',3,'subjects'),
('D731',3,'subjects'),
('D839',3,'subjects'),
('D880',3,'subjects'),
('D890',3,'subjects'),
('D901',3,'subjects'),
('DA',2,'subjects'),
('DAW',3,'subjects'),
('DB',2,'subjects'),
('DC',2,'subjects'),
('DD',2,'subjects'),
('DE',2,'subjects'),
('DF',2,'subjects'),
('DG',2,'subjects'),
('DH',2,'subjects'),
('DJ',2,'subjects'),
('DJK',3,'subjects'),
('DK',2,'subjects'),
('DL',2,'subjects'),
('DP',2,'subjects'),
('DR',2,'subjects'),
('DS',2,'subjects'),
('DT',2,'subjects'),
('DU',2,'subjects'),
('E',1,'subjects'),
('E11',2,'subjects'),
('E151',2,'subjects'),
('F',1,'subjects'),
('F001',2,'subjects'),
('F1001',2,'subjects'),
('F1201',2,'subjects'),
('G',1,'subjects'),
('G1',2,'subjects'),
('GA',2,'subjects'),
('GB',2,'subjects'),
('GC',2,'subjects'),
('GE',2,'subjects'),
('GF',2,'subjects'),
('GN',2,'subjects'),
('GR',2,'subjects'),
('GT',2,'subjects'),
('GV',2,'subjects'),
('H',1,'subjects'),
('H1',2,'subjects'),
('HA',2,'subjects'),
('HB',2,'subjects'),
('HC',2,'subjects'),
('HD',2,'subjects'),
('HD28',3,'subjects'),
('HD61',3,'subjects'),
('HE',2,'subjects'),
('HF',2,'subjects'),
('HF5601',3,'subjects'),
('HG',2,'subjects'),
('HJ',2,'subjects'),
('HM',2,'subjects'),
('HN',2,'subjects'),
('HQ',2,'subjects'),
('HS',2,'subjects'),
('HT',2,'subjects'),
('HV',2,'subjects'),
('HX',2,'subjects'),
('J',1,'subjects'),
('J1',2,'subjects'),
('JA',2,'subjects'),
('JC',2,'subjects'),
('JF',2,'subjects'),
('JK',2,'subjects'),
('JL',2,'subjects'),
('JN',2,'subjects'),
('JN101',3,'subjects'),
('JN1187',3,'subjects'),
('JQ',2,'subjects'),
('JS',2,'subjects'),
('JV',2,'subjects'),
('JX',2,'subjects'),
('JZ',2,'subjects'),
('K',1,'subjects'),
('K1',2,'subjects'),
('KD',2,'subjects'),
('KDC',3,'subjects'),
('KF',2,'subjects'),
('KZ',2,'subjects'),
('L',1,'subjects'),
('L1',2,'subjects'),
('LA',2,'subjects'),
('LB',2,'subjects'),
('LB1501',3,'subjects'),
('LB1603',3,'subjects'),
('LB2300',3,'subjects'),
('LB2361',3,'subjects'),
('LC',2,'subjects'),
('LC5201',3,'subjects'),
('LD',2,'subjects'),
('LE',2,'subjects'),
('LF',2,'subjects'),
('LG',2,'subjects'),
('LT',2,'subjects'),
('M',1,'subjects'),
('M1',2,'subjects'),
('ML',2,'subjects'),
('MT',2,'subjects'),
('N',1,'subjects'),
('N1',2,'subjects'),
('NA',2,'subjects'),
('NB',2,'subjects'),
('NC',2,'subjects'),
('ND',2,'subjects'),
('NE',2,'subjects'),
('NK',2,'subjects'),
('NX',2,'subjects'),
('P',1,'subjects'),
('P1',2,'subjects'),
('PA',2,'subjects'),
('PB',2,'subjects'),
('PB1501',3,'subjects'),
('PC',2,'subjects'),
('PD',2,'subjects'),
('PE',2,'subjects'),
('PF',2,'subjects'),
('PG',2,'subjects'),
('PH',2,'subjects'),
('PI',2,'subjects'),
('PJ',2,'subjects'),
('PK',2,'subjects'),
('PL',2,'subjects'),
('PM',2,'subjects'),
('PN',2,'subjects'),
('PN0080',3,'subjects'),
('PN0441',3,'subjects'),
('PN1990',3,'subjects'),
('PN1993',3,'subjects'),
('PN2000',3,'subjects'),
('PQ',2,'subjects'),
('PR',2,'subjects'),
('PS',2,'subjects'),
('PT',2,'subjects'),
('PZ',2,'subjects'),
('Q',1,'subjects'),
('Q1',2,'subjects'),
('QA',2,'subjects'),
('QA75',3,'subjects'),
('QA76',3,'subjects'),
('QB',2,'subjects'),
('QC',2,'subjects'),
('QD',2,'subjects'),
('QE',2,'subjects'),
('QH',2,'subjects'),
('QH301',3,'subjects'),
('QH426',3,'subjects'),
('QK',2,'subjects'),
('QL',2,'subjects'),
('QM',2,'subjects'),
('QP',2,'subjects'),
('QR',2,'subjects'),
('QR180',3,'subjects'),
('QR355',3,'subjects'),
('R',1,'subjects'),
('R1',2,'subjects'),
('RA',2,'subjects'),
('RA0421',3,'subjects'),
('RA1001',3,'subjects'),
('RB',2,'subjects'),
('RC',2,'subjects'),
('RC0254',3,'subjects'),
('RC0321',3,'subjects'),
('RC1200',3,'subjects'),
('RD',2,'subjects'),
('RE',2,'subjects'),
('RF',2,'subjects'),
('RG',2,'subjects'),
('RJ',2,'subjects'),
('RJ101',3,'subjects'),
('RK',2,'subjects'),
('RL',2,'subjects'),
('RM',2,'subjects'),
('RS',2,'subjects'),
('RT',2,'subjects'),
('RV',2,'subjects'),
('RX',2,'subjects'),
('RZ',2,'subjects'),
('S',1,'subjects'),
('S1',2,'subjects'),
('SB',2,'subjects'),
('SD',2,'subjects'),
('SF',2,'subjects'),
('SH',2,'subjects'),
('SK',2,'subjects'),
('T',1,'subjects'),
('T1',2,'subjects'),
('T201',3,'subjects'),
('TA',2,'subjects'),
('TC',2,'subjects'),
('TD',2,'subjects'),
('TE',2,'subjects'),
('TF',2,'subjects'),
('TG',2,'subjects'),
('TH',2,'subjects'),
('TJ',2,'subjects'),
('TK',2,'subjects'),
('TL',2,'subjects'),
('TN',2,'subjects'),
('TP',2,'subjects'),
('TR',2,'subjects'),
('TS',2,'subjects'),
('TT',2,'subjects'),
('TX',2,'subjects'),
('U',1,'subjects'),
('U1',2,'subjects'),
('V',1,'subjects'),
('V1',2,'subjects'),
('VM',2,'subjects'),
('Z',1,'subjects'),
('Z004',2,'subjects'),
('Z665',2,'subjects'),
('Z719',2,'subjects'),
('ZA',2,'subjects'),
('ZA4050',3,'subjects'),
('ZA4450',3,'subjects'),
('subjects',0,'subjects');
/*!40000 ALTER TABLE `subject_ancestors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject_name_lang`
--

DROP TABLE IF EXISTS `subject_name_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subject_name_lang` (
  `subjectid` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL DEFAULT 0,
  `name_lang` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`subjectid`,`pos`),
  KEY `name_lang_0` (`name_lang`),
  CONSTRAINT `subject_name_lang_fk` FOREIGN KEY (`subjectid`) REFERENCES `subject` (`subjectid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject_name_lang`
--

LOCK TABLES `subject_name_lang` WRITE;
/*!40000 ALTER TABLE `subject_name_lang` DISABLE KEYS */;
INSERT INTO `subject_name_lang` VALUES
('A',0,'en'),
('AC',0,'en'),
('AI',0,'en'),
('AM',0,'en'),
('AS',0,'en'),
('AZ',0,'en'),
('B',0,'en'),
('B1',0,'en'),
('BC',0,'en'),
('BD',0,'en'),
('BF',0,'en'),
('BH',0,'en'),
('BJ',0,'en'),
('BL',0,'en'),
('BM',0,'en'),
('BP',0,'en'),
('BQ',0,'en'),
('BR',0,'en'),
('BS',0,'en'),
('BT',0,'en'),
('BV',0,'en'),
('BV1460',0,'en'),
('BX',0,'en'),
('C',0,'en'),
('C1',0,'en'),
('CB',0,'en'),
('CC',0,'en'),
('CD',0,'en'),
('CD921',0,'en'),
('CE',0,'en'),
('CJ',0,'en'),
('CN',0,'en'),
('CR',0,'en'),
('CS',0,'en'),
('CT',0,'en'),
('D',0,'en'),
('D051',0,'en'),
('D1',0,'en'),
('D111',0,'en'),
('D204',0,'en'),
('D501',0,'en'),
('D731',0,'en'),
('D839',0,'en'),
('D880',0,'en'),
('D890',0,'en'),
('D901',0,'en'),
('DA',0,'en'),
('DAW',0,'en'),
('DB',0,'en'),
('DC',0,'en'),
('DD',0,'en'),
('DE',0,'en'),
('DF',0,'en'),
('DG',0,'en'),
('DH',0,'en'),
('DJ',0,'en'),
('DJK',0,'en'),
('DK',0,'en'),
('DL',0,'en'),
('DP',0,'en'),
('DR',0,'en'),
('DS',0,'en'),
('DT',0,'en'),
('DU',0,'en'),
('E',0,'en'),
('E11',0,'en'),
('E151',0,'en'),
('F',0,'en'),
('F001',0,'en'),
('F1001',0,'en'),
('F1201',0,'en'),
('G',0,'en'),
('G1',0,'en'),
('GA',0,'en'),
('GB',0,'en'),
('GC',0,'en'),
('GE',0,'en'),
('GF',0,'en'),
('GN',0,'en'),
('GR',0,'en'),
('GT',0,'en'),
('GV',0,'en'),
('H',0,'en'),
('H1',0,'en'),
('HA',0,'en'),
('HB',0,'en'),
('HC',0,'en'),
('HD',0,'en'),
('HD28',0,'en'),
('HD61',0,'en'),
('HE',0,'en'),
('HF',0,'en'),
('HF5601',0,'en'),
('HG',0,'en'),
('HJ',0,'en'),
('HM',0,'en'),
('HN',0,'en'),
('HQ',0,'en'),
('HS',0,'en'),
('HT',0,'en'),
('HV',0,'en'),
('HX',0,'en'),
('J',0,'en'),
('J1',0,'en'),
('JA',0,'en'),
('JC',0,'en'),
('JF',0,'en'),
('JK',0,'en'),
('JL',0,'en'),
('JN',0,'en'),
('JN101',0,'en'),
('JN1187',0,'en'),
('JQ',0,'en'),
('JS',0,'en'),
('JV',0,'en'),
('JX',0,'en'),
('JZ',0,'en'),
('K',0,'en'),
('K1',0,'en'),
('KD',0,'en'),
('KDC',0,'en'),
('KF',0,'en'),
('KZ',0,'en'),
('L',0,'en'),
('L1',0,'en'),
('LA',0,'en'),
('LB',0,'en'),
('LB1501',0,'en'),
('LB1603',0,'en'),
('LB2300',0,'en'),
('LB2361',0,'en'),
('LC',0,'en'),
('LC5201',0,'en'),
('LD',0,'en'),
('LE',0,'en'),
('LF',0,'en'),
('LG',0,'en'),
('LT',0,'en'),
('M',0,'en'),
('M1',0,'en'),
('ML',0,'en'),
('MT',0,'en'),
('N',0,'en'),
('N1',0,'en'),
('NA',0,'en'),
('NB',0,'en'),
('NC',0,'en'),
('ND',0,'en'),
('NE',0,'en'),
('NK',0,'en'),
('NX',0,'en'),
('P',0,'en'),
('P1',0,'en'),
('PA',0,'en'),
('PB',0,'en'),
('PB1501',0,'en'),
('PC',0,'en'),
('PD',0,'en'),
('PE',0,'en'),
('PF',0,'en'),
('PG',0,'en'),
('PH',0,'en'),
('PI',0,'en'),
('PJ',0,'en'),
('PK',0,'en'),
('PL',0,'en'),
('PM',0,'en'),
('PN',0,'en'),
('PN0080',0,'en'),
('PN0441',0,'en'),
('PN1990',0,'en'),
('PN1993',0,'en'),
('PN2000',0,'en'),
('PQ',0,'en'),
('PR',0,'en'),
('PS',0,'en'),
('PT',0,'en'),
('PZ',0,'en'),
('Q',0,'en'),
('Q1',0,'en'),
('QA',0,'en'),
('QA75',0,'en'),
('QA76',0,'en'),
('QB',0,'en'),
('QC',0,'en'),
('QD',0,'en'),
('QE',0,'en'),
('QH',0,'en'),
('QH301',0,'en'),
('QH426',0,'en'),
('QK',0,'en'),
('QL',0,'en'),
('QM',0,'en'),
('QP',0,'en'),
('QR',0,'en'),
('QR180',0,'en'),
('QR355',0,'en'),
('R',0,'en'),
('R1',0,'en'),
('RA',0,'en'),
('RA0421',0,'en'),
('RA1001',0,'en'),
('RB',0,'en'),
('RC',0,'en'),
('RC0254',0,'en'),
('RC0321',0,'en'),
('RC1200',0,'en'),
('RD',0,'en'),
('RE',0,'en'),
('RF',0,'en'),
('RG',0,'en'),
('RJ',0,'en'),
('RJ101',0,'en'),
('RK',0,'en'),
('RL',0,'en'),
('RM',0,'en'),
('RS',0,'en'),
('RT',0,'en'),
('RV',0,'en'),
('RX',0,'en'),
('RZ',0,'en'),
('S',0,'en'),
('S1',0,'en'),
('SB',0,'en'),
('SD',0,'en'),
('SF',0,'en'),
('SH',0,'en'),
('SK',0,'en'),
('T',0,'en'),
('T1',0,'en'),
('T201',0,'en'),
('TA',0,'en'),
('TC',0,'en'),
('TD',0,'en'),
('TE',0,'en'),
('TF',0,'en'),
('TG',0,'en'),
('TH',0,'en'),
('TJ',0,'en'),
('TK',0,'en'),
('TL',0,'en'),
('TN',0,'en'),
('TP',0,'en'),
('TR',0,'en'),
('TS',0,'en'),
('TT',0,'en'),
('TX',0,'en'),
('U',0,'en'),
('U1',0,'en'),
('V',0,'en'),
('V1',0,'en'),
('VM',0,'en'),
('Z',0,'en'),
('Z004',0,'en'),
('Z665',0,'en'),
('Z719',0,'en'),
('ZA',0,'en'),
('ZA4050',0,'en'),
('ZA4450',0,'en'),
('divisions',0,'en'),
('fac_eng',0,'en'),
('fac_law',0,'en'),
('fac_med',0,'en'),
('sch_art',0,'en'),
('sch_bio',0,'en'),
('sch_che',0,'en'),
('sch_civ',0,'en'),
('sch_ecs',0,'en'),
('sch_edu',0,'en'),
('sch_eng',0,'en'),
('sch_geo',0,'en'),
('sch_hum',0,'en'),
('sch_law',0,'en'),
('sch_man',0,'en'),
('sch_mat',0,'en'),
('sch_med',0,'en'),
('sch_phy',0,'en'),
('sch_psy',0,'en'),
('sch_soc',0,'en'),
('subjects',0,'en');
/*!40000 ALTER TABLE `subject_name_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject_name_name`
--

DROP TABLE IF EXISTS `subject_name_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subject_name_name` (
  `subjectid` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL DEFAULT 0,
  `name_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`subjectid`,`pos`),
  CONSTRAINT `subject_name_name_fk` FOREIGN KEY (`subjectid`) REFERENCES `subject` (`subjectid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject_name_name`
--

LOCK TABLES `subject_name_name` WRITE;
/*!40000 ALTER TABLE `subject_name_name` DISABLE KEYS */;
INSERT INTO `subject_name_name` VALUES
('A',0,'A General Works'),
('AC',0,'AC Collections. Series. Collected works'),
('AI',0,'AI Indexes (General)'),
('AM',0,'AM Museums (General). Collectors and collecting (General)'),
('AS',0,'AS Academies and learned societies (General)'),
('AZ',0,'AZ History of Scholarship The Humanities'),
('B',0,'B Philosophy. Psychology. Religion'),
('B1',0,'B Philosophy (General)'),
('BC',0,'BC Logic'),
('BD',0,'BD Speculative Philosophy'),
('BF',0,'BF Psychology'),
('BH',0,'BH Aesthetics'),
('BJ',0,'BJ Ethics'),
('BL',0,'BL Religion'),
('BM',0,'BM Judaism'),
('BP',0,'BP Islam. Bahaism. Theosophy, etc'),
('BQ',0,'BQ Buddhism'),
('BR',0,'BR Christianity'),
('BS',0,'BS The Bible'),
('BT',0,'BT Doctrinal Theology'),
('BV',0,'BV Practical Theology'),
('BV1460',0,'BV1460 Religious Education'),
('BX',0,'BX Christian Denominations'),
('C',0,'C Auxiliary Sciences of History'),
('C1',0,'C Auxiliary sciences of history (General)'),
('CB',0,'CB History of civilization'),
('CC',0,'CC Archaeology'),
('CD',0,'CD Diplomatics. Archives. Seals'),
('CD921',0,'CD921 Archives'),
('CE',0,'CE Technical chronology. Calendar'),
('CJ',0,'CJ Numismatics'),
('CN',0,'CN Inscriptions. Epigraphy.'),
('CR',0,'CR Heraldry'),
('CS',0,'CS Genealogy'),
('CT',0,'CT Biography'),
('D',0,'D History General and Old World'),
('D051',0,'D051 Ancient History'),
('D1',0,'D History (General)'),
('D111',0,'D111 Medieval History'),
('D204',0,'D204 Modern History'),
('D501',0,'D501 World War I'),
('D731',0,'D731 World War II'),
('D839',0,'D839 Post-war History, 1945 on'),
('D880',0,'D880 Developing Countries'),
('D890',0,'D890 Eastern Hemisphere'),
('D901',0,'D901 Europe (General)'),
('DA',0,'DA Great Britain'),
('DAW',0,'DAW Central Europe'),
('DB',0,'DB Austria'),
('DC',0,'DC France'),
('DD',0,'DD Germany'),
('DE',0,'DE The Mediterranean Region. The Greco-Roman World'),
('DF',0,'DF Greece'),
('DG',0,'DG Italy'),
('DH',0,'DH Netherlands (The Low Countries)'),
('DJ',0,'DJ Netherlands (Holland)'),
('DJK',0,'DJK Eastern Europe'),
('DK',0,'DK Russia. Soviet Union. Former Soviet Republics'),
('DL',0,'DL Northern Europe. Scandinavia'),
('DP',0,'DP Spain'),
('DR',0,'DR Balkan Peninsula'),
('DS',0,'DS Asia'),
('DT',0,'DT Africa'),
('DU',0,'DU Oceania (South Seas)'),
('E',0,'E History America'),
('E11',0,'E11 America (General)'),
('E151',0,'E151 United States (General)'),
('F',0,'F History United States, Canada, Latin America'),
('F001',0,'F001 United States local history'),
('F1001',0,'F1001 Canada (General)'),
('F1201',0,'F1201 Latin America (General)'),
('G',0,'G Geography. Anthropology. Recreation'),
('G1',0,'G Geography (General)'),
('GA',0,'GA Mathematical geography. Cartography'),
('GB',0,'GB Physical geography'),
('GC',0,'GC Oceanography'),
('GE',0,'GE Environmental Sciences'),
('GF',0,'GF Human ecology. Anthropogeography'),
('GN',0,'GN Anthropology'),
('GR',0,'GR Folklore'),
('GT',0,'GT Manners and customs'),
('GV',0,'GV Recreation Leisure'),
('H',0,'H Social Sciences'),
('H1',0,'H Social Sciences (General)'),
('HA',0,'HA Statistics'),
('HB',0,'HB Economic Theory'),
('HC',0,'HC Economic History and Conditions'),
('HD',0,'HD Industries. Land use. Labor'),
('HD28',0,'HD28 Management. Industrial Management'),
('HD61',0,'HD61 Risk Management'),
('HE',0,'HE Transportation and Communications'),
('HF',0,'HF Commerce'),
('HF5601',0,'HF5601 Accounting'),
('HG',0,'HG Finance'),
('HJ',0,'HJ Public Finance'),
('HM',0,'HM Sociology'),
('HN',0,'HN Social history and conditions. Social problems. Social  reform'),
('HQ',0,'HQ The family. Marriage. Woman'),
('HS',0,'HS Societies secret benevolent etc'),
('HT',0,'HT Communities. Classes. Races'),
('HV',0,'HV Social pathology. Social and public welfare'),
('HX',0,'HX Socialism. Communism. Anarchism'),
('J',0,'J Political Science'),
('J1',0,'J General legislative and executive papers'),
('JA',0,'JA Political science (General)'),
('JC',0,'JC Political theory'),
('JF',0,'JF Political institutions (General)'),
('JK',0,'JK Political institutions (United States)'),
('JL',0,'JL Political institutions (America except United States)'),
('JN',0,'JN Political institutions (Europe)'),
('JN101',0,'JN101 Great Britain'),
('JN1187',0,'JN1187 Scotland'),
('JQ',0,'JQ Political institutions Asia'),
('JS',0,'JS Local government Municipal government'),
('JV',0,'JV Colonies and colonization. Emigration and immigration. International migration'),
('JX',0,'JX International law'),
('JZ',0,'JZ International relations'),
('K',0,'K Law'),
('K1',0,'K Law (General)'),
('KD',0,'KD England and Wales'),
('KDC',0,'KDC Scotland'),
('KF',0,'KF United States Federal Law'),
('KZ',0,'KZ Law of Nations'),
('L',0,'L Education'),
('L1',0,'L Education (General)'),
('LA',0,'LA History of education'),
('LB',0,'LB Theory and practice of education'),
('LB1501',0,'LB1501 Primary Education'),
('LB1603',0,'LB1603 Secondary Education. High schools'),
('LB2300',0,'LB2300 Higher Education'),
('LB2361',0,'LB2361 Curriculum'),
('LC',0,'LC Special aspects of education'),
('LC5201',0,'LC5201 Education extension. Adult education. Continuing education'),
('LD',0,'LD Individual institutions (United States)'),
('LE',0,'LE Individual institutions (America except United States)'),
('LF',0,'LF Individual institutions (Europe)'),
('LG',0,'LG Individual institutions (Asia. Africa)'),
('LT',0,'LT Textbooks'),
('M',0,'M Music and Books on Music'),
('M1',0,'M Music'),
('ML',0,'ML Literature of music'),
('MT',0,'MT Musical instruction and study'),
('N',0,'N Fine Arts'),
('N1',0,'N Visual arts (General) For photography, see TR'),
('NA',0,'NA Architecture'),
('NB',0,'NB Sculpture'),
('NC',0,'NC Drawing Design Illustration'),
('ND',0,'ND Painting'),
('NE',0,'NE Print media'),
('NK',0,'NK Decorative arts Applied arts Decoration and ornament'),
('NX',0,'NX Arts in general'),
('P',0,'P Language and Literature'),
('P1',0,'P Philology. Linguistics'),
('PA',0,'PA Classical philology'),
('PB',0,'PB Modern European Languages'),
('PB1501',0,'PB1501 Gaelic (Scottish Gaelic, Erse)'),
('PC',0,'PC Romance languages'),
('PD',0,'PD Germanic languages'),
('PE',0,'PE English'),
('PF',0,'PF West Germanic'),
('PG',0,'PG Slavic, Baltic, Albanian languages and literature'),
('PH',0,'PH Finno-Ugrian, Basque languages and literatures'),
('PI',0,'PI Oriental languages and literatures'),
('PJ',0,'PJ Semitic'),
('PK',0,'PK Indo-Iranian'),
('PL',0,'PL Languages and literatures of Eastern Asia, Africa, Oceania'),
('PM',0,'PM Hyperborean, Indian, and Artificial languages'),
('PN',0,'PN Literature (General)'),
('PN0080',0,'PN0080 Criticism'),
('PN0441',0,'PN0441 Literary History'),
('PN1990',0,'PN1990 Broadcasting'),
('PN1993',0,'PN1993 Motion Pictures'),
('PN2000',0,'PN2000 Dramatic representation. The Theater'),
('PQ',0,'PQ Romance literatures'),
('PR',0,'PR English literature'),
('PS',0,'PS American literature'),
('PT',0,'PT Germanic literature'),
('PZ',0,'PZ Childrens literature'),
('Q',0,'Q Science'),
('Q1',0,'Q Science (General)'),
('QA',0,'QA Mathematics'),
('QA75',0,'QA75 Electronic computers. Computer science'),
('QA76',0,'QA76 Computer software'),
('QB',0,'QB Astronomy'),
('QC',0,'QC Physics'),
('QD',0,'QD Chemistry'),
('QE',0,'QE Geology'),
('QH',0,'QH Natural history'),
('QH301',0,'QH301 Biology'),
('QH426',0,'QH426 Genetics'),
('QK',0,'QK Botany'),
('QL',0,'QL Zoology'),
('QM',0,'QM Human anatomy'),
('QP',0,'QP Physiology'),
('QR',0,'QR Microbiology'),
('QR180',0,'QR180 Immunology'),
('QR355',0,'QR355 Virology'),
('R',0,'R Medicine'),
('R1',0,'R Medicine (General)'),
('RA',0,'RA Public aspects of medicine'),
('RA0421',0,'RA0421 Public health. Hygiene. Preventive Medicine'),
('RA1001',0,'RA1001 Forensic Medicine. Medical jurisprudence. Legal medicine'),
('RB',0,'RB Pathology'),
('RC',0,'RC Internal medicine'),
('RC0254',0,'RC0254 Neoplasms. Tumors. Oncology (including Cancer)'),
('RC0321',0,'RC0321 Neuroscience. Biological psychiatry. Neuropsychiatry'),
('RC1200',0,'RC1200 Sports Medicine'),
('RD',0,'RD Surgery'),
('RE',0,'RE Ophthalmology'),
('RF',0,'RF Otorhinolaryngology'),
('RG',0,'RG Gynecology and obstetrics'),
('RJ',0,'RJ Pediatrics'),
('RJ101',0,'RJ101 Child Health. Child health services'),
('RK',0,'RK Dentistry'),
('RL',0,'RL Dermatology'),
('RM',0,'RM Therapeutics. Pharmacology'),
('RS',0,'RS Pharmacy and materia medica'),
('RT',0,'RT Nursing'),
('RV',0,'RV Botanic, Thomsonian, and eclectic medicine'),
('RX',0,'RX Homeopathy'),
('RZ',0,'RZ Other systems of medicine'),
('S',0,'S Agriculture'),
('S1',0,'S Agriculture (General)'),
('SB',0,'SB Plant culture'),
('SD',0,'SD Forestry'),
('SF',0,'SF Animal culture'),
('SH',0,'SH Aquaculture. Fisheries. Angling'),
('SK',0,'SK Hunting sports'),
('T',0,'T Technology'),
('T1',0,'T Technology (General)'),
('T201',0,'T201 Patents. Trademarks'),
('TA',0,'TA Engineering (General). Civil engineering (General)'),
('TC',0,'TC Hydraulic engineering. Ocean engineering'),
('TD',0,'TD Environmental technology. Sanitary engineering'),
('TE',0,'TE Highway engineering. Roads and pavements'),
('TF',0,'TF Railroad engineering and operation'),
('TG',0,'TG Bridge engineering'),
('TH',0,'TH Building construction'),
('TJ',0,'TJ Mechanical engineering and machinery'),
('TK',0,'TK Electrical engineering. Electronics Nuclear engineering'),
('TL',0,'TL Motor vehicles. Aeronautics. Astronautics'),
('TN',0,'TN Mining engineering. Metallurgy'),
('TP',0,'TP Chemical technology'),
('TR',0,'TR Photography'),
('TS',0,'TS Manufactures'),
('TT',0,'TT Handicrafts Arts and crafts'),
('TX',0,'TX Home economics'),
('U',0,'U Military Science'),
('U1',0,'U Military Science (General)'),
('V',0,'V Naval Science'),
('V1',0,'V Naval Science (General)'),
('VM',0,'VM Naval architecture. Shipbuilding. Marine engineering'),
('Z',0,'Z Bibliography. Library Science. Information Resources'),
('Z004',0,'Z004 Books. Writing. Paleography'),
('Z665',0,'Z665 Library Science. Information Science'),
('Z719',0,'Z719 Libraries (General)'),
('ZA',0,'ZA Information resources'),
('ZA4050',0,'ZA4050 Electronic information resources'),
('ZA4450',0,'ZA4450 Databases'),
('divisions',0,'University Structure'),
('fac_eng',0,'Faculty of Engineering, Science and Mathematics'),
('fac_law',0,'Faculty of Law, Arts and Social Sciences'),
('fac_med',0,'Faculty of Medicine, Health and Life Sciences'),
('sch_art',0,'School of Art'),
('sch_bio',0,'School of Biological Sciences'),
('sch_che',0,'School of Chemistry'),
('sch_civ',0,'School of Civil Engineering and the Environment'),
('sch_ecs',0,'School of Electronics and Computer Science'),
('sch_edu',0,'School of Education'),
('sch_eng',0,'School of Engineering Sciences'),
('sch_geo',0,'School of Geography'),
('sch_hum',0,'School of Humanities'),
('sch_law',0,'School of Law'),
('sch_man',0,'School of Management'),
('sch_mat',0,'School of Mathematics'),
('sch_med',0,'School of Medicine'),
('sch_phy',0,'School of Physics'),
('sch_psy',0,'School of Psychology'),
('sch_soc',0,'School of Social Sciences'),
('subjects',0,'Library of Congress Subject Areas');
/*!40000 ALTER TABLE `subject_name_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject_name_sortvalue`
--

DROP TABLE IF EXISTS `subject_name_sortvalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subject_name_sortvalue` (
  `subjectid` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL DEFAULT 0,
  `name_sortvalue` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`subjectid`,`pos`),
  CONSTRAINT `subject_name_sortvalue_fk` FOREIGN KEY (`subjectid`) REFERENCES `subject` (`subjectid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject_name_sortvalue`
--

LOCK TABLES `subject_name_sortvalue` WRITE;
/*!40000 ALTER TABLE `subject_name_sortvalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `subject_name_sortvalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject_parents`
--

DROP TABLE IF EXISTS `subject_parents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subject_parents` (
  `subjectid` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL DEFAULT 0,
  `parents` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`subjectid`,`pos`),
  KEY `parents_0` (`parents`),
  CONSTRAINT `subject_parents_fk` FOREIGN KEY (`subjectid`) REFERENCES `subject` (`subjectid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject_parents`
--

LOCK TABLES `subject_parents` WRITE;
/*!40000 ALTER TABLE `subject_parents` DISABLE KEYS */;
INSERT INTO `subject_parents` VALUES
('AC',0,'A'),
('AI',0,'A'),
('AM',0,'A'),
('AS',0,'A'),
('AZ',0,'A'),
('B1',0,'B'),
('BC',0,'B'),
('BD',0,'B'),
('BF',0,'B'),
('BH',0,'B'),
('BJ',0,'B'),
('BL',0,'B'),
('BM',0,'B'),
('BP',0,'B'),
('BQ',0,'B'),
('BR',0,'B'),
('BS',0,'B'),
('BT',0,'B'),
('BV',0,'B'),
('BX',0,'B'),
('BV1460',0,'BV'),
('C1',0,'C'),
('CB',0,'C'),
('CC',0,'C'),
('CD',0,'C'),
('CE',0,'C'),
('CJ',0,'C'),
('CN',0,'C'),
('CR',0,'C'),
('CS',0,'C'),
('CT',0,'C'),
('CD921',0,'CD'),
('D1',0,'D'),
('DA',0,'D'),
('DB',0,'D'),
('DC',0,'D'),
('DD',0,'D'),
('DE',0,'D'),
('DF',0,'D'),
('DG',0,'D'),
('DH',0,'D'),
('DJ',0,'D'),
('DK',0,'D'),
('DL',0,'D'),
('DP',0,'D'),
('DR',0,'D'),
('DS',0,'D'),
('DT',0,'D'),
('DU',0,'D'),
('D051',0,'D1'),
('D111',0,'D1'),
('D204',0,'D1'),
('D501',0,'D1'),
('D731',0,'D1'),
('D839',0,'D1'),
('D880',0,'D1'),
('D890',0,'D1'),
('D901',0,'D1'),
('DAW',0,'DA'),
('DJK',0,'DJ'),
('E11',0,'E'),
('E151',0,'E'),
('F001',0,'F'),
('F1001',0,'F'),
('F1201',0,'F'),
('G1',0,'G'),
('GA',0,'G'),
('GB',0,'G'),
('GC',0,'G'),
('GE',0,'G'),
('GF',0,'G'),
('GN',0,'G'),
('GR',0,'G'),
('GT',0,'G'),
('GV',0,'G'),
('H1',0,'H'),
('HA',0,'H'),
('HB',0,'H'),
('HC',0,'H'),
('HD',0,'H'),
('HE',0,'H'),
('HF',0,'H'),
('HG',0,'H'),
('HJ',0,'H'),
('HM',0,'H'),
('HN',0,'H'),
('HQ',0,'H'),
('HS',0,'H'),
('HT',0,'H'),
('HV',0,'H'),
('HX',0,'H'),
('HD28',0,'HD'),
('HD61',0,'HD'),
('HF5601',0,'HF'),
('J1',0,'J'),
('JA',0,'J'),
('JC',0,'J'),
('JF',0,'J'),
('JK',0,'J'),
('JL',0,'J'),
('JN',0,'J'),
('JQ',0,'J'),
('JS',0,'J'),
('JV',0,'J'),
('JX',0,'J'),
('JZ',0,'J'),
('JN101',0,'JN'),
('JN1187',0,'JN'),
('K1',0,'K'),
('KD',0,'K'),
('KF',0,'K'),
('KZ',0,'K'),
('KDC',0,'KD'),
('L1',0,'L'),
('LA',0,'L'),
('LB',0,'L'),
('LC',0,'L'),
('LD',0,'L'),
('LE',0,'L'),
('LF',0,'L'),
('LG',0,'L'),
('LT',0,'L'),
('LB1501',0,'LB'),
('LB1603',0,'LB'),
('LB2300',0,'LB'),
('LB2361',0,'LB'),
('LC5201',0,'LC'),
('M1',0,'M'),
('ML',0,'M'),
('MT',0,'M'),
('N1',0,'N'),
('NA',0,'N'),
('NB',0,'N'),
('NC',0,'N'),
('ND',0,'N'),
('NE',0,'N'),
('NK',0,'N'),
('NX',0,'N'),
('P1',0,'P'),
('PA',0,'P'),
('PB',0,'P'),
('PC',0,'P'),
('PD',0,'P'),
('PE',0,'P'),
('PF',0,'P'),
('PG',0,'P'),
('PH',0,'P'),
('PI',0,'P'),
('PJ',0,'P'),
('PK',0,'P'),
('PL',0,'P'),
('PM',0,'P'),
('PN',0,'P'),
('PQ',0,'P'),
('PR',0,'P'),
('PS',0,'P'),
('PT',0,'P'),
('PZ',0,'P'),
('PB1501',0,'PB'),
('PN0080',0,'PN'),
('PN0441',0,'PN'),
('PN1990',0,'PN'),
('PN1993',0,'PN'),
('PN2000',0,'PN'),
('Q1',0,'Q'),
('QA',0,'Q'),
('QB',0,'Q'),
('QC',0,'Q'),
('QD',0,'Q'),
('QE',0,'Q'),
('QH',0,'Q'),
('QK',0,'Q'),
('QL',0,'Q'),
('QM',0,'Q'),
('QP',0,'Q'),
('QR',0,'Q'),
('QA75',0,'QA'),
('QA76',0,'QA'),
('QH301',0,'QH'),
('QH426',0,'QH'),
('QR180',0,'QR'),
('QR355',0,'QR'),
('R1',0,'R'),
('RA',0,'R'),
('RB',0,'R'),
('RC',0,'R'),
('RD',0,'R'),
('RE',0,'R'),
('RF',0,'R'),
('RG',0,'R'),
('RJ',0,'R'),
('RK',0,'R'),
('RL',0,'R'),
('RM',0,'R'),
('RS',0,'R'),
('RT',0,'R'),
('RV',0,'R'),
('RX',0,'R'),
('RZ',0,'R'),
('RA0421',0,'RA'),
('RA1001',0,'RA'),
('RC0254',0,'RC'),
('RC0321',0,'RC'),
('RC1200',0,'RC'),
('RJ101',0,'RJ'),
('divisions',0,'ROOT'),
('subjects',0,'ROOT'),
('S1',0,'S'),
('SB',0,'S'),
('SD',0,'S'),
('SF',0,'S'),
('SH',0,'S'),
('SK',0,'S'),
('T1',0,'T'),
('TA',0,'T'),
('TC',0,'T'),
('TD',0,'T'),
('TE',0,'T'),
('TF',0,'T'),
('TG',0,'T'),
('TH',0,'T'),
('TJ',0,'T'),
('TK',0,'T'),
('TL',0,'T'),
('TN',0,'T'),
('TP',0,'T'),
('TR',0,'T'),
('TS',0,'T'),
('TT',0,'T'),
('TX',0,'T'),
('T201',0,'T1'),
('U1',0,'U'),
('V1',0,'V'),
('VM',0,'V'),
('Z004',0,'Z'),
('Z665',0,'Z'),
('Z719',0,'Z'),
('ZA',0,'Z'),
('ZA4050',0,'ZA'),
('ZA4450',0,'ZA'),
('fac_eng',0,'divisions'),
('fac_law',0,'divisions'),
('fac_med',0,'divisions'),
('sch_che',0,'fac_eng'),
('sch_civ',0,'fac_eng'),
('sch_ecs',0,'fac_eng'),
('sch_eng',0,'fac_eng'),
('sch_geo',0,'fac_eng'),
('sch_mat',0,'fac_eng'),
('sch_phy',0,'fac_eng'),
('sch_art',0,'fac_law'),
('sch_edu',0,'fac_law'),
('sch_hum',0,'fac_law'),
('sch_law',0,'fac_law'),
('sch_man',0,'fac_law'),
('sch_soc',0,'fac_law'),
('sch_bio',0,'fac_med'),
('sch_med',0,'fac_med'),
('sch_psy',0,'fac_med'),
('A',0,'subjects'),
('B',0,'subjects'),
('C',0,'subjects'),
('D',0,'subjects'),
('E',0,'subjects'),
('F',0,'subjects'),
('G',0,'subjects'),
('H',0,'subjects'),
('J',0,'subjects'),
('K',0,'subjects'),
('L',0,'subjects'),
('M',0,'subjects'),
('N',0,'subjects'),
('P',0,'subjects'),
('Q',0,'subjects'),
('R',0,'subjects'),
('S',0,'subjects'),
('T',0,'subjects'),
('U',0,'subjects'),
('V',0,'subjects'),
('Z',0,'subjects');
/*!40000 ALTER TABLE `subject_parents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject_sortvalue_lang`
--

DROP TABLE IF EXISTS `subject_sortvalue_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subject_sortvalue_lang` (
  `subjectid` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL DEFAULT 0,
  `sortvalue_lang` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`subjectid`,`pos`),
  KEY `sortvalue_lang_0` (`sortvalue_lang`),
  CONSTRAINT `subject_sortvalue_lang_fk` FOREIGN KEY (`subjectid`) REFERENCES `subject` (`subjectid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject_sortvalue_lang`
--

LOCK TABLES `subject_sortvalue_lang` WRITE;
/*!40000 ALTER TABLE `subject_sortvalue_lang` DISABLE KEYS */;
INSERT INTO `subject_sortvalue_lang` VALUES
('A',0,'en'),
('AC',0,'en'),
('AI',0,'en'),
('AM',0,'en'),
('AS',0,'en'),
('AZ',0,'en'),
('B',0,'en'),
('B1',0,'en'),
('BC',0,'en'),
('BD',0,'en'),
('BF',0,'en'),
('BH',0,'en'),
('BJ',0,'en'),
('BL',0,'en'),
('BM',0,'en'),
('BP',0,'en'),
('BQ',0,'en'),
('BR',0,'en'),
('BS',0,'en'),
('BT',0,'en'),
('BV',0,'en'),
('BV1460',0,'en'),
('BX',0,'en'),
('C',0,'en'),
('C1',0,'en'),
('CB',0,'en'),
('CC',0,'en'),
('CD',0,'en'),
('CD921',0,'en'),
('CE',0,'en'),
('CJ',0,'en'),
('CN',0,'en'),
('CR',0,'en'),
('CS',0,'en'),
('CT',0,'en'),
('D',0,'en'),
('D051',0,'en'),
('D1',0,'en'),
('D111',0,'en'),
('D204',0,'en'),
('D501',0,'en'),
('D731',0,'en'),
('D839',0,'en'),
('D880',0,'en'),
('D890',0,'en'),
('D901',0,'en'),
('DA',0,'en'),
('DAW',0,'en'),
('DB',0,'en'),
('DC',0,'en'),
('DD',0,'en'),
('DE',0,'en'),
('DF',0,'en'),
('DG',0,'en'),
('DH',0,'en'),
('DJ',0,'en'),
('DJK',0,'en'),
('DK',0,'en'),
('DL',0,'en'),
('DP',0,'en'),
('DR',0,'en'),
('DS',0,'en'),
('DT',0,'en'),
('DU',0,'en'),
('E',0,'en'),
('E11',0,'en'),
('E151',0,'en'),
('F',0,'en'),
('F001',0,'en'),
('F1001',0,'en'),
('F1201',0,'en'),
('G',0,'en'),
('G1',0,'en'),
('GA',0,'en'),
('GB',0,'en'),
('GC',0,'en'),
('GE',0,'en'),
('GF',0,'en'),
('GN',0,'en'),
('GR',0,'en'),
('GT',0,'en'),
('GV',0,'en'),
('H',0,'en'),
('H1',0,'en'),
('HA',0,'en'),
('HB',0,'en'),
('HC',0,'en'),
('HD',0,'en'),
('HD28',0,'en'),
('HD61',0,'en'),
('HE',0,'en'),
('HF',0,'en'),
('HF5601',0,'en'),
('HG',0,'en'),
('HJ',0,'en'),
('HM',0,'en'),
('HN',0,'en'),
('HQ',0,'en'),
('HS',0,'en'),
('HT',0,'en'),
('HV',0,'en'),
('HX',0,'en'),
('J',0,'en'),
('J1',0,'en'),
('JA',0,'en'),
('JC',0,'en'),
('JF',0,'en'),
('JK',0,'en'),
('JL',0,'en'),
('JN',0,'en'),
('JN101',0,'en'),
('JN1187',0,'en'),
('JQ',0,'en'),
('JS',0,'en'),
('JV',0,'en'),
('JX',0,'en'),
('JZ',0,'en'),
('K',0,'en'),
('K1',0,'en'),
('KD',0,'en'),
('KDC',0,'en'),
('KF',0,'en'),
('KZ',0,'en'),
('L',0,'en'),
('L1',0,'en'),
('LA',0,'en'),
('LB',0,'en'),
('LB1501',0,'en'),
('LB1603',0,'en'),
('LB2300',0,'en'),
('LB2361',0,'en'),
('LC',0,'en'),
('LC5201',0,'en'),
('LD',0,'en'),
('LE',0,'en'),
('LF',0,'en'),
('LG',0,'en'),
('LT',0,'en'),
('M',0,'en'),
('M1',0,'en'),
('ML',0,'en'),
('MT',0,'en'),
('N',0,'en'),
('N1',0,'en'),
('NA',0,'en'),
('NB',0,'en'),
('NC',0,'en'),
('ND',0,'en'),
('NE',0,'en'),
('NK',0,'en'),
('NX',0,'en'),
('P',0,'en'),
('P1',0,'en'),
('PA',0,'en'),
('PB',0,'en'),
('PB1501',0,'en'),
('PC',0,'en'),
('PD',0,'en'),
('PE',0,'en'),
('PF',0,'en'),
('PG',0,'en'),
('PH',0,'en'),
('PI',0,'en'),
('PJ',0,'en'),
('PK',0,'en'),
('PL',0,'en'),
('PM',0,'en'),
('PN',0,'en'),
('PN0080',0,'en'),
('PN0441',0,'en'),
('PN1990',0,'en'),
('PN1993',0,'en'),
('PN2000',0,'en'),
('PQ',0,'en'),
('PR',0,'en'),
('PS',0,'en'),
('PT',0,'en'),
('PZ',0,'en'),
('Q',0,'en'),
('Q1',0,'en'),
('QA',0,'en'),
('QA75',0,'en'),
('QA76',0,'en'),
('QB',0,'en'),
('QC',0,'en'),
('QD',0,'en'),
('QE',0,'en'),
('QH',0,'en'),
('QH301',0,'en'),
('QH426',0,'en'),
('QK',0,'en'),
('QL',0,'en'),
('QM',0,'en'),
('QP',0,'en'),
('QR',0,'en'),
('QR180',0,'en'),
('QR355',0,'en'),
('R',0,'en'),
('R1',0,'en'),
('RA',0,'en'),
('RA0421',0,'en'),
('RA1001',0,'en'),
('RB',0,'en'),
('RC',0,'en'),
('RC0254',0,'en'),
('RC0321',0,'en'),
('RC1200',0,'en'),
('RD',0,'en'),
('RE',0,'en'),
('RF',0,'en'),
('RG',0,'en'),
('RJ',0,'en'),
('RJ101',0,'en'),
('RK',0,'en'),
('RL',0,'en'),
('RM',0,'en'),
('RS',0,'en'),
('RT',0,'en'),
('RV',0,'en'),
('RX',0,'en'),
('RZ',0,'en'),
('S',0,'en'),
('S1',0,'en'),
('SB',0,'en'),
('SD',0,'en'),
('SF',0,'en'),
('SH',0,'en'),
('SK',0,'en'),
('T',0,'en'),
('T1',0,'en'),
('T201',0,'en'),
('TA',0,'en'),
('TC',0,'en'),
('TD',0,'en'),
('TE',0,'en'),
('TF',0,'en'),
('TG',0,'en'),
('TH',0,'en'),
('TJ',0,'en'),
('TK',0,'en'),
('TL',0,'en'),
('TN',0,'en'),
('TP',0,'en'),
('TR',0,'en'),
('TS',0,'en'),
('TT',0,'en'),
('TX',0,'en'),
('U',0,'en'),
('U1',0,'en'),
('V',0,'en'),
('V1',0,'en'),
('VM',0,'en'),
('Z',0,'en'),
('Z004',0,'en'),
('Z665',0,'en'),
('Z719',0,'en'),
('ZA',0,'en'),
('ZA4050',0,'en'),
('ZA4450',0,'en'),
('divisions',0,'en'),
('fac_eng',0,'en'),
('fac_law',0,'en'),
('fac_med',0,'en'),
('sch_art',0,'en'),
('sch_bio',0,'en'),
('sch_che',0,'en'),
('sch_civ',0,'en'),
('sch_ecs',0,'en'),
('sch_edu',0,'en'),
('sch_eng',0,'en'),
('sch_geo',0,'en'),
('sch_hum',0,'en'),
('sch_law',0,'en'),
('sch_man',0,'en'),
('sch_mat',0,'en'),
('sch_med',0,'en'),
('sch_phy',0,'en'),
('sch_psy',0,'en'),
('sch_soc',0,'en'),
('subjects',0,'en');
/*!40000 ALTER TABLE `subject_sortvalue_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject_sortvalue_sortvalue`
--

DROP TABLE IF EXISTS `subject_sortvalue_sortvalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subject_sortvalue_sortvalue` (
  `subjectid` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL DEFAULT 0,
  `sortvalue_sortvalue` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`subjectid`,`pos`),
  CONSTRAINT `subject_sortvalue_sortvalue_fk` FOREIGN KEY (`subjectid`) REFERENCES `subject` (`subjectid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject_sortvalue_sortvalue`
--

LOCK TABLES `subject_sortvalue_sortvalue` WRITE;
/*!40000 ALTER TABLE `subject_sortvalue_sortvalue` DISABLE KEYS */;
INSERT INTO `subject_sortvalue_sortvalue` VALUES
('A',0,'A General Works'),
('AC',0,'AC Collections. Series. Collected works'),
('AI',0,'AI Indexes (General)'),
('AM',0,'AM Museums (General). Collectors and collecting (General)'),
('AS',0,'AS Academies and learned societies (General)'),
('AZ',0,'AZ History of Scholarship The Humanities'),
('B',0,'B Philosophy. Psychology. Religion'),
('B1',0,'B Philosophy (General)'),
('BC',0,'BC Logic'),
('BD',0,'BD Speculative Philosophy'),
('BF',0,'BF Psychology'),
('BH',0,'BH Aesthetics'),
('BJ',0,'BJ Ethics'),
('BL',0,'BL Religion'),
('BM',0,'BM Judaism'),
('BP',0,'BP Islam. Bahaism. Theosophy, etc'),
('BQ',0,'BQ Buddhism'),
('BR',0,'BR Christianity'),
('BS',0,'BS The Bible'),
('BT',0,'BT Doctrinal Theology'),
('BV',0,'BV Practical Theology'),
('BV1460',0,'BV1460 Religious Education'),
('BX',0,'BX Christian Denominations'),
('C',0,'C Auxiliary Sciences of History'),
('C1',0,'C Auxiliary sciences of history (General)'),
('CB',0,'CB History of civilization'),
('CC',0,'CC Archaeology'),
('CD',0,'CD Diplomatics. Archives. Seals'),
('CD921',0,'CD921 Archives'),
('CE',0,'CE Technical chronology. Calendar'),
('CJ',0,'CJ Numismatics'),
('CN',0,'CN Inscriptions. Epigraphy.'),
('CR',0,'CR Heraldry'),
('CS',0,'CS Genealogy'),
('CT',0,'CT Biography'),
('D',0,'D History General and Old World'),
('D051',0,'D051 Ancient History'),
('D1',0,'D History (General)'),
('D111',0,'D111 Medieval History'),
('D204',0,'D204 Modern History'),
('D501',0,'D501 World War I'),
('D731',0,'D731 World War II'),
('D839',0,'D839 Post-war History, 1945 on'),
('D880',0,'D880 Developing Countries'),
('D890',0,'D890 Eastern Hemisphere'),
('D901',0,'D901 Europe (General)'),
('DA',0,'DA Great Britain'),
('DAW',0,'DAW Central Europe'),
('DB',0,'DB Austria'),
('DC',0,'DC France'),
('DD',0,'DD Germany'),
('DE',0,'DE The Mediterranean Region. The Greco-Roman World'),
('DF',0,'DF Greece'),
('DG',0,'DG Italy'),
('DH',0,'DH Netherlands (The Low Countries)'),
('DJ',0,'DJ Netherlands (Holland)'),
('DJK',0,'DJK Eastern Europe'),
('DK',0,'DK Russia. Soviet Union. Former Soviet Republics'),
('DL',0,'DL Northern Europe. Scandinavia'),
('DP',0,'DP Spain'),
('DR',0,'DR Balkan Peninsula'),
('DS',0,'DS Asia'),
('DT',0,'DT Africa'),
('DU',0,'DU Oceania (South Seas)'),
('E',0,'E History America'),
('E11',0,'E11 America (General)'),
('E151',0,'E151 United States (General)'),
('F',0,'F History United States, Canada, Latin America'),
('F001',0,'F001 United States local history'),
('F1001',0,'F1001 Canada (General)'),
('F1201',0,'F1201 Latin America (General)'),
('G',0,'G Geography. Anthropology. Recreation'),
('G1',0,'G Geography (General)'),
('GA',0,'GA Mathematical geography. Cartography'),
('GB',0,'GB Physical geography'),
('GC',0,'GC Oceanography'),
('GE',0,'GE Environmental Sciences'),
('GF',0,'GF Human ecology. Anthropogeography'),
('GN',0,'GN Anthropology'),
('GR',0,'GR Folklore'),
('GT',0,'GT Manners and customs'),
('GV',0,'GV Recreation Leisure'),
('H',0,'H Social Sciences'),
('H1',0,'H Social Sciences (General)'),
('HA',0,'HA Statistics'),
('HB',0,'HB Economic Theory'),
('HC',0,'HC Economic History and Conditions'),
('HD',0,'HD Industries. Land use. Labor'),
('HD28',0,'HD28 Management. Industrial Management'),
('HD61',0,'HD61 Risk Management'),
('HE',0,'HE Transportation and Communications'),
('HF',0,'HF Commerce'),
('HF5601',0,'HF5601 Accounting'),
('HG',0,'HG Finance'),
('HJ',0,'HJ Public Finance'),
('HM',0,'HM Sociology'),
('HN',0,'HN Social history and conditions. Social problems. Social  reform'),
('HQ',0,'HQ The family. Marriage. Woman'),
('HS',0,'HS Societies secret benevolent etc'),
('HT',0,'HT Communities. Classes. Races'),
('HV',0,'HV Social pathology. Social and public welfare'),
('HX',0,'HX Socialism. Communism. Anarchism'),
('J',0,'J Political Science'),
('J1',0,'J General legislative and executive papers'),
('JA',0,'JA Political science (General)'),
('JC',0,'JC Political theory'),
('JF',0,'JF Political institutions (General)'),
('JK',0,'JK Political institutions (United States)'),
('JL',0,'JL Political institutions (America except United States)'),
('JN',0,'JN Political institutions (Europe)'),
('JN101',0,'JN101 Great Britain'),
('JN1187',0,'JN1187 Scotland'),
('JQ',0,'JQ Political institutions Asia'),
('JS',0,'JS Local government Municipal government'),
('JV',0,'JV Colonies and colonization. Emigration and immigration. International migration'),
('JX',0,'JX International law'),
('JZ',0,'JZ International relations'),
('K',0,'K Law'),
('K1',0,'K Law (General)'),
('KD',0,'KD England and Wales'),
('KDC',0,'KDC Scotland'),
('KF',0,'KF United States Federal Law'),
('KZ',0,'KZ Law of Nations'),
('L',0,'L Education'),
('L1',0,'L Education (General)'),
('LA',0,'LA History of education'),
('LB',0,'LB Theory and practice of education'),
('LB1501',0,'LB1501 Primary Education'),
('LB1603',0,'LB1603 Secondary Education. High schools'),
('LB2300',0,'LB2300 Higher Education'),
('LB2361',0,'LB2361 Curriculum'),
('LC',0,'LC Special aspects of education'),
('LC5201',0,'LC5201 Education extension. Adult education. Continuing education'),
('LD',0,'LD Individual institutions (United States)'),
('LE',0,'LE Individual institutions (America except United States)'),
('LF',0,'LF Individual institutions (Europe)'),
('LG',0,'LG Individual institutions (Asia. Africa)'),
('LT',0,'LT Textbooks'),
('M',0,'M Music and Books on Music'),
('M1',0,'M Music'),
('ML',0,'ML Literature of music'),
('MT',0,'MT Musical instruction and study'),
('N',0,'N Fine Arts'),
('N1',0,'N Visual arts (General) For photography, see TR'),
('NA',0,'NA Architecture'),
('NB',0,'NB Sculpture'),
('NC',0,'NC Drawing Design Illustration'),
('ND',0,'ND Painting'),
('NE',0,'NE Print media'),
('NK',0,'NK Decorative arts Applied arts Decoration and ornament'),
('NX',0,'NX Arts in general'),
('P',0,'P Language and Literature'),
('P1',0,'P Philology. Linguistics'),
('PA',0,'PA Classical philology'),
('PB',0,'PB Modern European Languages'),
('PB1501',0,'PB1501 Gaelic (Scottish Gaelic, Erse)'),
('PC',0,'PC Romance languages'),
('PD',0,'PD Germanic languages'),
('PE',0,'PE English'),
('PF',0,'PF West Germanic'),
('PG',0,'PG Slavic, Baltic, Albanian languages and literature'),
('PH',0,'PH Finno-Ugrian, Basque languages and literatures'),
('PI',0,'PI Oriental languages and literatures'),
('PJ',0,'PJ Semitic'),
('PK',0,'PK Indo-Iranian'),
('PL',0,'PL Languages and literatures of Eastern Asia, Africa, Oceania'),
('PM',0,'PM Hyperborean, Indian, and Artificial languages'),
('PN',0,'PN Literature (General)'),
('PN0080',0,'PN0080 Criticism'),
('PN0441',0,'PN0441 Literary History'),
('PN1990',0,'PN1990 Broadcasting'),
('PN1993',0,'PN1993 Motion Pictures'),
('PN2000',0,'PN2000 Dramatic representation. The Theater'),
('PQ',0,'PQ Romance literatures'),
('PR',0,'PR English literature'),
('PS',0,'PS American literature'),
('PT',0,'PT Germanic literature'),
('PZ',0,'PZ Childrens literature'),
('Q',0,'Q Science'),
('Q1',0,'Q Science (General)'),
('QA',0,'QA Mathematics'),
('QA75',0,'QA75 Electronic computers. Computer science'),
('QA76',0,'QA76 Computer software'),
('QB',0,'QB Astronomy'),
('QC',0,'QC Physics'),
('QD',0,'QD Chemistry'),
('QE',0,'QE Geology'),
('QH',0,'QH Natural history'),
('QH301',0,'QH301 Biology'),
('QH426',0,'QH426 Genetics'),
('QK',0,'QK Botany'),
('QL',0,'QL Zoology'),
('QM',0,'QM Human anatomy'),
('QP',0,'QP Physiology'),
('QR',0,'QR Microbiology'),
('QR180',0,'QR180 Immunology'),
('QR355',0,'QR355 Virology'),
('R',0,'R Medicine'),
('R1',0,'R Medicine (General)'),
('RA',0,'RA Public aspects of medicine'),
('RA0421',0,'RA0421 Public health. Hygiene. Preventive Medicine'),
('RA1001',0,'RA1001 Forensic Medicine. Medical jurisprudence. Legal medicine'),
('RB',0,'RB Pathology'),
('RC',0,'RC Internal medicine'),
('RC0254',0,'RC0254 Neoplasms. Tumors. Oncology (including Cancer)'),
('RC0321',0,'RC0321 Neuroscience. Biological psychiatry. Neuropsychiatry'),
('RC1200',0,'RC1200 Sports Medicine'),
('RD',0,'RD Surgery'),
('RE',0,'RE Ophthalmology'),
('RF',0,'RF Otorhinolaryngology'),
('RG',0,'RG Gynecology and obstetrics'),
('RJ',0,'RJ Pediatrics'),
('RJ101',0,'RJ101 Child Health. Child health services'),
('RK',0,'RK Dentistry'),
('RL',0,'RL Dermatology'),
('RM',0,'RM Therapeutics. Pharmacology'),
('RS',0,'RS Pharmacy and materia medica'),
('RT',0,'RT Nursing'),
('RV',0,'RV Botanic, Thomsonian, and eclectic medicine'),
('RX',0,'RX Homeopathy'),
('RZ',0,'RZ Other systems of medicine'),
('S',0,'S Agriculture'),
('S1',0,'S Agriculture (General)'),
('SB',0,'SB Plant culture'),
('SD',0,'SD Forestry'),
('SF',0,'SF Animal culture'),
('SH',0,'SH Aquaculture. Fisheries. Angling'),
('SK',0,'SK Hunting sports'),
('T',0,'T Technology'),
('T1',0,'T Technology (General)'),
('T201',0,'T201 Patents. Trademarks'),
('TA',0,'TA Engineering (General). Civil engineering (General)'),
('TC',0,'TC Hydraulic engineering. Ocean engineering'),
('TD',0,'TD Environmental technology. Sanitary engineering'),
('TE',0,'TE Highway engineering. Roads and pavements'),
('TF',0,'TF Railroad engineering and operation'),
('TG',0,'TG Bridge engineering'),
('TH',0,'TH Building construction'),
('TJ',0,'TJ Mechanical engineering and machinery'),
('TK',0,'TK Electrical engineering. Electronics Nuclear engineering'),
('TL',0,'TL Motor vehicles. Aeronautics. Astronautics'),
('TN',0,'TN Mining engineering. Metallurgy'),
('TP',0,'TP Chemical technology'),
('TR',0,'TR Photography'),
('TS',0,'TS Manufactures'),
('TT',0,'TT Handicrafts Arts and crafts'),
('TX',0,'TX Home economics'),
('U',0,'U Military Science'),
('U1',0,'U Military Science (General)'),
('V',0,'V Naval Science'),
('V1',0,'V Naval Science (General)'),
('VM',0,'VM Naval architecture. Shipbuilding. Marine engineering'),
('Z',0,'Z Bibliography. Library Science. Information Resources'),
('Z004',0,'Z004 Books. Writing. Paleography'),
('Z665',0,'Z665 Library Science. Information Science'),
('Z719',0,'Z719 Libraries (General)'),
('ZA',0,'ZA Information resources'),
('ZA4050',0,'ZA4050 Electronic information resources'),
('ZA4450',0,'ZA4450 Databases'),
('divisions',0,'University Structure'),
('fac_eng',0,'Faculty of Engineering, Science and Mathematics'),
('fac_law',0,'Faculty of Law, Arts and Social Sciences'),
('fac_med',0,'Faculty of Medicine, Health and Life Sciences'),
('sch_art',0,'School of Art'),
('sch_bio',0,'School of Biological Sciences'),
('sch_che',0,'School of Chemistry'),
('sch_civ',0,'School of Civil Engineering and the Environment'),
('sch_ecs',0,'School of Electronics and Computer Science'),
('sch_edu',0,'School of Education'),
('sch_eng',0,'School of Engineering Sciences'),
('sch_geo',0,'School of Geography'),
('sch_hum',0,'School of Humanities'),
('sch_law',0,'School of Law'),
('sch_man',0,'School of Management'),
('sch_mat',0,'School of Mathematics'),
('sch_med',0,'School of Medicine'),
('sch_phy',0,'School of Physics'),
('sch_psy',0,'School of Psychology'),
('sch_soc',0,'School of Social Sciences'),
('subjects',0,'Library of Congress Subject Areas');
/*!40000 ALTER TABLE `subject_sortvalue_sortvalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `triple`
--

DROP TABLE IF EXISTS `triple`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `triple` (
  `tripleid` int(11) NOT NULL DEFAULT 0,
  `primary_resource` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `secondary_resource` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `subject` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `predicate` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `object` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `type` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `lang` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`tripleid`),
  KEY `primary_resource_0` (`primary_resource`),
  KEY `secondary_resource_0` (`secondary_resource`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `triple`
--

LOCK TABLES `triple` WRITE;
/*!40000 ALTER TABLE `triple` DISABLE KEYS */;
/*!40000 ALTER TABLE `triple` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `triple__ordervalues_en`
--

DROP TABLE IF EXISTS `triple__ordervalues_en`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `triple__ordervalues_en` (
  `tripleid` int(11) NOT NULL DEFAULT 0,
  `primary_resource` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `secondary_resource` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `subject` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `predicate` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `object` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `type` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `lang` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`tripleid`),
  CONSTRAINT `triple__ordervalues_en_fk` FOREIGN KEY (`tripleid`) REFERENCES `triple` (`tripleid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `triple__ordervalues_en`
--

LOCK TABLES `triple__ordervalues_en` WRITE;
/*!40000 ALTER TABLE `triple__ordervalues_en` DISABLE KEYS */;
/*!40000 ALTER TABLE `triple__ordervalues_en` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_progress`
--

DROP TABLE IF EXISTS `upload_progress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upload_progress` (
  `progressid` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `expires` int(11) DEFAULT NULL,
  `size` bigint(20) DEFAULT NULL,
  `received` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`progressid`),
  KEY `expires_0` (`expires`),
  KEY `size_0` (`size`),
  KEY `received_0` (`received`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_progress`
--

LOCK TABLES `upload_progress` WRITE;
/*!40000 ALTER TABLE `upload_progress` DISABLE KEYS */;
/*!40000 ALTER TABLE `upload_progress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_progress__ordervalues_en`
--

DROP TABLE IF EXISTS `upload_progress__ordervalues_en`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upload_progress__ordervalues_en` (
  `progressid` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `expires` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `size` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `received` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`progressid`),
  CONSTRAINT `upload_progress__ordervalues_en_fk` FOREIGN KEY (`progressid`) REFERENCES `upload_progress` (`progressid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_progress__ordervalues_en`
--

LOCK TABLES `upload_progress__ordervalues_en` WRITE;
/*!40000 ALTER TABLE `upload_progress__ordervalues_en` DISABLE KEYS */;
/*!40000 ALTER TABLE `upload_progress__ordervalues_en` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `userid` int(11) NOT NULL DEFAULT 0,
  `rev_number` int(11) DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `usertype` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `newemail` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `newpassword` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `pin` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `pinsettime` int(11) DEFAULT NULL,
  `loginattempts` int(11) DEFAULT NULL,
  `unlocktime` int(11) DEFAULT NULL,
  `joined_year` smallint(6) DEFAULT NULL,
  `joined_month` smallint(6) DEFAULT NULL,
  `joined_day` smallint(6) DEFAULT NULL,
  `joined_hour` smallint(6) DEFAULT NULL,
  `joined_minute` smallint(6) DEFAULT NULL,
  `joined_second` smallint(6) DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `lang` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `frequency` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `mailempty` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `preference` blob DEFAULT NULL,
  `name_family` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `name_given` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `name_lineage` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `name_honourific` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `dept` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `org` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `address` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `hideemail` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `url` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`userid`),
  KEY `rev_number_0` (`rev_number`),
  KEY `username_0` (`username`),
  KEY `usertype_0` (`usertype`),
  KEY `newemail_0` (`newemail`),
  KEY `pinsettime_0` (`pinsettime`),
  KEY `loginattempts_0` (`loginattempts`),
  KEY `unlocktime_0` (`unlocktime`),
  KEY `joined_year_5` (`joined_year`,`joined_month`,`joined_day`,`joined_hour`,`joined_minute`,`joined_second`),
  KEY `email_0` (`email`),
  KEY `lang_0` (`lang`),
  KEY `frequency_0` (`frequency`),
  KEY `mailempty_0` (`mailempty`),
  KEY `latitude_0` (`latitude`),
  KEY `longitude_0` (`longitude`),
  KEY `name_family_0` (`name_family`),
  KEY `hideemail_0` (`hideemail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES
(1,2,'admin','?method=2&salt=%2F%2F&digest=c208bac2b26744498aac88834daf6aecc295b30ba34439d112abd86128222dfe93bef0e6f9ea37d45ce56f9a2541e7b0f456e260decf32a4f30269fba898dbf5','admin',NULL,NULL,NULL,NULL,0,NULL,2022,9,1,6,32,19,'admin@pub.eprints',NULL,'never','FALSE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TRUE',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user__index`
--

DROP TABLE IF EXISTS `user__index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user__index` (
  `fieldword` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL DEFAULT 0,
  `ids` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`fieldword`,`pos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user__index`
--

LOCK TABLES `user__index` WRITE;
/*!40000 ALTER TABLE `user__index` DISABLE KEYS */;
/*!40000 ALTER TABLE `user__index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user__index_grep`
--

DROP TABLE IF EXISTS `user__index_grep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user__index_grep` (
  `fieldname` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `grepstring` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`fieldname`,`grepstring`,`userid`),
  KEY `user__index_grep_fk` (`userid`),
  CONSTRAINT `user__index_grep_fk` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user__index_grep`
--

LOCK TABLES `user__index_grep` WRITE;
/*!40000 ALTER TABLE `user__index_grep` DISABLE KEYS */;
/*!40000 ALTER TABLE `user__index_grep` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user__ordervalues_en`
--

DROP TABLE IF EXISTS `user__ordervalues_en`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user__ordervalues_en` (
  `userid` int(11) NOT NULL DEFAULT 0,
  `rev_number` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `saved_searches` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `username` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `password` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `usertype` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `newemail` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `newpassword` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `pin` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `pinsettime` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `loginattempts` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `unlocktime` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `joined` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `email` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `lang` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `editperms` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `roles` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `frequency` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `mailempty` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `items_fields` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `latitude` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `longitude` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `preference` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `captcha` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `dept` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `org` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `address` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `country` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `hideemail` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `url` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`userid`),
  CONSTRAINT `user__ordervalues_en_fk` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user__ordervalues_en`
--

LOCK TABLES `user__ordervalues_en` WRITE;
/*!40000 ALTER TABLE `user__ordervalues_en` DISABLE KEYS */;
INSERT INTO `user__ordervalues_en` VALUES
(1,'00000000000000000002',NULL,'admin','?method=2&salt=%2F%2F&digest=c208bac2b26744498aac88834daf6aecc295b30ba34439d112abd86128222dfe93bef0e6f9ea37d45ce56f9a2541e7b0f456e260decf32a4f30269fba898dbf5','000002',NULL,NULL,NULL,NULL,'00000000000000000000',NULL,'2022-09-01 06:32:19','admin@pub.eprints',NULL,NULL,NULL,'Never','FALSE','Last Modified:Title:Item Type:Item Status',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TRUE',NULL);
/*!40000 ALTER TABLE `user__ordervalues_en` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user__rindex`
--

DROP TABLE IF EXISTS `user__rindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user__rindex` (
  `field` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `word` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`field`,`word`,`userid`),
  KEY `userid_1` (`userid`,`field`),
  CONSTRAINT `user__rindex_fk` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user__rindex`
--

LOCK TABLES `user__rindex` WRITE;
/*!40000 ALTER TABLE `user__rindex` DISABLE KEYS */;
/*!40000 ALTER TABLE `user__rindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_editperms`
--

DROP TABLE IF EXISTS `user_editperms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_editperms` (
  `userid` int(11) NOT NULL DEFAULT 0,
  `pos` int(11) NOT NULL DEFAULT 0,
  `editperms` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`userid`,`pos`),
  CONSTRAINT `user_editperms_fk` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_editperms`
--

LOCK TABLES `user_editperms` WRITE;
/*!40000 ALTER TABLE `user_editperms` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_editperms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_items_fields`
--

DROP TABLE IF EXISTS `user_items_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_items_fields` (
  `userid` int(11) NOT NULL DEFAULT 0,
  `pos` int(11) NOT NULL DEFAULT 0,
  `items_fields` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`userid`,`pos`),
  KEY `items_fields_0` (`items_fields`),
  CONSTRAINT `user_items_fields_fk` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_items_fields`
--

LOCK TABLES `user_items_fields` WRITE;
/*!40000 ALTER TABLE `user_items_fields` DISABLE KEYS */;
INSERT INTO `user_items_fields` VALUES
(1,3,'eprint_status'),
(1,0,'lastmod'),
(1,1,'title'),
(1,2,'type');
/*!40000 ALTER TABLE `user_items_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `userid` int(11) NOT NULL DEFAULT 0,
  `pos` int(11) NOT NULL DEFAULT 0,
  `roles` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`userid`,`pos`),
  KEY `roles_0` (`roles`),
  CONSTRAINT `user_roles_fk` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `version`
--

DROP TABLE IF EXISTS `version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `version` (
  `version` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `version`
--

LOCK TABLES `version` WRITE;
/*!40000 ALTER TABLE `version` DISABLE KEYS */;
INSERT INTO `version` VALUES
('3.3.4');
/*!40000 ALTER TABLE `version` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-01  6:58:08
