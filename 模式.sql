-- 设置关闭外键约束
SET FOREIGN_KEY_CHECKS = 0;

show databases;

use runoob;

-- 新建一个模式
CREATE SCHEMA test_schema;
-- 删除一个模式
DROP SCHEMA  test_schema ;

-- 删除数据库
DROP TABLE IF EXISTS test_schema.student;
DROP TABLE IF EXISTS test_schema.course;
DROP TABLE IF EXISTS test_schema.sc;
-- 在该模式下面新建一张学生表
CREATE TABLE test_schema.student(
	Sno CHAR(9) PRIMARY KEY,
    Sname CHAR(20) UNIQUE,
    Sage SMALLINT CHECK (Sage<100 and Sage>10),
    Ssex CHAR(4) CHECK (Ssex IN('男','女'))
);
-- 在该模式下面新建一张课程表
CREATE TABLE test_schema.course(
	Cno CHAR(4) PRIMARY KEY,
    Cname CHAR(20) NOT NULL
);
-- 在该模式下面新建一张学生选课表
CREATE TABLE test_schema.sc(
	Sno CHAR(9),
    Cno CHAR(4),
    Grade SMALLINT,
    FOREIGN KEY (Sno) REFERENCES student(Sno),
    FOREIGN KEY (Cno) REFERENCES course(Cno)
);
-- 建立索引
CREATE UNIQUE INDEX stuno ON student(Sno);
-- 删除索引
DROP INDEX stuno;

-- 查看表
show tables;


show tables;
select * from books;
delete from books;
select bname from books where category=1;
desc books;

select * from apps;

insert into apps values(6,'test app','http://test.com','CN',1);

-- 查询个别列
SELECT Sno,Sname
FROM Student;
-- 查询全部列
SELECT *
FROM student;
-- 查询经过计算的值
SELECT Sname,2017- Sage
FROM student;
-- 在查询结果中插入一列
SELECT Sname,'出生年：',2017- Sage
FROM student;
-- 起别名
SELECT Sname, 2017- Sage '出生年'
FROM student;
-- 消除查询表中的重复结果
SELECT DISTINCT Sno
FROM sc;
-- 查询满足条件的元组
SELECT *
FROM student
WHERE Sage BETWEEN 10 AND 12;

SELECT *
FROM student
WHERE Ssex ='男';

SELECT *
FROM student
WHERE Sdept IN ('CS','MA');

SELECT *
FROM student
WHERE Sname LIKE '刘%';

SELECT *
FROM course
WHERE Cname LIKE 'DB\_Design' ESCAPE '\';





show schemas;
show databases;

-- 设置关闭外键约束
SET FOREIGN_KEY_CHECKS = 1;