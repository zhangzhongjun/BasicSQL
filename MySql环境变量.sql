-- 如何查看系统变量
show global variables like '%user%';	
show global variables;
-- 如何引用系统变量
select @@version;

select version();

-- 查看字符编码
show variables like 'char%';

-- 设置客户端字符编码
SET CHARACTER_SET_CLIENT='gbk';

-- 设置关闭外键约束
SET FOREIGN_KEY_CHECKS = 0;

-- 查看隔离级别
select @@tx_isolation;

