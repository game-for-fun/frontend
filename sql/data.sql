/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50022
Source Host           : localhost:3306
Source Database       : csl

Target Server Type    : MYSQL
Target Server Version : 50022
File Encoding         : 65001

Date: 2016-06-04 11:32:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for card
-- ----------------------------
DROP TABLE IF EXISTS `card`;
CREATE TABLE `card` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `character_id` int(11) default NULL,
  `character_name` varchar(255) default NULL,
  `character_lv` int(11) default NULL,
  `character_stars` int(11) default NULL,
  `character_pieces` int(11) default NULL,
  `character_pic` varchar(255) default NULL,
  `score` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of card
-- ----------------------------
INSERT INTO `card` VALUES ('1', '3', '5', '沙鲁', '1', '1', '0', '/img/role/shalu.jpg', '1000');
INSERT INTO `card` VALUES ('2', '2', '1', '孙悟空', '1', '1', '30', '/img/role/sunwukong.jpg', '1000');
INSERT INTO `card` VALUES ('3', '2', '6', '贝吉塔', '1', '1', '0', '/img/role/beijita.jpg', '1000');
INSERT INTO `card` VALUES ('4', '2', '10', '布尔玛', '1', '1', '10', '/img/role/buerma.jpg', '1000');
INSERT INTO `card` VALUES ('5', '1', '1', '孙悟空', '1', '2', '106', '/img/role/sunwukong.jpg', '1000');
INSERT INTO `card` VALUES ('6', '5', '6', '贝吉塔', '1', '1', '0', '/img/role/beijita.jpg', '1000');
INSERT INTO `card` VALUES ('7', '5', '9', '小林', '1', '1', '0', '/img/role/xiaolin.jpg', '1000');
INSERT INTO `card` VALUES ('8', '5', '3', '丹迪', '1', '1', '6', '/img/role/dandi.jpg', '1000');
INSERT INTO `card` VALUES ('9', '5', '1', '孙悟空', '1', '1', '0', '/img/role/sunwukong.jpg', '1000');
INSERT INTO `card` VALUES ('10', '5', '7', '拉蒂兹', '1', '1', '3', '/img/role/ladizi.jpg', '1000');
INSERT INTO `card` VALUES ('11', '5', '5', '沙鲁', '1', '1', '3', '/img/role/shalu.jpg', '1000');
INSERT INTO `card` VALUES ('12', '5', '8', '天津饭', '1', '1', '0', '/img/role/tianjinfan.jpg', '1000');
INSERT INTO `card` VALUES ('13', '1', '10', '布尔玛', '1', '2', '20', '/img/role/buerma.jpg', '1000');
INSERT INTO `card` VALUES ('14', '1', '6', '贝吉塔', '1', '2', '0', '/img/role/beijita.jpg', '1000');
INSERT INTO `card` VALUES ('15', '1', '2', '弗利萨', '1', '2', '60', '/img/role/fulisa.jpg', '1000');
INSERT INTO `card` VALUES ('16', '1', '7', '拉蒂兹', '1', '2', '20', '/img/role/ladizi.jpg', '1000');
INSERT INTO `card` VALUES ('17', '1', '4', '孙悟饭', '1', '2', '120', '/img/role/sunwufan.jpg', '1000');
INSERT INTO `card` VALUES ('18', '1', '9', '小林', '1', '2', '40', '/img/role/xiaolin.jpg', '1000');
INSERT INTO `card` VALUES ('19', '1', '8', '天津饭', '1', '2', '20', '/img/role/tianjinfan.jpg', '1000');
INSERT INTO `card` VALUES ('20', '1', '5', '沙鲁', '1', '2', '80', '/img/role/shalu.jpg', '1000');
INSERT INTO `card` VALUES ('21', '1', '3', '丹迪', '1', '2', '0', '/img/role/dandi.jpg', '1000');

-- ----------------------------
-- Table structure for characters
-- ----------------------------
DROP TABLE IF EXISTS `characters`;
CREATE TABLE `characters` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `age` int(11) default NULL,
  `skill_id` varchar(255) default NULL,
  `destiny_id` varchar(255) default NULL,
  `pas` int(11) default NULL COMMENT '传球(0~1)',
  `sht` int(11) default NULL COMMENT '射门',
  `phy` int(11) default NULL COMMENT '力量',
  `def` int(11) default NULL COMMENT '防守',
  `spd` int(11) default NULL COMMENT '速度',
  `dri` int(11) default NULL COMMENT '盘带',
  `postion` varchar(255) default NULL COMMENT '位置',
  `pos_all` varchar(255) default NULL COMMENT '各位置适应度',
  `foot` char(1) default NULL COMMENT '左右足',
  `desc` varchar(255) default NULL,
  `pic` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of characters
-- ----------------------------
INSERT INTO `characters` VALUES ('1', '孙悟空', null, null, null, null, null, null, null, null, null, '物理输出', null, null, null, '/img/role/sunwukong.jpg');
INSERT INTO `characters` VALUES ('2', '弗利萨', null, null, null, null, null, null, null, null, null, null, null, null, null, '/img/role/fulisa.jpg');
INSERT INTO `characters` VALUES ('3', '丹迪 ', null, null, null, null, null, null, null, null, null, null, null, null, null, '/img/role/dandi.jpg');
INSERT INTO `characters` VALUES ('4', '孙悟饭', null, null, null, null, null, null, null, null, null, null, null, null, null, '/img/role/sunwufan.jpg');
INSERT INTO `characters` VALUES ('5', '沙鲁', null, null, null, null, null, null, null, null, null, null, null, null, null, '/img/role/shalu.jpg');
INSERT INTO `characters` VALUES ('6', '贝吉塔', null, null, null, null, null, null, null, null, null, null, null, null, null, '/img/role/beijita.jpg');
INSERT INTO `characters` VALUES ('7', '拉蒂兹', null, null, null, null, null, null, null, null, null, null, null, null, null, '/img/role/ladizi.jpg');
INSERT INTO `characters` VALUES ('8', '天津饭', null, null, null, null, null, null, null, null, null, null, null, null, null, '/img/role/tianjinfan.jpg');
INSERT INTO `characters` VALUES ('9', '小林', null, null, null, null, null, null, null, null, null, null, null, null, null, '/img/role/xiaolin.jpg');
INSERT INTO `characters` VALUES ('10', '布尔玛', null, null, null, null, null, null, null, null, null, null, null, null, null, '/img/role/buerma.jpg');

-- ----------------------------
-- Table structure for destiny
-- ----------------------------
DROP TABLE IF EXISTS `destiny`;
CREATE TABLE `destiny` (
  `id` int(11) NOT NULL,
  `desc` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of destiny
-- ----------------------------

-- ----------------------------
-- Table structure for huodong
-- ----------------------------
DROP TABLE IF EXISTS `huodong`;
CREATE TABLE `huodong` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `type` int(11) default NULL COMMENT '1领取龙石 2',
  `status` int(11) default '0' COMMENT '0未参加',
  `user_status` varchar(255) default NULL,
  `remark` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huodong
-- ----------------------------
INSERT INTO `huodong` VALUES ('1', '1', '1', '1', '0,0,0,0', '领取龙石');
INSERT INTO `huodong` VALUES ('2', '1', '2', '0', '0,0,0,0', '翻牌');
INSERT INTO `huodong` VALUES ('3', '2', '1', '1', '0,0,0,0', '领取龙石');
INSERT INTO `huodong` VALUES ('4', '2', '2', '0', '0,0,0,0', '翻牌');
INSERT INTO `huodong` VALUES ('5', '3', '1', '1', '0,0,0,0', '领取龙石');
INSERT INTO `huodong` VALUES ('6', '3', '2', '0', '0,0,0,0', '翻牌');
INSERT INTO `huodong` VALUES ('7', '4', '1', '1', '0,0,0,0', '领取龙石');
INSERT INTO `huodong` VALUES ('8', '4', '2', '0', '0,0,0,0', '翻牌');
INSERT INTO `huodong` VALUES ('9', '5', '1', '1', '0,0,0,0', '领取龙石');
INSERT INTO `huodong` VALUES ('10', '5', '2', '0', '0,0,0,0', '翻牌');

-- ----------------------------
-- Table structure for lottery
-- ----------------------------
DROP TABLE IF EXISTS `lottery`;
CREATE TABLE `lottery` (
  `id` int(11) NOT NULL,
  `character_name` varchar(255) default NULL,
  `rate` double default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lottery
-- ----------------------------
INSERT INTO `lottery` VALUES ('1', '孙悟空', '10');
INSERT INTO `lottery` VALUES ('2', '弗利萨', '10');
INSERT INTO `lottery` VALUES ('3', '丹迪', '10');
INSERT INTO `lottery` VALUES ('4', '孙悟饭', '10');
INSERT INTO `lottery` VALUES ('5', '沙鲁', '10');
INSERT INTO `lottery` VALUES ('6', '贝吉塔', '10');
INSERT INTO `lottery` VALUES ('7', '拉蒂兹', '10');
INSERT INTO `lottery` VALUES ('8', '天津饭', '10');
INSERT INTO `lottery` VALUES ('9', '小林', '10');
INSERT INTO `lottery` VALUES ('10', '布尔玛', '10');

-- ----------------------------
-- Table structure for lottery_result
-- ----------------------------
DROP TABLE IF EXISTS `lottery_result`;
CREATE TABLE `lottery_result` (
  `id` int(11) NOT NULL auto_increment,
  `user_name` varchar(255) default NULL,
  `character_name` varchar(255) default NULL,
  `create_time` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lottery_result
-- ----------------------------
INSERT INTO `lottery_result` VALUES ('1', 'aaron', '沙鲁', '2016-05-18 22:04:53');
INSERT INTO `lottery_result` VALUES ('2', '尸兄', '小林', '2016-05-18 22:43:00');
INSERT INTO `lottery_result` VALUES ('3', '尸兄', '丹迪', '2016-05-18 22:43:35');
INSERT INTO `lottery_result` VALUES ('4', '尸兄', '孙悟空', '2016-05-18 22:43:44');
INSERT INTO `lottery_result` VALUES ('5', '尸兄', '拉蒂兹', '2016-05-18 22:43:54');
INSERT INTO `lottery_result` VALUES ('6', '尸兄', '丹迪', '2016-05-18 22:44:04');
INSERT INTO `lottery_result` VALUES ('7', '尸兄', '沙鲁', '2016-05-18 22:44:13');
INSERT INTO `lottery_result` VALUES ('8', '尸兄', '拉蒂兹', '2016-05-18 22:44:22');
INSERT INTO `lottery_result` VALUES ('9', '尸兄', '丹迪', '2016-05-18 22:44:30');
INSERT INTO `lottery_result` VALUES ('10', '尸兄', '沙鲁', '2016-05-18 22:44:39');
INSERT INTO `lottery_result` VALUES ('11', '尸兄', '天津饭', '2016-05-18 22:44:48');
INSERT INTO `lottery_result` VALUES ('12', '我不是托', '布尔玛', '2016-05-20 16:44:57');
INSERT INTO `lottery_result` VALUES ('13', '我不是托', '孙悟空', '2016-05-20 16:52:11');
INSERT INTO `lottery_result` VALUES ('14', '我不是托', '弗利萨', '2016-05-20 16:57:12');
INSERT INTO `lottery_result` VALUES ('15', '我不是托', '拉蒂兹', '2016-05-20 17:00:55');
INSERT INTO `lottery_result` VALUES ('16', '我不是托', '孙悟饭', '2016-05-20 17:01:06');
INSERT INTO `lottery_result` VALUES ('17', '我不是托', '小林', '2016-05-20 17:05:32');
INSERT INTO `lottery_result` VALUES ('18', '我不是托', '小林', '2016-05-20 17:05:52');
INSERT INTO `lottery_result` VALUES ('19', '我不是托', '贝吉塔', '2016-05-20 17:10:54');
INSERT INTO `lottery_result` VALUES ('20', '我不是托', '贝吉塔', '2016-05-20 17:12:05');
INSERT INTO `lottery_result` VALUES ('21', '我不是托', '拉蒂兹', '2016-05-20 17:13:25');
INSERT INTO `lottery_result` VALUES ('22', '我不是托', '弗利萨', '2016-05-20 17:14:23');
INSERT INTO `lottery_result` VALUES ('23', '我不是托', '天津饭', '2016-05-20 17:15:28');
INSERT INTO `lottery_result` VALUES ('24', '我不是托', '天津饭', '2016-05-20 17:15:47');
INSERT INTO `lottery_result` VALUES ('25', '我不是托', '沙鲁', '2016-05-20 17:18:41');
INSERT INTO `lottery_result` VALUES ('26', '我不是托', '孙悟饭', '2016-05-20 17:22:36');
INSERT INTO `lottery_result` VALUES ('27', '我不是托', '孙悟饭', '2016-05-20 17:22:47');
INSERT INTO `lottery_result` VALUES ('28', '我不是托', '孙悟饭', '2016-05-20 17:22:55');
INSERT INTO `lottery_result` VALUES ('29', '我不是托', '孙悟饭', '2016-05-20 17:22:56');
INSERT INTO `lottery_result` VALUES ('30', '我不是托', '孙悟饭', '2016-05-20 17:23:13');
INSERT INTO `lottery_result` VALUES ('31', '我不是托', '孙悟饭', '2016-05-20 17:23:26');
INSERT INTO `lottery_result` VALUES ('32', '我不是托', '孙悟空', '2016-05-20 17:24:23');
INSERT INTO `lottery_result` VALUES ('33', '我不是托', '孙悟空', '2016-05-20 17:24:31');
INSERT INTO `lottery_result` VALUES ('34', '我不是托', '孙悟空', '2016-05-20 17:24:40');
INSERT INTO `lottery_result` VALUES ('35', '我不是托', '孙悟空', '2016-05-20 17:30:09');
INSERT INTO `lottery_result` VALUES ('36', '我不是托', '丹迪', '2016-05-20 17:32:34');
INSERT INTO `lottery_result` VALUES ('37', '我不是托', '孙悟饭', '2016-05-20 17:32:44');
INSERT INTO `lottery_result` VALUES ('38', '我不是托', '孙悟饭', '2016-05-20 17:32:52');
INSERT INTO `lottery_result` VALUES ('39', '我不是托', '沙鲁', '2016-05-20 17:33:01');
INSERT INTO `lottery_result` VALUES ('40', '我不是托', '拉蒂兹', '2016-05-20 17:33:10');
INSERT INTO `lottery_result` VALUES ('41', '我不是托', '布尔玛', '2016-05-20 17:33:18');
INSERT INTO `lottery_result` VALUES ('42', '我不是托', '天津饭', '2016-05-20 17:33:27');
INSERT INTO `lottery_result` VALUES ('43', '我不是托', '布尔玛', '2016-05-20 17:33:36');
INSERT INTO `lottery_result` VALUES ('44', '我不是托', '丹迪', '2016-05-20 17:33:45');
INSERT INTO `lottery_result` VALUES ('45', '我不是托', '小林', '2016-05-20 17:33:54');
INSERT INTO `lottery_result` VALUES ('46', '我不是托', '拉蒂兹', '2016-05-22 10:50:24');
INSERT INTO `lottery_result` VALUES ('47', '我不是托', '天津饭', '2016-05-22 10:50:31');
INSERT INTO `lottery_result` VALUES ('48', '我不是托', '孙悟空', '2016-05-22 10:52:36');
INSERT INTO `lottery_result` VALUES ('49', '我不是托', '弗利萨', '2016-05-22 11:15:08');
INSERT INTO `lottery_result` VALUES ('50', '我不是托', '孙悟空', '2016-05-22 11:25:15');
INSERT INTO `lottery_result` VALUES ('51', '我不是托', '弗利萨', '2016-05-22 11:25:27');
INSERT INTO `lottery_result` VALUES ('52', '我不是托', '弗利萨', '2016-05-22 11:25:36');
INSERT INTO `lottery_result` VALUES ('53', '我不是托', '弗利萨', '2016-05-22 11:26:33');
INSERT INTO `lottery_result` VALUES ('54', '我不是托', '孙悟空', '2016-05-22 11:26:45');
INSERT INTO `lottery_result` VALUES ('55', '我不是托', '丹迪', '2016-05-22 15:57:59');
INSERT INTO `lottery_result` VALUES ('56', '我不是托', '小林', '2016-05-22 15:58:10');
INSERT INTO `lottery_result` VALUES ('57', '我不是托', '孙悟空', '2016-05-22 15:58:18');
INSERT INTO `lottery_result` VALUES ('58', '我不是托', '小林', '2016-05-22 15:58:27');

-- ----------------------------
-- Table structure for online_user
-- ----------------------------
DROP TABLE IF EXISTS `online_user`;
CREATE TABLE `online_user` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `last_login_time` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of online_user
-- ----------------------------
INSERT INTO `online_user` VALUES ('1', '1', '2016-05-20 17:36:03');
INSERT INTO `online_user` VALUES ('2', '1', '2016-05-21 15:43:53');
INSERT INTO `online_user` VALUES ('3', '2', '2016-05-20 18:11:44');
INSERT INTO `online_user` VALUES ('4', '1', '2016-05-22 16:35:14');

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question
-- ----------------------------

-- ----------------------------
-- Table structure for skill
-- ----------------------------
DROP TABLE IF EXISTS `skill`;
CREATE TABLE `skill` (
  `id` int(11) NOT NULL,
  `name` varchar(255) default NULL,
  `desc` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of skill
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `user_name` varchar(255) default NULL COMMENT '用户名',
  `nick_name` varchar(255) default NULL COMMENT '昵称',
  `vip` int(11) default NULL,
  `level` int(11) default '1' COMMENT '等级',
  `money` int(11) default NULL COMMENT '金币',
  `rmb` int(11) default NULL COMMENT '龙石',
  `score` int(11) default '0' COMMENT '战力',
  `user_img` varchar(255) default NULL COMMENT '头像',
  `regist_time` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '我不是托', '1', '1', '0', '12560', '0', '/img/role/buerma.jpg', '2016-05-18 21:55:40');
INSERT INTO `user` VALUES ('2', 'moveal', '堂堂夹心饼', '0', '1', '0', '3366', '0', '/img/role/beijita.jpg', '2016-05-18 22:01:01');
INSERT INTO `user` VALUES ('3', 'aaron', 'aaron', '0', '1', '0', '0', '0', '/img/role/defaultImg1.jpg', '2016-05-18 22:04:36');
INSERT INTO `user` VALUES ('4', '123456789', '啦啦啦', '0', '1', '0', '2000', '0', '/img/role/defaultImg1.jpg', '2016-05-18 22:20:26');
INSERT INTO `user` VALUES ('5', '1234567', '尸兄', '0', '1', '0', '114', '0', '/img/role/sunwukong.jpg', '2016-05-18 22:21:00');

-- ----------------------------
-- Table structure for user_rmb_record
-- ----------------------------
DROP TABLE IF EXISTS `user_rmb_record`;
CREATE TABLE `user_rmb_record` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `character_pic` varchar(255) default NULL,
  `pic_index` int(11) default NULL,
  `huodong_type` int(11) default NULL COMMENT '1.领取 2.翻牌 6.注册 7.登录',
  `get_rmb` varchar(255) default NULL,
  `create_time` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_rmb_record
-- ----------------------------
INSERT INTO `user_rmb_record` VALUES ('1', '1', null, '0', '6', '+2000', '2016-05-18 21:55:40');
INSERT INTO `user_rmb_record` VALUES ('2', '2', null, '0', '6', '+2000', '2016-05-18 22:01:01');
INSERT INTO `user_rmb_record` VALUES ('3', '3', null, '0', '6', '+2000', '2016-05-18 22:04:36');
INSERT INTO `user_rmb_record` VALUES ('4', '2', null, '0', '0', '+10', '2016-05-18 22:12:40');
INSERT INTO `user_rmb_record` VALUES ('5', '2', null, '0', '0', '+58', '2016-05-18 22:12:46');
INSERT INTO `user_rmb_record` VALUES ('6', '2', null, '0', '0', '+132', '2016-05-18 22:12:52');
INSERT INTO `user_rmb_record` VALUES ('7', '2', null, '0', '0', '+195', '2016-05-18 22:12:58');
INSERT INTO `user_rmb_record` VALUES ('8', '2', '/img/role/sunwukong.jpg', '0', '2', '-0', '2016-05-18 22:13:06');
INSERT INTO `user_rmb_record` VALUES ('9', '2', '/img/role/beijita.jpg', '1', '2', '-50', '2016-05-18 22:15:14');
INSERT INTO `user_rmb_record` VALUES ('10', '2', '/img/role/buerma.jpg', '2', '2', '-100', '2016-05-18 22:15:16');
INSERT INTO `user_rmb_record` VALUES ('11', '4', null, '0', '6', '+2000', '2016-05-18 22:20:26');
INSERT INTO `user_rmb_record` VALUES ('12', '5', null, '0', '6', '+2000', '2016-05-18 22:21:00');
INSERT INTO `user_rmb_record` VALUES ('13', '1', '/img/role/sunwukong.jpg', '1', '2', '-0', '2016-05-18 22:41:20');
INSERT INTO `user_rmb_record` VALUES ('14', '5', null, '0', '0', '+143', '2016-05-18 22:42:33');
INSERT INTO `user_rmb_record` VALUES ('15', '5', null, '0', '0', '+83', '2016-05-18 22:42:34');
INSERT INTO `user_rmb_record` VALUES ('16', '5', null, '0', '0', '+28', '2016-05-18 22:42:35');
INSERT INTO `user_rmb_record` VALUES ('17', '5', null, '0', '0', '+60', '2016-05-18 22:42:37');
INSERT INTO `user_rmb_record` VALUES ('18', '5', '/img/role/beijita.jpg', '1', '2', '-0', '2016-05-18 22:42:45');
INSERT INTO `user_rmb_record` VALUES ('19', '1', null, '0', '0', '+125', '2016-05-18 23:47:06');
INSERT INTO `user_rmb_record` VALUES ('20', '1', null, '0', '0', '+200', '2016-05-18 23:47:06');
INSERT INTO `user_rmb_record` VALUES ('21', '1', null, '0', '0', '+35', '2016-05-18 23:47:07');
INSERT INTO `user_rmb_record` VALUES ('22', '1', null, '0', '0', '+145', '2016-05-18 23:47:07');
INSERT INTO `user_rmb_record` VALUES ('23', '1', '/img/role/buerma.jpg', '2', '2', '-50', '2016-05-18 23:47:14');
INSERT INTO `user_rmb_record` VALUES ('24', '2', '/img/role/sunwukong.jpg', '3', '2', '-150', '2016-05-18 23:48:55');
INSERT INTO `user_rmb_record` VALUES ('25', '2', null, '0', '0', '+130', '2016-05-19 17:59:14');
INSERT INTO `user_rmb_record` VALUES ('26', '2', null, '0', '0', '+49', '2016-05-19 17:59:20');
INSERT INTO `user_rmb_record` VALUES ('27', '2', '/img/role/buerma.jpg', '0', '2', '-0', '2016-05-19 17:59:28');
INSERT INTO `user_rmb_record` VALUES ('28', '2', null, '0', '0', '+92', '2016-05-20 07:59:56');
INSERT INTO `user_rmb_record` VALUES ('29', '1', '/img/role/beijita.jpg', '0', '2', '-0', '2016-05-20 09:27:34');
INSERT INTO `user_rmb_record` VALUES ('30', '1', null, '0', '7', '+1000', '2016-05-20 15:43:01');
INSERT INTO `user_rmb_record` VALUES ('31', '1', null, '0', '7', '+1000', '2016-05-21 15:43:53');
INSERT INTO `user_rmb_record` VALUES ('32', '2', null, '0', '7', '+1000', '2016-05-20 18:03:00');
INSERT INTO `user_rmb_record` VALUES ('33', '1', null, '0', '7', '+1000', '2016-05-22 10:50:17');
