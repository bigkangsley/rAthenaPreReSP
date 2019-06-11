-- MySQL dump 10.13  Distrib 5.6.38, for Win32 (AMD64)
--
-- Host: localhost    Database: rathena_PRERE_log
-- ------------------------------------------------------
-- Server version	5.6.38

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
-- Table structure for table `atcommandlog`
--

DROP TABLE IF EXISTS `atcommandlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atcommandlog` (
  `atcommand_id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `atcommand_date` datetime NOT NULL,
  `account_id` int(11) unsigned NOT NULL DEFAULT '0',
  `char_id` int(11) unsigned NOT NULL DEFAULT '0',
  `char_name` varchar(25) NOT NULL DEFAULT '',
  `map` varchar(11) NOT NULL DEFAULT '',
  `command` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`atcommand_id`),
  KEY `account_id` (`account_id`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atcommandlog`
--

LOCK TABLES `atcommandlog` WRITE;
/*!40000 ALTER TABLE `atcommandlog` DISABLE KEYS */;
INSERT INTO `atcommandlog` VALUES (1,'2018-04-18 12:35:28',2000000,150000,'AdminUserPRE','prontera','@go 0');
/*!40000 ALTER TABLE `atcommandlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branchlog`
--

DROP TABLE IF EXISTS `branchlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `branchlog` (
  `branch_id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `branch_date` datetime NOT NULL,
  `account_id` int(11) NOT NULL DEFAULT '0',
  `char_id` int(11) NOT NULL DEFAULT '0',
  `char_name` varchar(25) NOT NULL DEFAULT '',
  `map` varchar(11) NOT NULL DEFAULT '',
  PRIMARY KEY (`branch_id`),
  KEY `account_id` (`account_id`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branchlog`
--

LOCK TABLES `branchlog` WRITE;
/*!40000 ALTER TABLE `branchlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `branchlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cashlog`
--

DROP TABLE IF EXISTS `cashlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cashlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL,
  `char_id` int(11) NOT NULL DEFAULT '0',
  `type` enum('T','V','P','M','S','N','D','C','A','E','I','B','$') NOT NULL DEFAULT 'S',
  `cash_type` enum('O','K','C') NOT NULL DEFAULT 'O',
  `amount` int(11) NOT NULL DEFAULT '0',
  `map` varchar(11) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cashlog`
--

LOCK TABLES `cashlog` WRITE;
/*!40000 ALTER TABLE `cashlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `cashlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chatlog`
--

DROP TABLE IF EXISTS `chatlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chatlog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL,
  `type` enum('O','W','P','G','M','C') NOT NULL DEFAULT 'O',
  `type_id` int(11) NOT NULL DEFAULT '0',
  `src_charid` int(11) NOT NULL DEFAULT '0',
  `src_accountid` int(11) NOT NULL DEFAULT '0',
  `src_map` varchar(11) NOT NULL DEFAULT '',
  `src_map_x` smallint(4) NOT NULL DEFAULT '0',
  `src_map_y` smallint(4) NOT NULL DEFAULT '0',
  `dst_charname` varchar(25) NOT NULL DEFAULT '',
  `message` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `src_accountid` (`src_accountid`),
  KEY `src_charid` (`src_charid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chatlog`
--

LOCK TABLES `chatlog` WRITE;
/*!40000 ALTER TABLE `chatlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `chatlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedinglog`
--

DROP TABLE IF EXISTS `feedinglog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedinglog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL,
  `char_id` int(11) NOT NULL,
  `target_id` int(11) NOT NULL,
  `target_class` smallint(11) NOT NULL,
  `type` enum('P','H','O') NOT NULL,
  `intimacy` int(11) unsigned NOT NULL,
  `item_id` smallint(5) unsigned NOT NULL,
  `map` varchar(11) NOT NULL,
  `x` smallint(5) unsigned NOT NULL,
  `y` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedinglog`
--

LOCK TABLES `feedinglog` WRITE;
/*!40000 ALTER TABLE `feedinglog` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedinglog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loginlog`
--

DROP TABLE IF EXISTS `loginlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loginlog` (
  `time` datetime NOT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `user` varchar(23) NOT NULL DEFAULT '',
  `rcode` tinyint(4) NOT NULL DEFAULT '0',
  `log` varchar(255) NOT NULL DEFAULT '',
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loginlog`
--

LOCK TABLES `loginlog` WRITE;
/*!40000 ALTER TABLE `loginlog` DISABLE KEYS */;
INSERT INTO `loginlog` VALUES ('2018-04-18 12:31:17','0.0.0.0','login server',100,'login server started'),('2018-04-18 12:31:18','127.0.0.1','s1changemeplease',100,'charserver - rAthena_RENEWAL_201@10.8.0.2:6121'),('2018-04-18 12:32:08','0.0.0.0','login server',100,'login server started'),('2018-04-18 12:32:10','127.0.0.1','s1changemeplease',100,'charserver - rAthena_RENEWAL_201@10.8.0.2:6121'),('2018-04-18 12:33:47','127.0.0.1','admin',100,'login ok'),('2018-04-18 12:34:07','127.0.0.1','player',100,'login ok'),('2018-04-18 12:34:24','127.0.0.1','player2',100,'login ok'),('2018-04-18 12:35:25','127.0.0.1','admin',100,'login ok');
/*!40000 ALTER TABLE `loginlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mvplog`
--

DROP TABLE IF EXISTS `mvplog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mvplog` (
  `mvp_id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `mvp_date` datetime NOT NULL,
  `kill_char_id` int(11) NOT NULL DEFAULT '0',
  `monster_id` smallint(6) NOT NULL DEFAULT '0',
  `prize` smallint(5) unsigned NOT NULL DEFAULT '0',
  `mvpexp` bigint(20) unsigned NOT NULL DEFAULT '0',
  `map` varchar(11) NOT NULL DEFAULT '',
  PRIMARY KEY (`mvp_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mvplog`
--

LOCK TABLES `mvplog` WRITE;
/*!40000 ALTER TABLE `mvplog` DISABLE KEYS */;
/*!40000 ALTER TABLE `mvplog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `npclog`
--

DROP TABLE IF EXISTS `npclog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `npclog` (
  `npc_id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `npc_date` datetime NOT NULL,
  `account_id` int(11) unsigned NOT NULL DEFAULT '0',
  `char_id` int(11) unsigned NOT NULL DEFAULT '0',
  `char_name` varchar(25) NOT NULL DEFAULT '',
  `map` varchar(11) NOT NULL DEFAULT '',
  `mes` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`npc_id`),
  KEY `account_id` (`account_id`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `npclog`
--

LOCK TABLES `npclog` WRITE;
/*!40000 ALTER TABLE `npclog` DISABLE KEYS */;
/*!40000 ALTER TABLE `npclog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `picklog`
--

DROP TABLE IF EXISTS `picklog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `picklog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL,
  `char_id` int(11) NOT NULL DEFAULT '0',
  `type` enum('M','P','L','T','V','S','N','C','A','R','G','E','B','O','I','X','D','U','$','F','Z','Q') NOT NULL DEFAULT 'P',
  `nameid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '1',
  `refine` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `card0` smallint(5) unsigned NOT NULL DEFAULT '0',
  `card1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `card2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `card3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `option_id0` smallint(5) NOT NULL DEFAULT '0',
  `option_val0` smallint(5) NOT NULL DEFAULT '0',
  `option_parm0` tinyint(3) NOT NULL DEFAULT '0',
  `option_id1` smallint(5) NOT NULL DEFAULT '0',
  `option_val1` smallint(5) NOT NULL DEFAULT '0',
  `option_parm1` tinyint(3) NOT NULL DEFAULT '0',
  `option_id2` smallint(5) NOT NULL DEFAULT '0',
  `option_val2` smallint(5) NOT NULL DEFAULT '0',
  `option_parm2` tinyint(3) NOT NULL DEFAULT '0',
  `option_id3` smallint(5) NOT NULL DEFAULT '0',
  `option_val3` smallint(5) NOT NULL DEFAULT '0',
  `option_parm3` tinyint(3) NOT NULL DEFAULT '0',
  `option_id4` smallint(5) NOT NULL DEFAULT '0',
  `option_val4` smallint(5) NOT NULL DEFAULT '0',
  `option_parm4` tinyint(3) NOT NULL DEFAULT '0',
  `unique_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `map` varchar(11) NOT NULL DEFAULT '',
  `bound` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `picklog`
--

LOCK TABLES `picklog` WRITE;
/*!40000 ALTER TABLE `picklog` DISABLE KEYS */;
/*!40000 ALTER TABLE `picklog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zenylog`
--

DROP TABLE IF EXISTS `zenylog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zenylog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL,
  `char_id` int(11) NOT NULL DEFAULT '0',
  `src_id` int(11) NOT NULL DEFAULT '0',
  `type` enum('T','V','P','M','S','N','D','C','A','E','I','B','K') NOT NULL DEFAULT 'S',
  `amount` int(11) NOT NULL DEFAULT '0',
  `map` varchar(11) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zenylog`
--

LOCK TABLES `zenylog` WRITE;
/*!40000 ALTER TABLE `zenylog` DISABLE KEYS */;
/*!40000 ALTER TABLE `zenylog` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-18 12:36:28
