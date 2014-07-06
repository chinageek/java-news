use news;
set names utf8;

create table t_demo(
id int unsigned auto_increment primary key,
name varchar(16) not null,
sex varchar(6) not null,
age int not null
);

CREATE TABLE `message` (
	`id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`type` VARCHAR(50) NULL DEFAULT NULL COMMENT '类型',
	`code` VARCHAR(20) NULL DEFAULT NULL COMMENT '身份证',
	`location` VARCHAR(20) NULL DEFAULT NULL COMMENT '位置',
	`birthday` VARCHAR(20) NULL DEFAULT NULL COMMENT '生日',
	`gender` VARCHAR(100) NULL DEFAULT NULL COMMENT '性别',
	`ip` VARCHAR(100) NULL DEFAULT NULL COMMENT 'ip',
	`phonenum` VARCHAR(100) NULL DEFAULT NULL COMMENT '电话',
	`createtime`  datetime NOT NULL COMMENT '插入时间',
	PRIMARY KEY (`id`)
)COMMENT='信息' DEFAULT CHARSET=utf8 COLLATE='utf8_general_ci' ENGINE=InnoDB;


CREATE TABLE `ip` (
	`id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`country` VARCHAR(50)  COMMENT '国家',
	`country_id` VARCHAR(50)  COMMENT '国家ID',
	`area` VARCHAR(50)  COMMENT '地区',
	`area_id` VARCHAR(50)  COMMENT '地区ID',
	`region` VARCHAR(50)  COMMENT '区',
	`region_id` VARCHAR(50)  COMMENT '区ID',
	`city` VARCHAR(50)  COMMENT '城市',
	`city_id` VARCHAR(50)  COMMENT '城市ID',
	`county`  VARCHAR(50)  COMMENT '',
	`county_id`  VARCHAR(50)  COMMENT '',
	`isp`  VARCHAR(50)  COMMENT '供应商',
	`isp_id`  VARCHAR(50)  COMMENT '供应商ID',
	`ip`  VARCHAR(50) NOT NULL COMMENT 'ip',
	PRIMARY KEY (`id`)
)COMMENT='ip信息' DEFAULT CHARSET=utf8 COLLATE='utf8_general_ci' ENGINE=InnoDB;