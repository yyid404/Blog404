/*
 Navicat Premium Data Transfer

 Source Server         : Lemon
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : blog404

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 07/08/2020 01:36:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for blog404_theme
-- ----------------------------
DROP TABLE IF EXISTS `blog404_theme`;
CREATE TABLE `blog404_theme`  (
  `id` int(11) NOT NULL,
  `theme` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog404_theme
-- ----------------------------
INSERT INTO `blog404_theme` VALUES (1, 'cover_dark', 'https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-cover-dark-1.jpg');
INSERT INTO `blog404_theme` VALUES (2, 'cover_light', 'https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-cover-light-1.jpg');
INSERT INTO `blog404_theme` VALUES (3, 'banner_photograph', 'https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-banner-photograph-1.jpg');
INSERT INTO `blog404_theme` VALUES (4, 'banner_music', 'https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-banner-music-1.jpg');
INSERT INTO `blog404_theme` VALUES (5, 'banner_movie', 'https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-banner-movie-1.jpg');
INSERT INTO `blog404_theme` VALUES (6, 'banner_code', 'https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-banner-code-1.jpg');
INSERT INTO `blog404_theme` VALUES (7, 'banner_reading', 'https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-banner-reading-1.jpg');
INSERT INTO `blog404_theme` VALUES (8, 'banner_daily', 'https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-banner-daily-1.jpg');
INSERT INTO `blog404_theme` VALUES (9, 'banner_contact', 'https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-banner-daily-1.jpg');
INSERT INTO `blog404_theme` VALUES (10, 'background_photograph', 'https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-background-photograph-1.jpg');
INSERT INTO `blog404_theme` VALUES (11, 'background_music', 'https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-background-music-1.jpg');
INSERT INTO `blog404_theme` VALUES (12, 'background_movie', 'https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-background-movie-1.jpg');
INSERT INTO `blog404_theme` VALUES (13, 'background_code', 'https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-background-code-1.jpg');
INSERT INTO `blog404_theme` VALUES (14, 'background_reading', 'https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-background-reading-1.jpg');
INSERT INTO `blog404_theme` VALUES (15, 'background_daily', 'https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-background-daily-3.jpg');
INSERT INTO `blog404_theme` VALUES (16, 'background_contact', 'https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-background-daily-3.jpg');

SET FOREIGN_KEY_CHECKS = 1;
