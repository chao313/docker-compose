/*
 Navicat Premium Data Transfer

 Source Server         : bgg
 Source Server Type    : MySQL
 Source Server Version : 50561
 Source Host           : localhost:33069
 Source Schema         : php_test

 Target Server Type    : MySQL
 Target Server Version : 50561
 File Encoding         : 65001

 Date: 14/02/2019 10:37:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for welive_admin
-- ----------------------------
DROP TABLE IF EXISTS `welive_admin`;
CREATE TABLE `welive_admin` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `activated` tinyint(1) NOT NULL DEFAULT '0',
  `online` tinyint(1) NOT NULL DEFAULT '0',
  `username` varchar(64) NOT NULL DEFAULT '',
  `password` varchar(64) NOT NULL DEFAULT '',
  `email` varchar(128) NOT NULL DEFAULT '',
  `verifycode` varchar(8) NOT NULL DEFAULT '',
  `first` int(11) NOT NULL DEFAULT '0',
  `last` int(11) NOT NULL DEFAULT '0',
  `lastip` varchar(64) NOT NULL DEFAULT '',
  `logins` int(11) NOT NULL DEFAULT '0',
  `fullname` varchar(64) NOT NULL DEFAULT '',
  `fullname_en` varchar(64) NOT NULL DEFAULT '',
  `post` varchar(64) NOT NULL DEFAULT '',
  `post_en` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`aid`),
  KEY `last` (`last`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of welive_admin
-- ----------------------------
BEGIN;
INSERT INTO `welive_admin` VALUES (1, 1, 1, 0, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'm18888106873@163.com', '', 1550111774, 0, '', 0, '管理员', 'Admin', '系统管理员', 'Administrator');
COMMIT;

-- ----------------------------
-- Table structure for welive_comment
-- ----------------------------
DROP TABLE IF EXISTS `welive_comment`;
CREATE TABLE `welive_comment` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `readed` tinyint(1) NOT NULL DEFAULT '0',
  `gid` int(11) NOT NULL DEFAULT '0',
  `fullname` varchar(64) NOT NULL DEFAULT '',
  `ip` varchar(64) NOT NULL DEFAULT '',
  `zone` varchar(64) NOT NULL DEFAULT '',
  `phone` varchar(128) NOT NULL DEFAULT '',
  `email` varchar(128) NOT NULL DEFAULT '',
  `content` text,
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `gid` (`gid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for welive_guest
-- ----------------------------
DROP TABLE IF EXISTS `welive_guest`;
CREATE TABLE `welive_guest` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) NOT NULL DEFAULT '0',
  `upload` tinyint(1) NOT NULL DEFAULT '0',
  `lang` tinyint(1) NOT NULL DEFAULT '0',
  `banned` int(11) NOT NULL DEFAULT '0',
  `logins` int(11) NOT NULL DEFAULT '0',
  `last` int(11) NOT NULL DEFAULT '0',
  `lastip` varchar(64) NOT NULL DEFAULT '',
  `ipzone` varchar(64) NOT NULL DEFAULT '',
  `browser` varchar(64) NOT NULL DEFAULT '',
  `mobile` tinyint(1) NOT NULL DEFAULT '0',
  `fromurl` varchar(255) NOT NULL DEFAULT '',
  `grade` tinyint(1) NOT NULL DEFAULT '0',
  `fullname` varchar(64) NOT NULL DEFAULT '',
  `address` varchar(128) NOT NULL DEFAULT '',
  `phone` varchar(128) NOT NULL DEFAULT '',
  `email` varchar(128) NOT NULL DEFAULT '',
  `remark` text,
  `session` char(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`gid`),
  KEY `aid` (`aid`),
  KEY `last` (`last`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for welive_msg
-- ----------------------------
DROP TABLE IF EXISTS `welive_msg`;
CREATE TABLE `welive_msg` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `fromid` int(11) NOT NULL DEFAULT '0',
  `fromname` varchar(64) NOT NULL DEFAULT '',
  `toid` int(11) NOT NULL DEFAULT '0',
  `toname` varchar(64) NOT NULL DEFAULT '',
  `msg` text,
  `filetype` tinyint(1) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mid`),
  KEY `fromid` (`fromid`),
  KEY `toid` (`toid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for welive_phrase
-- ----------------------------
DROP TABLE IF EXISTS `welive_phrase`;
CREATE TABLE `welive_phrase` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `activated` tinyint(1) NOT NULL DEFAULT '0',
  `msg` text,
  `msg_en` text,
  PRIMARY KEY (`pid`),
  KEY `aid` (`aid`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for welive_rating
-- ----------------------------
DROP TABLE IF EXISTS `welive_rating`;
CREATE TABLE `welive_rating` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `gid` int(11) NOT NULL DEFAULT '0',
  `aid` int(11) NOT NULL DEFAULT '0',
  `score` tinyint(1) NOT NULL DEFAULT '0',
  `msg` text,
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rid`),
  KEY `aid` (`aid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for welive_robot
-- ----------------------------
DROP TABLE IF EXISTS `welive_robot`;
CREATE TABLE `welive_robot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activated` tinyint(1) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `kn` int(3) NOT NULL DEFAULT '0',
  `keyword` varchar(128) NOT NULL DEFAULT '',
  `msg` text,
  `avatar` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `kn` (`kn`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for welive_session
-- ----------------------------
DROP TABLE IF EXISTS `welive_session`;
CREATE TABLE `welive_session` (
  `sid` char(32) NOT NULL DEFAULT '',
  `aid` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(32) NOT NULL DEFAULT '',
  `agent` char(32) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`sid`),
  KEY `aid` (`aid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for welive_vvc
-- ----------------------------
DROP TABLE IF EXISTS `welive_vvc`;
CREATE TABLE `welive_vvc` (
  `vid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(9) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`vid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
