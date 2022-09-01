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
('eprintid',0),
('fileid',0),
('historyid',0),
('importid',0),
('messageid',0),
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
('bb38efb8d5f4f603d1202dbe2ad0ee2b','TRUE',NULL,2022,9,1,6,32,19,NULL,NULL,NULL,NULL,NULL,NULL,'waiting',NULL,NULL,'Event::Indexer','index_all','	\0\0\0\n\n/id/user/1');
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

-- Dump completed on 2022-09-01  6:34:43
