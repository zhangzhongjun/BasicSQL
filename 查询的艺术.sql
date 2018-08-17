use RUNOOB;

-- 去除重复行
select distinct temp from websites;

-- 别名
select *,id*1.5 乘了个数 from websites;

-- 不能被转化成数字时，变成0
select *,name*1.5 from websites;
select id+temp from websites;
select id+ifnull(temp,0) from websites;

-- 两位 第一位是1 _匹配一个字符
select * from websites where alexa like '1_';
-- 第一位是1 %匹配0-n个字符
select * from websites where alexa like '1%';

-- 主比较列 次比较列
select * from websites order by alexa asc , id desc;

-- 为null的不计数
select count(temp) from websites;
-- 一行上全不为null的不计数
select count(*) from websites;
-- 数字的效果 和 * 相同
select count(1) from websites;

-- 分组查询 因为要查询组信息，所以一般要使用聚集函数
select country,count(*) as 个数,min(alexa) as 最高排名 from websites group by country;
select country,count(*) as 个数,min(alexa) as 最高排名  from websites where alexa<1000 group by country;

select country,count(*) as 个数,min(alexa) as 最高排名  
from website
where alexa<1000 
group by country
having 最高排名<200
order by 最高排名 asc;

-- select后面的东西只能是 分组列 和 聚集函数

select country,count(*) as 个数,min(alexa) as 最高排名  from websites where alexa<1000 group by country having 最高排名<20 order by 最高排名;

-- MYSQL独有的，从第0行开始，要3行
select * from websites limit 0,3;

-- 合并结果集
select * from website
union all
select * from apps;

-- 内连接 方言写法
select *
from website,apps
where website.id = apps.belong_web;

-- 标准写法
select *
from websites 别名1 inner join apps 别名2
on 别名1.id = 别名2.id;

-- 自然连接  找列名相同的 
select *
from websites w1 natural join apps w2;

-- 左外连接
select *
from websites left out join apps
on websites.id = apps.belong_web
order by apps.id asc;


-- 右外连接
select *
from websites right outer join apps
on websites.id = apps.belong_web
order by apps.id asc;


-- 子查询 查询和tt 相同工作 相同部门 相同工资的人
select *
from emp
where(job,depno,sal) in (select job,depno,sal from emp where ename='tt');


-- 方言 从第0行开始，要2行
select *from customers limit 0,2;


-- 连接查询包括
-- 等值连接：查询条件是某表的一列和另一个表的一列值相等
-- 自然连接：一种特殊的等值连接,参加比较的两列必须同名,且在查询结果去掉重复列
-- 自身连接：自己和自己连接
-- 悬浮元组：在自然查询中，关系R中某些元组有可能在S中不存在公共属性上值相等的元组，R中这些元组在操作时被舍弃；同样S中的某些元组也会被舍弃。这些被舍弃的元组叫做悬浮元组。
-- 外连接：不将悬浮元组舍弃，而是在他缺少值的地方填上NULL
-- 左外连接：只保留左边关系的悬浮元组
-- 右外连接：只保留右边关系的悬浮元组

