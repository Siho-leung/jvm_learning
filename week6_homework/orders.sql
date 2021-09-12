/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50529
Source Host           : localhost:3306
Source Database       : eshop

Target Server Type    : MYSQL
Target Server Version : 50529
File Encoding         : 65001

Date: 2021-09-12 15:25:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `oid` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单ID',
  `addr` varchar(255) DEFAULT NULL COMMENT '订单收货地址',
  `name` varchar(255) DEFAULT NULL COMMENT '订单名称',
  `ordertime` datetime DEFAULT NULL COMMENT '下单时间',
  `phone` varchar(255) DEFAULT NULL COMMENT '订单收货人电话号码',
  `state` int(11) DEFAULT NULL COMMENT '订单状态',
  `total` double DEFAULT NULL COMMENT '订单金额',
  `uid` int(11) DEFAULT NULL COMMENT '用户ID',
  PRIMARY KEY (`oid`),
  KEY `FK_tk1pibf08nelmar48icf0w8jn` (`uid`),
  CONSTRAINT `FK_tk1pibf08nelmar48icf0w8jn` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
