/*
Navicat MySQL Data Transfer

Source Server         : test222
Source Server Version : 50549
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50549
File Encoding         : 65001

Date: 2018-09-13 15:13:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for errcode
-- ----------------------------
DROP TABLE IF EXISTS `errcode`;
CREATE TABLE `errcode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` int(255) DEFAULT NULL,
  `reason` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `message` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `accept` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `codeType` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
