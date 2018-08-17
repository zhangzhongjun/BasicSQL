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
drop table if exists users;
create table IF NOT EXISTS users(
	id int not null auto_increment primary key,
    username varchar(20) not null,
    password varchar(20) not null);

-- 展示所有的表
show tables;

-- 查看 websites表的列的相关信息
desc users;

-- 查看 websites表的列的相关信息
show columns from users;

-- 向websites表中插入数据 
-- 插入部分列 未给出的列赋值为null
-- 插入全部列 按照创建表时的顺序赋值（deprecate）
insert into users 
(id,username,password)
values
(1,"root","root"),(null,"root","root"),(null,"root","root"),(null,"root","root");

select * from users;


alter table users
add (
	verify varchar(20)
);


alter table users
change verify  verifycode varchar(20);
