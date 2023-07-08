/*
Navicat MySQL Data Transfer

Source Server         : 192.168.211.132
Source Server Version : 50726
Source Host           : 192.168.211.132:3306
Source Database       : fescar-order

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2019-08-15 18:39:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for order_info
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `message` varchar(200) DEFAULT NULL COMMENT '留言',
  `money` int(11) DEFAULT NULL COMMENT '总金额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_info
-- ----------------------------
INSERT INTO `order_info` VALUES ('4', '生成订单', '10');
INSERT INTO `order_info` VALUES ('5', '生成订单', '10');

-- ----------------------------
-- Table structure for undo_log
-- ----------------------------
DROP TABLE IF EXISTS `undo_log`;
CREATE TABLE `undo_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `branch_id` bigint(20) NOT NULL,
  `xid` varchar(100) NOT NULL,
  `context` varchar(128) NOT NULL,
  `rollback_info` longblob NOT NULL,
  `log_status` int(11) NOT NULL,
  `log_created` datetime NOT NULL,
  `log_modified` datetime NOT NULL,
  `ext` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_undo_log` (`xid`,`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- ----------------------------
-- Records of undo_log
-- ----------------------------
INSERT INTO `undo_log` VALUES ('16', '2019568205', '10.254.3.4:8091:2019568203', 0x7B226272616E63684964223A323031393536383230352C2273716C556E646F4C6F6773223A5B7B226166746572496D616765223A7B22726F7773223A5B7B226669656C6473223A5B7B226B657954797065223A225072696D6172794B6579222C226E616D65223A226964222C2274797065223A342C2276616C7565223A31397D2C7B226B657954797065223A224E554C4C222C226E616D65223A226D657373616765222C2274797065223A31322C2276616C7565223A22E7949FE68890E8AEA2E58D95227D2C7B226B657954797065223A224E554C4C222C226E616D65223A226D6F6E6579222C2274797065223A342C2276616C7565223A31307D5D7D5D2C227461626C654E616D65223A226F726465725F696E666F227D2C226265666F7265496D616765223A7B22726F7773223A5B5D2C227461626C654E616D65223A226F726465725F696E666F227D2C2273716C54797065223A22494E53455254222C227461626C654E616D65223A226F726465725F696E666F227D5D2C22786964223A2231302E3235342E332E343A383039313A32303139353638323033227D, '0', '2019-08-15 03:42:02', '2019-08-15 03:42:02', null);
