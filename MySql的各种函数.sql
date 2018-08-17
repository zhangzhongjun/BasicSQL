-- 测试时间的函数，BENCHMARK(loop_count,expression). 
select benchmark(10000000,1+1);

/*
加密函数 ENCODE(str,pass_str)  
encrypts str using pass_str as the password.
The result is a binary string of the same length as str.
*/
select encode('hello','mom');

/*
解密函数 DECODE(crypt_str,pass_str) 
decrypts the encrypted string crypt_str using pass_str as the password.
crypt_str should be a string returned from ENCODE(). 
*/
select decode(encode('hello','mom'),'mom');

/*
	如果是null的话，使用0代替
*/
use RUNOOB;
select *,ifnull(temp,0) from websites;

/*
	字符串的连接
*/
select *,concat("我的名字是",name,' 我的地址是',url) as 介绍自己 from websites;


select NOW();

SELECT NOW() ,SLEEP(3), NOW();

SELECT SYSDATE(),SLEEP(3),SYSDATE();

SELECT CURDATE();

SELECT CURTIME();

SELECT UTC_DATE();

SELECT UTC_TIME();

SELECT UTC_TIMESTAMP();

