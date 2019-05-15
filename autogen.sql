/*
 Navicat MySQL Data Transfer

 Source Server         : 本机
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : autogen

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 15/05/2019 17:02:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('admin', 'admin', 'admin');

-- ----------------------------
-- Table structure for paper
-- ----------------------------
DROP TABLE IF EXISTS `paper`;
CREATE TABLE `paper`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` int(11) NULL DEFAULT NULL,
  `level` int(255) NULL DEFAULT NULL,
  `radio_num` int(11) NULL DEFAULT NULL,
  `radio_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `multiple_num` int(11) NULL DEFAULT NULL,
  `multiple_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `judge_num` int(11) NULL DEFAULT NULL,
  `judge_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `filling_num` int(11) NULL DEFAULT NULL,
  `filling_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `essay_num` int(11) NULL DEFAULT NULL,
  `essay_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` int(5) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of paper
-- ----------------------------
INSERT INTO `paper` VALUES ('236a73e0ba51442981a07f7d1ec1b538', '测试试卷222', 120, 2, 5, '8,10,11,35,39', 1, '3', 1, '22', 2, '5,27', 1, '32', 1, '2019-03-17 16:50:00');
INSERT INTO `paper` VALUES ('5793c921fba74003a5a828d6d56f3568', 'rrr测试试卷', 121, 5, 5, '8,10,11,35,39', 1, '3', 1, '23', 2, '5,29', 2, '6,33', 1, '2019-03-17 16:51:42');
INSERT INTO `paper` VALUES ('9ed8d09de0714676b9e7aaa8604dd471', '1-1,1-2', 50, 1, 4, '10,35,11,39', 1, '3', 2, '22,23', 1, '5', 2, '32,31', 1, '2019-03-17 16:53:01');

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chapter` int(255) NULL DEFAULT NULL,
  `section` int(255) NULL DEFAULT NULL,
  `level` int(255) NULL DEFAULT NULL,
  `body` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(255) NULL DEFAULT NULL,
  `option_num` int(11) NULL DEFAULT NULL,
  `option_a` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `option_b` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `option_c` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `option_d` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `option_e` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `right_option` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `right_judge` tinyint(1) NULL DEFAULT NULL,
  `right_filling` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `right_essay` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES (3, 1, 2, 1, '测试题干', 2, 4, '选项A内容', '选项B内容', '选项C内容', '选项D内容', '选项E内容', 'A,C', 0, '', '');
INSERT INTO `question` VALUES (5, 1, 2, 1, '测试题干', 4, 4, '选项A内容', '选项B内容', '选项C内容', '选项D内容', '选项E内容', 'A', NULL, '', '');
INSERT INTO `question` VALUES (6, 2, 3, 3, '测试题干', 5, 3, '选项A内容', '选项B内容', '选项C内容', '选项D内容', '选项E内容', 'B,C', 1, 'e', 'eeee');
INSERT INTO `question` VALUES (11, 2, 1, 1, '测试题干', 1, 4, '选项A内容', '选项B内容', '选项C内容', '选项D内容', '选项E内容', 'A', NULL, '', '');
INSERT INTO `question` VALUES (14, 2, 3, 1, '测试题干', 1, 4, '选项A内容', '选项B内容', '选项C内容', '选项D内容', '选项E内容', 'A', NULL, '', '');
INSERT INTO `question` VALUES (15, 3, 1, 1, '测试题干', 1, 4, '选项A内容', '选项B内容', '选项C内容', '选项D内容', '选项E内容', 'A', NULL, '', '');
INSERT INTO `question` VALUES (17, 3, 2, 1, '测试题干', 2, 4, '选项A内容', '选项B内容', '选项C内容', '选项D内容', '选项E内容', 'A,B', NULL, '', '');
INSERT INTO `question` VALUES (18, 3, 2, 1, '测试题干', 2, 4, '选项A内容', '选项B内容', '选项C内容', '选项D内容', '选项E内容', 'B,C', NULL, '', '');
INSERT INTO `question` VALUES (19, 3, 2, 1, '测试题干', 2, 4, '选项A内容', '选项B内容', '选项C内容', '选项D内容', '选项E内容', 'C,D', NULL, '', '');
INSERT INTO `question` VALUES (20, 3, 3, 1, '测试题干', 2, 4, '选项A内容', '选项B内容', '选项C内容', '选项D内容', '选项E内容', 'D,E', NULL, '', '');
INSERT INTO `question` VALUES (21, 3, 3, 1, '测试题干', 3, 4, '选项A内容', '选项B内容', '选项C内容', '选项D内容', '选项E内容', 'A', 0, '', '');
INSERT INTO `question` VALUES (22, 1, 1, 1, '测试题干', 3, 4, '选项A内容', '选项B内容', '选项C内容', '选项D内容', '选项E内容', 'A', 1, '', '');
INSERT INTO `question` VALUES (23, 1, 1, 1, '测试题干', 3, 4, '选项A内容', '选项B内容', '选项C内容', '选项D内容', '选项E内容', 'A', 0, '', '');
INSERT INTO `question` VALUES (26, 1, 1, 1, '测试题干', 4, 4, '选项A内容', '选项B内容', '选项C内容', '选项D内容', '选项E内容', 'A', NULL, '', '');
INSERT INTO `question` VALUES (27, 1, 1, 1, '测试题干', 4, 4, '选项A内容', '选项B内容', '选项C内容', '选项D内容', '选项E内容', 'A', NULL, '', '');
INSERT INTO `question` VALUES (28, 1, 1, 1, '测试题干', 4, 4, '选项A内容', '选项B内容', '选项C内容', '选项D内容', '选项E内容', 'A', NULL, '', '');
INSERT INTO `question` VALUES (29, 1, 1, 1, '测试题干', 4, 4, '选项A内容', '选项B内容', '选项C内容', '选项D内容', '选项E内容', 'A', NULL, '', '');
INSERT INTO `question` VALUES (31, 1, 1, 1, '测试题干', 5, 4, '选项A内容', '选项B内容', '选项C内容', '选项D内容', '选项E内容', 'A', NULL, '', '');
INSERT INTO `question` VALUES (32, 1, 1, 1, '测试题干', 5, 4, '选项A内容', '选项B内容', '选项C内容', '选项D内容', '选项E内容', 'A', NULL, '', '');
INSERT INTO `question` VALUES (33, 1, 1, 1, '测试题干', 5, 4, '选项A内容', '选项B内容', '选项C内容', '选项D内容', '选项E内容', 'A', NULL, '', '');
INSERT INTO `question` VALUES (35, 1, 1, 2, '测试题干', 1, 4, '选项A内容', '选项B内容', '选项C内容', '选项D内容', '选项E内容', 'A', NULL, '', '');
INSERT INTO `question` VALUES (36, 1, 1, 3, '测试题干', 1, 4, '选项A内容', '选项B内容', '选项C内容', '选项D内容', '选项E内容', 'A', NULL, '', '');
INSERT INTO `question` VALUES (37, 1, 1, 4, '测试题干', 1, 4, '选项A内容', '选项B内容', '选项C内容', '选项D内容', '选项E内容', 'A', NULL, '', '');
INSERT INTO `question` VALUES (38, 1, 1, 5, '测试题干', 1, 4, '选项A内容', '选项B内容', '选项C内容', '选项D内容', '选项E内容', 'A', NULL, '', '');
INSERT INTO `question` VALUES (39, 1, 1, 1, '测试题干', 1, 4, '选项A内容', '选项B内容', '选项C内容', '选项D内容', '选项E内容', 'A', NULL, '', '');
INSERT INTO `question` VALUES (40, 1, 2, 1, '测试导入题干', 1, 4, 'A内容', 'B内容', 'C内容', 'D内容', 'E内容', 'A', 1, '哈哈', '呵呵');
INSERT INTO `question` VALUES (41, 2, 3, 4, '测试导入题干1', 3, 4, 'A内容', 'B内容', 'C内容', 'D内容', 'E内容', 'B,C', 0, 'biubiu', '兔兔');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `real_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', 'zhangsan', '张三', '123456');
INSERT INTO `student` VALUES ('48ebfa5ba1be493f90b65d33cc5af8f9', 'lisi', '李四', '123456');

SET FOREIGN_KEY_CHECKS = 1;
