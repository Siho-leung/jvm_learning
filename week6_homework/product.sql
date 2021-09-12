/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50529
Source Host           : localhost:3306
Source Database       : eshop

Target Server Type    : MYSQL
Target Server Version : 50529
File Encoding         : 65001

Date: 2021-09-12 15:25:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `pid` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品ID',
  `pname` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `market_price` double DEFAULT NULL COMMENT '市场价格',
  `shop_price` double DEFAULT NULL COMMENT '店铺价格',
  `image` varchar(255) DEFAULT NULL COMMENT '商品图片',
  `pdesc` varchar(255) DEFAULT NULL COMMENT '商品描述',
  `is_hot` int(11) DEFAULT NULL COMMENT '是否热门商品',
  `pdate` datetime DEFAULT NULL COMMENT '商品状态',
  `csid` int(11) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `FKED8DCCEFB9B74E02` (`csid`),
  CONSTRAINT `FKED8DCCEFB9B74E02` FOREIGN KEY (`csid`) REFERENCES `categorysecond` (`csid`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;
