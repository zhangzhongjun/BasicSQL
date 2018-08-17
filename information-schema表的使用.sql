-- information_schema数据库是MySQL自带的
-- 它提供了访问数据库元数据的方式
-- 元数据是关于数据的数据，如数据库名或表名，列的数据类型，或访问权限等
-- 有些时候用于表述该信息的其他术语包括“数据词典”和“系统目录”。
use information_schema;

show tables;

-- 表columns 提供了表中的列信息。详细表述了某张表的所有列以及每个列的信息。
select * from COLUMNS;

-- 表column_privileges表示列权限
select * from COLUMN_PRIVILEGES;

-- 表tables 提供所有表的信息  （包括视图）
select * from tables;



-- SCHEMATA 提供所有数据库的信息 
-- showdatabases得到的数据就是该表的一部分
select * from SCHEMATA;


select *
from tables
where TABLE_SCHEMA = 'runoob';
-- 查看支持的编码
select *
from CHARACTER_SETS;

