CREATE TABLE `tbl_book_code` (
  `codeId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '代码id',
  `code` varchar(200) NOT NULL DEFAULT '' COMMENT '代码',
  `description` varchar(200) NOT NULL DEFAULT '' COMMENT '描述',
  `creatby` varchar(200) NOT NULL DEFAULT '' COMMENT '创建人',
  `creatTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateby` varchar(200) DEFAULT NULL COMMENT '更新人',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`codeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典代码表';


CREATE TABLE `tbl_book_value` (
  `codeId` bigint(20) DEFAULT NULL COMMENT '代码id',
  `valueId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '值id',
  `value` varchar(200) DEFAULT NULL COMMENT '值',
  `description` varchar(200) DEFAULT NULL COMMENT '描述',
  `creatby` varchar(200) NOT NULL DEFAULT '' COMMENT '创建人',
  `creatTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateby` varchar(200) DEFAULT NULL COMMENT '更新人',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`valueId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典值';
