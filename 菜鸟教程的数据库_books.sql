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
drop table if exists books;
create table IF NOT EXISTS books(
	bid CHAR(32) PRIMARY KEY,
	bname VARCHAR(100) NOT NULL,
	price NUMERIC(10,2) NOT NULL,
	category INT NOT NULL,
);
-- 展示所有的表
show tables;

-- 查看 websites表的列的相关信息
desc books;

-- 查看 websites表的列的相关信息
show columns from books;

select * from books;
