/*
 * 本例为菜鸟教程（http://www.runoob.com）上的SQL教程所采用的数据库
 * 是一些网站的信息
 *
*/

--  创建数据库
create database if not exists RUNOOB CHARSET=utf8;
alter database character set utf8;
--  使用这个新建的数据库
use RUNOOB;

--  新建一个表
drop table if exists Websites;
create table IF NOT EXISTS Websites(
	id int not null auto_increment primary key,
    name varchar(20) not null,
    url varchar(100) not null,
    alexa int not null,
    country varchar(5) not null
);

-- 展示所有的表
show tables;

-- 查看 websites表的列的相关信息
desc websiters;

-- 查看 websites表的列的相关信息
show columns from websites;

-- 向websites表中插入数据 
-- 插入部分列 未给出的列赋值为null
-- 插入全部列 按照创建表时的顺序赋值（deprecate）
insert into websites 
(id,name,url,alexa,country)
values
(1,'Google','https://www.google.cm/',1,'USA');

insert into websites 
(id,name,url,alexa,country)
values
(null,'淘宝','https://www.taobao.com/',13,'CN');

insert into websites 
(id,name,url,alexa,country)
values
(null,'菜鸟教程','http://www.runoob.com/',4689,'CN');

insert into websites 
(id,name,url,alexa,country)
values
(null,'微博','http://weibo.com/',20,'CN');

insert into websites 
(id,name,url,alexa,country)
values
(null,'Facebook','https://www.facebook.com/',3,'USA');

-- 更新表信息
/*
 * =  赋值/判断	使用set关键字区分  set ... = ...表示赋值 ，而 ...=...表示判断
 * != <> 不等于
 * > < <= >= 大于小于
 * BETWEEN ... AND ...  区间 ******包含端点******
 * IN (...)
 * IS NOT NULL 不为空
*/
update websites
set country='usa'
where id=5;

update websites
set country='USA'
where id='5' or name='hello world';

update websiters
set temp=1
where id in(1,2,3);

-- 查看websites表中的数据
select * from websites;


-- 修改表名称
alter table websites rename to websites_change;

show tables;

alter table websites_change rename to websites;
