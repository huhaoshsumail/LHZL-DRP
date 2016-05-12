CREATE TABLE `Tbl_LineInfo` (

`id` bigint NOT NULL AUTO_INCREMENT COMMENT '线路id',

`lineType` varchar(2) NOT NULL DEFAULT 'DX' COMMENT '线路类型 - DX  短线\r\nCX  长线\r\nCJ   出境\r\nYL   邮轮\r\nMP  门票\r\nZT   整团',

`tourType` varchar(3) NOT NULL COMMENT '旅游类型 - ZYX  自由行  \r\nGTY  跟团游',

`lineNo` varchar(30) NOT NULL COMMENT '线路编号',

`sysNO` varchar(30) NULL COMMENT '系统编号',

`lineStart` bigint NOT NULL COMMENT '线路起点-与站点管理外键',

`lineEnd` bigint NOT NULL COMMENT '线路目的地-与站点管理外键',

`title` varchar(200) NOT NULL COMMENT '主标题',

`subTitile` varchar(60) NULL COMMENT '副标题',

`lineDesc` text NULL COMMENT '描述',

`lineSid` varchar(50) NULL COMMENT '线路主题-线路主题外键, 多选用逗号隔开',

`keyword` bigint NOT NULL COMMENT '关键字',

`days` int NOT NULL COMMENT '天数',

`hotelDays` int NOT NULL COMMENT '住宿天数',

`hotelType` bigint NULL COMMENT '住宿类型',

`hotelName` varchar(200) NULL COMMENT '住宿名称',

`tel` varchar(20) NOT NULL COMMENT '应急电话',

`deadline` varchar(8) NOT NULL COMMENT '报名截止时间',

`hasWeekend` varchar(1) NOT NULL DEFAULT 'N' COMMENT '周末是否计算在内-N  不计算\r\nY   计算',

`cusSelect` varchar(1) NOT NULL DEFAULT 'Y' COMMENT '是否支持选座-N   不支持\r\nY    支持',

`min` int NOT NULL COMMENT '最小成团人数',

`rebate` numeric(24,3) NOT NULL COMMENT '返利',

`trainType` bigint NOT NULL COMMENT '车次类型（关联在字典表）',

`trainNo` varchar(24) NOT NULL COMMENT '车次编号',

`hasConfirm` varchar(1) NOT NULL DEFAULT 'N' COMMENT '订单是否需要确认-N   不需要确认\r\nY    需要确认',

`status` varchar(2) NOT NULL DEFAULT 'T' COMMENT '状态-T   草稿\r\nS    提交\r\nA    审核中\r\nP    审核通过\r\nR    审核拒绝\r\nN    上架中\r\nF     暂停\r\nD     删除',

`createby` varchar(200) NOT NULL COMMENT '创建人',

`createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP  COMMENT '创建时间',

`updateby` varchar(200) NULL DEFAULT 'anonymous' COMMENT '最后修改人',

`updateTime` datetime NULL DEFAULT CURRENT_TIMESTAMP  COMMENT '最后修改时间',

PRIMARY KEY (`id`) ,

UNIQUE INDEX `index_lineNo` (`lineNo`),

UNIQUE INDEX `index_sysNO` (`sysNO`)

)

COMMENT='线路主表'
;



CREATE TABLE `Tbl_StationInfo` (

`id` bigint NOT NULL AUTO_INCREMENT COMMENT '站点id',

`stationPid` bigint NOT NULL DEFAULT 0 COMMENT '站点父节点  0 为类型',

`stationName` varchar(100) NOT NULL COMMENT '站点名称',

`status` varchar(1) NOT NULL DEFAULT 'Y' COMMENT '是否启用\r\nＮ　　不启用\r\nＹ　　启用',

`createby` varchar(200) NOT NULL COMMENT '创建人',

`createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP  COMMENT '创建时间',

`updateby` varchar(200) NULL DEFAULT 'anonymous' COMMENT '最后修改人',

`updateTime` datetime NULL DEFAULT CURRENT_TIMESTAMP  COMMENT '最后修改时间',

PRIMARY KEY (`id`) 

)

COMMENT='站点管理表'
;



CREATE TABLE `Tbl_ShuttleInfo` (

`id` bigint NOT NULL AUTO_INCREMENT COMMENT '接送信息id',

`lineId` bigint NOT NULL COMMENT '线路主表id -- 线路主表外键关联',

`startId` bigint NOT NULL COMMENT '始发站 - 车站管理表外键关联',

`startTime` varchar(5) NOT NULL COMMENT '发车时间(xx:xx)',

`trip` varchar(1) NOT NULL DEFAULT 'N' COMMENT '去程是否接送 - N   去程不接送\r\nY    去程接送',

`tripId` bigint NULL COMMENT '去程接送规则id',

`returnTrip` varchar(1) NOT NULL DEFAULT 'N' COMMENT '回程是否接送 - N   回程不接送\r\nY    回程接送',

`returnTripId` bigint NULL COMMENT '回程接送规则id',

`createby` varchar(200) NOT NULL COMMENT '创建人',

`createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',

`updateby` varchar(200) NULL DEFAULT 'anonymous' COMMENT '最后修改人',

`updateTime` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改时间',

PRIMARY KEY (`id`) 

)

COMMENT='接送信息表'
;



CREATE TABLE `Tbl_Triprules` (

`tripId` bigint NOT NULL AUTO_INCREMENT COMMENT '接送规则id',

`tripType` varchar(2) NOT NULL COMMENT '接送规则id - QC   去程\r\nHC   回程',

`busLocation` varchar(200) NOT NULL COMMENT '上车点',

`starttime` varchar(5) NOT NULL COMMENT '时间',

`price` numeric(20,3) NOT NULL COMMENT '价格',

`remark` varchar(200) NULL COMMENT '备注',

`status` varchar(1) NOT NULL DEFAULT 'Y' COMMENT '是否启用\r\nN  不启用\r\nY   启用',

`createby` varchar(200) NOT NULL COMMENT '创建人',

`createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',

`updateby` varchar(200) NULL DEFAULT 'anonymous' COMMENT '最后修改人',

`updateTime` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改时间',

PRIMARY KEY (`tripId`) 

)

COMMENT='接送规则表'
;



CREATE TABLE `Tbl_ExtendInfo` (

`id` bigint NOT NULL AUTO_INCREMENT COMMENT '扩展信息id',

`lineId` bigint NOT NULL COMMENT '线路主键id - 与线路主表外键关联',

`remind` text NOT NULL COMMENT '特别提醒',

`lineFeature` text NULL COMMENT '线路特色',

`include` text NOT NULL COMMENT '费用包含',

`notInclude` text NOT NULL COMMENT '费用不包含',

`remarks` text NULL COMMENT '补充说明',

`shopping` text NULL COMMENT '购物说明',

`note` text NOT NULL COMMENT '注意事项',

`createby` varchar(200) NOT NULL COMMENT '创建人',

`createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',

`updateby` varchar(200) NULL DEFAULT 'anonymous' COMMENT '最后修改人',

`updateTime` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改时间',

PRIMARY KEY (`id`) 

)

COMMENT='扩展信息表'
;



CREATE TABLE `Tbl_UserInfo` (

`id` bigint NOT NULL AUTO_INCREMENT COMMENT '会员id',

`userType` varchar(1) NOT NULL DEFAULT 'U' COMMENT '会员类型 - G   供应商\r\nF    分销商\r\nU   普通用户\r\nL    莲花之旅运维管理员',

`userPid` bigint NOT NULL DEFAULT 0 COMMENT '分销商的供应商id',

`username` varchar(200) NOT NULL COMMENT '会员姓名',

`mobile` varchar(20) NOT NULL COMMENT '电话',

`IDCard` varchar(18) NOT NULL COMMENT '会员证件',

`status` varchar(1) NOT NULL DEFAULT 'N' COMMENT '会员状态 - N     正常会员\r\nF      冻结会员\r\nA       异常会员\r\nD      删除   软删除',

`createby` varchar(200) NULL COMMENT '创建人',

`createTime` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',

`updateby` varchar(200) NULL DEFAULT 'anonymous' COMMENT '最后修改人',

`updateTime` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改时间',

PRIMARY KEY (`id`) 

)

COMMENT='会员信息表'
;



CREATE TABLE `Tbl_OperatorInfo` (

`id` bigint NOT NULL AUTO_INCREMENT COMMENT '操作员id',

`userId` bigint NOT NULL COMMENT '会员id',

`opacct` varchar(100) NOT NULL COMMENT '操作员登录账户',

`operpwd` varchar(100) NOT NULL COMMENT '操作员密码 - 密码将采用SHA-256做数据指纹，不能直接保存密码.',

`operName` varchar(200) NOT NULL COMMENT '操作员姓名',

`gender` varchar(1) NULL COMMENT '操纵员性别 - M    男\r\nW    女',

`restTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '口令重置时间',

`retryCount` int NOT NULL DEFAULT 0 COMMENT '登录错误次数',

`status` varchar(1) NOT NULL DEFAULT 'R' COMMENT '操作员状态 - R    待审核\r\nA    正在审核\r\nP    审核通过\r\nR     审核拒绝\r\nN    正常\r\nF     冻结\r\nB     异常\r\nD    软删除',

`lastLoginTime` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后登录时间',

`lastLoginIp` varchar(15) NOT NULL COMMENT '最后登录ip',

`createby` varchar(200) NOT NULL COMMENT '创建人',

`createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',

`updateby` varchar(200) NULL DEFAULT 'anonymous' COMMENT '最后修改人',

`updateTime` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改时间',

PRIMARY KEY (`id`) ,

UNIQUE INDEX `index_opacct` (`opacct`)

)

COMMENT='会员操作员表'
;



CREATE TABLE `Tbl_OrderInfo` (

`id` bigint NOT NULL AUTO_INCREMENT COMMENT '订单编号',

`orderNo` varchar(20) NOT NULL COMMENT '订单编号',

`lineId` bigint NOT NULL COMMENT '线路id',

`drpid` bigint NOT NULL COMMENT '分销商id',

`guide` varchar(200) NULL,

`guideTel` varchar(20) NULL,

`driver` varchar(200) NULL,

`driverTel` varchar(20) NULL,

`ordamt` numeric(24,3) NULL COMMENT '订单金额',

`startTime` datetime NULL COMMENT '出发日期',

`status` varchar(1) NULL DEFAULT 'D' COMMENT '订单状态 - D     订单草稿\r\nS      订单提交\r\nA      正在审核\r\nP      审核通过\r\nF      审核拒绝\r\nE      订单执行中\r\nC      订单确认\r\n',

`orderTime` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '订单生成时间',

`createby` varchar(200) NULL COMMENT '创建人',

`createTime` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',

`updateby` varchar(200) NULL DEFAULT 'anonymous' COMMENT '最后修改人',

`updateTime` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改时间',

PRIMARY KEY (`id`) 

)

COMMENT='订单主表'
;



CREATE TABLE `Tbl_PayInfo` (

`id` bigint NOT NULL AUTO_INCREMENT COMMENT '付款id',

`payNo` varchar(20) NOT NULL COMMENT '付款编号',

`cusNo` varchar(20) NULL COMMENT '自定义编号',

`orderId` bigint NOT NULL COMMENT '订单id',

`orderAmt` numeric(24,3) NOT NULL COMMENT '订单应付金额',

`payAmt` numeric(24,3) NULL COMMENT '订单实付金额',

`prepaidAmt` numeric(24,3) NULL COMMENT '订单预付金额',

`orderRebate` numeric(24,3) NULL COMMENT '订单返利',

`prepaidTime` datetime NULL COMMENT '预付款时间',

`finalAmt` numeric(24,3) NULL COMMENT '尾款',

`finalTime` datetime NULL COMMENT '尾款支付时间',

`payer` varchar(200) NOT NULL COMMENT '付款人',

`payTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '付款时间',

`status` varchar(1) NOT NULL DEFAULT 'D' COMMENT '付款状态 - D     付款草稿\r\nS      付款提交\r\nA      正在审核\r\nP      审核通过\r\nF      审核拒绝\r\nP      支付成功\r\n\r\n',

`createby` varchar(200) NOT NULL COMMENT '创建人',

`createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',

`updateby` varchar(200) NULL DEFAULT 'anonymous' COMMENT '最后修改人',

`updateTime` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改时间',

PRIMARY KEY (`id`) 

)

COMMENT='订单付款信息'
;



CREATE TABLE `Tbl_LogInfo` (

`logId` bigint NOT NULL AUTO_INCREMENT COMMENT '日志id',

`logCont` text NOT NULL COMMENT '操作内容',

`createby` varchar(200) NOT NULL COMMENT '操作人',

`createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '操作时间',

PRIMARY KEY (`logId`) 

)

COMMENT='日志表'
;



CREATE TABLE `Tbl_RoleInfo` (

`id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色id',

`userId` bigint NOT NULL COMMENT '用户id',

`roleName` varchar(200) NOT NULL COMMENT '角色名称',

`flag` varchar(1) NULL DEFAULT 'S' COMMENT '角色标识--\'S\' 系统创建   \'U\'  用户创建',

`remark` varchar(300) NULL COMMENT '备注',

`createby` varchar(200) NOT NULL COMMENT '创建人',

`createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',

`updateby` varchar(200) NULL DEFAULT 'anonymous' COMMENT '最后修改人',

`updateTime` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改时间',

PRIMARY KEY (`id`) 

)

COMMENT='角色表'
;



CREATE TABLE `Tbl_PermissionInfo` (

`id` bigint NOT NULL AUTO_INCREMENT COMMENT '权限id',

`pmsnName` varchar(200) NOT NULL COMMENT '权限名称',

`actionName` varchar(200) NOT NULL COMMENT '操作名称',

`remark` varchar(500) NULL COMMENT '备注',

`createby` varchar(200) NOT NULL COMMENT '创建人',

`createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',

`updateby` varchar(200) NULL DEFAULT 'anonymous' COMMENT '最后修改人',

`updateTime` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改时间',

PRIMARY KEY (`id`) 

)

COMMENT='权限表'
;



CREATE TABLE `Tbl_RolePermissionInfo` (

`id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色权限id',

`roleId` bigint NOT NULL COMMENT '角色id',

`pmsnId` bigint NOT NULL COMMENT '权限id',

`createby` varchar(200) NOT NULL COMMENT '创建人',

`createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',

`updateby` varchar(200) NULL COMMENT '最后修改人',

`updateTime` datetime NULL COMMENT '最后修改时间',

PRIMARY KEY (`id`) 

)

COMMENT='角色权限关联表'
;



CREATE TABLE `Tbl_MessageInfo` (

`msgId` bigint NOT NULL AUTO_INCREMENT COMMENT '消息通知id',

`msgType` varchar(3) NOT NULL DEFAULT 'ORD' COMMENT '消息类型 - ORD   订单相关\r\nLNE    线路相关\r\n',

`isRead` varchar(1) NOT NULL DEFAULT 'N' COMMENT '是否已读 - N      未读\r\nY       已读',

`message` text NOT NULL COMMENT '消息内容',

`createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',

PRIMARY KEY (`msgId`) 

)

COMMENT='系统消息表'
;



CREATE TABLE `Tbl_RolePmsnInfo` (

`id` bigint NOT NULL AUTO_INCREMENT COMMENT '操作员角色id',

`roleid` bigint NULL COMMENT '角色id',

`oprtid` bigint NULL COMMENT '操作员id',

`createby` varchar(200) NOT NULL COMMENT '创建人',

`createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',

PRIMARY KEY (`id`) 

)

COMMENT='角色操作员关联表'
;



CREATE TABLE `Tbl_LineAmtsInfo` (

`id` bigint NOT NULL AUTO_INCREMENT COMMENT '线路金额表id',

`lineId` bigint NOT NULL COMMENT '线路id',

`tripDate` date NOT NULL COMMENT '出团日期',

`tripPrice` numeric(24,5) NOT NULL COMMENT '金额',

`remark` varchar(500) NULL COMMENT '备注',

`createby` varchar(200) NOT NULL COMMENT '创建人',

`createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',

`updateby` varchar(200) NULL DEFAULT 'anonymous' COMMENT '最后修改人',

`updateTime` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改时间',

PRIMARY KEY (`id`) 

)

COMMENT='线路金额表'
;



CREATE TABLE `Tbl_AuditInfo` (

`id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,

`auditType` varchar(3) NOT NULL COMMENT '审核类型  \r\nORD    订单\r\nUSR     会员\r\nLNE     线路\r\n',

`referenceId` bigint NOT NULL COMMENT '关联表id',

`userid` bigint NOT NULL COMMENT '审核用户id',

`title` varchar(200) NOT NULL COMMENT '标题',

`status` varchar(255) NOT NULL COMMENT '状态\r\nN    草稿\r\nR    正在审核\r\nP     审核通过\r\nF      审核拒绝',

`remark` varchar(500) NULL COMMENT '备注',

`createby` varchar(255) NULL COMMENT '创建人',

`createTime` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',

`updteby` varchar(255) NULL DEFAULT 'anonymous' COMMENT '修改人',

`updateTime` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',

PRIMARY KEY (`id`) 

)

COMMENT='审核表'
;



CREATE TABLE `tbl_book_code` (

`codeId` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',

`code` varchar(200) NOT NULL COMMENT 'code',

`description` varchar(200) NULL COMMENT '备注',

`createby` varchar(200) NOT NULL COMMENT '创建人',

`createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP  COMMENT '创建时间',

`updateby` varchar(200) NOT NULL DEFAULT 'anonymous' COMMENT '最后修改人',

`updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP  COMMENT '最后修改时间',

PRIMARY KEY (`codeId`) 

)

COMMENT='字典表'
;



CREATE TABLE `tbl_book_value` (

`valueId` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',

`codeId` bigint NOT NULL COMMENT 'code外键',

`value` varchar(200) NOT NULL COMMENT '值',

`description` varchar(200) NULL COMMENT '备注',

`createby` varchar(200) NOT NULL COMMENT '创建人',

`createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP  COMMENT '创建时间',

`updateby` varchar(200) NOT NULL DEFAULT 'anonymous' COMMENT '最后修改人',

`updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP  COMMENT '最后修改时间',

PRIMARY KEY (`valueId`) 

)

COMMENT='字典表'
;





ALTER TABLE `Tbl_OperatorInfo` ADD CONSTRAINT `fk_userid` FOREIGN KEY (`userId`) REFERENCES `Tbl_UserInfo` (`id`);

ALTER TABLE `Tbl_RolePmsnInfo` ADD CONSTRAINT `fk_roleid` FOREIGN KEY (`roleid`) REFERENCES `Tbl_RoleInfo` (`id`);

ALTER TABLE `Tbl_RolePmsnInfo` ADD CONSTRAINT `fk_oprtid` FOREIGN KEY (`oprtid`) REFERENCES `Tbl_OperatorInfo` (`id`);

ALTER TABLE `Tbl_RolePermissionInfo` ADD CONSTRAINT `fk_rlpm_roleid` FOREIGN KEY (`roleId`) REFERENCES `Tbl_RoleInfo` (`id`);

ALTER TABLE `Tbl_RolePermissionInfo` ADD CONSTRAINT `fk_pmsnid` FOREIGN KEY (`pmsnId`) REFERENCES `Tbl_PermissionInfo` (`id`);

ALTER TABLE `Tbl_ExtendInfo` ADD CONSTRAINT `fk_ext_lineid` FOREIGN KEY (`lineId`) REFERENCES `Tbl_LineInfo` (`id`);

ALTER TABLE `Tbl_PayInfo` ADD CONSTRAINT `fk_pay_orderid` FOREIGN KEY (`orderId`) REFERENCES `Tbl_OrderInfo` (`id`);

ALTER TABLE `Tbl_ShuttleInfo` ADD CONSTRAINT `fk_shut_lineid` FOREIGN KEY (`lineId`) REFERENCES `Tbl_LineInfo` (`id`);

ALTER TABLE `Tbl_ShuttleInfo` ADD CONSTRAINT `fk_shut_startid` FOREIGN KEY (`startId`) REFERENCES `Tbl_StationInfo` (`id`);

ALTER TABLE `Tbl_OrderInfo` ADD CONSTRAINT `fk_order_lineid` FOREIGN KEY (`lineId`) REFERENCES `Tbl_LineInfo` (`id`);

ALTER TABLE `Tbl_OrderInfo` ADD CONSTRAINT `fk_order_drpid` FOREIGN KEY (`drpid`) REFERENCES `Tbl_UserInfo` (`id`);

ALTER TABLE `Tbl_LineAmtsInfo` ADD CONSTRAINT `fk_amt_lineId` FOREIGN KEY (`lineId`) REFERENCES `Tbl_LineInfo` (`id`);

ALTER TABLE `Tbl_RoleInfo` ADD CONSTRAINT `fk_role_userid` FOREIGN KEY (`userId`) REFERENCES `Tbl_UserInfo` (`id`);

ALTER TABLE `tbl_book_value` ADD CONSTRAINT `fk_val_cid` FOREIGN KEY (`codeId`) REFERENCES `tbl_book_code` (`codeId`);



