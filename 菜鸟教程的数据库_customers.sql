/*
 * 本例为菜鸟教程（http://www.runoob.com）上的SQL教程所采用的数据库
 * 是一些网站的信息
 *
*/

-- 创建数据库
create database if not exists RUNOOB CHARSET=utf8;
alter database character set utf8;
-- 使用这个新建的数据库
use RUNOOB;

-- 新建一个表
drop table if exists costumes;
create table IF NOT EXISTS costumes(
	cid CHAR(32) PRIMARY KEY,
	cname VARCHAR(40) NOT NULL,
	gender VARCHAR(6) NOT NULL,
	birthday CHAR(10),
	cellphone VARCHAR(15) NOT NULL,
	cmail VARCHAR(10),
	description VARCHAR(500)
);
-- 展示所有的表
show tables;

-- 查看 websites表的列的相关信息
desc costumes;

-- 查看 websites表的列的相关信息
show columns from costumes;

select * from costumes;


alter table costumes
rename to customers;


alter table customers
change cmail cmail varchar(30);