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

 Date: 07/08/2020 01:35:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for blog404_admin
-- ----------------------------
DROP TABLE IF EXISTS `blog404_admin`;
CREATE TABLE `blog404_admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id 唯一',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名 唯一',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `introduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简介',
  `gender` tinyint(1) NULL DEFAULT NULL COMMENT '性别 0:保密 1:男 2:女',
  `birthday` date NULL DEFAULT NULL COMMENT '生日',
  `mobile` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `github` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'github地址',
  `wechat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微信二维码',
  `instagram` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'instagram地址',
  `sina` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微博地址',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '账号创建时间',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '账号更新时间',
  `delete_time` timestamp(0) NULL DEFAULT NULL COMMENT '账号注销时间',
  `last_login_time` timestamp(0) NULL DEFAULT NULL COMMENT '最近一次登录时间',
  `last_login_ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最近一次登录ip',
  `last_logout_time` timestamp(0) NULL DEFAULT NULL COMMENT '最后一次退出时间',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '用户状态 0:正常 1:禁用 2:注销',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog404_admin
-- ----------------------------
INSERT INTO `blog404_admin` VALUES (1, 'yyid404', 'UUID-yyid404', 'https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/user/user-avatar-Lemon.jpg', '鱼', '404 Not Found', 2, '1997-10-10', '17328210172', 'yyid404@gmail.com', 'https://github.com/yyid404', 'https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/user/user-wechat-Lemon.png', 'https://www.instagram.com/yyid404', 'https://weibo.com/8oz3yy', '2020-06-13 20:48:56', NULL, NULL, NULL, NULL, NULL, 0);

SET FOREIGN_KEY_CHECKS = 1;
