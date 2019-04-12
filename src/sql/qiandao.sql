/*
MySQL Data Transfer
Source Host: localhost
Source Database: qiandao
Target Host: localhost
Target Database: qiandao
Date: 2019/3/27/÷‹»˝ 16:29:50
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `logname` char(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `password` char(15) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `name` char(15) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `role` tinyint(8) NOT NULL,
  PRIMARY KEY (`logname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `user` VALUES ('admin', 'admin', 'ÁÆ°ÁêÜÂëò', '0');
INSERT INTO `user` VALUES ('jojo', '666666', 'ÊôÆÈÄöÁî®Êà∑', '1');
