CREATE DATABASE EnterpriseManagerTools;
show DATABASES;
use EnterpriseManagerTools;

CREATE table `staff` (
	`id` int AUTO_INCREMENT PRIMARY KEY,
	`account_number` int NOT NULL COMMENT '职工工号',
	`name` VARCHAR(64) NOT NULL COMMENT '姓名',
	`sex` CHAR(1) NOT NULL COMMENT '性别：M-男,F-女',
	`mobile_number` bigint NOT NULL COMMENT '手机号码',
	`birthday` DATE NOT NULL COMMENT '出生日期',
	`email` CHAR(64) NOT NULL COMMENT '电子邮箱',
	`nationality` CHAR(16) DEFAULT 'CHINA' NOT NULL COMMENT '国籍',
	`id_type` int DEFAULT 1 COMMENT '证件类型：1-身份证',
	`id_no` CHAR(32) NOT NULL COMMENT '证件号码',
	UNIQUE KEY unique_accountNumber(account_number)
) DEFAULT CHAR SET UTF8;

drop table staff;
show TABLES;
desc staff;

insert into staff (account_number, name, sex, mobile_number, birthday, email, nationality, id_type, id_no)
values (1, 'Garry', 'M', 13111111111, '1980-01-01', 'garry@qq.com', 'CHINA', 1, '999999');

select * from staff;