-- Connection Id: 2
-- User: None
-- Host: None
-- DB: None
-- Command: Daemon
-- Time: 359
-- State: Suspending
-- 使用mysql提供的一个数据库 world进行测试
show databases;

-- 选择数据库
use world;

-- 查看所有的表
show tables;

-- 查看所有列的信息  包括列名 列类型 是否允许为空 是否为关键 默认值等
show columns from country;

-- 查找符合条件的记录
select * from city 
where CountryCode='CHN' and District='ShanXi'
 order by Name DESC;

-- count函数查看行数
select count(id) from city;

-- 插入一条记录
insert into city (ID,Name,CountryCode,District,Population)
values (4080,'LuLiang','CHN','Shanxi',100000);

-- 修改记录
update city
set District='ShanXi'
where Name='LuLiang' and CountryCode='CHN';

-- 删除一条记录
delete from city
where Name='LuLiang';
