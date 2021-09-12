/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50529
Source Host           : localhost:3306
Source Database       : eshop

Target Server Type    : MYSQL
Target Server Version : 50529
File Encoding         : 65001

Date: 2021-09-12 15:26:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL COMMENT '用户密码',
  `name` varchar(255) DEFAULT NULL COMMENT '用户名',
  `email` varchar(255) DEFAULT NULL COMMENT '用户邮箱',
  `phone` varchar(255) DEFAULT NULL COMMENT '用户电话',
  `addr` varchar(255) DEFAULT NULL COMMENT '用户地址',
  `state` int(11) DEFAULT NULL COMMENT '用户状态',
  `code` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
