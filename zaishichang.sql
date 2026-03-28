/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80028
Source Host           : localhost:3306
Source Database       : zaishichang

Target Server Type    : MYSQL
Target Server Version : 80028
File Encoding         : 65001

Date: 2023-06-07 15:00:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`) USING BTREE,
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('8', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('11', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('12', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can add 商品', '6', 'add_goodsinfo');
INSERT INTO `auth_permission` VALUES ('17', 'Can change 商品', '6', 'change_goodsinfo');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete 商品', '6', 'delete_goodsinfo');
INSERT INTO `auth_permission` VALUES ('19', 'Can add 商品类型', '7', 'add_typeinfo');
INSERT INTO `auth_permission` VALUES ('20', 'Can change 商品类型', '7', 'change_typeinfo');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete 商品类型', '7', 'delete_typeinfo');
INSERT INTO `auth_permission` VALUES ('22', 'Can add 评论回复', '8', 'add_contentchart');
INSERT INTO `auth_permission` VALUES ('23', 'Can change 评论回复', '8', 'change_contentchart');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete 评论回复', '8', 'delete_contentchart');
INSERT INTO `auth_permission` VALUES ('25', 'Can add 商品评论', '9', 'add_goodscontent');
INSERT INTO `auth_permission` VALUES ('26', 'Can change 商品评论', '9', 'change_goodscontent');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete 商品评论', '9', 'delete_goodscontent');
INSERT INTO `auth_permission` VALUES ('28', 'Can add 用户信息', '10', 'add_userinfo');
INSERT INTO `auth_permission` VALUES ('29', 'Can change 用户信息', '10', 'change_userinfo');
INSERT INTO `auth_permission` VALUES ('30', 'Can delete 用户信息', '10', 'delete_userinfo');
INSERT INTO `auth_permission` VALUES ('31', 'Can add 用户浏览记录', '11', 'add_goodsbrowser');
INSERT INTO `auth_permission` VALUES ('32', 'Can change 用户浏览记录', '11', 'change_goodsbrowser');
INSERT INTO `auth_permission` VALUES ('33', 'Can delete 用户浏览记录', '11', 'delete_goodsbrowser');
INSERT INTO `auth_permission` VALUES ('34', 'Can add 用户消息', '12', 'add_information');
INSERT INTO `auth_permission` VALUES ('35', 'Can change 用户消息', '12', 'change_information');
INSERT INTO `auth_permission` VALUES ('36', 'Can delete 用户消息', '12', 'delete_information');
INSERT INTO `auth_permission` VALUES ('37', 'Can add 退款订单', '13', 'add_tuihuoinfo');
INSERT INTO `auth_permission` VALUES ('38', 'Can change 退款订单', '13', 'change_tuihuoinfo');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete 退款订单', '13', 'delete_tuihuoinfo');
INSERT INTO `auth_permission` VALUES ('40', 'Can add session', '14', 'add_session');
INSERT INTO `auth_permission` VALUES ('41', 'Can change session', '14', 'change_session');
INSERT INTO `auth_permission` VALUES ('42', 'Can delete session', '14', 'delete_session');
INSERT INTO `auth_permission` VALUES ('43', 'Can add 购物车', '15', 'add_cartinfo');
INSERT INTO `auth_permission` VALUES ('44', 'Can change 购物车', '15', 'change_cartinfo');
INSERT INTO `auth_permission` VALUES ('45', 'Can delete 购物车', '15', 'delete_cartinfo');
INSERT INTO `auth_permission` VALUES ('46', 'Can add 付款订单', '16', 'add_orderdetailinfo');
INSERT INTO `auth_permission` VALUES ('47', 'Can change 付款订单', '16', 'change_orderdetailinfo');
INSERT INTO `auth_permission` VALUES ('48', 'Can delete 付款订单', '16', 'delete_orderdetailinfo');
INSERT INTO `auth_permission` VALUES ('49', 'Can add 未付款订单', '17', 'add_orderinfo');
INSERT INTO `auth_permission` VALUES ('50', 'Can change 未付款订单', '17', 'change_orderinfo');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete 未付款订单', '17', 'delete_orderinfo');
INSERT INTO `auth_permission` VALUES ('52', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('53', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('54', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('55', 'Can view user', '4', 'view_user');
INSERT INTO `auth_permission` VALUES ('56', 'Can view content type', '5', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('57', 'Can view session', '14', 'view_session');
INSERT INTO `auth_permission` VALUES ('58', 'Can view 购物车', '15', 'view_cartinfo');
INSERT INTO `auth_permission` VALUES ('59', 'Can view 商品', '6', 'view_goodsinfo');
INSERT INTO `auth_permission` VALUES ('60', 'Can view 商品类型', '7', 'view_typeinfo');
INSERT INTO `auth_permission` VALUES ('61', 'Can view 评论回复', '8', 'view_contentchart');
INSERT INTO `auth_permission` VALUES ('62', 'Can view 商品评论', '9', 'view_goodscontent');
INSERT INTO `auth_permission` VALUES ('63', 'Can view 用户信息', '10', 'view_userinfo');
INSERT INTO `auth_permission` VALUES ('64', 'Can view 用户浏览记录', '11', 'view_goodsbrowser');
INSERT INTO `auth_permission` VALUES ('65', 'Can view 用户消息', '12', 'view_information');
INSERT INTO `auth_permission` VALUES ('66', 'Can view 付款订单', '16', 'view_orderdetailinfo');
INSERT INTO `auth_permission` VALUES ('67', 'Can view 未付款订单', '17', 'view_orderinfo');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$150000$dSTgD3ZkIeP8$KY65jLbkjU8jFC7LxnwPR9FYRfD43n6xAbtcgZTI1rw=', '2023-06-07 14:14:29.805080', '1', 'admin', '', '', '2753398955@qq.com', '1', '1', '2023-06-03 22:00:15.000000');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`) USING BTREE,
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`) USING BTREE,
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for df_cart_cartinfo
-- ----------------------------
DROP TABLE IF EXISTS `df_cart_cartinfo`;
CREATE TABLE `df_cart_cartinfo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `count` int NOT NULL,
  `goods_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `df_cart_cartinfo_goods_id_4357294f_fk_df_goods_goodsinfo_id` (`goods_id`) USING BTREE,
  KEY `df_cart_cartinfo_user_id_db76e708_fk_df_user_userinfo_id` (`user_id`) USING BTREE,
  CONSTRAINT `df_cart_cartinfo_goods_id_4357294f_fk_df_goods_goodsinfo_id` FOREIGN KEY (`goods_id`) REFERENCES `df_goods_goodsinfo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `df_cart_cartinfo_user_id_db76e708_fk_df_user_userinfo_id` FOREIGN KEY (`user_id`) REFERENCES `df_user_userinfo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of df_cart_cartinfo
-- ----------------------------
INSERT INTO `df_cart_cartinfo` VALUES ('1', '1', '2', '1');

-- ----------------------------
-- Table structure for df_goods_contentchart
-- ----------------------------
DROP TABLE IF EXISTS `df_goods_contentchart`;
CREATE TABLE `df_goods_contentchart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `isDelete` tinyint(1) NOT NULL,
  `ctitle` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cusername` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cusername1` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ccontent_chart` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date_publish` datetime(6) NOT NULL,
  `ccontent_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `df_goods_contentchar_ccontent_id_b10a0757_fk_df_goods_` (`ccontent_id`) USING BTREE,
  CONSTRAINT `df_goods_contentchar_ccontent_id_b10a0757_fk_df_goods_` FOREIGN KEY (`ccontent_id`) REFERENCES `df_goods_goodscontent` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of df_goods_contentchart
-- ----------------------------

-- ----------------------------
-- Table structure for df_goods_goodscontent
-- ----------------------------
DROP TABLE IF EXISTS `df_goods_goodscontent`;
CREATE TABLE `df_goods_goodscontent` (
  `id` int NOT NULL AUTO_INCREMENT,
  `isDelete` tinyint(1) NOT NULL,
  `ctitle` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cpic` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `cusername` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `clogo` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cuser_content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date_publish` datetime(6) NOT NULL,
  `cgoodsname_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `df_goods_goodsconten_cgoodsname_id_a19f6072_fk_df_goods_` (`cgoodsname_id`) USING BTREE,
  CONSTRAINT `df_goods_goodsconten_cgoodsname_id_a19f6072_fk_df_goods_` FOREIGN KEY (`cgoodsname_id`) REFERENCES `df_goods_goodsinfo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of df_goods_goodscontent
-- ----------------------------
INSERT INTO `df_goods_goodscontent` VALUES ('1', '0', '活着', '', 'STU001', '123', '', '2023-06-03 22:27:00.000000', '1');
INSERT INTO `df_goods_goodscontent` VALUES ('2', '0', '被讨厌的勇气', '', 'user1', 'images/8.jpg', '不错不错，图书质量好，五星好评！', '2023-06-03 20:52:30.000000', '4');
INSERT INTO `df_goods_goodscontent` VALUES ('3', '0', '自行车', 'df_goods/image/2023/zcx.jpg', 'user1', 'images/8.jpg', '自行车很好骑！', '2022-06-03 23:11:34.000000', '7');
INSERT INTO `df_goods_goodscontent` VALUES ('4', '0', '自行车', '', 'user1', 'images/8.jpg', '不错哦！', '2023-06-03 23:12:04.000000', '7');

-- ----------------------------
-- Table structure for df_goods_goodsinfo
-- ----------------------------
DROP TABLE IF EXISTS `df_goods_goodsinfo`;
CREATE TABLE `df_goods_goodsinfo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `isDelete` tinyint(1) NOT NULL,
  `gtitle` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gpic` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `gprice` decimal(7,2) NOT NULL,
  `gunit` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gclick` int NOT NULL,
  `gjianjie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gkucun` int NOT NULL,
  `gcontent` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gtype_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `df_goods_goodsinfo_gtitle_8ec0f32b_uniq` (`gtitle`) USING BTREE,
  KEY `df_goods_goodsinfo_gtype_id_63a02cef_fk_df_goods_typeinfo_id` (`gtype_id`) USING BTREE,
  CONSTRAINT `df_goods_goodsinfo_gtype_id_63a02cef_fk_df_goods_typeinfo_id` FOREIGN KEY (`gtype_id`) REFERENCES `df_goods_typeinfo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of df_goods_goodsinfo
-- ----------------------------
INSERT INTO `df_goods_goodsinfo` VALUES ('1', '0', '活着', 'df_goods/image/2023/books/book2.jpg', '45.00', 'STU001', '11', '', '2', '【随机赠手稿】活着 余华精装书籍原著 当代文学小说书籍兄弟许三观卖血记活着为了讲述平凡的世界在细雨中呼喊文学畅销书籍排行榜', '1');
INSERT INTO `df_goods_goodsinfo` VALUES ('2', '0', '热水壶', 'df_goods/image/2023/jiadian/jd2.jpg', '23.00', 'STU001', '8', '', '3', '电热水壶家用不锈钢大容量开水壶全自动煲水壶学生宿舍烧水壶一体', '2');
INSERT INTO `df_goods_goodsinfo` VALUES ('3', '0', '裙子', 'df_goods/image/2023/clothes/c1.jpg', '34.00', 'STU001', '2', '', '3', '夏季法式桔梗复古长裙遮肚子减龄微胖女生法式黄色polo衬衫连衣裙', '3');
INSERT INTO `df_goods_goodsinfo` VALUES ('4', '0', '被讨厌的勇气', 'df_goods/image/2023/books/book1.jpg', '1.00', 'STU001', '14', '9.9成新', '5', '被讨厌的勇气正版(自我启发之父阿德勒的哲学课) 你就是脸皮太薄人生哲理哲学励志书籍 畅销书排行榜 青春文学博库网', '1');
INSERT INTO `df_goods_goodsinfo` VALUES ('5', '0', '笔记本', 'df_goods/image/2023/zhineng/zn1.jpg', '2300.00', 'STU001', '2', '用了一个月', '2', 'b5笔记本本子简约a4车线本学生专用软面抄高中生a5记事本初中生软皮作业本16K大学生简约横线练习本', '6');
INSERT INTO `df_goods_goodsinfo` VALUES ('6', '0', '琵琶', 'df_goods/image/2023/yueqi/y4.jpg', '120.00', 'STU001', '1', '自用款，喜欢带走吧', '1', '琵琶乐器初学者考级儿童自学初学红木专业花梨木成人专业演奏专用', '5');
INSERT INTO `df_goods_goodsinfo` VALUES ('7', '0', '自行车', 'df_goods/image/2023/chuxing/cx4.jpg', '129.00', 'STU001', '5', '性能很好', '1', '自行车女通勤轻便单车上班代步实心胎普通24寸26大学生男成人大人', '4');
INSERT INTO `df_goods_goodsinfo` VALUES ('8', '0', '我想要两颗西柚', 'df_goods/image/2023/books/book3.jpg', '45.00', 'STU001', '2', '9.9成新', '2', '【新华书店正版】我想要两颗西柚现当代文学胡辛束浙江文艺出版胡辛束原著2020年随笔作品小说书籍畅销排行榜书单青春经典好书推荐', '1');
INSERT INTO `df_goods_goodsinfo` VALUES ('9', '0', '新西游记', 'df_goods/image/2023/books/book4.jpg', '45.00', 'STU001', '3', '9成新', '2', '新西游记', '1');
INSERT INTO `df_goods_goodsinfo` VALUES ('10', '0', '小提琴', 'df_goods/image/2023/yueqi/y3.jpg', '100.00', 'STU001', '0', '9成新', '2', '法国追梦花官方旗舰店小提琴实木手工成人考级儿童初学者专业乐器', '5');
INSERT INTO `df_goods_goodsinfo` VALUES ('11', '0', '卡林巴琴', 'df_goods/image/2023/yueqi/y2.jpg', '90.00', 'STU001', '2', '9成新', '2', '新款拇指琴卡林巴琴正品17音初学入门乐器简单易学女生21音手指琴', '5');
INSERT INTO `df_goods_goodsinfo` VALUES ('12', '0', '古琴', 'df_goods/image/2023/yueqi/y1.jpg', '80.00', 'STU001', '1', '9成新', '1', '新款中国风古装摄影道具古琴小古筝复古拍照道具七弦琴演出道具', '5');
INSERT INTO `df_goods_goodsinfo` VALUES ('13', '0', '正肩短袖', 'df_goods/image/2023/clothes/c2.jpg', '35.00', 'STU001', '2', '9成新', '5', '小众正肩短袖', '3');
INSERT INTO `df_goods_goodsinfo` VALUES ('14', '0', '甜辣正肩短袖', 'df_goods/image/2023/clothes/c3.jpg', '25.00', 'STU001', '2', '9成新', '5', '美式甜辣白色正肩短袖', '3');
INSERT INTO `df_goods_goodsinfo` VALUES ('15', '0', 't恤男夏季', 'df_goods/image/2023/clothes/c4.jpg', '40.00', 'STU001', '3', '9成新', '8', 't恤男夏季日系宽松纯棉', '3');
INSERT INTO `df_goods_goodsinfo` VALUES ('16', '0', '电瓶车头盔', 'df_goods/image/2023/chuxing/cx3.jpg', '39.00', 'STU001', '5', '9成新', '3', '电瓶车头盔夏季防晒可爱', '4');
INSERT INTO `df_goods_goodsinfo` VALUES ('17', '0', '女溜冰鞋', 'df_goods/image/2023/chuxing/cx2.jpg', '99.00', 'STU001', '4', '9成新', '2', '美洲狮轮滑鞋成人女溜冰鞋', '4');
INSERT INTO `df_goods_goodsinfo` VALUES ('18', '0', '陆地冲浪板', 'df_goods/image/2023/chuxing/cx1.jpg', '229.00', 'STU001', '4', '9成新', '1', 'AD陆地冲浪板', '4');
INSERT INTO `df_goods_goodsinfo` VALUES ('19', '0', '蓝牙耳机', 'df_goods/image/2023/zhineng/zn2.jpg', '200.00', 'STU001', '0', '用了2个月', '3', '联想蓝牙耳机头戴式耳罩无线笔记本电脑运动降噪耳麦有线新款2023', '6');
INSERT INTO `df_goods_goodsinfo` VALUES ('20', '0', '蓝牙音响', 'df_goods/image/2023/zhineng/zn3.jpg', '88.00', 'STU001', '0', '用了一个月', '2', '一点拾光揽月时钟蓝牙音响桌面小音箱无线黑胶唱片音响礼物男女友', '6');
INSERT INTO `df_goods_goodsinfo` VALUES ('21', '0', '红米手环2', 'df_goods/image/2023/zhineng/zn4.jpg', '290.00', 'STU001', '1', '用了一个月', '1', '【立即抢购】红米Redmi手环2小米手环血氧饱和度心率睡眠监测运动智能防水手表方屏长续航支付宝微信旗舰', '6');
INSERT INTO `df_goods_goodsinfo` VALUES ('22', '0', '电动打蛋器', 'df_goods/image/2023/jiadian/jd1.jpg', '25.00', 'STU001', '8', '功能完好', '6', '电动打蛋器家用小型', '2');
INSERT INTO `df_goods_goodsinfo` VALUES ('23', '0', '洗衣机', 'df_goods/image/2023/jiadian/jd3.jpg', '599.00', 'STU001', '6', '功能完好', '0', '博世10/7kg自清洁变频滚筒洗衣机', '2');
INSERT INTO `df_goods_goodsinfo` VALUES ('24', '0', '榨汁机小型', 'df_goods/image/2023/jiadian/jd4.jpg', '30.00', 'STU001', '14', '功能完好', '0', '榨汁机小型便携式', '2');
INSERT INTO `df_goods_goodsinfo` VALUES ('25', '0', '摇摇车', 'df_goods/image/2023/06/07/new_image_-_5va41.jpg', '99.00', 'zhenght', '0', '全新', '3', '宝宝用，超可爱', '2');

-- ----------------------------
-- Table structure for df_goods_typeinfo
-- ----------------------------
DROP TABLE IF EXISTS `df_goods_typeinfo`;
CREATE TABLE `df_goods_typeinfo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `isDelete` tinyint(1) NOT NULL,
  `ttitle` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of df_goods_typeinfo
-- ----------------------------
INSERT INTO `df_goods_typeinfo` VALUES ('1', '0', '书籍');
INSERT INTO `df_goods_typeinfo` VALUES ('2', '0', '家电');
INSERT INTO `df_goods_typeinfo` VALUES ('3', '0', '衣物');
INSERT INTO `df_goods_typeinfo` VALUES ('4', '0', '出行');
INSERT INTO `df_goods_typeinfo` VALUES ('5', '0', '乐器');
INSERT INTO `df_goods_typeinfo` VALUES ('6', '0', '智能');

-- ----------------------------
-- Table structure for df_order_orderdetailinfo
-- ----------------------------
DROP TABLE IF EXISTS `df_order_orderdetailinfo`;
CREATE TABLE `df_order_orderdetailinfo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `price` decimal(6,2) NOT NULL,
  `count` int NOT NULL,
  `goods_id` int NOT NULL,
  `order_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `datatime` datetime(6) NOT NULL,
  `shopername` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `df_order_orderdetail_goods_id_d0acef4d_fk_df_goods_` (`goods_id`) USING BTREE,
  KEY `df_order_orderdetail_order_id_b91dcf67_fk_df_order_` (`order_id`) USING BTREE,
  CONSTRAINT `df_order_orderdetail_goods_id_d0acef4d_fk_df_goods_` FOREIGN KEY (`goods_id`) REFERENCES `df_goods_goodsinfo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `df_order_orderdetail_order_id_b91dcf67_fk_df_order_` FOREIGN KEY (`order_id`) REFERENCES `df_order_orderinfo` (`oid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of df_order_orderdetailinfo
-- ----------------------------
INSERT INTO `df_order_orderdetailinfo` VALUES ('1', '56.00', '1', '1', '2345678909876', '2023-06-03 22:32:00.000000', '123456', 'STU001');
INSERT INTO `df_order_orderdetailinfo` VALUES ('2', '1.00', '1', '4', '202208302047597', '2023-06-03 20:47:59.000000', 'STU001', 'user1');
INSERT INTO `df_order_orderdetailinfo` VALUES ('3', '23.00', '1', '2', '202208302047597', '2023-06-03 20:47:59.000000', '123456', 'user1');
INSERT INTO `df_order_orderdetailinfo` VALUES ('4', '34.00', '1', '3', '202208302306177', '2023-06-03 23:06:17.000000', '123456', 'user1');
INSERT INTO `df_order_orderdetailinfo` VALUES ('5', '120.00', '1', '7', '202208302306177', '2023-06-03 23:06:17.000000', 'STU001', 'user1');
INSERT INTO `df_order_orderdetailinfo` VALUES ('7', '39.00', '1', '16', '202306042203392', '2023-06-04 22:03:39.092213', 'STU001', 'STU001');
INSERT INTO `df_order_orderdetailinfo` VALUES ('8', '120.00', '1', '6', '202306042203392', '2023-06-04 22:03:39.096196', 'STU001', 'STU001');
INSERT INTO `df_order_orderdetailinfo` VALUES ('9', '80.00', '1', '12', '202306071422238', '2023-06-07 14:22:23.139224', 'STU001', 'zhenght');

-- ----------------------------
-- Table structure for df_order_orderinfo
-- ----------------------------
DROP TABLE IF EXISTS `df_order_orderinfo`;
CREATE TABLE `df_order_orderinfo` (
  `oid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `odate` datetime(6) NOT NULL,
  `oIsPay` tinyint(1) NOT NULL,
  `ototal` decimal(8,2) NOT NULL,
  `oaddress` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`oid`) USING BTREE,
  KEY `df_order_orderinfo_user_id_2d705949_fk_df_user_userinfo_id` (`user_id`) USING BTREE,
  CONSTRAINT `df_order_orderinfo_user_id_2d705949_fk_df_user_userinfo_id` FOREIGN KEY (`user_id`) REFERENCES `df_user_userinfo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of df_order_orderinfo
-- ----------------------------
INSERT INTO `df_order_orderinfo` VALUES ('202208302047597', '2023-06-03 20:47:59.000000', '0', '34.00', '广东省广州市', '7');
INSERT INTO `df_order_orderinfo` VALUES ('202208302306177', '2023-06-03 23:06:17.000000', '0', '164.00', '福建省长乐', '7');
INSERT INTO `df_order_orderinfo` VALUES ('202306042203392', '2023-06-04 22:03:39.090212', '0', '169.00', '广东揭阳', '2');
INSERT INTO `df_order_orderinfo` VALUES ('202306071422238', '2023-06-07 14:22:23.137234', '0', '90.00', '广东揭阳', '8');
INSERT INTO `df_order_orderinfo` VALUES ('2345678909876', '2023-06-05 22:33:47.000000', '0', '56.00', '云南省', '2');

-- ----------------------------
-- Table structure for df_user_goodsbrowser
-- ----------------------------
DROP TABLE IF EXISTS `df_user_goodsbrowser`;
CREATE TABLE `df_user_goodsbrowser` (
  `id` int NOT NULL AUTO_INCREMENT,
  `browser_time` datetime(6) NOT NULL,
  `good_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `df_user_goodsbrowser_good_id_81bbd6f5_fk_df_goods_goodsinfo_id` (`good_id`) USING BTREE,
  KEY `df_user_goodsbrowser_user_id_b7a661a4_fk_df_user_userinfo_id` (`user_id`) USING BTREE,
  CONSTRAINT `df_user_goodsbrowser_good_id_81bbd6f5_fk_df_goods_goodsinfo_id` FOREIGN KEY (`good_id`) REFERENCES `df_goods_goodsinfo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `df_user_goodsbrowser_user_id_b7a661a4_fk_df_user_userinfo_id` FOREIGN KEY (`user_id`) REFERENCES `df_user_userinfo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of df_user_goodsbrowser
-- ----------------------------
INSERT INTO `df_user_goodsbrowser` VALUES ('1', '2023-06-03 23:17:05.000000', '1', '1');
INSERT INTO `df_user_goodsbrowser` VALUES ('2', '2023-06-03 23:17:54.000000', '2', '1');
INSERT INTO `df_user_goodsbrowser` VALUES ('3', '2023-06-03 23:18:21.000000', '4', '1');
INSERT INTO `df_user_goodsbrowser` VALUES ('4', '2023-06-03 23:18:15.000000', '3', '1');
INSERT INTO `df_user_goodsbrowser` VALUES ('5', '2023-06-07 14:04:01.219317', '4', '7');
INSERT INTO `df_user_goodsbrowser` VALUES ('17', '2023-06-06 14:26:09.648438', '5', '2');
INSERT INTO `df_user_goodsbrowser` VALUES ('18', '2023-06-06 14:26:13.321683', '21', '2');
INSERT INTO `df_user_goodsbrowser` VALUES ('19', '2023-06-07 14:10:05.428181', '1', '2');
INSERT INTO `df_user_goodsbrowser` VALUES ('21', '2023-06-07 14:00:39.548740', '22', '7');
INSERT INTO `df_user_goodsbrowser` VALUES ('22', '2023-06-07 14:02:20.910417', '9', '7');
INSERT INTO `df_user_goodsbrowser` VALUES ('23', '2023-06-07 14:03:06.791897', '2', '7');
INSERT INTO `df_user_goodsbrowser` VALUES ('24', '2023-06-07 14:07:36.669774', '8', '7');
INSERT INTO `df_user_goodsbrowser` VALUES ('25', '2023-06-07 14:11:58.292340', '24', '2');
INSERT INTO `df_user_goodsbrowser` VALUES ('26', '2023-06-07 14:14:06.221349', '8', '2');
INSERT INTO `df_user_goodsbrowser` VALUES ('27', '2023-06-07 14:57:20.659934', '24', '8');
INSERT INTO `df_user_goodsbrowser` VALUES ('28', '2023-06-07 14:20:40.289446', '15', '8');
INSERT INTO `df_user_goodsbrowser` VALUES ('29', '2023-06-07 14:22:00.659072', '7', '8');
INSERT INTO `df_user_goodsbrowser` VALUES ('30', '2023-06-07 14:22:03.870744', '5', '8');
INSERT INTO `df_user_goodsbrowser` VALUES ('31', '2023-06-07 14:22:06.606234', '12', '8');

-- ----------------------------
-- Table structure for df_user_information
-- ----------------------------
DROP TABLE IF EXISTS `df_user_information`;
CREATE TABLE `df_user_information` (
  `id` int NOT NULL AUTO_INCREMENT,
  `isDelete` tinyint(1) NOT NULL,
  `ctitle` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cusername` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cusername1` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ccontent_chart` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ccheck` tinyint(1) NOT NULL,
  `date_publish` datetime(6) NOT NULL,
  `cinformation_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `df_user_information_cinformation_id_ead36b05_fk_df_user_u` (`cinformation_id`) USING BTREE,
  CONSTRAINT `df_user_information_cinformation_id_ead36b05_fk_df_user_u` FOREIGN KEY (`cinformation_id`) REFERENCES `df_user_userinfo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of df_user_information
-- ----------------------------
INSERT INTO `df_user_information` VALUES ('1', '1', '三国演义', 'STU001', '123456', 'hhh', '1', '2023-06-03 19:47:14.000000', '1');
INSERT INTO `df_user_information` VALUES ('2', '0', '问下老板，这个python书籍包邮吗？', 'user1', 'STU001', '我想买这个书可以包邮吗，最近手里紧！', '1', '2023-06-03 20:43:12.000000', '2');
INSERT INTO `df_user_information` VALUES ('3', '0', '', 'STU001', 'user1', '可以的，你拍吧，亲', '1', '2023-06-03 20:43:42.000000', '7');
INSERT INTO `df_user_information` VALUES ('4', '0', '', 'STU001', 'user1', '拍了今天给你发货哦！', '1', '2023-06-03 20:46:16.000000', '7');
INSERT INTO `df_user_information` VALUES ('5', '0', '这个自行车轮子尺寸多大？', 'user1', 'STU001', '我儿子15岁可以骑吗，他1米6了', '1', '2023-06-03 23:04:29.000000', '2');
INSERT INTO `df_user_information` VALUES ('6', '0', '', 'STU001', 'user1', '可以，轮子适合它！', '1', '2023-06-03 23:05:22.000000', '7');
INSERT INTO `df_user_information` VALUES ('7', '0', '', 'STU001', 'user1', '我想要两颗西柚', '1', '2023-06-06 14:27:06.467890', '7');
INSERT INTO `df_user_information` VALUES ('8', '0', '男款短袖', 'user1', 'STU001', '在吗在吗', '1', '2023-06-06 16:25:14.043488', '2');
INSERT INTO `df_user_information` VALUES ('9', '0', '', 'STU001', 'user1', '在的呀', '1', '2023-06-06 16:30:28.958829', '7');
INSERT INTO `df_user_information` VALUES ('10', '0', '我想要两颗西柚', 'user1', 'STU001', '这本书好看吗\r\n', '1', '2023-06-07 14:07:57.252904', '2');
INSERT INTO `df_user_information` VALUES ('11', '0', '榨汁机', 'zhenght', 'STU001', '榨汁机还有吗', '0', '2023-06-07 14:57:38.290838', '2');

-- ----------------------------
-- Table structure for df_user_userinfo
-- ----------------------------
DROP TABLE IF EXISTS `df_user_userinfo`;
CREATE TABLE `df_user_userinfo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `upwd` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uemail` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ushou` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uaddress` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uyoubian` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uphone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uage` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ucheck_passOrfail` tinyint(1) NOT NULL,
  `ulogo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uname_passOrfail` tinyint(1) NOT NULL,
  `upersonInf` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `urealname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `usex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uzhengjian_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uzhengjian_tel` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uzhengjian_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `df_user_userinfo_uemail_da079075_uniq` (`uemail`) USING BTREE,
  UNIQUE KEY `df_user_userinfo_uname_feb27ea0_uniq` (`uname`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of df_user_userinfo
-- ----------------------------
INSERT INTO `df_user_userinfo` VALUES ('1', '123456', '7c4a8d09ca3762af61e59520943dc26494f8941b', '11111111@qq.com', '王五', '广东江门', '000000', '12312341234', '23', '1', 'images/IMG_20223221.jpg', '1', '佛系小姐姐', '薇薇', '女', 'images/zhengjian_img/img-4746dcc90757a511c5e65e8ed5d1fd08.jpg', '234512123412341234', '身份证');
INSERT INTO `df_user_userinfo` VALUES ('2', 'STU001', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2222222@qq.com', '王嘉蔓', '广东揭阳', '000000', '12341234123', '21', '0', 'images/new_image_-_u1opz_rOq5V3f.jpg', '1', '请叫我物理课代表', 'Jack', '女', 'images/zhengjian_img/IMG_20200908_095453_JHFuswa.jpg', '123456123412241234', '身份证');
INSERT INTO `df_user_userinfo` VALUES ('5', '123aaa', '7c4a8d09ca3762af61e59520943dc26494f8941b', '33333@163.com', '', '', '', '', '', '0', 'default.jpg', '1', '', '', '', '', '', '');
INSERT INTO `df_user_userinfo` VALUES ('6', 'customer', '7c4a8d09ca3762af61e59520943dc26494f8941b', '4444444@qq.com', '', '', '', '', '', '0', 'default.jpg', '1', '', '', '', '', '', '');
INSERT INTO `df_user_userinfo` VALUES ('7', 'user1', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'test@126.com', '张三', '广东省汕头市龙湖区', 'test@1', '13511112222', '24', '1', 'images/8.jpg', '1', '我是一个快乐的程序员', '张三', '男', 'images/zhengjian_img/18.jpg', '513031199210213943', '大陆身份证');
INSERT INTO `df_user_userinfo` VALUES ('8', 'zhenght', '7c4a8d09ca3762af61e59520943dc26494f8941b', '1767912134@qq.com', '郑婷', '广东揭阳', '515434', '13002083001', '23', '0', 'images/new_image_-_b1qct.jpg', '1', 'HAHA', '', '女', '', '', '');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`) USING BTREE,
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1', '2023-06-03 22:05:15.000000', '1', '书籍', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('2', '2023-06-03 22:05:24.000000', '2', '家电', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('3', '2023-06-03 22:05:31.000000', '3', '衣物', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('4', '2023-06-03 22:05:39.000000', '4', '出行', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('5', '2023-06-03 22:05:46.000000', '5', '乐器', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('6', '2023-06-03 22:05:51.000000', '6', '智能', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('7', '2023-06-03 22:17:38.000000', '1', '123456', '2', '[{\"changed\": {\"fields\": [\"usex\", \"uage\", \"upersonInf\", \"ulogo\", \"urealname\", \"uzhengjian_type\", \"uzhengjian_tel\", \"uzhengjian_img\", \"ucheck_passOrfail\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('8', '2023-06-03 22:19:38.000000', '2', 'STU001', '2', '[{\"changed\": {\"fields\": [\"usex\", \"uage\", \"upersonInf\", \"ulogo\", \"urealname\", \"uzhengjian_type\", \"uzhengjian_tel\", \"uzhengjian_img\", \"ushou\", \"uaddress\", \"uyoubian\", \"uphone\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('9', '2023-06-03 22:28:23.000000', '1', '三国演义', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('10', '2023-06-03 22:33:47.000000', '2345678909876', '碎花裙', '1', '[{\"added\": {}}]', '17', '1');
INSERT INTO `django_admin_log` VALUES ('11', '2023-06-03 22:33:56.000000', '1', '三国演义', '1', '[{\"added\": {}}]', '16', '1');
INSERT INTO `django_admin_log` VALUES ('12', '2023-06-03 22:53:14.000000', '4', 'python编程', '1', '[{\"added\": {}}]', '6', '1');
INSERT INTO `django_admin_log` VALUES ('13', '2023-06-03 22:54:36.000000', '1', '三国演义', '2', '[{\"changed\": {\"fields\": [\"gpic\", \"gcontent\"]}}]', '6', '1');
INSERT INTO `django_admin_log` VALUES ('14', '2023-06-03 22:55:17.000000', '3', '裙子', '2', '[{\"changed\": {\"fields\": [\"gpic\", \"gcontent\"]}}]', '6', '1');
INSERT INTO `django_admin_log` VALUES ('15', '2023-06-03 22:55:30.000000', '2', '热水壶', '2', '[{\"changed\": {\"fields\": [\"gpic\", \"gcontent\"]}}]', '6', '1');
INSERT INTO `django_admin_log` VALUES ('16', '2023-06-03 22:55:58.000000', '1', '三国演义', '2', '[{\"changed\": {\"fields\": [\"gpic\"]}}]', '6', '1');
INSERT INTO `django_admin_log` VALUES ('17', '2023-06-03 23:15:09.000000', '1', '三国演义', '2', '[{\"changed\": {\"fields\": [\"gpic\"]}}]', '6', '1');
INSERT INTO `django_admin_log` VALUES ('18', '2023-06-03 23:15:23.000000', '4', 'python编程', '2', '[{\"changed\": {\"fields\": [\"gpic\"]}}]', '6', '1');
INSERT INTO `django_admin_log` VALUES ('19', '2023-06-03 23:15:35.000000', '3', '裙子', '2', '[{\"changed\": {\"fields\": [\"gpic\"]}}]', '6', '1');
INSERT INTO `django_admin_log` VALUES ('20', '2023-06-03 23:15:46.000000', '2', '热水壶', '2', '[{\"changed\": {\"fields\": [\"gpic\"]}}]', '6', '1');
INSERT INTO `django_admin_log` VALUES ('21', '2023-06-03 23:16:44.000000', '2', 'STU001', '2', '[{\"changed\": {\"fields\": [\"ulogo\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('22', '2023-06-03 20:31:49.000000', '7', 'user1', '2', '[{\"changed\": {\"fields\": [\"ucheck_passOrfail\"]}}]', '10', '1');

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('15', 'df_cart', 'cartinfo');
INSERT INTO `django_content_type` VALUES ('8', 'df_goods', 'contentchart');
INSERT INTO `django_content_type` VALUES ('9', 'df_goods', 'goodscontent');
INSERT INTO `django_content_type` VALUES ('6', 'df_goods', 'goodsinfo');
INSERT INTO `django_content_type` VALUES ('7', 'df_goods', 'typeinfo');
INSERT INTO `django_content_type` VALUES ('16', 'df_order', 'orderdetailinfo');
INSERT INTO `django_content_type` VALUES ('17', 'df_order', 'orderinfo');
INSERT INTO `django_content_type` VALUES ('11', 'df_user', 'goodsbrowser');
INSERT INTO `django_content_type` VALUES ('12', 'df_user', 'information');
INSERT INTO `django_content_type` VALUES ('13', 'df_user', 'tuihuoinfo');
INSERT INTO `django_content_type` VALUES ('10', 'df_user', 'userinfo');
INSERT INTO `django_content_type` VALUES ('14', 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2022-03-22 21:57:41.113511');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2022-03-22 21:57:43.787299');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2023-06-03 21:57:44.000000');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2023-06-03 21:57:44.000000');
INSERT INTO `django_migrations` VALUES ('5', 'contenttypes', '0002_remove_content_type_name', '2023-06-03 21:57:44.000000');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0002_alter_permission_name_max_length', '2023-06-03 21:57:44.000000');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0003_alter_user_email_max_length', '2023-06-03 21:57:44.000000');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0004_alter_user_username_opts', '2023-06-03 21:57:44.000000');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0005_alter_user_last_login_null', '2023-06-03 21:57:44.000000');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0006_require_contenttypes_0002', '2023-06-03 21:57:44.000000');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0007_alter_validators_add_error_messages', '2023-06-03 21:57:44.000000');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0008_alter_user_username_max_length', '2023-06-03 21:57:44.000000');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0009_alter_user_last_name_max_length', '2023-06-03 21:57:44.000000');
INSERT INTO `django_migrations` VALUES ('14', 'df_goods', '0001_initial', '2023-06-03 21:59:14.000000');
INSERT INTO `django_migrations` VALUES ('15', 'df_goods', '0002_auto_20220322_2157', '2023-06-03 21:59:14.000000');
INSERT INTO `django_migrations` VALUES ('16', 'df_user', '0001_initial', '2023-06-03 21:59:14.000000');
INSERT INTO `django_migrations` VALUES ('17', 'df_user', '0002_auto_20220322_2157', '2023-06-03 21:59:14.000000');
INSERT INTO `django_migrations` VALUES ('18', 'df_cart', '0001_initial', '2023-06-03 21:59:14.000000');
INSERT INTO `django_migrations` VALUES ('19', 'df_cart', '0002_auto_20220322_2157', '2023-06-03 21:59:14.000000');
INSERT INTO `django_migrations` VALUES ('20', 'df_order', '0001_initial', '2023-06-03 21:59:14.000000');
INSERT INTO `django_migrations` VALUES ('21', 'df_order', '0002_auto_20220322_2157', '2023-06-03 21:59:14.000000');
INSERT INTO `django_migrations` VALUES ('22', 'sessions', '0001_initial', '2023-06-03 21:59:14.000000');
INSERT INTO `django_migrations` VALUES ('23', 'admin', '0003_logentry_add_action_flag_choices', '2023-06-05 19:56:10.564782');
INSERT INTO `django_migrations` VALUES ('24', 'auth', '0010_alter_group_name_max_length', '2023-06-05 19:56:10.672034');
INSERT INTO `django_migrations` VALUES ('25', 'auth', '0011_update_proxy_permissions', '2023-06-05 19:56:10.692030');
INSERT INTO `django_migrations` VALUES ('26', 'df_goods', '0003_auto_20230603_1632', '2023-06-05 19:56:10.705089');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  KEY `django_session_expire_date_a5c62663` (`expire_date`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('2c3rh6wsy51m4wn3xcyg2dlg9y02jgnz', 'MDE0NjVkNDQ5N2ZlYjQ3MjdlZmNmZTdiZGZhOWQ0NGY2YmQyNDE5ODp7InZlcmlmeWNvZGUiOiJDZThqIiwidXNlcl9pZCI6MSwidXNlcl9uYW1lIjoiMTIzNDU2In0=', '2023-06-03 22:32:17.000000');
INSERT INTO `django_session` VALUES ('7y3lu8nbdiklr7nemypnc218lzdcts67', 'OTE2NmZjYmQ4NDkzOTRiMmU4MzI3YzY4MDA3NmFkNTVmMDVhZDE5ODp7InZlcmlmeWNvZGUiOiJiYTZ2IiwidXNlcl9pZCI6MiwidXNlcl9uYW1lIjoiU1RVMDAxIn0=', '2023-06-03 20:45:58.000000');
INSERT INTO `django_session` VALUES ('b3kmpt0ahayuaxpb1a507lb3fn2kwwze', 'M2U3NDBjMTQ3MmY2ODc2ZGUyZWYyMDVkMTViOTg3ZTI1N2QzNjcxZDp7InZlcmlmeWNvZGUiOiJzM25lIiwidXNlcl9pZCI6MiwidXNlcl9uYW1lIjoiU1RVMDAxIn0=', '2023-06-03 21:26:34.000000');
INSERT INTO `django_session` VALUES ('cfj9ma48ql8uohbxpmz8fa9ppbubr6ik', 'YzdhODYyOTBhYWNiOTgwMTcxNjU1NzFlOWFiZDc3NGRlMDNjYzYwZTp7InZlcmlmeWNvZGUiOiI1SDM2IiwidXNlcl9pZCI6MiwidXNlcl9uYW1lIjoiU1RVMDAxIn0=', '2023-06-03 17:33:58.000000');
INSERT INTO `django_session` VALUES ('ff2eumbnydhk267bnsih7rdj5na3m0en', 'MDA2MGQ2MGYxMmY4N2Q5NWU0OTc5Njk1MWJiZWNjYjE4MWExN2YyNzp7InZlcmlmeWNvZGUiOiJaOUk0In0=', '2023-06-03 23:24:50.000000');
INSERT INTO `django_session` VALUES ('n8f1hoovumlv70bn0vgwn3xaqxk5px3v', 'ODJkZTNjZWU5OTI5MGVhODMzMTM5MDQyN2Y4ZjBjNWZlM2FiYTBmZDp7InZlcmlmeWNvZGUiOiJzOG53In0=', '2023-06-18 22:15:36.928319');
INSERT INTO `django_session` VALUES ('ww02czbadrt061c8xvt3ewcyan7l0qjp', 'OGVkMmNiZTQ3OWU2YThkZDUwNmQyNzhmNDAwMWI3N2Q4ODZhMDA1MDp7InZlcmlmeWNvZGUiOiJZRzJZIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjZmNTkyNzY0MTA1MTI4MjVkN2MxYzJhMjkyOWI5YTg5MzQ3Y2JjNmEiLCJfbWVudXMiOiJbe1wibmFtZVwiOiBcIlxcdTU1NDZcXHU1NGMxXCIsIFwiaWNvblwiOiBcImZhciBmYS1jaXJjbGVcIiwgXCJtb2RlbHNcIjogW3tcIm5hbWVcIjogXCJcXHU1NTQ2XFx1NTRjMVwiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCIsIFwidXJsXCI6IFwiL2FkbWluL2RmX2dvb2RzL2dvb2RzaW5mby9cIiwgXCJhZGRVcmxcIjogXCIvYWRtaW4vZGZfZ29vZHMvZ29vZHNpbmZvL2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIlxcdTU1NDZcXHU1NGMxXCIsIFwiaWNvblwiOiBcImZhciBmYS1jaXJjbGVcIn0sIHtcIm5hbWVcIjogXCJcXHU1NTQ2XFx1NTRjMVwiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCJ9XSwgXCJlaWRcIjogMTAwMn0sIHtcIm5hbWVcIjogXCJcXHU1NTQ2XFx1NTRjMVxcdTdjN2JcXHU1NzhiXCIsIFwiaWNvblwiOiBcImZhciBmYS1jaXJjbGVcIiwgXCJ1cmxcIjogXCIvYWRtaW4vZGZfZ29vZHMvdHlwZWluZm8vXCIsIFwiYWRkVXJsXCI6IFwiL2FkbWluL2RmX2dvb2RzL3R5cGVpbmZvL2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIlxcdTU1NDZcXHU1NGMxXCIsIFwiaWNvblwiOiBcImZhciBmYS1jaXJjbGVcIn0sIHtcIm5hbWVcIjogXCJcXHU1NTQ2XFx1NTRjMVxcdTdjN2JcXHU1NzhiXCIsIFwiaWNvblwiOiBcImZhciBmYS1jaXJjbGVcIn1dLCBcImVpZFwiOiAxMDAzfSwge1wibmFtZVwiOiBcIlxcdTU1NDZcXHU1NGMxXFx1OGJjNFxcdThiYmFcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwiLCBcInVybFwiOiBcIi9hZG1pbi9kZl9nb29kcy9nb29kc2NvbnRlbnQvXCIsIFwiYWRkVXJsXCI6IFwiL2FkbWluL2RmX2dvb2RzL2dvb2RzY29udGVudC9hZGQvXCIsIFwiYnJlYWRjcnVtYnNcIjogW3tcIm5hbWVcIjogXCJcXHU1NTQ2XFx1NTRjMVwiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCJ9LCB7XCJuYW1lXCI6IFwiXFx1NTU0NlxcdTU0YzFcXHU4YmM0XFx1OGJiYVwiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCJ9XSwgXCJlaWRcIjogMTAwNH1dLCBcIl93ZWlnaHRcIjogMCwgXCJlaWRcIjogMTAwMX0sIHtcIm5hbWVcIjogXCJcXHU3NTI4XFx1NjIzN1wiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCIsIFwibW9kZWxzXCI6IFt7XCJuYW1lXCI6IFwiXFx1NzUyOFxcdTYyMzdcXHU0ZmUxXFx1NjA2ZlwiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCIsIFwidXJsXCI6IFwiL2FkbWluL2RmX3VzZXIvdXNlcmluZm8vXCIsIFwiYWRkVXJsXCI6IFwiL2FkbWluL2RmX3VzZXIvdXNlcmluZm8vYWRkL1wiLCBcImJyZWFkY3J1bWJzXCI6IFt7XCJuYW1lXCI6IFwiXFx1NzUyOFxcdTYyMzdcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwifSwge1wibmFtZVwiOiBcIlxcdTc1MjhcXHU2MjM3XFx1NGZlMVxcdTYwNmZcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwifV0sIFwiZWlkXCI6IDEwMDZ9LCB7XCJuYW1lXCI6IFwiXFx1NzUyOFxcdTYyMzdcXHU2ZDRmXFx1ODljOFxcdThiYjBcXHU1ZjU1XCIsIFwiaWNvblwiOiBcImZhciBmYS1jaXJjbGVcIiwgXCJ1cmxcIjogXCIvYWRtaW4vZGZfdXNlci9nb29kc2Jyb3dzZXIvXCIsIFwiYWRkVXJsXCI6IFwiL2FkbWluL2RmX3VzZXIvZ29vZHNicm93c2VyL2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIlxcdTc1MjhcXHU2MjM3XCIsIFwiaWNvblwiOiBcImZhciBmYS1jaXJjbGVcIn0sIHtcIm5hbWVcIjogXCJcXHU3NTI4XFx1NjIzN1xcdTZkNGZcXHU4OWM4XFx1OGJiMFxcdTVmNTVcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwifV0sIFwiZWlkXCI6IDEwMDd9LCB7XCJuYW1lXCI6IFwiXFx1OTAwMFxcdTZiM2VcXHU4YmEyXFx1NTM1NVwiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCIsIFwidXJsXCI6IFwiL2FkbWluL2RmX3VzZXIvdHVpaHVvaW5mby9cIiwgXCJhZGRVcmxcIjogXCIvYWRtaW4vZGZfdXNlci90dWlodW9pbmZvL2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIlxcdTc1MjhcXHU2MjM3XCIsIFwiaWNvblwiOiBcImZhciBmYS1jaXJjbGVcIn0sIHtcIm5hbWVcIjogXCJcXHU5MDAwXFx1NmIzZVxcdThiYTJcXHU1MzU1XCIsIFwiaWNvblwiOiBcImZhciBmYS1jaXJjbGVcIn1dLCBcImVpZFwiOiAxMDA4fV0sIFwiX3dlaWdodFwiOiAxLCBcImVpZFwiOiAxMDA1fSwge1wibmFtZVwiOiBcIlxcdThiYTJcXHU1MzU1XCIsIFwiaWNvblwiOiBcImZhciBmYS1jaXJjbGVcIiwgXCJtb2RlbHNcIjogW3tcIm5hbWVcIjogXCJcXHU0ZWQ4XFx1NmIzZVxcdThiYTJcXHU1MzU1XCIsIFwiaWNvblwiOiBcImZhciBmYS1jaXJjbGVcIiwgXCJ1cmxcIjogXCIvYWRtaW4vZGZfb3JkZXIvb3JkZXJkZXRhaWxpbmZvL1wiLCBcImFkZFVybFwiOiBcIi9hZG1pbi9kZl9vcmRlci9vcmRlcmRldGFpbGluZm8vYWRkL1wiLCBcImJyZWFkY3J1bWJzXCI6IFt7XCJuYW1lXCI6IFwiXFx1OGJhMlxcdTUzNTVcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwifSwge1wibmFtZVwiOiBcIlxcdTRlZDhcXHU2YjNlXFx1OGJhMlxcdTUzNTVcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwifV0sIFwiZWlkXCI6IDEwMTB9LCB7XCJuYW1lXCI6IFwiXFx1NjcyYVxcdTRlZDhcXHU2YjNlXFx1OGJhMlxcdTUzNTVcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwiLCBcInVybFwiOiBcIi9hZG1pbi9kZl9vcmRlci9vcmRlcmluZm8vXCIsIFwiYWRkVXJsXCI6IFwiL2FkbWluL2RmX29yZGVyL29yZGVyaW5mby9hZGQvXCIsIFwiYnJlYWRjcnVtYnNcIjogW3tcIm5hbWVcIjogXCJcXHU4YmEyXFx1NTM1NVwiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCJ9LCB7XCJuYW1lXCI6IFwiXFx1NjcyYVxcdTRlZDhcXHU2YjNlXFx1OGJhMlxcdTUzNTVcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwifV0sIFwiZWlkXCI6IDEwMTF9XSwgXCJfd2VpZ2h0XCI6IDIsIFwiZWlkXCI6IDEwMDl9LCB7XCJuYW1lXCI6IFwiXFx1OGQyZFxcdTcyNjlcXHU4ZjY2XCIsIFwiaWNvblwiOiBcImZhciBmYS1jaXJjbGVcIiwgXCJtb2RlbHNcIjogW3tcIm5hbWVcIjogXCJcXHU4ZDJkXFx1NzI2OVxcdThmNjZcIiwgXCJpY29uXCI6IFwiZmFyIGZhLWNpcmNsZVwiLCBcInVybFwiOiBcIi9hZG1pbi9kZl9jYXJ0L2NhcnRpbmZvL1wiLCBcImFkZFVybFwiOiBcIi9hZG1pbi9kZl9jYXJ0L2NhcnRpbmZvL2FkZC9cIiwgXCJicmVhZGNydW1ic1wiOiBbe1wibmFtZVwiOiBcIlxcdThkMmRcXHU3MjY5XFx1OGY2NlwiLCBcImljb25cIjogXCJmYXIgZmEtY2lyY2xlXCJ9LCB7XCJuYW1lXCI6IFwiXFx1OGQyZFxcdTcyNjlcXHU4ZjY2XCIsIFwiaWNvblwiOiBcImZhciBmYS1jaXJjbGVcIn1dLCBcImVpZFwiOiAxMDEzfV0sIFwiX3dlaWdodFwiOiAzLCBcImVpZFwiOiAxMDEyfSwge1wibmFtZVwiOiBcIlxcdThiYTRcXHU4YmMxXFx1NTQ4Y1xcdTYzODhcXHU2NzQzXCIsIFwiaWNvblwiOiBcImZhcyBmYS1zaGllbGQtYWx0XCIsIFwibW9kZWxzXCI6IFt7XCJuYW1lXCI6IFwiXFx1NzUyOFxcdTYyMzdcIiwgXCJpY29uXCI6IFwiZmFyIGZhLXVzZXJcIiwgXCJ1cmxcIjogXCIvYWRtaW4vYXV0aC91c2VyL1wiLCBcImFkZFVybFwiOiBcIi9hZG1pbi9hdXRoL3VzZXIvYWRkL1wiLCBcImJyZWFkY3J1bWJzXCI6IFt7XCJuYW1lXCI6IFwiXFx1OGJhNFxcdThiYzFcXHU1NDhjXFx1NjM4OFxcdTY3NDNcIiwgXCJpY29uXCI6IFwiZmFzIGZhLXNoaWVsZC1hbHRcIn0sIHtcIm5hbWVcIjogXCJcXHU3NTI4XFx1NjIzN1wiLCBcImljb25cIjogXCJmYXIgZmEtdXNlclwifV0sIFwiZWlkXCI6IDEwMTV9LCB7XCJuYW1lXCI6IFwiXFx1N2VjNFwiLCBcImljb25cIjogXCJmYXMgZmEtdXNlcnMtY29nXCIsIFwidXJsXCI6IFwiL2FkbWluL2F1dGgvZ3JvdXAvXCIsIFwiYWRkVXJsXCI6IFwiL2FkbWluL2F1dGgvZ3JvdXAvYWRkL1wiLCBcImJyZWFkY3J1bWJzXCI6IFt7XCJuYW1lXCI6IFwiXFx1OGJhNFxcdThiYzFcXHU1NDhjXFx1NjM4OFxcdTY3NDNcIiwgXCJpY29uXCI6IFwiZmFzIGZhLXNoaWVsZC1hbHRcIn0sIHtcIm5hbWVcIjogXCJcXHU3ZWM0XCIsIFwiaWNvblwiOiBcImZhcyBmYS11c2Vycy1jb2dcIn1dLCBcImVpZFwiOiAxMDE2fV0sIFwiX3dlaWdodFwiOiA0LCBcImVpZFwiOiAxMDE0fV0iLCJ1c2VyX2lkIjo3LCJ1c2VyX25hbWUiOiJ1c2VyMSJ9', '2023-06-03 23:01:15.000000');
INSERT INTO `django_session` VALUES ('yr32ydm9kq16hdjm9ekbxm8d0juayq6i', 'MTU3ZWMwNzdmZGU0NjIxZjFhZjQwZjY3ZmE5MWFmMGNlZDYzNzljMzp7InZlcmlmeWNvZGUiOiI0dXFTIiwidXNlcl9pZCI6MiwidXNlcl9uYW1lIjoiU1RVMDAxIn0=', '2023-06-21 14:59:31.537252');
INSERT INTO `django_session` VALUES ('zt3m4a7bjby6rtstyq6nknbdk7dk2ssn', 'YTcxYjI0ZTkwOWQ5M2U2MWE0ODczMTQxZGE5ODM5NjE5ZDQ3NGMzNzp7InZlcmlmeWNvZGUiOiJzM1RzIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImM3YmI2MGNiZGI1YzYxYTc3ZjA1ZjU5ZGNiMDQ3NDlmZTYxMzFmZmYifQ==', '2023-06-19 10:01:05.500678');
