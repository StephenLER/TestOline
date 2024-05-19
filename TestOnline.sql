-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: exam_online_system
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `answer`
--

DROP TABLE IF EXISTS `answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answer` (
  `answer_id` int NOT NULL AUTO_INCREMENT,
  `answer_sign` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT 'ABC或者1-对',
  `content` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `is_correct` int NOT NULL DEFAULT '0' COMMENT '是否是正确答案，1-是',
  `question_id` int NOT NULL,
  PRIMARY KEY (`answer_id`) USING BTREE,
  KEY `fk_answer_question_1` (`question_id`) USING BTREE,
  CONSTRAINT `fk_answer_question_1` FOREIGN KEY (`question_id`) REFERENCES `question` (`question_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1535 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer`
--

LOCK TABLES `answer` WRITE;
/*!40000 ALTER TABLE `answer` DISABLE KEYS */;
/*!40000 ALTER TABLE `answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clazz`
--

DROP TABLE IF EXISTS `clazz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clazz` (
  `clazz_id` int NOT NULL AUTO_INCREMENT,
  `clazz_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `major_id` int NOT NULL,
  PRIMARY KEY (`clazz_id`) USING BTREE,
  KEY `fk_clazz_major_1` (`major_id`) USING BTREE,
  CONSTRAINT `fk_clazz_major_1` FOREIGN KEY (`major_id`) REFERENCES `major` (`major_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clazz`
--

LOCK TABLES `clazz` WRITE;
/*!40000 ALTER TABLE `clazz` DISABLE KEYS */;
INSERT INTO `clazz` VALUES (55,'计算机科学与技术班',13),(56,'数据科学与大数据技术班',14),(57,'信息管理与信息系统班',15),(58,'电子商务班',16),(59,'马克思主义基本原理班',17);
/*!40000 ALTER TABLE `clazz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compare_short_answer`
--

DROP TABLE IF EXISTS `compare_short_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compare_short_answer` (
  `compare_id` int NOT NULL AUTO_INCREMENT,
  `compare_threshold` float NOT NULL,
  `short_answer_id` int NOT NULL,
  `reply1_id` int NOT NULL,
  `reply2_id` int NOT NULL,
  PRIMARY KEY (`compare_id`) USING BTREE,
  KEY `fk_compare_short_answer_short_answer_1` (`short_answer_id`) USING BTREE,
  KEY `fk_compare_short_answer_reply_1` (`reply1_id`) USING BTREE,
  KEY `fk_compare_short_answer_reply_2` (`reply2_id`) USING BTREE,
  KEY `compare_id` (`compare_id`) USING BTREE,
  CONSTRAINT `fk_compare_short_answer_reply_1` FOREIGN KEY (`reply1_id`) REFERENCES `test_history_question_reply` (`reply_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_compare_short_answer_reply_2` FOREIGN KEY (`reply2_id`) REFERENCES `test_history_question_reply` (`reply_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_compare_short_answer_short_answer_1` FOREIGN KEY (`short_answer_id`) REFERENCES `short_answer` (`short_answer_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=59010 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compare_short_answer`
--

LOCK TABLES `compare_short_answer` WRITE;
/*!40000 ALTER TABLE `compare_short_answer` DISABLE KEYS */;
/*!40000 ALTER TABLE `compare_short_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `compare_short_answer_with_reply`
--

DROP TABLE IF EXISTS `compare_short_answer_with_reply`;
/*!50001 DROP VIEW IF EXISTS `compare_short_answer_with_reply`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `compare_short_answer_with_reply` AS SELECT 
 1 AS `compare_id`,
 1 AS `compare_threshold`,
 1 AS `short_answer_id`,
 1 AS `question_id`,
 1 AS `question_title`,
 1 AS `test_id`,
 1 AS `reply1_id`,
 1 AS `reply1_text`,
 1 AS `reply1_ranking`,
 1 AS `user_id`,
 1 AS `username`,
 1 AS `reply2_id`,
 1 AS `reply2_text`,
 1 AS `reply2_ranking`,
 1 AS `compare_user_id`,
 1 AS `compare_username`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `knowledge_frame`
--

DROP TABLE IF EXISTS `knowledge_frame`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `knowledge_frame` (
  `chapter_id` int NOT NULL AUTO_INCREMENT,
  `chapter_parent_id` int NOT NULL COMMENT '0-父节点',
  `content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `is_knowledge` int DEFAULT NULL COMMENT '是否是知识点，1-是',
  `subject_id` int NOT NULL,
  PRIMARY KEY (`chapter_id`) USING BTREE,
  KEY `chapter_parent_id` (`chapter_parent_id`) USING BTREE,
  KEY `subject_id` (`subject_id`) USING BTREE,
  KEY `is_knowledge` (`is_knowledge`) USING BTREE,
  CONSTRAINT `knowledge_frame_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `knowledge_frame`
--

LOCK TABLES `knowledge_frame` WRITE;
/*!40000 ALTER TABLE `knowledge_frame` DISABLE KEYS */;
/*!40000 ALTER TABLE `knowledge_frame` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `major`
--

DROP TABLE IF EXISTS `major`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `major` (
  `major_id` int NOT NULL AUTO_INCREMENT,
  `major_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`major_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `major`
--

LOCK TABLES `major` WRITE;
/*!40000 ALTER TABLE `major` DISABLE KEYS */;
INSERT INTO `major` VALUES (13,'计算机科学与技术'),(14,'数据科学与大数据技术'),(15,'信息管理与信息系统'),(16,'电子商务'),(17,'马克思主义基本原理');
/*!40000 ALTER TABLE `major` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question` (
  `question_id` int NOT NULL AUTO_INCREMENT,
  `question_title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `question_difficulty` float DEFAULT NULL,
  `subject_id` int NOT NULL,
  `type_id` int NOT NULL,
  `knowledge_id` int DEFAULT NULL,
  PRIMARY KEY (`question_id`) USING BTREE,
  KEY `fk_question_subject_1` (`subject_id`) USING BTREE,
  KEY `fk_question_question_type_1` (`type_id`) USING BTREE,
  KEY `fk` (`knowledge_id`) USING BTREE,
  KEY `knowledge_id` (`knowledge_id`) USING BTREE,
  CONSTRAINT `fk_question_question_type_1` FOREIGN KEY (`type_id`) REFERENCES `question_type` (`type_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_question_subject_1` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `question_ibfk_1` FOREIGN KEY (`knowledge_id`) REFERENCES `knowledge_frame` (`chapter_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=687 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question_type`
--

DROP TABLE IF EXISTS `question_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question_type` (
  `type_id` int NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  PRIMARY KEY (`type_id`) USING BTREE,
  UNIQUE KEY `type_name` (`type_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_type`
--

LOCK TABLES `question_type` WRITE;
/*!40000 ALTER TABLE `question_type` DISABLE KEYS */;
INSERT INTO `question_type` VALUES (1,'选择题','从所给的选项中选择正确的一项'),(2,'判断题','判断所给题目的正确性'),(3,'简答题','根据题意给出简要的回答');
/*!40000 ALTER TABLE `question_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `question_with_type_subject_knowledge`
--

DROP TABLE IF EXISTS `question_with_type_subject_knowledge`;
/*!50001 DROP VIEW IF EXISTS `question_with_type_subject_knowledge`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `question_with_type_subject_knowledge` AS SELECT 
 1 AS `question_id`,
 1 AS `question_title`,
 1 AS `question_difficulty`,
 1 AS `subject_id`,
 1 AS `type_id`,
 1 AS `knowledge_id`,
 1 AS `subject_name`,
 1 AS `type_name`,
 1 AS `knowledge_content`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`role_id`) USING BTREE,
  UNIQUE KEY `role_name` (`role_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ROLE_ADMIN','管理员'),(2,'ROLE_TEACHER','教师'),(3,'ROLE_STUDENT','学生');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `short_answer`
--

DROP TABLE IF EXISTS `short_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `short_answer` (
  `short_answer_id` int NOT NULL AUTO_INCREMENT,
  `threshold` int NOT NULL,
  `question_id` int NOT NULL,
  `test_id` int NOT NULL,
  PRIMARY KEY (`short_answer_id`) USING BTREE,
  KEY `fk_short_answer_question_1` (`question_id`) USING BTREE,
  KEY `fk_short_answer_test_1` (`test_id`) USING BTREE,
  KEY `short_answer_id` (`short_answer_id`) USING BTREE,
  CONSTRAINT `fk_short_answer_question_1` FOREIGN KEY (`question_id`) REFERENCES `question` (`question_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_short_answer_test_1` FOREIGN KEY (`test_id`) REFERENCES `test` (`test_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `short_answer`
--

LOCK TABLES `short_answer` WRITE;
/*!40000 ALTER TABLE `short_answer` DISABLE KEYS */;
/*!40000 ALTER TABLE `short_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `student_with_role_clazz_major`
--

DROP TABLE IF EXISTS `student_with_role_clazz_major`;
/*!50001 DROP VIEW IF EXISTS `student_with_role_clazz_major`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `student_with_role_clazz_major` AS SELECT 
 1 AS `user_id`,
 1 AS `account`,
 1 AS `password`,
 1 AS `username`,
 1 AS `role_id`,
 1 AS `role_name`,
 1 AS `description`,
 1 AS `clazz_id`,
 1 AS `clazz_name`,
 1 AS `major_id`,
 1 AS `major_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject` (
  `subject_id` int NOT NULL AUTO_INCREMENT,
  `subject_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `teacher_id` int NOT NULL,
  `clazz_id` int NOT NULL,
  PRIMARY KEY (`subject_id`) USING BTREE,
  UNIQUE KEY `subject_name` (`subject_name`) USING BTREE,
  KEY `fk_subject_user_1` (`teacher_id`) USING BTREE,
  KEY `fk_subject_clazz_1` (`clazz_id`) USING BTREE,
  CONSTRAINT `fk_subject_clazz_1` FOREIGN KEY (`clazz_id`) REFERENCES `clazz` (`clazz_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_subject_user_1` FOREIGN KEY (`teacher_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` VALUES (47,'计算机网络',852,55),(48,'数据结构',851,55),(49,'习近平新时代中国特色社会主义思想概论',853,55);
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `subject_with_user_clazz`
--

DROP TABLE IF EXISTS `subject_with_user_clazz`;
/*!50001 DROP VIEW IF EXISTS `subject_with_user_clazz`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `subject_with_user_clazz` AS SELECT 
 1 AS `subject_id`,
 1 AS `subject_name`,
 1 AS `teacher_id`,
 1 AS `clazz_id`,
 1 AS `teacher_name`,
 1 AS `clazz_name`,
 1 AS `major_id`,
 1 AS `major_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `teacher_with_role_major`
--

DROP TABLE IF EXISTS `teacher_with_role_major`;
/*!50001 DROP VIEW IF EXISTS `teacher_with_role_major`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `teacher_with_role_major` AS SELECT 
 1 AS `user_id`,
 1 AS `account`,
 1 AS `password`,
 1 AS `username`,
 1 AS `role_id`,
 1 AS `role_name`,
 1 AS `description`,
 1 AS `major_id`,
 1 AS `major_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test` (
  `test_id` int NOT NULL AUTO_INCREMENT,
  `test_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `begin_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `test_duration` int DEFAULT NULL COMMENT '测验时长',
  `test_time` int DEFAULT NULL COMMENT '测验次数',
  `question_total` int DEFAULT NULL COMMENT '题目数量',
  `subject_id` int NOT NULL,
  `test_difficulty` float DEFAULT NULL COMMENT '实际难度系数',
  `generate_way` int DEFAULT NULL COMMENT '组卷方式：1-手动；2-智能',
  `preset_question_total` int DEFAULT NULL COMMENT '预设题目数量',
  `preset_test_difficulty` float DEFAULT NULL COMMENT '预设难度系数',
  `difficulty_weight` float DEFAULT NULL COMMENT '难度权重',
  `knowledge_weight` float DEFAULT NULL COMMENT '知识点覆盖率权重',
  PRIMARY KEY (`test_id`) USING BTREE,
  KEY `fk_test_subject_1` (`subject_id`) USING BTREE,
  CONSTRAINT `fk_test_subject_1` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_history`
--

DROP TABLE IF EXISTS `test_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_history` (
  `history_id` int NOT NULL AUTO_INCREMENT,
  `correct` int DEFAULT NULL,
  `finish_time` datetime DEFAULT NULL COMMENT '完成测验的结束时间',
  `take_time` int DEFAULT NULL COMMENT '完成测验的时长（秒）',
  `test_id` int NOT NULL,
  `student_id` int NOT NULL,
  PRIMARY KEY (`history_id`) USING BTREE,
  KEY `fk_test_history_test_1` (`test_id`) USING BTREE,
  KEY `fk_test_history_user_1` (`student_id`) USING BTREE,
  KEY `history_id` (`history_id`) USING BTREE,
  CONSTRAINT `fk_test_history_test_1` FOREIGN KEY (`test_id`) REFERENCES `test` (`test_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_test_history_user_1` FOREIGN KEY (`student_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7283 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_history`
--

LOCK TABLES `test_history` WRITE;
/*!40000 ALTER TABLE `test_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `test_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_history_question_reply`
--

DROP TABLE IF EXISTS `test_history_question_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_history_question_reply` (
  `reply_id` int NOT NULL AUTO_INCREMENT,
  `history_id` int NOT NULL,
  `question_id` int NOT NULL,
  `reply` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  PRIMARY KEY (`reply_id`) USING BTREE,
  KEY `reply_id` (`reply_id`) USING BTREE,
  KEY `question_id` (`question_id`) USING BTREE,
  KEY `history_id` (`history_id`) USING BTREE,
  CONSTRAINT `test_history_question_reply_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `question` (`question_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `test_history_question_reply_ibfk_2` FOREIGN KEY (`history_id`) REFERENCES `test_history` (`history_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=48384 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_history_question_reply`
--

LOCK TABLES `test_history_question_reply` WRITE;
/*!40000 ALTER TABLE `test_history_question_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `test_history_question_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `test_history_question_reply_with_user`
--

DROP TABLE IF EXISTS `test_history_question_reply_with_user`;
/*!50001 DROP VIEW IF EXISTS `test_history_question_reply_with_user`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `test_history_question_reply_with_user` AS SELECT 
 1 AS `reply_id`,
 1 AS `history_id`,
 1 AS `question_id`,
 1 AS `reply`,
 1 AS `user_id`,
 1 AS `username`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `test_history_with_user_test_subject`
--

DROP TABLE IF EXISTS `test_history_with_user_test_subject`;
/*!50001 DROP VIEW IF EXISTS `test_history_with_user_test_subject`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `test_history_with_user_test_subject` AS SELECT 
 1 AS `max_correct`,
 1 AS `complete_time`,
 1 AS `student_id`,
 1 AS `username`,
 1 AS `test_id`,
 1 AS `test_name`,
 1 AS `description`,
 1 AS `begin_date`,
 1 AS `end_date`,
 1 AS `test_duration`,
 1 AS `test_time`,
 1 AS `question_total`,
 1 AS `subject_id`,
 1 AS `test_difficulty`,
 1 AS `generate_way`,
 1 AS `preset_question_total`,
 1 AS `preset_test_difficulty`,
 1 AS `difficulty_weight`,
 1 AS `knowledge_weight`,
 1 AS `subject_name`,
 1 AS `teacher_id`,
 1 AS `clazz_id`,
 1 AS `teacher_name`,
 1 AS `clazz_name`,
 1 AS `major_id`,
 1 AS `major_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `test_question_list`
--

DROP TABLE IF EXISTS `test_question_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_question_list` (
  `test_id` int NOT NULL,
  `question_id` int NOT NULL,
  PRIMARY KEY (`test_id`,`question_id`) USING BTREE,
  KEY `fk_test_question_list_question_1` (`question_id`) USING BTREE,
  CONSTRAINT `fk_test_question_list_question_1` FOREIGN KEY (`question_id`) REFERENCES `question` (`question_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_test_question_list_test_1` FOREIGN KEY (`test_id`) REFERENCES `test` (`test_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_question_list`
--

LOCK TABLES `test_question_list` WRITE;
/*!40000 ALTER TABLE `test_question_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `test_question_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `test_with_subject_clazz`
--

DROP TABLE IF EXISTS `test_with_subject_clazz`;
/*!50001 DROP VIEW IF EXISTS `test_with_subject_clazz`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `test_with_subject_clazz` AS SELECT 
 1 AS `test_id`,
 1 AS `test_name`,
 1 AS `description`,
 1 AS `begin_date`,
 1 AS `end_date`,
 1 AS `test_duration`,
 1 AS `test_time`,
 1 AS `question_total`,
 1 AS `subject_id`,
 1 AS `test_difficulty`,
 1 AS `generate_way`,
 1 AS `preset_question_total`,
 1 AS `preset_test_difficulty`,
 1 AS `difficulty_weight`,
 1 AS `knowledge_weight`,
 1 AS `subject_name`,
 1 AS `teacher_id`,
 1 AS `clazz_id`,
 1 AS `teacher_name`,
 1 AS `clazz_name`,
 1 AS `major_id`,
 1 AS `major_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `account` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE KEY `account` (`account`) USING BTREE,
  KEY `fk_user_role_1` (`role_id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE,
  CONSTRAINT `fk_user_role_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=874 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'123','$2a$10$9PjZyTvqpcBb0d671uGqOeefCh6b1.ijXfW3cbwq0LwIKQcFNNZwq','admin',1),(851,'胡浩栋','$2a$10$kq8Hu9XmtZbqByHpMSerHuaAPv.gzzbkfrjLdnJh8lrW4n6AIbVqy','胡浩栋',2),(852,'陈岗','$2a$10$M/0tRjVCXwWvWbEWLo8qCOXkSPOfdWzjPfj74TS1fiETIqVQPOn9S','陈岗',2),(853,'姜国敏','$2a$10$QG3o03Qk4b/IhVNFtF.oy.8w5X.pm4019dxAvkFxgnsMFy5ea.isu','姜国敏',2),(854,'陈双双','$2a$10$zvozOpHGybc2K6yRcE8AB.DpGaO3ZRKRekgSTH/I4Fg.wPE6ehwPC','陈双双',3),(855,'梁剑','$2a$10$IIvAsQ3GYf4Vi72mNWnP/Orh3mYRGiSC6/xonfIW5//FFNACCSSoG','梁剑',3),(856,'刘学昕','$2a$10$kouc430E6XhUudsaOSU9sOLTXAMcjnRI4CeVzFkvG0Dwo6sXF/i2O','刘学昕',3),(857,'胡若璇','$2a$10$jmc9ZUh6/IrtVhIajKxsU.F0zOF9LeVO5nak/RUXdqdIuB953HFN2','胡若璇',3),(858,'班茗子','$2a$10$7RqIWqrnYPVbiFPWUbg3Je7K9QsDXZRTcdCtPrPTFqVFGgVmJkNuy','班茗子',3),(859,'郑延倩','$2a$10$YDLtwDMx58cXbDLIH11tle35WY2zEfOAmBMXewQ81xqTnZdfXU6uG','郑延倩',3),(860,'陈天麒','$2a$10$ULI5TUiZMRbmxIklTKatS.Mj/rtjUzj2E/Fr.BDs6K6OsQnKnyRF2','陈天麒',3),(861,'康邦盛','$2a$10$NOni8DaLXAKdqlBSUBiDFOmaxfI0jt7RRqoaB1yR2czVfQPp1xlwi','康邦盛',3),(862,'崔吉易','$2a$10$B7NVBN791gP39bDy/WLg0esrKppfcidrPxxYIEmYfZE9Rz.2l2fYS','崔吉易',3),(863,'史家毅','$2a$10$FIVa.RoqqhGyPA2XthYFVOoO.1RKLL5n1opdwcPNcaTCulLc0K3IW','史家毅',3),(864,'曹忠隆','$2a$10$.dFM3Kw3g.31GwR7KOTZW.kXYdaZxcWa0XMM0E1lECVHMtNd0j5ri','曹忠隆',3),(865,'呂芯怡','$2a$10$MIICYlvwt5p4VeWBBXp84OrL9Utu8XQJ2h98wntZheOY0t/jFgwji','呂芯怡',3),(866,'樊俐君','$2a$10$fAffpupKxtKs.S6Lq2zkXOTPkVbghDy00EFu4V/Sk1eYfS/3Y6UeO','樊俐君',3),(867,'徐政宇','$2a$10$27iaaBEjyIBR.0oxA3u6a.HM/8euanQ3UWAeqKtMemFfPW9vdnXzu','徐政宇',3),(868,'易彦妤','$2a$10$IQtbnLFAL3ZWFF8tRxymGeb.azdkrO0D/4K/.LQpf07BFmCC2WeIa','易彦妤',3),(869,'石紫琪','$2a$10$esGgC8pD65eO1ulA55OiJu3ObQfj2UlNtjnbdJW.BzQ3cagaPcPci','石紫琪',3),(870,'林静如','$2a$10$BaxR1xfeiU/11v/ldU2jbOixG7RtSrzoeg5YXXziFHSpIkiugrOki','林静如',3),(871,'吳采欣','$2a$10$5VgeaAKwesN6of6Uy1dfK./YYKAfL1EqsfyD3/8BwGKv9vfUlyfG.','吳采欣',3),(872,'任淑萍','$2a$10$yR3W1geu02quq/ydc5SHqu69bI6iQ1pE172aaezACqas4r9isR2CK','任淑萍',3),(873,'王欣仪','$2a$10$0dhOoy9HSCjw02S8H7AI1e1A5GracofG5eF.iDC9y3Y6eK8Mz/XWC','王欣仪',3);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_clazz`
--

DROP TABLE IF EXISTS `user_clazz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_clazz` (
  `student_id` int NOT NULL,
  `clazz_id` int NOT NULL,
  PRIMARY KEY (`student_id`,`clazz_id`) USING BTREE,
  KEY `fk_user_clazz_clazz_1` (`clazz_id`) USING BTREE,
  CONSTRAINT `fk_user_clazz_clazz_1` FOREIGN KEY (`clazz_id`) REFERENCES `clazz` (`clazz_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_user_clazz_user_1` FOREIGN KEY (`student_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_clazz`
--

LOCK TABLES `user_clazz` WRITE;
/*!40000 ALTER TABLE `user_clazz` DISABLE KEYS */;
INSERT INTO `user_clazz` VALUES (854,55),(855,55),(856,55),(866,55),(867,55),(858,56),(859,56),(860,56),(868,56),(869,56),(861,57),(862,57),(863,57),(870,57),(871,57),(857,58),(864,58),(865,58),(872,58),(873,58);
/*!40000 ALTER TABLE `user_clazz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_major`
--

DROP TABLE IF EXISTS `user_major`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_major` (
  `teacher_id` int NOT NULL,
  `major_id` int NOT NULL,
  PRIMARY KEY (`teacher_id`,`major_id`) USING BTREE,
  KEY `fk_user_major_major_1` (`major_id`) USING BTREE,
  CONSTRAINT `fk_user_major_major_1` FOREIGN KEY (`major_id`) REFERENCES `major` (`major_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_user_major_user_1` FOREIGN KEY (`teacher_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_major`
--

LOCK TABLES `user_major` WRITE;
/*!40000 ALTER TABLE `user_major` DISABLE KEYS */;
INSERT INTO `user_major` VALUES (851,13),(852,13),(853,13);
/*!40000 ALTER TABLE `user_major` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `user_with_role`
--

DROP TABLE IF EXISTS `user_with_role`;
/*!50001 DROP VIEW IF EXISTS `user_with_role`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_with_role` AS SELECT 
 1 AS `user_id`,
 1 AS `account`,
 1 AS `password`,
 1 AS `username`,
 1 AS `role_id`,
 1 AS `role_name`,
 1 AS `description`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `compare_short_answer_with_reply`
--

/*!50001 DROP VIEW IF EXISTS `compare_short_answer_with_reply`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `compare_short_answer_with_reply` AS select `compare_short_answer`.`compare_id` AS `compare_id`,`compare_short_answer`.`compare_threshold` AS `compare_threshold`,`compare_short_answer`.`short_answer_id` AS `short_answer_id`,`short_answer`.`question_id` AS `question_id`,`question`.`question_title` AS `question_title`,`short_answer`.`test_id` AS `test_id`,`compare_short_answer`.`reply1_id` AS `reply1_id`,`test_history_question_reply_1`.`reply` AS `reply1_text`,(select rank() OVER (ORDER BY `test_history_ranking1`.`history_id` )  AS `ranking` from `test_history` `test_history_ranking1` where ((`test_history_ranking1`.`test_id` = `short_answer`.`test_id`) and (`test_history_ranking1`.`student_id` = `user1`.`user_id`) and (`test_history_1`.`history_id` = `test_history_ranking1`.`history_id`))) AS `reply1_ranking`,`user1`.`user_id` AS `user_id`,`user1`.`username` AS `username`,`compare_short_answer`.`reply2_id` AS `reply2_id`,`test_history_question_reply_2`.`reply` AS `reply2_text`,(select rank() OVER (ORDER BY `test_history_ranking2`.`history_id` )  AS `ranking` from `test_history` `test_history_ranking2` where ((`test_history_ranking2`.`test_id` = `short_answer`.`test_id`) and (`test_history_ranking2`.`student_id` = `user2`.`user_id`) and (`test_history_2`.`history_id` = `test_history_ranking2`.`history_id`))) AS `reply2_ranking`,`user2`.`user_id` AS `compare_user_id`,`user2`.`username` AS `compare_username` from ((((((((`compare_short_answer` join `short_answer` on((`short_answer`.`short_answer_id` = `compare_short_answer`.`short_answer_id`))) join `question` on((`short_answer`.`question_id` = `question`.`question_id`))) join `test_history_question_reply` `test_history_question_reply_1` on((`test_history_question_reply_1`.`reply_id` = `compare_short_answer`.`reply1_id`))) join `test_history` `test_history_1` on((`test_history_1`.`history_id` = `test_history_question_reply_1`.`history_id`))) join `user` `user1` on((`user1`.`user_id` = `test_history_1`.`student_id`))) join `test_history_question_reply` `test_history_question_reply_2` on((`test_history_question_reply_2`.`reply_id` = `compare_short_answer`.`reply2_id`))) join `test_history` `test_history_2` on((`test_history_2`.`history_id` = `test_history_question_reply_2`.`history_id`))) join `user` `user2` on((`user2`.`user_id` = `test_history_2`.`student_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `question_with_type_subject_knowledge`
--

/*!50001 DROP VIEW IF EXISTS `question_with_type_subject_knowledge`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `question_with_type_subject_knowledge` AS select `question`.`question_id` AS `question_id`,`question`.`question_title` AS `question_title`,`question`.`question_difficulty` AS `question_difficulty`,`question`.`subject_id` AS `subject_id`,`question`.`type_id` AS `type_id`,`question`.`knowledge_id` AS `knowledge_id`,`subject`.`subject_name` AS `subject_name`,`question_type`.`type_name` AS `type_name`,`knowledge_frame`.`content` AS `knowledge_content` from (((`question` join `question_type` on((`question`.`type_id` = `question_type`.`type_id`))) join `subject` on((`question`.`subject_id` = `subject`.`subject_id`))) join `knowledge_frame` on((`question`.`knowledge_id` = `knowledge_frame`.`chapter_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `student_with_role_clazz_major`
--

/*!50001 DROP VIEW IF EXISTS `student_with_role_clazz_major`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `student_with_role_clazz_major` AS select `user`.`user_id` AS `user_id`,`user`.`account` AS `account`,`user`.`password` AS `password`,`user`.`username` AS `username`,`user`.`role_id` AS `role_id`,`role`.`role_name` AS `role_name`,`role`.`description` AS `description`,`clazz`.`clazz_id` AS `clazz_id`,`clazz`.`clazz_name` AS `clazz_name`,`clazz`.`major_id` AS `major_id`,`major`.`major_name` AS `major_name` from ((((`user` join `role` on((`role`.`role_id` = `user`.`role_id`))) left join `user_clazz` on((`user_clazz`.`student_id` = `user`.`user_id`))) left join `clazz` on((`clazz`.`clazz_id` = `user_clazz`.`clazz_id`))) join `major` on((`major`.`major_id` = `clazz`.`major_id`))) where (`role`.`role_id` = '3') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `subject_with_user_clazz`
--

/*!50001 DROP VIEW IF EXISTS `subject_with_user_clazz`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `subject_with_user_clazz` AS select `subject`.`subject_id` AS `subject_id`,`subject`.`subject_name` AS `subject_name`,`subject`.`teacher_id` AS `teacher_id`,`subject`.`clazz_id` AS `clazz_id`,`user`.`username` AS `teacher_name`,`clazz`.`clazz_name` AS `clazz_name`,`major`.`major_id` AS `major_id`,`major`.`major_name` AS `major_name` from (((`subject` join `user` on((`user`.`user_id` = `subject`.`teacher_id`))) join `clazz` on((`clazz`.`clazz_id` = `subject`.`clazz_id`))) join `major` on((`major`.`major_id` = `clazz`.`major_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `teacher_with_role_major`
--

/*!50001 DROP VIEW IF EXISTS `teacher_with_role_major`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `teacher_with_role_major` AS select `user`.`user_id` AS `user_id`,`user`.`account` AS `account`,`user`.`password` AS `password`,`user`.`username` AS `username`,`user`.`role_id` AS `role_id`,`role`.`role_name` AS `role_name`,`role`.`description` AS `description`,`major`.`major_id` AS `major_id`,`major`.`major_name` AS `major_name` from (((`user` join `role` on((`role`.`role_id` = `user`.`role_id`))) left join `user_major` on((`user_major`.`teacher_id` = `user`.`user_id`))) left join `major` on((`major`.`major_id` = `user_major`.`major_id`))) where (`role`.`role_id` = '2') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `test_history_question_reply_with_user`
--

/*!50001 DROP VIEW IF EXISTS `test_history_question_reply_with_user`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `test_history_question_reply_with_user` AS select `test_history_question_reply`.`reply_id` AS `reply_id`,`test_history_question_reply`.`history_id` AS `history_id`,`test_history_question_reply`.`question_id` AS `question_id`,`test_history_question_reply`.`reply` AS `reply`,`user`.`user_id` AS `user_id`,`user`.`username` AS `username` from ((`test_history_question_reply` join `test_history` on((`test_history`.`history_id` = `test_history_question_reply`.`history_id`))) join `user` on((`user`.`user_id` = `test_history`.`student_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `test_history_with_user_test_subject`
--

/*!50001 DROP VIEW IF EXISTS `test_history_with_user_test_subject`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `test_history_with_user_test_subject` AS select max(`test_history`.`correct`) AS `max_correct`,count(`test_history`.`history_id`) AS `complete_time`,`test_history`.`student_id` AS `student_id`,`student_with_role_clazz_major`.`username` AS `username`,`test_with_subject_clazz`.`test_id` AS `test_id`,`test_with_subject_clazz`.`test_name` AS `test_name`,`test_with_subject_clazz`.`description` AS `description`,`test_with_subject_clazz`.`begin_date` AS `begin_date`,`test_with_subject_clazz`.`end_date` AS `end_date`,`test_with_subject_clazz`.`test_duration` AS `test_duration`,`test_with_subject_clazz`.`test_time` AS `test_time`,`test_with_subject_clazz`.`question_total` AS `question_total`,`test_with_subject_clazz`.`subject_id` AS `subject_id`,`test_with_subject_clazz`.`test_difficulty` AS `test_difficulty`,`test_with_subject_clazz`.`generate_way` AS `generate_way`,`test_with_subject_clazz`.`preset_question_total` AS `preset_question_total`,`test_with_subject_clazz`.`preset_test_difficulty` AS `preset_test_difficulty`,`test_with_subject_clazz`.`difficulty_weight` AS `difficulty_weight`,`test_with_subject_clazz`.`knowledge_weight` AS `knowledge_weight`,`test_with_subject_clazz`.`subject_name` AS `subject_name`,`test_with_subject_clazz`.`teacher_id` AS `teacher_id`,`test_with_subject_clazz`.`clazz_id` AS `clazz_id`,`test_with_subject_clazz`.`teacher_name` AS `teacher_name`,`test_with_subject_clazz`.`clazz_name` AS `clazz_name`,`test_with_subject_clazz`.`major_id` AS `major_id`,`test_with_subject_clazz`.`major_name` AS `major_name` from ((`test_history` join `student_with_role_clazz_major` on((`student_with_role_clazz_major`.`user_id` = `test_history`.`student_id`))) join `test_with_subject_clazz` on((`test_with_subject_clazz`.`test_id` = `test_history`.`test_id`))) group by `test_history`.`test_id`,`test_history`.`student_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `test_with_subject_clazz`
--

/*!50001 DROP VIEW IF EXISTS `test_with_subject_clazz`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `test_with_subject_clazz` AS select `test`.`test_id` AS `test_id`,`test`.`test_name` AS `test_name`,`test`.`description` AS `description`,`test`.`begin_date` AS `begin_date`,`test`.`end_date` AS `end_date`,`test`.`test_duration` AS `test_duration`,`test`.`test_time` AS `test_time`,`test`.`question_total` AS `question_total`,`test`.`subject_id` AS `subject_id`,`test`.`test_difficulty` AS `test_difficulty`,`test`.`generate_way` AS `generate_way`,`test`.`preset_question_total` AS `preset_question_total`,`test`.`preset_test_difficulty` AS `preset_test_difficulty`,`test`.`difficulty_weight` AS `difficulty_weight`,`test`.`knowledge_weight` AS `knowledge_weight`,`subject_with_user_clazz`.`subject_name` AS `subject_name`,`subject_with_user_clazz`.`teacher_id` AS `teacher_id`,`subject_with_user_clazz`.`clazz_id` AS `clazz_id`,`subject_with_user_clazz`.`teacher_name` AS `teacher_name`,`subject_with_user_clazz`.`clazz_name` AS `clazz_name`,`subject_with_user_clazz`.`major_id` AS `major_id`,`subject_with_user_clazz`.`major_name` AS `major_name` from (`test` join `subject_with_user_clazz` on((`subject_with_user_clazz`.`subject_id` = `test`.`subject_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_with_role`
--

/*!50001 DROP VIEW IF EXISTS `user_with_role`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_with_role` AS select `user`.`user_id` AS `user_id`,`user`.`account` AS `account`,`user`.`password` AS `password`,`user`.`username` AS `username`,`user`.`role_id` AS `role_id`,`role`.`role_name` AS `role_name`,`role`.`description` AS `description` from (`user` join `role` on((`user`.`role_id` = `role`.`role_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-19 13:29:35
