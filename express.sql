/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50090
Source Host           : localhost:3306
Source Database       : express

Target Server Type    : MYSQL
Target Server Version : 50090
File Encoding         : 65001

Date: 2019-09-14 11:37:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_admit`
-- ----------------------------
DROP TABLE IF EXISTS `t_admit`;
CREATE TABLE `t_admit` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(10) default NULL,
  `account` char(6) NOT NULL,
  `password` varchar(10) default NULL,
  `email` varchar(12) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admit
-- ----------------------------
INSERT INTO `t_admit` VALUES ('1', '任有佛', '123456', '123456', '123456789');

-- ----------------------------
-- Table structure for `t_expressman`
-- ----------------------------
DROP TABLE IF EXISTS `t_expressman`;
CREATE TABLE `t_expressman` (
  `id` int(11) NOT NULL auto_increment,
  `no` char(6) NOT NULL,
  `name` varchar(10) default NULL,
  `sex` int(11) default NULL,
  `mobile` char(11) default NULL,
  `email` varchar(20) default NULL,
  `IDcard` char(18) default NULL,
  `birthday` date default NULL,
  `state` varchar(10) default NULL,
  `password` varchar(20) default NULL,
  `date` date default NULL,
  `salary` int(11) default NULL,
  `nativePlace` varchar(50) default NULL,
  `homePlace` varchar(50) default NULL,
  `type` int(2) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_expressman
-- ----------------------------
INSERT INTO `t_expressman` VALUES ('1', 'R10001', '王小强', '1', '15987634535', 'wxm@qq.com', '876543199809241356', '1998-09-24', '已转正', '123456', '2019-09-13', '5000', '湖北宜昌', '湖南省岳阳市湖南理工学院', '1');
INSERT INTO `t_expressman` VALUES ('3', 'R00003', '张云翥', '1', '15697405029', '1712641776@qq.com', '423579199808251717', '1998-09-09', '实习期', '123456', '2019-09-04', '8000', '湖南衡阳', '湖南理工学院18栋446', '1');

-- ----------------------------
-- Table structure for `t_packages`
-- ----------------------------
DROP TABLE IF EXISTS `t_packages`;
CREATE TABLE `t_packages` (
  `no` int(11) NOT NULL auto_increment,
  `senderName` varchar(10) default NULL,
  `senderMobile` varchar(11) default NULL,
  `senderPlace` varchar(50) default NULL,
  `addrName` varchar(10) default NULL,
  `addrMobile` varchar(11) default NULL,
  `addrPlace` varchar(50) default NULL,
  `information` varchar(100) default NULL,
  `state` int(11) default NULL,
  PRIMARY KEY  (`no`)
) ENGINE=MyISAM AUTO_INCREMENT=1030 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_packages
-- ----------------------------
INSERT INTO `t_packages` VALUES ('1001', '任有佛', '15697405037', '湖北宜昌', '梁志豪', '15697405037', '湖南岳阳', '					由岳阳中通快递配发	    ', '2');
INSERT INTO `t_packages` VALUES ('1027', '任有佛', '15697405037', '浙江宁波', '张云翥', '15697402239', '浙江杭州', '						    已到达【福州市】运输中', '3');
INSERT INTO `t_packages` VALUES ('1028', '任有佛', '15697405037', '湖北宜昌', '代志建', '15697405566', '陕西汉中', '			已取货物【汉中市】营业网点库存中 			    ', '2');
INSERT INTO `t_packages` VALUES ('1029', '张三', '15987634535', '黑龙江哈尔滨', '李四', '15571725951', '广东中山', '				已取货物【中山市】营业网点库存中		    ', '2');

-- ----------------------------
-- Table structure for `t_packagestate`
-- ----------------------------
DROP TABLE IF EXISTS `t_packagestate`;
CREATE TABLE `t_packagestate` (
  `id` int(11) NOT NULL auto_increment,
  `information` varchar(100) default NULL,
  `time` varchar(50) default NULL,
  `no` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `PK_no` (`no`)
) ENGINE=MyISAM AUTO_INCREMENT=1015 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_packagestate
-- ----------------------------
INSERT INTO `t_packagestate` VALUES ('1', '由武汉运往长沙', '2019-09-11 00:00:00', '1001');
INSERT INTO `t_packagestate` VALUES ('2', '由长沙运往岳阳', '2019-09-12 20:36:12', '1001');
INSERT INTO `t_packagestate` VALUES ('1005', '					由岳阳中通快递配发	    ', '2019-09-13 14:54:17', '1001');
INSERT INTO `t_packagestate` VALUES ('1006', '						    已取货物【宁波市】营业网点库存中 ', '2019-09-13 22:50:59', '1027');
INSERT INTO `t_packagestate` VALUES ('1007', '			已取货物【汉中市】营业网点库存中 			    ', '2019-09-13 22:51:55', '1028');
INSERT INTO `t_packagestate` VALUES ('1008', '				已取货物【中山市】营业网点库存中		    ', '2019-09-13 22:52:29', '1029');
INSERT INTO `t_packagestate` VALUES ('1009', '					运输中,离开【宁波市】营业网点,发往【宁波市】运输中心	    ', '2019-09-13 22:53:40', '1027');
INSERT INTO `t_packagestate` VALUES ('1010', '						    运输中,已到达【宁波市】运输中心', '2019-09-13 22:53:48', '1027');
INSERT INTO `t_packagestate` VALUES ('1011', '						    运输中,离开【宁波市】运输中心,发往【杭州市】运输中心', '2019-09-13 22:54:00', '1027');
INSERT INTO `t_packagestate` VALUES ('1012', '						运输中,已到达【杭州市】运输中心    ', '2019-09-13 22:54:08', '1027');
INSERT INTO `t_packagestate` VALUES ('1013', '						   运输中,离开【杭州市】运输中心,发往【福州市】运输中心 ', '2019-09-13 22:54:16', '1027');
INSERT INTO `t_packagestate` VALUES ('1014', '						    已到达【福州市】运输中', '2019-09-13 22:54:23', '1027');
