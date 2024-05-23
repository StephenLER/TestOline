/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80034
 Source Host           : localhost:3306
 Source Schema         : exam_online_system

 Target Server Type    : MySQL
 Target Server Version : 80034
 File Encoding         : 65001

 Date: 24/05/2024 01:32:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for answer
-- ----------------------------
DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer`  (
  `answer_id` int NOT NULL AUTO_INCREMENT,
  `answer_sign` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'ABC或者1-对',
  `content` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `is_correct` int NOT NULL DEFAULT 0 COMMENT '是否是正确答案，1-是',
  `question_id` int NOT NULL,
  PRIMARY KEY (`answer_id`) USING BTREE,
  INDEX `fk_answer_question_1`(`question_id` ASC) USING BTREE,
  CONSTRAINT `fk_answer_question_1` FOREIGN KEY (`question_id`) REFERENCES `question` (`question_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1621 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of answer
-- ----------------------------
INSERT INTO `answer` VALUES (1536, 'A', '经济', 0, 688);
INSERT INTO `answer` VALUES (1537, 'B', '教育', 0, 688);
INSERT INTO `answer` VALUES (1538, 'C', '人民', 1, 688);
INSERT INTO `answer` VALUES (1539, 'D', '生态', 0, 688);
INSERT INTO `answer` VALUES (1540, 'A', '经济强国', 0, 689);
INSERT INTO `answer` VALUES (1541, 'B', '政治大国', 0, 689);
INSERT INTO `answer` VALUES (1542, 'C', '现代化强国', 1, 689);
INSERT INTO `answer` VALUES (1543, 'D', '文化强国', 0, 689);
INSERT INTO `answer` VALUES (1544, 'A', '新型工业', 0, 690);
INSERT INTO `answer` VALUES (1545, 'B', '现代农业', 0, 690);
INSERT INTO `answer` VALUES (1546, 'C', '现代服务业', 0, 690);
INSERT INTO `answer` VALUES (1547, 'D', '新兴产业', 1, 690);
INSERT INTO `answer` VALUES (1548, 'A', '经济增速', 0, 691);
INSERT INTO `answer` VALUES (1549, 'B', '物价', 0, 691);
INSERT INTO `answer` VALUES (1550, 'C', '就业', 1, 691);
INSERT INTO `answer` VALUES (1551, 'D', '国际分工', 0, 691);
INSERT INTO `answer` VALUES (1552, 'A', '中国式现代化', 1, 692);
INSERT INTO `answer` VALUES (1553, 'B', '人类文明新形态', 0, 692);
INSERT INTO `answer` VALUES (1554, 'C', '国防现代化', 0, 692);
INSERT INTO `answer` VALUES (1555, 'D', '共同富裕', 0, 692);
INSERT INTO `answer` VALUES (1556, 'A', '民族特色', 0, 693);
INSERT INTO `answer` VALUES (1557, 'B', '中国特色', 1, 693);
INSERT INTO `answer` VALUES (1558, 'C', '政治特色', 0, 693);
INSERT INTO `answer` VALUES (1559, 'D', '人民特色', 0, 693);
INSERT INTO `answer` VALUES (1564, '1', NULL, 1, 695);
INSERT INTO `answer` VALUES (1565, '0', NULL, 1, 696);
INSERT INTO `answer` VALUES (1566, '1', NULL, 1, 697);
INSERT INTO `answer` VALUES (1567, '0', NULL, 1, 698);
INSERT INTO `answer` VALUES (1569, '1', NULL, 1, 700);
INSERT INTO `answer` VALUES (1570, '1', NULL, 1, 701);
INSERT INTO `answer` VALUES (1571, 'A', 'head->prior==NULL', 0, 704);
INSERT INTO `answer` VALUES (1572, 'B', 'head->next==NULL', 0, 704);
INSERT INTO `answer` VALUES (1573, 'C', 'head->next==head', 1, 704);
INSERT INTO `answer` VALUES (1574, 'D', 'head->next->', 0, 704);
INSERT INTO `answer` VALUES (1575, 'A', 'p->next=q->next', 0, 705);
INSERT INTO `answer` VALUES (1576, 'B', 'q->next=p->next', 1, 705);
INSERT INTO `answer` VALUES (1577, 'C', 'q->next=p', 0, 705);
INSERT INTO `answer` VALUES (1578, 'D', 'p->next=q', 0, 705);
INSERT INTO `answer` VALUES (1579, 'A', '在队尾插入一个新元素', 0, 706);
INSERT INTO `answer` VALUES (1580, 'B', '从队列中删除第i个元素', 1, 706);
INSERT INTO `answer` VALUES (1581, 'C', '判断一个队列是否为空', 0, 706);
INSERT INTO `answer` VALUES (1582, 'D', '读取队头元素的值', 0, 706);
INSERT INTO `answer` VALUES (1583, '1', NULL, 1, 707);
INSERT INTO `answer` VALUES (1584, 'A', '单链表', 0, 708);
INSERT INTO `answer` VALUES (1585, 'B', '双链表', 1, 708);
INSERT INTO `answer` VALUES (1586, 'C', '仅有头指针的单循环链表', 0, 708);
INSERT INTO `answer` VALUES (1587, 'D', '仅有尾指针的单循环链表', 0, 708);
INSERT INTO `answer` VALUES (1588, 'A', 'i', 0, 709);
INSERT INTO `answer` VALUES (1589, 'B', 'n-i', 0, 709);
INSERT INTO `answer` VALUES (1590, 'C', 'n-i+1', 1, 709);
INSERT INTO `answer` VALUES (1591, 'D', '不确定', 0, 709);
INSERT INTO `answer` VALUES (1592, '0', NULL, 1, 710);
INSERT INTO `answer` VALUES (1593, '0', NULL, 1, 711);
INSERT INTO `answer` VALUES (1594, '1', NULL, 1, 712);
INSERT INTO `answer` VALUES (1595, '0', NULL, 1, 713);
INSERT INTO `answer` VALUES (1596, '0', NULL, 1, 720);
INSERT INTO `answer` VALUES (1597, '1', NULL, 1, 721);
INSERT INTO `answer` VALUES (1598, '1', NULL, 1, 722);
INSERT INTO `answer` VALUES (1599, '0', NULL, 1, 723);
INSERT INTO `answer` VALUES (1600, '1', NULL, 1, 724);
INSERT INTO `answer` VALUES (1601, 'A', '城域网是介于广域网下局域网之间的一种高速网络', 0, 729);
INSERT INTO `answer` VALUES (1602, 'B', '城域网可满足几十公里范围内多个局域网互联的需求', 0, 729);
INSERT INTO `answer` VALUES (1603, 'C', '城域网可实现大量用户之间的数据、评阅、图形与视频等多种信息的传输', 0, 729);
INSERT INTO `answer` VALUES (1604, 'D', '早期的城域产品主要是x.25标准', 1, 729);
INSERT INTO `answer` VALUES (1605, 'A', '资源子网的拓扑构型', 0, 730);
INSERT INTO `answer` VALUES (1606, 'B', '通信子网的拓扑构型', 1, 730);
INSERT INTO `answer` VALUES (1607, 'C', '通信线路的拓扑构型', 0, 730);
INSERT INTO `answer` VALUES (1608, 'D', '主机的拓扑构型', 0, 730);
INSERT INTO `answer` VALUES (1609, 'A', '层次型', 0, 731);
INSERT INTO `answer` VALUES (1610, 'B', '网络型', 0, 731);
INSERT INTO `answer` VALUES (1611, 'C', '环型', 1, 731);
INSERT INTO `answer` VALUES (1612, 'D', '网状', 0, 731);
INSERT INTO `answer` VALUES (1613, 'A', '1x106', 0, 732);
INSERT INTO `answer` VALUES (1614, 'B', '1x108', 0, 732);
INSERT INTO `answer` VALUES (1615, 'C', '1x1010', 1, 732);
INSERT INTO `answer` VALUES (1616, 'D', '1x1012', 0, 732);
INSERT INTO `answer` VALUES (1617, 'A', '比特流', 1, 733);
INSERT INTO `answer` VALUES (1618, 'B', '帧序列', 0, 733);
INSERT INTO `answer` VALUES (1619, 'C', '分组序列', 0, 733);
INSERT INTO `answer` VALUES (1620, 'D', '包序列', 0, 733);

-- ----------------------------
-- Table structure for clazz
-- ----------------------------
DROP TABLE IF EXISTS `clazz`;
CREATE TABLE `clazz`  (
  `clazz_id` int NOT NULL AUTO_INCREMENT,
  `clazz_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `major_id` int NOT NULL,
  PRIMARY KEY (`clazz_id`) USING BTREE,
  INDEX `fk_clazz_major_1`(`major_id` ASC) USING BTREE,
  CONSTRAINT `fk_clazz_major_1` FOREIGN KEY (`major_id`) REFERENCES `major` (`major_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of clazz
-- ----------------------------
INSERT INTO `clazz` VALUES (55, '计算机科学与技术班', 13);
INSERT INTO `clazz` VALUES (56, '数据科学与大数据技术班', 14);
INSERT INTO `clazz` VALUES (57, '信息管理与信息系统班', 15);
INSERT INTO `clazz` VALUES (58, '电子商务班', 16);
INSERT INTO `clazz` VALUES (59, '马克思主义基本原理班', 17);

-- ----------------------------
-- Table structure for compare_short_answer
-- ----------------------------
DROP TABLE IF EXISTS `compare_short_answer`;
CREATE TABLE `compare_short_answer`  (
  `compare_id` int NOT NULL AUTO_INCREMENT,
  `compare_threshold` float NOT NULL,
  `short_answer_id` int NOT NULL,
  `reply1_id` int NOT NULL,
  `reply2_id` int NOT NULL,
  PRIMARY KEY (`compare_id`) USING BTREE,
  INDEX `fk_compare_short_answer_short_answer_1`(`short_answer_id` ASC) USING BTREE,
  INDEX `fk_compare_short_answer_reply_1`(`reply1_id` ASC) USING BTREE,
  INDEX `fk_compare_short_answer_reply_2`(`reply2_id` ASC) USING BTREE,
  INDEX `compare_id`(`compare_id` ASC) USING BTREE,
  CONSTRAINT `fk_compare_short_answer_reply_1` FOREIGN KEY (`reply1_id`) REFERENCES `test_history_question_reply` (`reply_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_compare_short_answer_reply_2` FOREIGN KEY (`reply2_id`) REFERENCES `test_history_question_reply` (`reply_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_compare_short_answer_short_answer_1` FOREIGN KEY (`short_answer_id`) REFERENCES `short_answer` (`short_answer_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 59010 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of compare_short_answer
-- ----------------------------
INSERT INTO `compare_short_answer` VALUES (1, 100, 139, 48429, 48437);

-- ----------------------------
-- Table structure for knowledge_frame
-- ----------------------------
DROP TABLE IF EXISTS `knowledge_frame`;
CREATE TABLE `knowledge_frame`  (
  `chapter_id` int NOT NULL AUTO_INCREMENT,
  `chapter_parent_id` int NOT NULL COMMENT '0-父节点',
  `content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `is_knowledge` int NULL DEFAULT NULL COMMENT '是否是知识点，1-是',
  `subject_id` int NOT NULL,
  PRIMARY KEY (`chapter_id`) USING BTREE,
  INDEX `chapter_parent_id`(`chapter_parent_id` ASC) USING BTREE,
  INDEX `subject_id`(`subject_id` ASC) USING BTREE,
  INDEX `is_knowledge`(`is_knowledge` ASC) USING BTREE,
  CONSTRAINT `knowledge_frame_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 152 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of knowledge_frame
-- ----------------------------
INSERT INTO `knowledge_frame` VALUES (70, 0, '第1章 习近平新时代中国特色社会主义思想创立的时代背景', 0, 49);
INSERT INTO `knowledge_frame` VALUES (71, 0, '第2章 习近平新时代中国特色社会主义思想是“两个结合”的重大成果', 0, 49);
INSERT INTO `knowledge_frame` VALUES (72, 0, '第3章 习近平新时代中国特色社会主义思想是完整的科学体系', 0, 49);
INSERT INTO `knowledge_frame` VALUES (73, 0, '第4章 习近平新时代中国特色社会主义思想的历史地位', 0, 49);
INSERT INTO `knowledge_frame` VALUES (74, 0, '第5章 深刻领悟“两个确立”的决定性意义', 0, 49);
INSERT INTO `knowledge_frame` VALUES (75, 0, '第6章 学好用好习近平新时代中国特色社会主义思想', 0, 49);
INSERT INTO `knowledge_frame` VALUES (80, 70, '1-1 中国特色社会主义是历史和人民的选择', 0, 49);
INSERT INTO `knowledge_frame` VALUES (81, 80, '  方向决定道路', 1, 49);
INSERT INTO `knowledge_frame` VALUES (82, 71, '2-1 中国特色社会主义是社会主义而不是其他什么主义', 0, 49);
INSERT INTO `knowledge_frame` VALUES (83, 82, ' 坚定道路自信', 1, 49);
INSERT INTO `knowledge_frame` VALUES (84, 72, '3-1 中国特色社会主义进入新时代', 0, 49);
INSERT INTO `knowledge_frame` VALUES (85, 84, ' 中国特色社会主义新时代是我国发展新的历史方位', 1, 49);
INSERT INTO `knowledge_frame` VALUES (86, 73, '4-1 社会主要矛盾变化是关系全局的历史性变化', 0, 49);
INSERT INTO `knowledge_frame` VALUES (87, 86, ' 新时代伟大变革及其里程碑意义', 1, 49);
INSERT INTO `knowledge_frame` VALUES (88, 74, '5-1 新时代坚持和发展中国特色社会主义要一以贯之', 0, 49);
INSERT INTO `knowledge_frame` VALUES (89, 88, ' 推动中国特色社会主义不断开拓前进', 1, 49);
INSERT INTO `knowledge_frame` VALUES (90, 75, '6-1 中华民族近代以来的梦想', 0, 49);
INSERT INTO `knowledge_frame` VALUES (91, 90, ' 实现中华民族伟大复兴的中国梦', 1, 49);
INSERT INTO `knowledge_frame` VALUES (92, 0, '第1章 线性表', 0, 48);
INSERT INTO `knowledge_frame` VALUES (93, 92, '1-1 线性表的表示', 0, 48);
INSERT INTO `knowledge_frame` VALUES (94, 93, ' 顺序表示——顺序表', 1, 48);
INSERT INTO `knowledge_frame` VALUES (95, 93, ' 链式表示——链表', 1, 48);
INSERT INTO `knowledge_frame` VALUES (96, 92, '1-2 数组', 0, 48);
INSERT INTO `knowledge_frame` VALUES (97, 96, ' 稀疏矩阵', 1, 48);
INSERT INTO `knowledge_frame` VALUES (98, 0, '第2章 串', 0, 48);
INSERT INTO `knowledge_frame` VALUES (99, 98, '2-1 串的模式匹配算法', 0, 48);
INSERT INTO `knowledge_frame` VALUES (100, 99, ' BF算法', 1, 48);
INSERT INTO `knowledge_frame` VALUES (101, 99, ' KR算法', 1, 48);
INSERT INTO `knowledge_frame` VALUES (102, 99, ' KMP算法', 1, 48);
INSERT INTO `knowledge_frame` VALUES (103, 99, ' BM算法', 1, 48);
INSERT INTO `knowledge_frame` VALUES (104, 0, '第3章 查找与索引', 0, 48);
INSERT INTO `knowledge_frame` VALUES (105, 104, '3-1 树', 0, 48);
INSERT INTO `knowledge_frame` VALUES (106, 105, ' 二叉查找树', 1, 48);
INSERT INTO `knowledge_frame` VALUES (107, 105, ' B-树和B+树', 1, 48);
INSERT INTO `knowledge_frame` VALUES (108, 105, ' Trie树', 1, 48);
INSERT INTO `knowledge_frame` VALUES (109, 0, '第4章 图', 0, 48);
INSERT INTO `knowledge_frame` VALUES (110, 109, '4-1 图的遍历与求图的连通分量', 0, 48);
INSERT INTO `knowledge_frame` VALUES (111, 110, ' 深度优先查找法', 1, 48);
INSERT INTO `knowledge_frame` VALUES (112, 110, ' 广度优先查找法', 1, 48);
INSERT INTO `knowledge_frame` VALUES (113, 110, ' 求图的连通分量', 1, 48);
INSERT INTO `knowledge_frame` VALUES (114, 0, '第5章 排序', 0, 48);
INSERT INTO `knowledge_frame` VALUES (115, 114, '5-1 基本排序方法', 0, 48);
INSERT INTO `knowledge_frame` VALUES (116, 115, ' 插入排序', 1, 48);
INSERT INTO `knowledge_frame` VALUES (117, 115, ' 冒泡排序', 1, 48);
INSERT INTO `knowledge_frame` VALUES (118, 115, ' 选择排序', 1, 48);
INSERT INTO `knowledge_frame` VALUES (119, 0, '第6章 栈和队列', 0, 48);
INSERT INTO `knowledge_frame` VALUES (120, 119, '6-1 栈', 0, 48);
INSERT INTO `knowledge_frame` VALUES (121, 120, ' 栈的基本操作', 1, 48);
INSERT INTO `knowledge_frame` VALUES (122, 120, ' 用数组实现栈', 1, 48);
INSERT INTO `knowledge_frame` VALUES (123, 120, ' 用链表实现栈', 1, 48);
INSERT INTO `knowledge_frame` VALUES (124, 120, ' 栈的应用实例', 1, 48);
INSERT INTO `knowledge_frame` VALUES (125, 119, '6-2 队列', 0, 48);
INSERT INTO `knowledge_frame` VALUES (126, 125, ' 用数组实现队列', 1, 48);
INSERT INTO `knowledge_frame` VALUES (127, 125, ' 循环队列', 1, 48);
INSERT INTO `knowledge_frame` VALUES (128, 125, ' 双向队列', 1, 48);
INSERT INTO `knowledge_frame` VALUES (129, 125, ' 用链表实现队列', 1, 48);
INSERT INTO `knowledge_frame` VALUES (130, 125, ' 队列的应用举例', 1, 48);
INSERT INTO `knowledge_frame` VALUES (131, 0, '第1章 网络模型', 0, 47);
INSERT INTO `knowledge_frame` VALUES (132, 131, '1-1 OSI 七层参考模型', 0, 47);
INSERT INTO `knowledge_frame` VALUES (133, 132, ' 物理层', 1, 47);
INSERT INTO `knowledge_frame` VALUES (134, 132, ' 数据链路层', 1, 47);
INSERT INTO `knowledge_frame` VALUES (135, 132, ' 网络层', 1, 47);
INSERT INTO `knowledge_frame` VALUES (136, 132, ' 传输层', 1, 47);
INSERT INTO `knowledge_frame` VALUES (137, 132, ' 会话层', 1, 47);
INSERT INTO `knowledge_frame` VALUES (138, 132, ' 表示层', 1, 47);
INSERT INTO `knowledge_frame` VALUES (139, 132, ' 应用层', 1, 47);
INSERT INTO `knowledge_frame` VALUES (140, 0, '第2章 物理层', 0, 47);
INSERT INTO `knowledge_frame` VALUES (141, 140, '2-1 信道复用', 0, 47);
INSERT INTO `knowledge_frame` VALUES (142, 141, ' 频分复用', 1, 47);
INSERT INTO `knowledge_frame` VALUES (143, 141, ' 时分复用', 1, 47);
INSERT INTO `knowledge_frame` VALUES (144, 141, ' 波分复用', 1, 47);
INSERT INTO `knowledge_frame` VALUES (145, 141, ' 码分复用', 1, 47);
INSERT INTO `knowledge_frame` VALUES (146, 0, '第3章 数据链路层', 0, 47);
INSERT INTO `knowledge_frame` VALUES (147, 146, '3-1 差错检验与纠正', 0, 47);
INSERT INTO `knowledge_frame` VALUES (148, 147, ' 奇偶检验', 1, 47);
INSERT INTO `knowledge_frame` VALUES (149, 147, ' 校验和', 1, 47);
INSERT INTO `knowledge_frame` VALUES (150, 147, ' 循环冗余校验', 1, 47);
INSERT INTO `knowledge_frame` VALUES (151, 147, ' 汉明码', 1, 47);

-- ----------------------------
-- Table structure for major
-- ----------------------------
DROP TABLE IF EXISTS `major`;
CREATE TABLE `major`  (
  `major_id` int NOT NULL AUTO_INCREMENT,
  `major_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`major_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of major
-- ----------------------------
INSERT INTO `major` VALUES (13, '计算机科学与技术');
INSERT INTO `major` VALUES (14, '数据科学与大数据技术');
INSERT INTO `major` VALUES (15, '信息管理与信息系统');
INSERT INTO `major` VALUES (16, '电子商务');
INSERT INTO `major` VALUES (17, '马克思主义基本原理');

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question`  (
  `question_id` int NOT NULL AUTO_INCREMENT,
  `question_title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `question_difficulty` float NULL DEFAULT NULL,
  `subject_id` int NOT NULL,
  `type_id` int NOT NULL,
  `knowledge_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`question_id`) USING BTREE,
  INDEX `fk_question_subject_1`(`subject_id` ASC) USING BTREE,
  INDEX `fk_question_question_type_1`(`type_id` ASC) USING BTREE,
  INDEX `fk`(`knowledge_id` ASC) USING BTREE,
  INDEX `knowledge_id`(`knowledge_id` ASC) USING BTREE,
  CONSTRAINT `fk_question_question_type_1` FOREIGN KEY (`type_id`) REFERENCES `question_type` (`type_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_question_subject_1` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `question_ibfk_1` FOREIGN KEY (`knowledge_id`) REFERENCES `knowledge_frame` (`chapter_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 734 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES (688, '新时代的中国，坚持以()为中心的发展思想，把逐步实现全体人民共同富裕摆在更加重要的位置。', 0.3, 49, 1, 81);
INSERT INTO `question` VALUES (689, '100多年来，中国共产党团结带领中国人民进行的一切奋斗、 一切牺牲、 一切创造，就是 为了把我国建设', 0.7, 49, 1, 83);
INSERT INTO `question` VALUES (690, '战略性()具有先导性，是引领国家未来产业发展的决定性力量。', 0.8, 49, 1, 85);
INSERT INTO `question` VALUES (691, '()是经济发展之本和财富增长之源，也是社会稳定之基。', 0.2, 49, 1, 85);
INSERT INTO `question` VALUES (692, '越开放越自信、越自信越开放的中国，以自身发展为世界创造更多机遇，以()推动人类整体进步', 0.3, 49, 1, 85);
INSERT INTO `question` VALUES (693, '中国式现代化既有各国现代化的特征，更有基于国情的()。', 0.7, 49, 1, 87);
INSERT INTO `question` VALUES (695, '我们党始终强调，中国特色社会主义，既坚持了科学社会主义基本原则，又根据时代条件赋予其鲜明的中国特色。', 0.2, 49, 2, 89);
INSERT INTO `question` VALUES (696, '《习近平新时代中国特色社写笔记义思想学习纲要(2023年版)》主要回答“什么是社会主义，怎样建设社会', 0.8, 49, 2, 87);
INSERT INTO `question` VALUES (697, '习近平新时代中国特色社会主义思想不仅清醒地捍卫了马克思主义的科学体系,赋予其鲜明的时代内容。', 0.3, 49, 2, 89);
INSERT INTO `question` VALUES (698, '中国式现代化顺应了“现代化等于西方化”的思路 ', 0.7, 49, 2, 91);
INSERT INTO `question` VALUES (700, '江山就是人民,人民就是江山，人心向背关系党的生死存亡。', 0.35, 49, 2, 91);
INSERT INTO `question` VALUES (701, '坚持人民至上就要坚持以人民为中心的发展思想，坚持新发展理念，满足人民对美好生活的追求。', 0.65, 49, 2, 87);
INSERT INTO `question` VALUES (702, '简要叙述我国老龄化社会面临的挑战，并提出相应的解决方案。', 0.5, 49, 3, 83);
INSERT INTO `question` VALUES (703, '2.简要分析我国城乡收入差距的原因，并探讨缩小城乡收入差距的有效途径。', 0.5, 49, 3, 89);
INSERT INTO `question` VALUES (704, '有一个含头结点的双向循环链表，头指针为head, 则其为空的条件是', 0.25, 48, 1, 95);
INSERT INTO `question` VALUES (705, '在一个单链表中，已知q所指向的结点是p所指向结点的前驱结点，若将p所指向的结点删除，则执行（）', 0.3, 48, 1, 95);
INSERT INTO `question` VALUES (706, '以下哪一个不是队列的基本运算（   ）', 0.4, 48, 1, 129);
INSERT INTO `question` VALUES (707, '一个栈的入栈序列是a,b,c,d,e,则栈的不可能的输出序列是abcde', 0.7, 48, 2, 124);
INSERT INTO `question` VALUES (708, '某线性表中最常用的操作是在最后一个元素之后插入元素和删除第一个元素，则最节省运算时间的存储结构是', 0.5, 48, 1, 95);
INSERT INTO `question` VALUES (709, '已知一个栈的入栈序列是1，2，3，…，n，输出序列为pl，p2，p3….，pn，若p1是n，则pi是', 0.8, 48, 1, 121);
INSERT INTO `question` VALUES (710, '一个线性表是n个数据元素的集合', 0.3, 48, 2, 94);
INSERT INTO `question` VALUES (711, '线性表中任何一个元素有且仅有一个直接后继', 0.5, 48, 2, 94);
INSERT INTO `question` VALUES (712, '栈和队列都是限制存取点的线性结构', 0.5, 48, 2, 124);
INSERT INTO `question` VALUES (713, '栈和队列都是顺序存储的线性结构', 0.7, 48, 2, 128);
INSERT INTO `question` VALUES (714, '写出下面表达式的后缀表达式\n     a-b*(c+d)^e+(a-d)*f', 0.6, 48, 3, 124);
INSERT INTO `question` VALUES (715, '编写一个函数实现对任何一个字符串中删除所有非字母字符，仅保存原有字母字符。', 0.7, 48, 3, 95);
INSERT INTO `question` VALUES (716, '编写一个用递归实现带头结点的环形链表，头结点存放结点个数，输入整数，当输入-9999时结束输入。', 0.85, 48, 3, 95);
INSERT INTO `question` VALUES (717, '假设以单链表表示线性表，编写算法，实现从尾到头输出单链表，并输出所有结点的数据累加的结果', 0.85, 48, 3, 95);
INSERT INTO `question` VALUES (718, '实现strcmp函数', 0.7, 48, 3, 122);
INSERT INTO `question` VALUES (719, 'OSI 模型与 TCP/IP 模型的区别是什么？', 0.5, 47, 3, 134);
INSERT INTO `question` VALUES (720, '数据链路层的物理地址为32位', 0.5, 47, 2, 134);
INSERT INTO `question` VALUES (721, '传输层有可靠传输模式和不可靠传输模式是两类', 0.5, 47, 2, 136);
INSERT INTO `question` VALUES (722, '网络层路由常常会根据网络可达性动态选取最佳路径，也可以使用静态路由', 0.5, 47, 2, 135);
INSERT INTO `question` VALUES (723, '物理层考虑的不是怎样才能在连接各种计算机的传输媒体上传输数据比特流，而是指具体的传输媒体。', 0.68, 47, 2, 133);
INSERT INTO `question` VALUES (724, '用于物理层的协议也常称为物理层规程', 0.5, 47, 2, 133);
INSERT INTO `question` VALUES (725, '什么是可靠传输？', 0.6, 47, 3, 136);
INSERT INTO `question` VALUES (726, '什么是流量控制？', 0.73, 47, 3, 135);
INSERT INTO `question` VALUES (727, '若发送端因接收窗口为0⽽停⽌发送数据后，如何判断是否可以再次发送数据？', 0.8, 47, 3, 135);
INSERT INTO `question` VALUES (728, '说一下http各个状态码', 0.55, 47, 3, 136);
INSERT INTO `question` VALUES (729, '以下关于城域网特征的描述中，错误的是', 0.5, 47, 1, 135);
INSERT INTO `question` VALUES (730, '计算机网络拓扑主要是指', 0.5, 47, 1, 133);
INSERT INTO `question` VALUES (731, '采用广播信道通信子网的基本拓扑构型主要有：总线型、树型与', 0.38, 47, 1, 139);
INSERT INTO `question` VALUES (732, '传输速率为10Gbps的局域网每一秒钟可以发送的比特数为', 0.5, 47, 1, 136);
INSERT INTO `question` VALUES (733, '物理层的主要功能是利用物理传输介质为数据链路层提供物理连接，以便透明地传送', 0.5, 47, 1, 133);

-- ----------------------------
-- Table structure for question_type
-- ----------------------------
DROP TABLE IF EXISTS `question_type`;
CREATE TABLE `question_type`  (
  `type_id` int NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  PRIMARY KEY (`type_id`) USING BTREE,
  UNIQUE INDEX `type_name`(`type_name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of question_type
-- ----------------------------
INSERT INTO `question_type` VALUES (1, '选择题', '从所给的选项中选择正确的一项');
INSERT INTO `question_type` VALUES (2, '判断题', '判断所给题目的正确性');
INSERT INTO `question_type` VALUES (3, '简答题', '根据题意给出简要的回答');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`) USING BTREE,
  UNIQUE INDEX `role_name`(`role_name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'ROLE_ADMIN', '管理员');
INSERT INTO `role` VALUES (2, 'ROLE_TEACHER', '教师');
INSERT INTO `role` VALUES (3, 'ROLE_STUDENT', '学生');

-- ----------------------------
-- Table structure for short_answer
-- ----------------------------
DROP TABLE IF EXISTS `short_answer`;
CREATE TABLE `short_answer`  (
  `short_answer_id` int NOT NULL AUTO_INCREMENT,
  `threshold` int NOT NULL,
  `question_id` int NOT NULL,
  `test_id` int NOT NULL,
  PRIMARY KEY (`short_answer_id`) USING BTREE,
  INDEX `fk_short_answer_question_1`(`question_id` ASC) USING BTREE,
  INDEX `fk_short_answer_test_1`(`test_id` ASC) USING BTREE,
  INDEX `short_answer_id`(`short_answer_id` ASC) USING BTREE,
  CONSTRAINT `fk_short_answer_question_1` FOREIGN KEY (`question_id`) REFERENCES `question` (`question_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_short_answer_test_1` FOREIGN KEY (`test_id`) REFERENCES `test` (`test_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 140 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of short_answer
-- ----------------------------
INSERT INTO `short_answer` VALUES (133, 50, 714, 107);
INSERT INTO `short_answer` VALUES (134, 50, 716, 107);
INSERT INTO `short_answer` VALUES (135, 50, 718, 107);
INSERT INTO `short_answer` VALUES (136, 50, 719, 108);
INSERT INTO `short_answer` VALUES (137, 50, 727, 108);
INSERT INTO `short_answer` VALUES (138, 50, 728, 108);
INSERT INTO `short_answer` VALUES (139, 50, 702, 109);

-- ----------------------------
-- Table structure for subject
-- ----------------------------
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject`  (
  `subject_id` int NOT NULL AUTO_INCREMENT,
  `subject_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `teacher_id` int NOT NULL,
  `clazz_id` int NOT NULL,
  PRIMARY KEY (`subject_id`) USING BTREE,
  UNIQUE INDEX `subject_name`(`subject_name` ASC) USING BTREE,
  INDEX `fk_subject_user_1`(`teacher_id` ASC) USING BTREE,
  INDEX `fk_subject_clazz_1`(`clazz_id` ASC) USING BTREE,
  CONSTRAINT `fk_subject_clazz_1` FOREIGN KEY (`clazz_id`) REFERENCES `clazz` (`clazz_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_subject_user_1` FOREIGN KEY (`teacher_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of subject
-- ----------------------------
INSERT INTO `subject` VALUES (47, '计算机网络', 852, 55);
INSERT INTO `subject` VALUES (48, '数据结构', 851, 55);
INSERT INTO `subject` VALUES (49, '习近平新时代中国特色社会主义思想概论', 853, 55);

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test`  (
  `test_id` int NOT NULL AUTO_INCREMENT,
  `test_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `begin_date` datetime NULL DEFAULT NULL,
  `end_date` datetime NULL DEFAULT NULL,
  `test_duration` int NULL DEFAULT NULL COMMENT '测验时长',
  `test_time` int NULL DEFAULT NULL COMMENT '测验次数',
  `question_total` int NULL DEFAULT NULL COMMENT '题目数量',
  `subject_id` int NOT NULL,
  `test_difficulty` float NULL DEFAULT NULL COMMENT '实际难度系数',
  `generate_way` int NULL DEFAULT NULL COMMENT '组卷方式：1-手动；2-智能',
  `preset_question_total` int NULL DEFAULT NULL COMMENT '预设题目数量',
  `preset_test_difficulty` float NULL DEFAULT NULL COMMENT '预设难度系数',
  `difficulty_weight` float NULL DEFAULT NULL COMMENT '难度权重',
  `knowledge_weight` float NULL DEFAULT NULL COMMENT '知识点覆盖率权重',
  PRIMARY KEY (`test_id`) USING BTREE,
  INDEX `fk_test_subject_1`(`subject_id` ASC) USING BTREE,
  CONSTRAINT `fk_test_subject_1` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 112 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES (107, '数据结构期中', '', '2024-04-10 00:00:00', '2024-05-25 00:00:00', 60, 1, 10, 48, 0.57, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `test` VALUES (108, '计算机网络1', '', '2024-05-22 00:00:00', '2024-06-29 00:00:00', 60, 1, 10, 47, 0.54, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `test` VALUES (109, '习概期中考试', '期中考试', '2024-05-22 00:00:00', '2024-06-20 00:00:00', 60, 1, 8, 49, 0.48, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `test` VALUES (111, '习概模拟试题', '', '2024-05-22 00:00:00', '2024-06-25 00:00:00', 60, 2, 4, 49, 0.5, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for test_history
-- ----------------------------
DROP TABLE IF EXISTS `test_history`;
CREATE TABLE `test_history`  (
  `history_id` int NOT NULL AUTO_INCREMENT,
  `correct` int NULL DEFAULT NULL,
  `finish_time` datetime NULL DEFAULT NULL COMMENT '完成测验的结束时间',
  `take_time` int NULL DEFAULT NULL COMMENT '完成测验的时长（秒）',
  `test_id` int NOT NULL,
  `student_id` int NOT NULL,
  PRIMARY KEY (`history_id`) USING BTREE,
  INDEX `fk_test_history_test_1`(`test_id` ASC) USING BTREE,
  INDEX `fk_test_history_user_1`(`student_id` ASC) USING BTREE,
  INDEX `history_id`(`history_id` ASC) USING BTREE,
  CONSTRAINT `fk_test_history_test_1` FOREIGN KEY (`test_id`) REFERENCES `test` (`test_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_test_history_user_1` FOREIGN KEY (`student_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 7291 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of test_history
-- ----------------------------
INSERT INTO `test_history` VALUES (7286, 5, '2024-05-23 00:31:01', 27, 108, 854);
INSERT INTO `test_history` VALUES (7287, 6, '2024-05-23 00:33:01', 22, 107, 854);
INSERT INTO `test_history` VALUES (7288, 8, '2024-05-23 16:31:24', 203, 109, 854);
INSERT INTO `test_history` VALUES (7289, 6, '2024-05-23 16:32:58', 71, 109, 856);

-- ----------------------------
-- Table structure for test_history_question_reply
-- ----------------------------
DROP TABLE IF EXISTS `test_history_question_reply`;
CREATE TABLE `test_history_question_reply`  (
  `reply_id` int NOT NULL AUTO_INCREMENT,
  `history_id` int NOT NULL,
  `question_id` int NOT NULL,
  `reply` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  PRIMARY KEY (`reply_id`) USING BTREE,
  INDEX `reply_id`(`reply_id` ASC) USING BTREE,
  INDEX `question_id`(`question_id` ASC) USING BTREE,
  INDEX `history_id`(`history_id` ASC) USING BTREE,
  CONSTRAINT `test_history_question_reply_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `question` (`question_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `test_history_question_reply_ibfk_2` FOREIGN KEY (`history_id`) REFERENCES `test_history` (`history_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 48442 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of test_history_question_reply
-- ----------------------------
INSERT INTO `test_history_question_reply` VALUES (48408, 7286, 729, 'C');
INSERT INTO `test_history_question_reply` VALUES (48409, 7286, 730, 'A');
INSERT INTO `test_history_question_reply` VALUES (48410, 7286, 731, 'C');
INSERT INTO `test_history_question_reply` VALUES (48411, 7286, 733, 'A');
INSERT INTO `test_history_question_reply` VALUES (48412, 7286, 720, 'false');
INSERT INTO `test_history_question_reply` VALUES (48413, 7286, 721, 'true');
INSERT INTO `test_history_question_reply` VALUES (48414, 7286, 723, 'false');
INSERT INTO `test_history_question_reply` VALUES (48415, 7287, 705, 'B');
INSERT INTO `test_history_question_reply` VALUES (48416, 7287, 706, 'B');
INSERT INTO `test_history_question_reply` VALUES (48417, 7287, 708, 'B');
INSERT INTO `test_history_question_reply` VALUES (48418, 7287, 709, 'B');
INSERT INTO `test_history_question_reply` VALUES (48419, 7287, 707, 'true');
INSERT INTO `test_history_question_reply` VALUES (48420, 7287, 710, 'false');
INSERT INTO `test_history_question_reply` VALUES (48421, 7287, 711, 'false');
INSERT INTO `test_history_question_reply` VALUES (48422, 7288, 688, 'C');
INSERT INTO `test_history_question_reply` VALUES (48423, 7288, 689, 'C');
INSERT INTO `test_history_question_reply` VALUES (48424, 7288, 690, 'D');
INSERT INTO `test_history_question_reply` VALUES (48425, 7288, 691, 'C');
INSERT INTO `test_history_question_reply` VALUES (48426, 7288, 692, 'A');
INSERT INTO `test_history_question_reply` VALUES (48427, 7288, 695, 'true');
INSERT INTO `test_history_question_reply` VALUES (48428, 7288, 696, 'false');
INSERT INTO `test_history_question_reply` VALUES (48429, 7288, 702, '我国老龄化社会面临的挑战主要包括：\n劳动力减少：随着老年人口比例增加，劳动力供给减少，可能导致劳动力市场紧张，影响经济发展和社会稳定。\n养老压力增加：老年人口增加，对养老服务、医疗保障和社会福利的需求大幅增加，给社会养老保障体系带来沉重负担。\n医疗和护理需求增加：老年人健康需求增加，慢性疾病、老年痴呆等慢性病患者数量增多，对医疗资源和护理服务提出更高要求。\n家庭结构变迁：传统的家庭养老模式逐渐瓦解，部分老年人面临孤独、孤立等心理和生活问题，家庭养老压力增加。\n社会参与不足：部分老年人缺乏社会参与机会，可能导致心理孤独感加重、社会融合程度降低等问题。\n为了应对这些挑战，可以采取以下解决方案：\n健全养老保障体系：加强基本养老保险制度建设，扩大覆盖范围，提高待遇水平；加强社会福利服务，完善养老服务体系。\n推进医养结合：发展医养结合的服务模式，提升老年医疗护理水平，满足老年人日益增长的医疗和护理需求。\n加强社会关爱：建设老年人关爱机构和社区日间照料中心，提供心理疏导、精神慰藉等服务，关注孤寡老人的生活和心理健康。\n支持家庭养老：通过政策、税收等措施，支持家庭养老，提供相应的照护服务和经济支持，减轻家庭养老压力。\n提升老年人社会参与度：鼓励老年人参与社会活动、志愿服务等，促进老年人与社会的互动和交流，增强其社会融入感和幸福感。');
INSERT INTO `test_history_question_reply` VALUES (48430, 7289, 688, 'C');
INSERT INTO `test_history_question_reply` VALUES (48431, 7289, 689, 'C');
INSERT INTO `test_history_question_reply` VALUES (48432, 7289, 690, 'A');
INSERT INTO `test_history_question_reply` VALUES (48433, 7289, 691, 'C');
INSERT INTO `test_history_question_reply` VALUES (48434, 7289, 692, 'A');
INSERT INTO `test_history_question_reply` VALUES (48435, 7289, 695, 'true');
INSERT INTO `test_history_question_reply` VALUES (48436, 7289, 696, 'true');
INSERT INTO `test_history_question_reply` VALUES (48437, 7289, 702, '我国老龄化社会面临的挑战主要包括：\n 劳动力减少：随着老年人口比例增加，劳动力供给减少，可能导致劳动力市场紧张，影响经济发展和社会稳定。\n 养老压力增加：老年人口增加，对养老服务、医疗保障和社会福利的需求大幅增加，给社会养老保障体系带来沉重负担。\n 医疗和护理需求增加：老年人健康需求增加，慢性疾病、老年痴呆等慢性病患者数量增多，对医疗资源和护理服务提出更高要求。\n 家庭结构变迁：传统的家庭养老模式逐渐瓦解，部分老年人面临孤独、孤立等心理和生活问题，家庭养老压力增加。\n 社会参与不足：部分老年人缺乏社会参与机会，可能导致心理孤独感加重、社会融合程度降低等问题。\n 为了应对这些挑战，可以采取以下解决方案：\n 健全养老保障体系：加强基本养老保险制度建设，扩大覆盖范围，提高待遇水平；加强社会福利服务，完善养老服务体系。\n 推进医养结合：发展医养结合的服务模式，提升老年医疗护理水平，满足老年人日益增长的医疗和护理需求。\n 加强社会关爱：建设老年人关爱机构和社区日间照料中心，提供心理疏导、精神慰藉等服务，关注孤寡老人的生活和心理健康。\n 支持家庭养老：通过政策、税收等措施，支持家庭养老，提供相应的照护服务和经济支持，减轻家庭养老压力。\n 提升老年人社会参与度：鼓励老年人参与社会活动、志愿服务等，促进老年人与社会的互动和交流，增强其社会融入感和幸福感。');

-- ----------------------------
-- Table structure for test_question_list
-- ----------------------------
DROP TABLE IF EXISTS `test_question_list`;
CREATE TABLE `test_question_list`  (
  `test_id` int NOT NULL,
  `question_id` int NOT NULL,
  PRIMARY KEY (`test_id`, `question_id`) USING BTREE,
  INDEX `fk_test_question_list_question_1`(`question_id` ASC) USING BTREE,
  CONSTRAINT `fk_test_question_list_question_1` FOREIGN KEY (`question_id`) REFERENCES `question` (`question_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_test_question_list_test_1` FOREIGN KEY (`test_id`) REFERENCES `test` (`test_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of test_question_list
-- ----------------------------
INSERT INTO `test_question_list` VALUES (109, 688);
INSERT INTO `test_question_list` VALUES (111, 688);
INSERT INTO `test_question_list` VALUES (109, 689);
INSERT INTO `test_question_list` VALUES (109, 690);
INSERT INTO `test_question_list` VALUES (109, 691);
INSERT INTO `test_question_list` VALUES (109, 692);
INSERT INTO `test_question_list` VALUES (111, 692);
INSERT INTO `test_question_list` VALUES (111, 693);
INSERT INTO `test_question_list` VALUES (109, 695);
INSERT INTO `test_question_list` VALUES (109, 696);
INSERT INTO `test_question_list` VALUES (111, 698);
INSERT INTO `test_question_list` VALUES (109, 702);
INSERT INTO `test_question_list` VALUES (107, 705);
INSERT INTO `test_question_list` VALUES (107, 706);
INSERT INTO `test_question_list` VALUES (107, 707);
INSERT INTO `test_question_list` VALUES (107, 708);
INSERT INTO `test_question_list` VALUES (107, 709);
INSERT INTO `test_question_list` VALUES (107, 710);
INSERT INTO `test_question_list` VALUES (107, 711);
INSERT INTO `test_question_list` VALUES (107, 714);
INSERT INTO `test_question_list` VALUES (107, 716);
INSERT INTO `test_question_list` VALUES (107, 718);
INSERT INTO `test_question_list` VALUES (108, 719);
INSERT INTO `test_question_list` VALUES (108, 720);
INSERT INTO `test_question_list` VALUES (108, 721);
INSERT INTO `test_question_list` VALUES (108, 723);
INSERT INTO `test_question_list` VALUES (108, 727);
INSERT INTO `test_question_list` VALUES (108, 728);
INSERT INTO `test_question_list` VALUES (108, 729);
INSERT INTO `test_question_list` VALUES (108, 730);
INSERT INTO `test_question_list` VALUES (108, 731);
INSERT INTO `test_question_list` VALUES (108, 733);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `account` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `account`(`account` ASC) USING BTREE,
  INDEX `fk_user_role_1`(`role_id` ASC) USING BTREE,
  INDEX `user_id`(`user_id` ASC) USING BTREE,
  CONSTRAINT `fk_user_role_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 874 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '$2a$10$sa1phiaJcu2iq2fw.HOR7us4dYgXPvAc3f0Iv.ufTdAiStOTH1A4O', 'admin', 1);
INSERT INTO `user` VALUES (851, '胡浩栋', '$2a$10$kq8Hu9XmtZbqByHpMSerHuaAPv.gzzbkfrjLdnJh8lrW4n6AIbVqy', '胡浩栋', 2);
INSERT INTO `user` VALUES (852, '陈岗', '$2a$10$M/0tRjVCXwWvWbEWLo8qCOXkSPOfdWzjPfj74TS1fiETIqVQPOn9S', '陈岗', 2);
INSERT INTO `user` VALUES (853, '姜国敏', '$2a$10$QG3o03Qk4b/IhVNFtF.oy.8w5X.pm4019dxAvkFxgnsMFy5ea.isu', '姜国敏', 2);
INSERT INTO `user` VALUES (854, '陈双双', '$2a$10$zvozOpHGybc2K6yRcE8AB.DpGaO3ZRKRekgSTH/I4Fg.wPE6ehwPC', '陈双双', 3);
INSERT INTO `user` VALUES (855, '梁剑', '$2a$10$IIvAsQ3GYf4Vi72mNWnP/Orh3mYRGiSC6/xonfIW5//FFNACCSSoG', '梁剑', 3);
INSERT INTO `user` VALUES (856, '刘学昕', '$2a$10$kouc430E6XhUudsaOSU9sOLTXAMcjnRI4CeVzFkvG0Dwo6sXF/i2O', '刘学昕', 3);
INSERT INTO `user` VALUES (857, '胡若璇', '$2a$10$jmc9ZUh6/IrtVhIajKxsU.F0zOF9LeVO5nak/RUXdqdIuB953HFN2', '胡若璇', 3);
INSERT INTO `user` VALUES (858, '班茗子', '$2a$10$7RqIWqrnYPVbiFPWUbg3Je7K9QsDXZRTcdCtPrPTFqVFGgVmJkNuy', '班茗子', 3);
INSERT INTO `user` VALUES (859, '郑延倩', '$2a$10$YDLtwDMx58cXbDLIH11tle35WY2zEfOAmBMXewQ81xqTnZdfXU6uG', '郑延倩', 3);
INSERT INTO `user` VALUES (860, '陈天麒', '$2a$10$ULI5TUiZMRbmxIklTKatS.Mj/rtjUzj2E/Fr.BDs6K6OsQnKnyRF2', '陈天麒', 3);
INSERT INTO `user` VALUES (861, '康邦盛', '$2a$10$NOni8DaLXAKdqlBSUBiDFOmaxfI0jt7RRqoaB1yR2czVfQPp1xlwi', '康邦盛', 3);
INSERT INTO `user` VALUES (862, '崔吉易', '$2a$10$B7NVBN791gP39bDy/WLg0esrKppfcidrPxxYIEmYfZE9Rz.2l2fYS', '崔吉易', 3);
INSERT INTO `user` VALUES (863, '史家毅', '$2a$10$FIVa.RoqqhGyPA2XthYFVOoO.1RKLL5n1opdwcPNcaTCulLc0K3IW', '史家毅', 3);
INSERT INTO `user` VALUES (864, '曹忠隆', '$2a$10$.dFM3Kw3g.31GwR7KOTZW.kXYdaZxcWa0XMM0E1lECVHMtNd0j5ri', '曹忠隆', 3);
INSERT INTO `user` VALUES (865, '呂芯怡', '$2a$10$MIICYlvwt5p4VeWBBXp84OrL9Utu8XQJ2h98wntZheOY0t/jFgwji', '呂芯怡', 3);
INSERT INTO `user` VALUES (866, '樊俐君', '$2a$10$fAffpupKxtKs.S6Lq2zkXOTPkVbghDy00EFu4V/Sk1eYfS/3Y6UeO', '樊俐君', 3);
INSERT INTO `user` VALUES (867, '徐政宇', '$2a$10$27iaaBEjyIBR.0oxA3u6a.HM/8euanQ3UWAeqKtMemFfPW9vdnXzu', '徐政宇', 3);
INSERT INTO `user` VALUES (868, '易彦妤', '$2a$10$IQtbnLFAL3ZWFF8tRxymGeb.azdkrO0D/4K/.LQpf07BFmCC2WeIa', '易彦妤', 3);
INSERT INTO `user` VALUES (869, '石紫琪', '$2a$10$esGgC8pD65eO1ulA55OiJu3ObQfj2UlNtjnbdJW.BzQ3cagaPcPci', '石紫琪', 3);
INSERT INTO `user` VALUES (870, '林静如', '$2a$10$BaxR1xfeiU/11v/ldU2jbOixG7RtSrzoeg5YXXziFHSpIkiugrOki', '林静如', 3);
INSERT INTO `user` VALUES (871, '吳采欣', '$2a$10$5VgeaAKwesN6of6Uy1dfK./YYKAfL1EqsfyD3/8BwGKv9vfUlyfG.', '吳采欣', 3);
INSERT INTO `user` VALUES (872, '任淑萍', '$2a$10$yR3W1geu02quq/ydc5SHqu69bI6iQ1pE172aaezACqas4r9isR2CK', '任淑萍', 3);
INSERT INTO `user` VALUES (873, '王欣仪', '$2a$10$0dhOoy9HSCjw02S8H7AI1e1A5GracofG5eF.iDC9y3Y6eK8Mz/XWC', '王欣仪', 3);

-- ----------------------------
-- Table structure for user_clazz
-- ----------------------------
DROP TABLE IF EXISTS `user_clazz`;
CREATE TABLE `user_clazz`  (
  `student_id` int NOT NULL,
  `clazz_id` int NOT NULL,
  PRIMARY KEY (`student_id`, `clazz_id`) USING BTREE,
  INDEX `fk_user_clazz_clazz_1`(`clazz_id` ASC) USING BTREE,
  CONSTRAINT `fk_user_clazz_clazz_1` FOREIGN KEY (`clazz_id`) REFERENCES `clazz` (`clazz_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_user_clazz_user_1` FOREIGN KEY (`student_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_clazz
-- ----------------------------
INSERT INTO `user_clazz` VALUES (854, 55);
INSERT INTO `user_clazz` VALUES (855, 55);
INSERT INTO `user_clazz` VALUES (856, 55);
INSERT INTO `user_clazz` VALUES (866, 55);
INSERT INTO `user_clazz` VALUES (867, 55);
INSERT INTO `user_clazz` VALUES (858, 56);
INSERT INTO `user_clazz` VALUES (859, 56);
INSERT INTO `user_clazz` VALUES (860, 56);
INSERT INTO `user_clazz` VALUES (868, 56);
INSERT INTO `user_clazz` VALUES (869, 56);
INSERT INTO `user_clazz` VALUES (861, 57);
INSERT INTO `user_clazz` VALUES (862, 57);
INSERT INTO `user_clazz` VALUES (863, 57);
INSERT INTO `user_clazz` VALUES (870, 57);
INSERT INTO `user_clazz` VALUES (871, 57);
INSERT INTO `user_clazz` VALUES (857, 58);
INSERT INTO `user_clazz` VALUES (864, 58);
INSERT INTO `user_clazz` VALUES (865, 58);
INSERT INTO `user_clazz` VALUES (872, 58);
INSERT INTO `user_clazz` VALUES (873, 58);

-- ----------------------------
-- Table structure for user_major
-- ----------------------------
DROP TABLE IF EXISTS `user_major`;
CREATE TABLE `user_major`  (
  `teacher_id` int NOT NULL,
  `major_id` int NOT NULL,
  PRIMARY KEY (`teacher_id`, `major_id`) USING BTREE,
  INDEX `fk_user_major_major_1`(`major_id` ASC) USING BTREE,
  CONSTRAINT `fk_user_major_major_1` FOREIGN KEY (`major_id`) REFERENCES `major` (`major_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_user_major_user_1` FOREIGN KEY (`teacher_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_major
-- ----------------------------
INSERT INTO `user_major` VALUES (851, 13);
INSERT INTO `user_major` VALUES (852, 13);
INSERT INTO `user_major` VALUES (853, 13);

-- ----------------------------
-- View structure for compare_short_answer_with_reply
-- ----------------------------
DROP VIEW IF EXISTS `compare_short_answer_with_reply`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `compare_short_answer_with_reply` AS select `compare_short_answer`.`compare_id` AS `compare_id`,`compare_short_answer`.`compare_threshold` AS `compare_threshold`,`compare_short_answer`.`short_answer_id` AS `short_answer_id`,`short_answer`.`question_id` AS `question_id`,`question`.`question_title` AS `question_title`,`short_answer`.`test_id` AS `test_id`,`compare_short_answer`.`reply1_id` AS `reply1_id`,`test_history_question_reply_1`.`reply` AS `reply1_text`,(select rank() OVER (ORDER BY `test_history_ranking1`.`history_id` )  AS `ranking` from `test_history` `test_history_ranking1` where ((`test_history_ranking1`.`test_id` = `short_answer`.`test_id`) and (`test_history_ranking1`.`student_id` = `user1`.`user_id`) and (`test_history_1`.`history_id` = `test_history_ranking1`.`history_id`))) AS `reply1_ranking`,`user1`.`user_id` AS `user_id`,`user1`.`username` AS `username`,`compare_short_answer`.`reply2_id` AS `reply2_id`,`test_history_question_reply_2`.`reply` AS `reply2_text`,(select rank() OVER (ORDER BY `test_history_ranking2`.`history_id` )  AS `ranking` from `test_history` `test_history_ranking2` where ((`test_history_ranking2`.`test_id` = `short_answer`.`test_id`) and (`test_history_ranking2`.`student_id` = `user2`.`user_id`) and (`test_history_2`.`history_id` = `test_history_ranking2`.`history_id`))) AS `reply2_ranking`,`user2`.`user_id` AS `compare_user_id`,`user2`.`username` AS `compare_username` from ((((((((`compare_short_answer` join `short_answer` on((`short_answer`.`short_answer_id` = `compare_short_answer`.`short_answer_id`))) join `question` on((`short_answer`.`question_id` = `question`.`question_id`))) join `test_history_question_reply` `test_history_question_reply_1` on((`test_history_question_reply_1`.`reply_id` = `compare_short_answer`.`reply1_id`))) join `test_history` `test_history_1` on((`test_history_1`.`history_id` = `test_history_question_reply_1`.`history_id`))) join `user` `user1` on((`user1`.`user_id` = `test_history_1`.`student_id`))) join `test_history_question_reply` `test_history_question_reply_2` on((`test_history_question_reply_2`.`reply_id` = `compare_short_answer`.`reply2_id`))) join `test_history` `test_history_2` on((`test_history_2`.`history_id` = `test_history_question_reply_2`.`history_id`))) join `user` `user2` on((`user2`.`user_id` = `test_history_2`.`student_id`)));

-- ----------------------------
-- View structure for question_with_type_subject_knowledge
-- ----------------------------
DROP VIEW IF EXISTS `question_with_type_subject_knowledge`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `question_with_type_subject_knowledge` AS select `question`.`question_id` AS `question_id`,`question`.`question_title` AS `question_title`,`question`.`question_difficulty` AS `question_difficulty`,`question`.`subject_id` AS `subject_id`,`question`.`type_id` AS `type_id`,`question`.`knowledge_id` AS `knowledge_id`,`subject`.`subject_name` AS `subject_name`,`question_type`.`type_name` AS `type_name`,`knowledge_frame`.`content` AS `knowledge_content` from (((`question` join `question_type` on((`question`.`type_id` = `question_type`.`type_id`))) join `subject` on((`question`.`subject_id` = `subject`.`subject_id`))) join `knowledge_frame` on((`question`.`knowledge_id` = `knowledge_frame`.`chapter_id`)));

-- ----------------------------
-- View structure for student_with_role_clazz_major
-- ----------------------------
DROP VIEW IF EXISTS `student_with_role_clazz_major`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `student_with_role_clazz_major` AS select `user`.`user_id` AS `user_id`,`user`.`account` AS `account`,`user`.`password` AS `password`,`user`.`username` AS `username`,`user`.`role_id` AS `role_id`,`role`.`role_name` AS `role_name`,`role`.`description` AS `description`,`clazz`.`clazz_id` AS `clazz_id`,`clazz`.`clazz_name` AS `clazz_name`,`clazz`.`major_id` AS `major_id`,`major`.`major_name` AS `major_name` from ((((`user` join `role` on((`role`.`role_id` = `user`.`role_id`))) left join `user_clazz` on((`user_clazz`.`student_id` = `user`.`user_id`))) left join `clazz` on((`clazz`.`clazz_id` = `user_clazz`.`clazz_id`))) join `major` on((`major`.`major_id` = `clazz`.`major_id`))) where (`role`.`role_id` = '3');

-- ----------------------------
-- View structure for subject_with_user_clazz
-- ----------------------------
DROP VIEW IF EXISTS `subject_with_user_clazz`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `subject_with_user_clazz` AS select `subject`.`subject_id` AS `subject_id`,`subject`.`subject_name` AS `subject_name`,`subject`.`teacher_id` AS `teacher_id`,`subject`.`clazz_id` AS `clazz_id`,`user`.`username` AS `teacher_name`,`clazz`.`clazz_name` AS `clazz_name`,`major`.`major_id` AS `major_id`,`major`.`major_name` AS `major_name` from (((`subject` join `user` on((`user`.`user_id` = `subject`.`teacher_id`))) join `clazz` on((`clazz`.`clazz_id` = `subject`.`clazz_id`))) join `major` on((`major`.`major_id` = `clazz`.`major_id`)));

-- ----------------------------
-- View structure for teacher_with_role_major
-- ----------------------------
DROP VIEW IF EXISTS `teacher_with_role_major`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `teacher_with_role_major` AS select `user`.`user_id` AS `user_id`,`user`.`account` AS `account`,`user`.`password` AS `password`,`user`.`username` AS `username`,`user`.`role_id` AS `role_id`,`role`.`role_name` AS `role_name`,`role`.`description` AS `description`,`major`.`major_id` AS `major_id`,`major`.`major_name` AS `major_name` from (((`user` join `role` on((`role`.`role_id` = `user`.`role_id`))) left join `user_major` on((`user_major`.`teacher_id` = `user`.`user_id`))) left join `major` on((`major`.`major_id` = `user_major`.`major_id`))) where (`role`.`role_id` = '2');

-- ----------------------------
-- View structure for test_history_question_reply_with_user
-- ----------------------------
DROP VIEW IF EXISTS `test_history_question_reply_with_user`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `test_history_question_reply_with_user` AS select `test_history_question_reply`.`reply_id` AS `reply_id`,`test_history_question_reply`.`history_id` AS `history_id`,`test_history_question_reply`.`question_id` AS `question_id`,`test_history_question_reply`.`reply` AS `reply`,`user`.`user_id` AS `user_id`,`user`.`username` AS `username` from ((`test_history_question_reply` join `test_history` on((`test_history`.`history_id` = `test_history_question_reply`.`history_id`))) join `user` on((`user`.`user_id` = `test_history`.`student_id`)));

-- ----------------------------
-- View structure for test_history_with_user_test_subject
-- ----------------------------
DROP VIEW IF EXISTS `test_history_with_user_test_subject`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `test_history_with_user_test_subject` AS select max(`test_history`.`correct`) AS `max_correct`,count(`test_history`.`history_id`) AS `complete_time`,`test_history`.`student_id` AS `student_id`,`student_with_role_clazz_major`.`username` AS `username`,`test_with_subject_clazz`.`test_id` AS `test_id`,`test_with_subject_clazz`.`test_name` AS `test_name`,`test_with_subject_clazz`.`description` AS `description`,`test_with_subject_clazz`.`begin_date` AS `begin_date`,`test_with_subject_clazz`.`end_date` AS `end_date`,`test_with_subject_clazz`.`test_duration` AS `test_duration`,`test_with_subject_clazz`.`test_time` AS `test_time`,`test_with_subject_clazz`.`question_total` AS `question_total`,`test_with_subject_clazz`.`subject_id` AS `subject_id`,`test_with_subject_clazz`.`test_difficulty` AS `test_difficulty`,`test_with_subject_clazz`.`generate_way` AS `generate_way`,`test_with_subject_clazz`.`preset_question_total` AS `preset_question_total`,`test_with_subject_clazz`.`preset_test_difficulty` AS `preset_test_difficulty`,`test_with_subject_clazz`.`difficulty_weight` AS `difficulty_weight`,`test_with_subject_clazz`.`knowledge_weight` AS `knowledge_weight`,`test_with_subject_clazz`.`subject_name` AS `subject_name`,`test_with_subject_clazz`.`teacher_id` AS `teacher_id`,`test_with_subject_clazz`.`clazz_id` AS `clazz_id`,`test_with_subject_clazz`.`teacher_name` AS `teacher_name`,`test_with_subject_clazz`.`clazz_name` AS `clazz_name`,`test_with_subject_clazz`.`major_id` AS `major_id`,`test_with_subject_clazz`.`major_name` AS `major_name` from ((`test_history` join `student_with_role_clazz_major` on((`student_with_role_clazz_major`.`user_id` = `test_history`.`student_id`))) join `test_with_subject_clazz` on((`test_with_subject_clazz`.`test_id` = `test_history`.`test_id`))) group by `test_history`.`test_id`,`test_history`.`student_id`;

-- ----------------------------
-- View structure for test_with_subject_clazz
-- ----------------------------
DROP VIEW IF EXISTS `test_with_subject_clazz`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `test_with_subject_clazz` AS select `test`.`test_id` AS `test_id`,`test`.`test_name` AS `test_name`,`test`.`description` AS `description`,`test`.`begin_date` AS `begin_date`,`test`.`end_date` AS `end_date`,`test`.`test_duration` AS `test_duration`,`test`.`test_time` AS `test_time`,`test`.`question_total` AS `question_total`,`test`.`subject_id` AS `subject_id`,`test`.`test_difficulty` AS `test_difficulty`,`test`.`generate_way` AS `generate_way`,`test`.`preset_question_total` AS `preset_question_total`,`test`.`preset_test_difficulty` AS `preset_test_difficulty`,`test`.`difficulty_weight` AS `difficulty_weight`,`test`.`knowledge_weight` AS `knowledge_weight`,`subject_with_user_clazz`.`subject_name` AS `subject_name`,`subject_with_user_clazz`.`teacher_id` AS `teacher_id`,`subject_with_user_clazz`.`clazz_id` AS `clazz_id`,`subject_with_user_clazz`.`teacher_name` AS `teacher_name`,`subject_with_user_clazz`.`clazz_name` AS `clazz_name`,`subject_with_user_clazz`.`major_id` AS `major_id`,`subject_with_user_clazz`.`major_name` AS `major_name` from (`test` join `subject_with_user_clazz` on((`subject_with_user_clazz`.`subject_id` = `test`.`subject_id`)));

-- ----------------------------
-- View structure for user_with_role
-- ----------------------------
DROP VIEW IF EXISTS `user_with_role`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `user_with_role` AS select `user`.`user_id` AS `user_id`,`user`.`account` AS `account`,`user`.`password` AS `password`,`user`.`username` AS `username`,`user`.`role_id` AS `role_id`,`role`.`role_name` AS `role_name`,`role`.`description` AS `description` from (`user` join `role` on((`user`.`role_id` = `role`.`role_id`)));

SET FOREIGN_KEY_CHECKS = 1;
