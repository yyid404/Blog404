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

 Date: 07/08/2020 01:35:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for blog404_area
-- ----------------------------
DROP TABLE IF EXISTS `blog404_area`;
CREATE TABLE `blog404_area`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name_english` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `level` int(11) NULL DEFAULT NULL,
  `pid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog404_area
-- ----------------------------
INSERT INTO `blog404_area` VALUES (1, '亚洲', 'Asia', 1, 0);
INSERT INTO `blog404_area` VALUES (2, '欧洲', 'Europe', 1, 0);
INSERT INTO `blog404_area` VALUES (3, '非洲', 'Africa', 1, 0);
INSERT INTO `blog404_area` VALUES (4, '北美洲', 'South America', 1, 0);
INSERT INTO `blog404_area` VALUES (5, '南美洲', 'North America', 1, 0);
INSERT INTO `blog404_area` VALUES (6, '大洋洲', 'Oceania', 1, 0);
INSERT INTO `blog404_area` VALUES (7, '南极洲', 'Antarctica', 1, 0);
INSERT INTO `blog404_area` VALUES (8, '中国', 'China', 2, 1);
INSERT INTO `blog404_area` VALUES (9, '日本', 'Japan', 2, 1);
INSERT INTO `blog404_area` VALUES (10, '印度', 'India', 2, 1);
INSERT INTO `blog404_area` VALUES (11, '以色列', 'Israel', 2, 1);
INSERT INTO `blog404_area` VALUES (12, '土耳其', 'Turkey', 2, 1);
INSERT INTO `blog404_area` VALUES (13, '斯里兰卡', 'Sri Lanka', 2, 1);
INSERT INTO `blog404_area` VALUES (14, '柬埔寨', 'Cambodia', 2, 1);
INSERT INTO `blog404_area` VALUES (15, '意大利', 'Italy', 2, 2);
INSERT INTO `blog404_area` VALUES (16, '奥地利', 'Austria', 2, 2);
INSERT INTO `blog404_area` VALUES (17, '匈牙利', 'Hungary', 2, 2);
INSERT INTO `blog404_area` VALUES (18, '法国', 'France', 2, 2);
INSERT INTO `blog404_area` VALUES (19, '英国', 'United Kingdom', 2, 2);
INSERT INTO `blog404_area` VALUES (20, '希腊', 'Greece', 2, 2);
INSERT INTO `blog404_area` VALUES (21, '俄罗斯', 'Russia', 2, 2);
INSERT INTO `blog404_area` VALUES (22, '爱尔兰', 'Ireland', 2, 2);
INSERT INTO `blog404_area` VALUES (23, '捷克', 'Czech', 2, 2);
INSERT INTO `blog404_area` VALUES (24, '丹麦', 'Denmark', 2, 2);
INSERT INTO `blog404_area` VALUES (25, '冰岛', 'Iceland', 2, 2);
INSERT INTO `blog404_area` VALUES (26, '挪威', 'Norway', 2, 2);
INSERT INTO `blog404_area` VALUES (27, '德国', 'Germany', 2, 2);
INSERT INTO `blog404_area` VALUES (28, '摩洛哥', 'Morocco', 2, 3);
INSERT INTO `blog404_area` VALUES (29, '埃及', 'Egypt', 2, 3);
INSERT INTO `blog404_area` VALUES (30, '美国', 'United States of America', 2, 4);
INSERT INTO `blog404_area` VALUES (31, '秘鲁', 'Peru', 2, 5);
INSERT INTO `blog404_area` VALUES (32, '新西兰', 'New Zealand', 2, 6);
INSERT INTO `blog404_area` VALUES (33, '北京市', NULL, 3, 8);
INSERT INTO `blog404_area` VALUES (34, '天津市', NULL, 3, 8);
INSERT INTO `blog404_area` VALUES (35, '河北省', NULL, 3, 8);
INSERT INTO `blog404_area` VALUES (36, '山西省', NULL, 3, 8);
INSERT INTO `blog404_area` VALUES (37, '内蒙古自治区', NULL, 3, 8);
INSERT INTO `blog404_area` VALUES (38, '辽宁省', NULL, 3, 8);
INSERT INTO `blog404_area` VALUES (39, '吉林省', NULL, 3, 8);
INSERT INTO `blog404_area` VALUES (40, '黑龙江省', NULL, 3, 8);
INSERT INTO `blog404_area` VALUES (41, '上海市', NULL, 3, 8);
INSERT INTO `blog404_area` VALUES (42, '江苏省', NULL, 3, 8);
INSERT INTO `blog404_area` VALUES (43, '浙江省', NULL, 3, 8);
INSERT INTO `blog404_area` VALUES (44, '安徽省', NULL, 3, 8);
INSERT INTO `blog404_area` VALUES (45, '福建省', NULL, 3, 8);
INSERT INTO `blog404_area` VALUES (46, '江西省', NULL, 3, 8);
INSERT INTO `blog404_area` VALUES (47, '山东省', NULL, 3, 8);
INSERT INTO `blog404_area` VALUES (48, '河南省', NULL, 3, 8);
INSERT INTO `blog404_area` VALUES (49, '湖北省', NULL, 3, 8);
INSERT INTO `blog404_area` VALUES (50, '湖南省', NULL, 3, 8);
INSERT INTO `blog404_area` VALUES (51, '广东省', NULL, 3, 8);
INSERT INTO `blog404_area` VALUES (52, '广西壮族自治区', NULL, 3, 8);
INSERT INTO `blog404_area` VALUES (53, '海南省', NULL, 3, 8);
INSERT INTO `blog404_area` VALUES (54, '四川省', NULL, 3, 8);
INSERT INTO `blog404_area` VALUES (55, '贵州省', NULL, 3, 8);
INSERT INTO `blog404_area` VALUES (56, '云南省', NULL, 3, 8);
INSERT INTO `blog404_area` VALUES (57, '西藏自治区', NULL, 3, 8);
INSERT INTO `blog404_area` VALUES (58, '重庆市', NULL, 3, 8);
INSERT INTO `blog404_area` VALUES (59, '陕西省', NULL, 3, 8);
INSERT INTO `blog404_area` VALUES (60, '甘肃省', NULL, 3, 8);
INSERT INTO `blog404_area` VALUES (61, '青海省', NULL, 3, 8);
INSERT INTO `blog404_area` VALUES (62, '宁夏回族自治区', NULL, 3, 8);
INSERT INTO `blog404_area` VALUES (63, '新疆维吾尔自治区', NULL, 3, 8);
INSERT INTO `blog404_area` VALUES (64, '台湾省', NULL, 3, 8);
INSERT INTO `blog404_area` VALUES (65, '香港特别行政区', NULL, 3, 8);
INSERT INTO `blog404_area` VALUES (66, '澳门特别行政区', NULL, 3, 8);
INSERT INTO `blog404_area` VALUES (67, '珠海市', NULL, 4, 51);
INSERT INTO `blog404_area` VALUES (68, '广州市', NULL, 4, 51);
INSERT INTO `blog404_area` VALUES (69, '深圳市', NULL, 4, 51);
INSERT INTO `blog404_area` VALUES (70, '南京市', NULL, 4, 42);
INSERT INTO `blog404_area` VALUES (71, '苏州市', NULL, 4, 42);
INSERT INTO `blog404_area` VALUES (72, '杭州市', NULL, 4, 43);
INSERT INTO `blog404_area` VALUES (73, '嘉兴市', NULL, 4, 43);
INSERT INTO `blog404_area` VALUES (74, '长沙市', NULL, 4, 50);
INSERT INTO `blog404_area` VALUES (75, '湘西土家族苗族自治州', NULL, 4, 50);
INSERT INTO `blog404_area` VALUES (76, '郴州市', NULL, 4, 50);
INSERT INTO `blog404_area` VALUES (77, '张家界市', NULL, 4, 50);
INSERT INTO `blog404_area` VALUES (78, '衡阳市', NULL, 4, 50);
INSERT INTO `blog404_area` VALUES (79, '邵阳市', NULL, 4, 50);
INSERT INTO `blog404_area` VALUES (80, '岳阳市', NULL, 4, 50);
INSERT INTO `blog404_area` VALUES (81, '常德市', NULL, 4, 50);
INSERT INTO `blog404_area` VALUES (82, '湘潭市', NULL, 4, 50);
INSERT INTO `blog404_area` VALUES (83, '武汉市', NULL, 4, 49);
INSERT INTO `blog404_area` VALUES (84, '恩施土家族苗族自治州', NULL, 4, 49);
INSERT INTO `blog404_area` VALUES (85, '宜昌市', NULL, 4, 49);
INSERT INTO `blog404_area` VALUES (86, '神农架林区', NULL, 4, 49);
INSERT INTO `blog404_area` VALUES (87, '十堰市', NULL, 4, 49);
INSERT INTO `blog404_area` VALUES (88, '萍乡市', NULL, 4, 46);
INSERT INTO `blog404_area` VALUES (89, '上饶市', NULL, 4, 46);
INSERT INTO `blog404_area` VALUES (90, '九江市', NULL, 4, 46);
INSERT INTO `blog404_area` VALUES (91, '景德镇市', NULL, 4, 46);
INSERT INTO `blog404_area` VALUES (92, '南昌市', NULL, 4, 46);
INSERT INTO `blog404_area` VALUES (93, '黄山市', NULL, 4, 44);
INSERT INTO `blog404_area` VALUES (94, '甘孜藏族自治州', NULL, 4, 54);
INSERT INTO `blog404_area` VALUES (95, '阿坝藏族羌族自治州', NULL, 4, 54);
INSERT INTO `blog404_area` VALUES (96, '乐山市', NULL, 4, 54);
INSERT INTO `blog404_area` VALUES (97, '凉山彝族自治州', NULL, 4, 54);
INSERT INTO `blog404_area` VALUES (98, '成都市', NULL, 4, 54);
INSERT INTO `blog404_area` VALUES (99, '德阳市', NULL, 4, 54);
INSERT INTO `blog404_area` VALUES (100, '阿勒泰地区', NULL, 4, 63);
INSERT INTO `blog404_area` VALUES (101, '巴音郭楞蒙古自治州', NULL, 4, 63);
INSERT INTO `blog404_area` VALUES (102, '伊犁哈萨克自治州', NULL, 4, 63);
INSERT INTO `blog404_area` VALUES (103, '阿克苏地区', NULL, 4, 63);
INSERT INTO `blog404_area` VALUES (104, '塔城地区', NULL, 4, 63);
INSERT INTO `blog404_area` VALUES (105, '昌吉回族自治州', NULL, 4, 63);
INSERT INTO `blog404_area` VALUES (106, '博尔塔拉蒙古自治州', NULL, 4, 63);
INSERT INTO `blog404_area` VALUES (107, '喀什地区', NULL, 4, 63);
INSERT INTO `blog404_area` VALUES (108, '吐鲁番市', NULL, 4, 63);
INSERT INTO `blog404_area` VALUES (109, '乌鲁木齐市', NULL, 4, 63);
INSERT INTO `blog404_area` VALUES (110, '拉萨市', NULL, 4, 57);
INSERT INTO `blog404_area` VALUES (111, '那曲市', NULL, 4, 57);
INSERT INTO `blog404_area` VALUES (112, '日喀则市', NULL, 4, 57);
INSERT INTO `blog404_area` VALUES (113, '阿里地区', NULL, 4, 57);
INSERT INTO `blog404_area` VALUES (114, '山南市', NULL, 4, 57);
INSERT INTO `blog404_area` VALUES (115, '林芝市', NULL, 4, 57);
INSERT INTO `blog404_area` VALUES (116, '红河哈尼族彝族自治州', NULL, 4, 56);
INSERT INTO `blog404_area` VALUES (117, '迪庆藏族自治州', NULL, 4, 56);
INSERT INTO `blog404_area` VALUES (118, '大理白族自治州', NULL, 4, 56);
INSERT INTO `blog404_area` VALUES (119, '丽江市', NULL, 4, 56);
INSERT INTO `blog404_area` VALUES (120, '昆明市', NULL, 4, 56);
INSERT INTO `blog404_area` VALUES (121, '玉溪市', NULL, 4, 56);
INSERT INTO `blog404_area` VALUES (122, '西双版纳傣族自治州', NULL, 4, 56);
INSERT INTO `blog404_area` VALUES (123, '保山市', NULL, 4, 56);
INSERT INTO `blog404_area` VALUES (124, '海西蒙古族藏族自治州', NULL, 4, 61);
INSERT INTO `blog404_area` VALUES (125, '海北藏族自治州', NULL, 4, 61);
INSERT INTO `blog404_area` VALUES (126, '海南藏族自治州', NULL, 4, 61);
INSERT INTO `blog404_area` VALUES (127, '黄南藏族自治州', NULL, 4, 61);
INSERT INTO `blog404_area` VALUES (128, '果洛藏族自治州', NULL, 4, 61);
INSERT INTO `blog404_area` VALUES (129, '西宁市', NULL, 4, 61);
INSERT INTO `blog404_area` VALUES (130, '张掖市', NULL, 4, 60);
INSERT INTO `blog404_area` VALUES (131, '酒泉市', NULL, 4, 60);
INSERT INTO `blog404_area` VALUES (132, '天水市', NULL, 4, 60);
INSERT INTO `blog404_area` VALUES (133, '嘉峪关市', NULL, 4, 60);
INSERT INTO `blog404_area` VALUES (134, '大兴安岭地区', NULL, 4, 40);
INSERT INTO `blog404_area` VALUES (135, '黑河市', NULL, 4, 40);
INSERT INTO `blog404_area` VALUES (136, '牡丹江市', NULL, 4, 40);
INSERT INTO `blog404_area` VALUES (137, '伊春市', NULL, 4, 40);
INSERT INTO `blog404_area` VALUES (138, '哈尔滨市', NULL, 4, 40);
INSERT INTO `blog404_area` VALUES (139, '延边朝鲜族自治州', NULL, 4, 39);
INSERT INTO `blog404_area` VALUES (140, '吉林市', NULL, 4, 39);
INSERT INTO `blog404_area` VALUES (141, '长春市', NULL, 4, 39);
INSERT INTO `blog404_area` VALUES (142, '黔东南苗族侗族自治州', NULL, 4, 55);
INSERT INTO `blog404_area` VALUES (143, '铜仁市', NULL, 4, 55);
INSERT INTO `blog404_area` VALUES (144, '安顺市', NULL, 4, 55);
INSERT INTO `blog404_area` VALUES (145, '黔南布依族苗族自治州', NULL, 4, 55);
INSERT INTO `blog404_area` VALUES (146, '毕节市', NULL, 4, 55);
INSERT INTO `blog404_area` VALUES (147, '桂林市', NULL, 4, 52);
INSERT INTO `blog404_area` VALUES (148, '贺州市', NULL, 4, 52);
INSERT INTO `blog404_area` VALUES (149, '北海市', NULL, 4, 52);
INSERT INTO `blog404_area` VALUES (150, '兴安盟', NULL, 4, 37);
INSERT INTO `blog404_area` VALUES (151, '阿拉善盟', NULL, 4, 37);
INSERT INTO `blog404_area` VALUES (152, '呼伦贝尔市', NULL, 4, 37);
INSERT INTO `blog404_area` VALUES (153, '呼和浩特市', NULL, 4, 37);
INSERT INTO `blog404_area` VALUES (154, '高雄市', NULL, 4, 64);
INSERT INTO `blog404_area` VALUES (155, '台东县', NULL, 4, 64);
INSERT INTO `blog404_area` VALUES (156, '台中市', NULL, 4, 64);
INSERT INTO `blog404_area` VALUES (157, '台北市', NULL, 4, 64);
INSERT INTO `blog404_area` VALUES (158, '新北市', NULL, 4, 64);
INSERT INTO `blog404_area` VALUES (159, '屏东县', NULL, 4, 64);
INSERT INTO `blog404_area` VALUES (160, '南投县', NULL, 4, 64);
INSERT INTO `blog404_area` VALUES (161, '嘉义县', NULL, 4, 64);
INSERT INTO `blog404_area` VALUES (162, '承德市', NULL, 4, 35);
INSERT INTO `blog404_area` VALUES (163, '张家口市', NULL, 4, 35);
INSERT INTO `blog404_area` VALUES (164, '保定市', NULL, 4, 35);
INSERT INTO `blog404_area` VALUES (165, '渭南市', NULL, 4, 59);
INSERT INTO `blog404_area` VALUES (166, '榆林市', NULL, 4, 59);
INSERT INTO `blog404_area` VALUES (167, '延安市', NULL, 4, 59);
INSERT INTO `blog404_area` VALUES (168, '西安市', NULL, 4, 59);
INSERT INTO `blog404_area` VALUES (169, '银川市', NULL, 4, 62);
INSERT INTO `blog404_area` VALUES (170, '吴忠市', NULL, 4, 62);
INSERT INTO `blog404_area` VALUES (171, '固原市', NULL, 4, 62);
INSERT INTO `blog404_area` VALUES (172, '丹东市', NULL, 4, 38);
INSERT INTO `blog404_area` VALUES (173, '盘锦市', NULL, 4, 38);
INSERT INTO `blog404_area` VALUES (174, '沈阳市', NULL, 4, 38);
INSERT INTO `blog404_area` VALUES (175, '泰安市', NULL, 4, 47);
INSERT INTO `blog404_area` VALUES (176, '青岛市', NULL, 4, 47);
INSERT INTO `blog404_area` VALUES (177, '大同市', NULL, 4, 47);
INSERT INTO `blog404_area` VALUES (178, '临汾市', NULL, 4, 47);
INSERT INTO `blog404_area` VALUES (179, '厦门市', NULL, 4, 45);
INSERT INTO `blog404_area` VALUES (180, '南平市', NULL, 4, 45);
INSERT INTO `blog404_area` VALUES (181, '龙岩市', NULL, 4, 45);
INSERT INTO `blog404_area` VALUES (182, '漳州市', NULL, 4, 45);
INSERT INTO `blog404_area` VALUES (183, '三亚市', NULL, 4, 53);
INSERT INTO `blog404_area` VALUES (184, '海口市', NULL, 4, 53);
INSERT INTO `blog404_area` VALUES (185, '保亭黎族苗族自治县', NULL, 4, 53);
INSERT INTO `blog404_area` VALUES (186, '洛阳市', NULL, 4, 48);
INSERT INTO `blog404_area` VALUES (187, '郑州市', NULL, 4, 48);
INSERT INTO `blog404_area` VALUES (188, '开封市', NULL, 4, 48);
INSERT INTO `blog404_area` VALUES (189, '维也纳', 'Vienna', 3, 16);
INSERT INTO `blog404_area` VALUES (190, '布达佩斯', 'Budapest', 3, 17);
INSERT INTO `blog404_area` VALUES (191, '北海道地方', NULL, 2, NULL);
INSERT INTO `blog404_area` VALUES (192, '东北地方', NULL, 2, NULL);
INSERT INTO `blog404_area` VALUES (193, '关东地方', NULL, 2, NULL);
INSERT INTO `blog404_area` VALUES (194, '中部地方', NULL, 2, NULL);
INSERT INTO `blog404_area` VALUES (195, '近畿地方', NULL, 2, NULL);
INSERT INTO `blog404_area` VALUES (196, '中国地方', NULL, 2, NULL);
INSERT INTO `blog404_area` VALUES (197, '四国地方', NULL, 2, NULL);
INSERT INTO `blog404_area` VALUES (198, '九州地方', NULL, 2, NULL);
INSERT INTO `blog404_area` VALUES (199, '爱媛县', NULL, 3, 197);
INSERT INTO `blog404_area` VALUES (200, '奈良', NULL, 3, 195);
INSERT INTO `blog404_area` VALUES (201, '北海道', 'Hokkaido', 3, 191);
INSERT INTO `blog404_area` VALUES (202, '东京都', NULL, 3, 193);
INSERT INTO `blog404_area` VALUES (203, '神奈川县', NULL, 3, 193);
INSERT INTO `blog404_area` VALUES (204, '暹粒省', NULL, 2, 14);
INSERT INTO `blog404_area` VALUES (205, '暹粒', NULL, 3, 204);
INSERT INTO `blog404_area` VALUES (206, '库斯科', NULL, 3, 31);
INSERT INTO `blog404_area` VALUES (207, '西撒哈拉', NULL, 2, 3);
INSERT INTO `blog404_area` VALUES (208, '开罗', NULL, 3, 29);
INSERT INTO `blog404_area` VALUES (209, '耶路撒冷', NULL, 3, 11);
INSERT INTO `blog404_area` VALUES (210, '罗马', NULL, 3, 15);
INSERT INTO `blog404_area` VALUES (211, '巴黎', NULL, 3, 18);
INSERT INTO `blog404_area` VALUES (212, '西西里', NULL, 3, 15);
INSERT INTO `blog404_area` VALUES (213, 'California', NULL, 3, 30);
INSERT INTO `blog404_area` VALUES (214, '洛杉矶', NULL, 4, 213);
INSERT INTO `blog404_area` VALUES (215, '克莱尔郡', 'County Clare', 3, 22);

SET FOREIGN_KEY_CHECKS = 1;
