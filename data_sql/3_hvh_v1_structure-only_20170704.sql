/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : hvh_v1

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-07-04 11:12:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `ID` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `Status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for doctor
-- ----------------------------
DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor` (
  `ID` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `MobileNum` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `Gender` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'X',
  `BirthDate` date DEFAULT NULL,
  `RegTime` datetime NOT NULL DEFAULT current_timestamp(),
  `Password` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `HospitalID` char(36) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE KEY `MobileNum` (`MobileNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for easemob_audio
-- ----------------------------
DROP TABLE IF EXISTS `easemob_audio`;
CREATE TABLE `easemob_audio` (
  `ID` varchar(40) COLLATE utf8_unicode_ci NOT NULL COMMENT '文件的hash(md5 | sha1)码',
  `Ext` varchar(4) COLLATE utf8_unicode_ci NOT NULL COMMENT '扩展名',
  `ReferenceCount` int(10) NOT NULL COMMENT '引用计数',
  `CreateTime` datetime NOT NULL DEFAULT current_timestamp(),
  `CreatedBy` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `Status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for easemob_chat_record
-- ----------------------------
DROP TABLE IF EXISTS `easemob_chat_record`;
CREATE TABLE `easemob_chat_record` (
  `msg_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` bigint(20) NOT NULL,
  `direction` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `to` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `from` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `chat_type` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `payload_ext` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `payload_from` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `payload_to` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `bodies_type` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `bodies_txt_msg` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  `bodies_file_length` int(11) NOT NULL,
  `bodies_filename` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `bodies_secret` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `bodies_size_height` int(11) NOT NULL,
  `bodies_size_width` int(11) NOT NULL,
  `bodies_url` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `bodies_loc_addr` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `bodies_loc_lat` double NOT NULL,
  `bodies_loc_lng` double NOT NULL,
  `bodies_av_length` int(11) NOT NULL,
  `bodies_video_thumb` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `bodies_video_thumb_secret` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `file_hashcode` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`msg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for easemob_image
-- ----------------------------
DROP TABLE IF EXISTS `easemob_image`;
CREATE TABLE `easemob_image` (
  `ID` varchar(40) COLLATE utf8_unicode_ci NOT NULL COMMENT '文件的hash(md5 | sha1)码',
  `Ext` varchar(4) COLLATE utf8_unicode_ci NOT NULL COMMENT '扩展名',
  `ReferenceCount` int(10) NOT NULL COMMENT '引用计数',
  `CreateTime` datetime NOT NULL DEFAULT current_timestamp(),
  `CreatedBy` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `Status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for easemob_other
-- ----------------------------
DROP TABLE IF EXISTS `easemob_other`;
CREATE TABLE `easemob_other` (
  `ID` varchar(40) COLLATE utf8_unicode_ci NOT NULL COMMENT '文件的hash(md5 | sha1)码',
  `Ext` varchar(4) COLLATE utf8_unicode_ci NOT NULL COMMENT '扩展名',
  `ReferenceCount` int(10) NOT NULL COMMENT '引用计数',
  `CreateTime` datetime NOT NULL DEFAULT current_timestamp(),
  `CreatedBy` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `Status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for easemob_video
-- ----------------------------
DROP TABLE IF EXISTS `easemob_video`;
CREATE TABLE `easemob_video` (
  `ID` varchar(40) COLLATE utf8_unicode_ci NOT NULL COMMENT '文件的hash(md5 | sha1)码',
  `Ext` varchar(4) COLLATE utf8_unicode_ci NOT NULL COMMENT '扩展名',
  `ReferenceCount` int(10) NOT NULL COMMENT '引用计数',
  `CreateTime` datetime NOT NULL DEFAULT current_timestamp(),
  `CreatedBy` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `Status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for health_record
-- ----------------------------
DROP TABLE IF EXISTS `health_record`;
CREATE TABLE `health_record` (
  `ID` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `UserID` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `DoctorID` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `Status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for history_order
-- ----------------------------
DROP TABLE IF EXISTS `history_order`;
CREATE TABLE `history_order` (
  `ID` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `UserID` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `CreateTime` datetime NOT NULL DEFAULT current_timestamp(),
  `Description` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `Fee` decimal(8,2) NOT NULL,
  `Status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for hospital
-- ----------------------------
DROP TABLE IF EXISTS `hospital`;
CREATE TABLE `hospital` (
  `ID` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `Rank` char(8) COLLATE utf8_unicode_ci NOT NULL,
  `Type` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CityID` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `Address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `BriefIntro` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Departments` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreateTime` datetime NOT NULL DEFAULT current_timestamp(),
  `SortKey1` int(10) NOT NULL AUTO_INCREMENT,
  `Status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE KEY `SORT_KEY_INT` (`SortKey1`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for image_md5
-- ----------------------------
DROP TABLE IF EXISTS `image_md5`;
CREATE TABLE `image_md5` (
  `ID` char(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '文件的md5码',
  `Ext` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `ReferenceCount` int(10) NOT NULL,
  `CreateTime` datetime NOT NULL DEFAULT current_timestamp(),
  `CreatedBy` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `Status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for image_sha1
-- ----------------------------
DROP TABLE IF EXISTS `image_sha1`;
CREATE TABLE `image_sha1` (
  `ID` char(40) COLLATE utf8_unicode_ci NOT NULL COMMENT '文件的sha1码',
  `ext` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `ReferenceCount` int(10) NOT NULL,
  `CreateTime` datetime NOT NULL DEFAULT current_timestamp(),
  `CreatedBy` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `Status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `ID` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `UserID` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `CreateTime` datetime NOT NULL DEFAULT current_timestamp(),
  `Description` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `Fee` decimal(8,2) NOT NULL,
  `Status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for paid_service
-- ----------------------------
DROP TABLE IF EXISTS `paid_service`;
CREATE TABLE `paid_service` (
  `ID` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `Status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for silk2amr
-- ----------------------------
DROP TABLE IF EXISTS `silk2amr`;
CREATE TABLE `silk2amr` (
  `ID` varchar(40) COLLATE utf8_unicode_ci NOT NULL COMMENT '文件的hash(md5 | sha1)码',
  `Ext` varchar(4) COLLATE utf8_unicode_ci NOT NULL COMMENT '扩展名',
  `ReferenceCount` int(10) NOT NULL COMMENT '引用计数',
  `CreateTime` datetime NOT NULL DEFAULT current_timestamp(),
  `CreatedBy` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `Status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `ID` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `MobileNum` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `Nickname` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `Gender` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'X',
  `BirthDate` date DEFAULT NULL,
  `Age` tinyint(4) DEFAULT NULL,
  `RegTime` datetime NOT NULL DEFAULT current_timestamp(),
  `Password` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `PaidMembership` tinyint(1) NOT NULL DEFAULT 0,
  `BloodType` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Height` tinyint(4) DEFAULT NULL,
  `Weight` decimal(5,2) DEFAULT NULL,
  `PortraitID` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE KEY `MobileNum` (`MobileNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
