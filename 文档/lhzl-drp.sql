/*
Navicat MySQL Data Transfer

Source Server         : jdsdb
Source Server Version : 50710
Source Host           : localhost:3306
Source Database       : lhzl-drp

Target Server Type    : MYSQL
Target Server Version : 50710
File Encoding         : 65001

Date: 2016-03-23 22:29:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tbl_extendinfo
-- ----------------------------
DROP TABLE IF EXISTS `tbl_extendinfo`;
CREATE TABLE `tbl_extendinfo` (
  `extendId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '扩展信息id',
  `lineId` bigint(20) NOT NULL COMMENT '线路主键id - 与线路主表外键关联',
  `remind` text NOT NULL COMMENT '特别提醒',
  `lineFeature` text COMMENT '线路特色',
  `include` text NOT NULL COMMENT '费用包含',
  `notInclude` text NOT NULL COMMENT '费用不包含',
  `remarks` text COMMENT '补充说明',
  `shopping` text COMMENT '购物说明',
  `note` text NOT NULL COMMENT '注意事项',
  `creatby` varchar(200) NOT NULL COMMENT '创建人',
  `creatTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateby` varchar(200) DEFAULT 'anonymous' COMMENT '最后修改人',
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`extendId`),
  KEY `fk_ext_lineid` (`lineId`),
  CONSTRAINT `fk_ext_lineid` FOREIGN KEY (`lineId`) REFERENCES `tbl_lineinfo` (`lineId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_extendinfo
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_groupinfo
-- ----------------------------
DROP TABLE IF EXISTS `tbl_groupinfo`;
CREATE TABLE `tbl_groupinfo` (
  `groupId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '团体id',
  `groupNo` varchar(20) NOT NULL COMMENT '团体编号',
  `lineId` bigint(20) NOT NULL COMMENT '线路编号-路线主表外键关联',
  `groupName` varchar(200) NOT NULL COMMENT '团体名称',
  `groupStart` datetime NOT NULL COMMENT '出团开始时间',
  `groupEnd` datetime NOT NULL COMMENT '出团结束时间',
  `status` varchar(1) NOT NULL DEFAULT 'T' COMMENT '状态-T     草稿\r\nA     审核中\r\nP     审核通过\r\nF      审核失败',
  `createby` varchar(200) NOT NULL COMMENT '创建人',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateby` varchar(200) DEFAULT 'anonymous' COMMENT '最后修改人',
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`groupId`),
  KEY `fk_group_lineid` (`lineId`),
  CONSTRAINT `fk_group_lineid` FOREIGN KEY (`lineId`) REFERENCES `tbl_lineinfo` (`lineId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_groupinfo
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_hotelinfo
-- ----------------------------
DROP TABLE IF EXISTS `tbl_hotelinfo`;
CREATE TABLE `tbl_hotelinfo` (
  `hotelId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '住宿id',
  `hotelType` varchar(1) NOT NULL COMMENT '住宿类型',
  `createby` varchar(200) NOT NULL COMMENT '创建人',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateby` varchar(200) DEFAULT 'anonymous' COMMENT '最后修改人',
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`hotelId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_hotelinfo
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_keywords
-- ----------------------------
DROP TABLE IF EXISTS `tbl_keywords`;
CREATE TABLE `tbl_keywords` (
  `keyId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '关键字id',
  `keywords` varchar(200) NOT NULL COMMENT '关键字',
  `createby` varchar(200) NOT NULL COMMENT '关键字',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateby` varchar(200) DEFAULT 'anonymous' COMMENT '最后修改人',
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`keyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_keywords
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_lineinfo
-- ----------------------------
DROP TABLE IF EXISTS `tbl_lineinfo`;
CREATE TABLE `tbl_lineinfo` (
  `lineId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '线路id',
  `lineType` varchar(2) NOT NULL DEFAULT 'DX' COMMENT '线路类型 - DX  短线\r\nCX  长线\r\nCJ   出境\r\nYL   邮轮\r\nMP  门票\r\nZT   整团',
  `tourType` varchar(3) NOT NULL COMMENT '旅游类型 - ZYX  自由行  \r\nGTY  跟团游',
  `lineNo` varchar(30) NOT NULL COMMENT '线路编号',
  `sysNO` varchar(30) DEFAULT NULL COMMENT '系统编号',
  `lineStart` bigint(20) NOT NULL COMMENT '线路起点-与站点管理外键',
  `lineEnd` bigint(20) NOT NULL COMMENT '线路目的地-与站点管理外键',
  `title` varchar(200) NOT NULL COMMENT '主标题',
  `subTitile` varchar(60) DEFAULT NULL COMMENT '副标题',
  `desc` text COMMENT '描述',
  `lineSid` varchar(50) DEFAULT NULL COMMENT '线路主题-线路主题外键, 多选用逗号隔开',
  `keyword` bigint(20) NOT NULL COMMENT '关键字',
  `days` int(11) NOT NULL COMMENT '天数',
  `hotelDays` int(11) NOT NULL COMMENT '住宿天数',
  `hotelType` int(11) DEFAULT NULL COMMENT '住宿类型',
  `hotelName` varchar(200) DEFAULT NULL COMMENT '住宿名称',
  `tel` varchar(20) NOT NULL COMMENT '应急电话',
  `deadline` varchar(8) NOT NULL COMMENT '报名截止时间',
  `hasWeekend` varchar(1) NOT NULL DEFAULT 'N' COMMENT '周末是否计算在内-N  不计算\r\nY   计算',
  `cusSelect` varchar(1) NOT NULL DEFAULT 'Y' COMMENT '是否支持选座-N   不支持\r\nY    支持',
  `min` int(11) NOT NULL COMMENT '最小成团人数',
  `hasConfirm` varchar(1) NOT NULL DEFAULT 'N' COMMENT '订单是否需要确认-N   不需要确认\r\nY    需要确认',
  `status` varchar(2) NOT NULL DEFAULT 'T' COMMENT '状态-T   草稿\r\nS    提交\r\nA    审核中\r\nP    审核通过\r\nR    审核拒绝\r\nN    上架中\r\nF     暂停\r\nD     删除',
  `creatby` varchar(200) NOT NULL COMMENT '创建人',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateby` varchar(200) DEFAULT 'anonymous' COMMENT '最后修改人',
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`lineId`),
  UNIQUE KEY `index_lineNo` (`lineNo`),
  UNIQUE KEY `index_sysNO` (`sysNO`),
  KEY `fk_line_keywords` (`keyword`),
  CONSTRAINT `fk_line_keywords` FOREIGN KEY (`keyword`) REFERENCES `tbl_keywords` (`keyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_lineinfo
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_loginfo
-- ----------------------------
DROP TABLE IF EXISTS `tbl_loginfo`;
CREATE TABLE `tbl_loginfo` (
  `logId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志id',
  `logCont` text NOT NULL COMMENT '操作内容',
  `createby` varchar(200) NOT NULL COMMENT '操作人',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '操作时间',
  PRIMARY KEY (`logId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_loginfo
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_messageinfo
-- ----------------------------
DROP TABLE IF EXISTS `tbl_messageinfo`;
CREATE TABLE `tbl_messageinfo` (
  `msgId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '消息通知id',
  `msgType` varchar(3) NOT NULL DEFAULT 'ORD' COMMENT '消息类型 - ORD   订单相关\r\nLNE    线路相关\r\n',
  `isRead` varchar(1) NOT NULL DEFAULT 'N' COMMENT '是否已读 - N      未读\r\nY       已读',
  `message` text NOT NULL COMMENT '消息内容',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`msgId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_messageinfo
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_operatorinfo
-- ----------------------------
DROP TABLE IF EXISTS `tbl_operatorinfo`;
CREATE TABLE `tbl_operatorinfo` (
  `operId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '操作员id',
  `userId` bigint(20) NOT NULL COMMENT '会员id',
  `opacct` varchar(100) NOT NULL COMMENT '操作员登录账户',
  `operpwd` varchar(100) NOT NULL COMMENT '操作员密码 - 密码将采用SHA-256做数据指纹，不能直接保存密码.',
  `operName` varchar(200) NOT NULL COMMENT '操作员姓名',
  `gender` varchar(1) DEFAULT NULL COMMENT '操纵员性别 - M    男\r\nW    女',
  `restTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '口令重置时间',
  `retryCount` int(11) NOT NULL DEFAULT '0' COMMENT '登录错误次数',
  `status` varchar(1) NOT NULL DEFAULT 'R' COMMENT '操作员状态 - R    待审核\r\nA    正在审核\r\nP    审核通过\r\nF     审核拒绝\r\nN    正常\r\nF     冻结\r\nB     异常\r\nD    软删除',
  `lastLoginTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后登录时间',
  `lastLoginIp` varchar(15) NOT NULL COMMENT '最后登录ip',
  `createby` varchar(200) NOT NULL COMMENT '创建人',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateby` varchar(200) DEFAULT 'anonymous' COMMENT '最后修改人',
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`operId`),
  UNIQUE KEY `index_opacct` (`opacct`),
  KEY `fk_userid` (`userId`),
  CONSTRAINT `fk_userid` FOREIGN KEY (`userId`) REFERENCES `tbl_userinfo` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_operatorinfo
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_orderinfo
-- ----------------------------
DROP TABLE IF EXISTS `tbl_orderinfo`;
CREATE TABLE `tbl_orderinfo` (
  `orderId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '订单编号',
  `orderNo` varchar(20) NOT NULL COMMENT '订单编号',
  `lineId` bigint(20) NOT NULL COMMENT '线路id',
  `drpid` bigint(20) NOT NULL COMMENT '分销商id',
  `ordamt` decimal(24,3) DEFAULT NULL COMMENT '订单金额',
  `startTime` datetime DEFAULT NULL COMMENT '出发日期',
  `status` varchar(1) DEFAULT 'D' COMMENT '订单状态 - D     订单草稿\r\nS      订单提交\r\nA      正在审核\r\nP      审核通过\r\nF      审核拒绝\r\nE      订单执行中\r\nC      订单确认\r\n',
  `orderTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '订单生成时间',
  `createby` varchar(200) DEFAULT NULL COMMENT '创建人',
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateby` varchar(200) DEFAULT 'anonymous' COMMENT '最后修改人',
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`orderId`),
  KEY `fk_order_lineid` (`lineId`),
  KEY `fk_order_drpid` (`drpid`),
  CONSTRAINT `fk_order_drpid` FOREIGN KEY (`drpid`) REFERENCES `tbl_userinfo` (`userId`),
  CONSTRAINT `fk_order_lineid` FOREIGN KEY (`lineId`) REFERENCES `tbl_lineinfo` (`lineId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_orderinfo
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_payinfo
-- ----------------------------
DROP TABLE IF EXISTS `tbl_payinfo`;
CREATE TABLE `tbl_payinfo` (
  `payId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '付款id',
  `payNo` varchar(20) NOT NULL COMMENT '付款编号',
  `cusNo` varchar(20) DEFAULT NULL COMMENT '自定义编号',
  `orderId` bigint(20) NOT NULL COMMENT '订单id',
  `orderAmt` decimal(24,3) NOT NULL COMMENT '订单应付金额',
  `payAmt` decimal(24,3) DEFAULT NULL COMMENT '订单实付金额',
  `prepaidAmt` decimal(24,3) DEFAULT NULL COMMENT '订单预付金额',
  `prepaidTime` datetime DEFAULT NULL COMMENT '预付款时间',
  `finalAmt` decimal(24,3) DEFAULT NULL COMMENT '尾款',
  `finalTime` datetime DEFAULT NULL COMMENT '尾款支付时间',
  `payer` varchar(200) NOT NULL COMMENT '付款人',
  `payTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '付款时间',
  `status` varchar(1) NOT NULL DEFAULT 'D' COMMENT '付款状态 - D     付款草稿\r\nS      付款提交\r\nA      正在审核\r\nP      审核通过\r\nF      审核拒绝\r\nP      支付成功\r\n\r\n',
  `createby` varchar(200) NOT NULL COMMENT '创建人',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateby` varchar(200) DEFAULT 'anonymous' COMMENT '最后修改人',
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`payId`),
  KEY `fk_pay_orderid` (`orderId`),
  CONSTRAINT `fk_pay_orderid` FOREIGN KEY (`orderId`) REFERENCES `tbl_orderinfo` (`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_payinfo
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_permissioninfo
-- ----------------------------
DROP TABLE IF EXISTS `tbl_permissioninfo`;
CREATE TABLE `tbl_permissioninfo` (
  `pmsnId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '权限id',
  `pmsnName` varchar(200) NOT NULL COMMENT '权限名称',
  `actionName` varchar(200) NOT NULL COMMENT '操作名称',
  `remark` text COMMENT '备注',
  `createby` varchar(200) NOT NULL COMMENT '创建人',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateby` varchar(200) DEFAULT 'anonymous' COMMENT '最后修改人',
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`pmsnId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_permissioninfo
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_roleinfo
-- ----------------------------
DROP TABLE IF EXISTS `tbl_roleinfo`;
CREATE TABLE `tbl_roleinfo` (
  `roleId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `roleName` varchar(200) NOT NULL COMMENT '角色名称',
  `remark` text COMMENT '备注',
  `creatby` varchar(200) NOT NULL COMMENT '创建人',
  `creatTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateby` varchar(200) DEFAULT 'anonymous' COMMENT '最后修改人',
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_roleinfo
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_rolepermissioninfo
-- ----------------------------
DROP TABLE IF EXISTS `tbl_rolepermissioninfo`;
CREATE TABLE `tbl_rolepermissioninfo` (
  `rlpmId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色权限id',
  `roleId` bigint(20) NOT NULL COMMENT '角色id',
  `pmsnId` bigint(20) NOT NULL COMMENT '权限id',
  `createby` varchar(200) NOT NULL COMMENT '创建人',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateby` varchar(200) DEFAULT NULL COMMENT '最后修改人',
  `updateTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`rlpmId`),
  KEY `fk_rlpm_roleid` (`roleId`),
  KEY `fk_pmsnid` (`pmsnId`),
  CONSTRAINT `fk_pmsnid` FOREIGN KEY (`pmsnId`) REFERENCES `tbl_permissioninfo` (`pmsnId`),
  CONSTRAINT `fk_rlpm_roleid` FOREIGN KEY (`roleId`) REFERENCES `tbl_roleinfo` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_rolepermissioninfo
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_rolepmsninfo
-- ----------------------------
DROP TABLE IF EXISTS `tbl_rolepmsninfo`;
CREATE TABLE `tbl_rolepmsninfo` (
  `oprlId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '操作员角色id',
  `roleid` bigint(20) DEFAULT NULL COMMENT '角色id',
  `oprtid` bigint(20) DEFAULT NULL COMMENT '操作员id',
  `createby` varchar(200) DEFAULT NULL COMMENT '创建人',
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`oprlId`),
  KEY `fk_roleid` (`roleid`),
  KEY `fk_oprtid` (`oprtid`),
  CONSTRAINT `fk_oprtid` FOREIGN KEY (`oprtid`) REFERENCES `tbl_operatorinfo` (`operId`),
  CONSTRAINT `fk_roleid` FOREIGN KEY (`roleid`) REFERENCES `tbl_roleinfo` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_rolepmsninfo
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_shuttleinfo
-- ----------------------------
DROP TABLE IF EXISTS `tbl_shuttleinfo`;
CREATE TABLE `tbl_shuttleinfo` (
  `shuttleId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '接送信息id',
  `lineId` bigint(20) NOT NULL COMMENT '线路主表id -- 线路主表外键关联',
  `startId` bigint(20) NOT NULL COMMENT '始发站 - 车站管理表外键关联',
  `startTime` varchar(5) NOT NULL COMMENT '发车时间',
  `trip` varchar(1) NOT NULL DEFAULT 'N' COMMENT '去程是否接送 - N   去程不接送\r\nY    去程接送',
  `returnTrip` varchar(1) NOT NULL DEFAULT 'N' COMMENT '回程是否接送 - N   回程不接送\r\nY    回程接送',
  `createby` varchar(200) NOT NULL COMMENT '创建人',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateby` varchar(200) DEFAULT 'anonymous' COMMENT '最后修改人',
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`shuttleId`),
  KEY `fk_shut_lineid` (`lineId`),
  KEY `fk_shut_startid` (`startId`),
  CONSTRAINT `fk_shut_lineid` FOREIGN KEY (`lineId`) REFERENCES `tbl_lineinfo` (`lineId`),
  CONSTRAINT `fk_shut_startid` FOREIGN KEY (`startId`) REFERENCES `tbl_stationinfo` (`stationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_shuttleinfo
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_stationinfo
-- ----------------------------
DROP TABLE IF EXISTS `tbl_stationinfo`;
CREATE TABLE `tbl_stationinfo` (
  `stationId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '站点id',
  `stationName` varchar(100) NOT NULL COMMENT '站点名称',
  `stationType` varchar(100) NOT NULL COMMENT '站点类型',
  `creatby` varchar(200) DEFAULT NULL COMMENT '创建人',
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateby` varchar(200) DEFAULT 'anonymous' COMMENT '最后修改人',
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`stationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_stationinfo
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_themeinfo
-- ----------------------------
DROP TABLE IF EXISTS `tbl_themeinfo`;
CREATE TABLE `tbl_themeinfo` (
  `themeId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主题id',
  `themeName` varchar(200) NOT NULL COMMENT '主题名称',
  `createby` varchar(200) NOT NULL COMMENT '创建人',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateby` varchar(200) DEFAULT 'anonymous' COMMENT '最后修改人',
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`themeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_themeinfo
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_touristinfo
-- ----------------------------
DROP TABLE IF EXISTS `tbl_touristinfo`;
CREATE TABLE `tbl_touristinfo` (
  `touristId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '游客信息id',
  `groupId` bigint(20) NOT NULL COMMENT '团体id',
  `trainId` bigint(20) DEFAULT NULL COMMENT '旅游车次',
  `tourName` varchar(200) NOT NULL COMMENT '游客姓名',
  `isChildren` varchar(1) NOT NULL DEFAULT 'M' COMMENT '成人/儿童 - M     成人\r\nC      儿童',
  `IDCard` varchar(18) DEFAULT NULL COMMENT '游客证件',
  `tourSeat` varchar(10) DEFAULT NULL COMMENT '游客座位',
  `creatby` varchar(200) NOT NULL COMMENT '创建人',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateby` varchar(200) DEFAULT 'anonymous' COMMENT '最后修改人',
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`touristId`),
  KEY `fk_tour_groupid` (`groupId`),
  CONSTRAINT `fk_tour_groupid` FOREIGN KEY (`groupId`) REFERENCES `tbl_groupinfo` (`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_touristinfo
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_traininfo
-- ----------------------------
DROP TABLE IF EXISTS `tbl_traininfo`;
CREATE TABLE `tbl_traininfo` (
  `trainId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '车次id',
  `trainNo` varchar(20) NOT NULL COMMENT '车次编号',
  `trainName` varchar(20) NOT NULL COMMENT '车次名称',
  `plateNum` varchar(10) NOT NULL COMMENT '车牌号',
  `createby` varchar(200) NOT NULL COMMENT '创建人',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateby` varchar(200) DEFAULT 'anonymous' COMMENT '最后修改人',
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`trainId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_traininfo
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_triprules
-- ----------------------------
DROP TABLE IF EXISTS `tbl_triprules`;
CREATE TABLE `tbl_triprules` (
  `tripId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '接送规则id',
  `tripType` varchar(2) NOT NULL COMMENT '接送规则id - QC   去程\r\nHC   回程',
  `busLocation` varchar(200) NOT NULL COMMENT '上车点',
  `starttime` varchar(5) NOT NULL COMMENT '时间',
  `price` decimal(20,3) NOT NULL COMMENT '价格',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `createby` varchar(200) NOT NULL COMMENT '创建人',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateby` varchar(200) DEFAULT 'anonymous' COMMENT '最后修改人',
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`tripId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_triprules
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_userinfo
-- ----------------------------
DROP TABLE IF EXISTS `tbl_userinfo`;
CREATE TABLE `tbl_userinfo` (
  `userId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '会员id',
  `userType` varchar(1) NOT NULL DEFAULT 'U' COMMENT '会员类型 - G   供应商\r\nF    分销商\r\nU   普通用户\r\nL    莲花之旅运维管理员',
  `username` varchar(200) NOT NULL COMMENT '会员姓名',
  `mobile` varchar(20) NOT NULL COMMENT '电话',
  `IDCard` varchar(18) NOT NULL COMMENT '会员证件',
  `status` varchar(1) NOT NULL DEFAULT 'N' COMMENT '会员状态 - N     正常会员\r\nF      冻结会员\r\nA       异常会员\r\nD      删除   软删除',
  `createby` varchar(200) DEFAULT NULL COMMENT '创建人',
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateby` varchar(200) DEFAULT 'anonymous' COMMENT '最后修改人',
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_userinfo
-- ----------------------------
