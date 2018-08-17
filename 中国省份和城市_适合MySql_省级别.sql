USE runoob;

DROP TABLE IF EXISTS provinces;
CREATE TABLE IF NOT EXISTS provinces(
	pid INT NOT NULL PRIMARY KEY,
	pname VARCHAR(50) NOT NULL,
	datecreated DATETIME NULL,
	dateupdated DATETIME NULL);
    
DESC provinces;
SELECT * FROM provinces;
DELETE FROM provinces;

SET FOREIGN_KEY_CHECKS = 0;
INSERT provinces (pid, pname,datecreated,dateupdated) VALUES (1, N'北京市',NOW(),NOW()); 
INSERT provinces (pid, pname,datecreated,dateupdated) VALUES (2, N'天津市',NOW(),NOW());
INSERT provinces (pid, pname,datecreated,dateupdated) VALUES (3, N'河北省',NOW(),NOW());
INSERT provinces (pid, pname,datecreated,dateupdated) VALUES (4, N'山西省',NOW(),NOW());
INSERT provinces (pid, pname,datecreated,dateupdated) VALUES (5, N'内蒙古自治区',NOW(),NOW());
INSERT provinces (pid, pname,datecreated,dateupdated) VALUES (6, N'辽宁省',NOW(),NOW());
INSERT provinces (pid, pname,datecreated,dateupdated) VALUES (7, N'吉林省',NOW(),NOW());
INSERT provinces (pid, pname,datecreated,dateupdated) VALUES (8, N'黑龙江省',NOW(),NOW());
INSERT provinces (pid, pname,datecreated,dateupdated) VALUES (9, N'上海市',NOW(),NOW());
INSERT provinces (pid, pname,datecreated,dateupdated) VALUES (10, N'江苏省',NOW(),NOW());
INSERT provinces (pid, pname,datecreated,dateupdated) VALUES (11, N'浙江省',NOW(),NOW());
INSERT provinces (pid, pname,datecreated,dateupdated) VALUES (12, N'安徽省',NOW(),NOW());
INSERT provinces (pid, pname,datecreated,dateupdated) VALUES (13, N'福建省',NOW(),NOW());
INSERT provinces (pid, pname,datecreated,dateupdated) VALUES (14, N'江西省',NOW(),NOW());
INSERT provinces (pid, pname,datecreated,dateupdated) VALUES (15, N'山东省',NOW(),NOW());
INSERT provinces (pid, pname,datecreated,dateupdated) VALUES (16, N'河南省',NOW(),NOW());
INSERT provinces (pid, pname,datecreated,dateupdated) VALUES (17, N'湖北省',NOW(),NOW());
INSERT provinces (pid, pname,datecreated,dateupdated) VALUES (18, N'湖南省',NOW(),NOW());
INSERT provinces (pid, pname,datecreated,dateupdated) VALUES (19, N'广东省',NOW(),NOW());
INSERT provinces (pid, pname,datecreated,dateupdated) VALUES (20, N'广西壮族自治区',NOW(),NOW()); 
INSERT provinces (pid, pname,datecreated,dateupdated) VALUES (21, N'海南省',NOW(),NOW());
INSERT provinces (pid, pname,datecreated,dateupdated) VALUES (22, N'重庆市',NOW(),NOW());
INSERT provinces (pid, pname,datecreated,dateupdated) VALUES (23, N'四川省',NOW(),NOW());
INSERT provinces (pid, pname,datecreated,dateupdated) VALUES (24, N'贵州省',NOW(),NOW());
INSERT provinces (pid, pname,datecreated,dateupdated) VALUES (25, N'云南省',NOW(),NOW());
INSERT provinces (pid, pname,datecreated,dateupdated) VALUES (26, N'西藏自治区',NOW(),NOW());
INSERT provinces (pid, pname,datecreated,dateupdated) VALUES (27, N'陕西省',NOW(),NOW());
INSERT provinces (pid, pname,datecreated,dateupdated) VALUES (28, N'甘肃省',NOW(),NOW());
INSERT provinces (pid, pname,datecreated,dateupdated) VALUES (29, N'青海省',NOW(),NOW());
INSERT provinces (pid, pname,datecreated,dateupdated) VALUES (30, N'宁夏回族自治区',NOW(),NOW()); 
INSERT provinces (pid, pname,datecreated,dateupdated) VALUES (31, N'新疆维吾尔自治区',NOW(),NOW());
INSERT provinces (pid, pname,datecreated,dateupdated) VALUES (32, N'香港特别行政区',NOW(),NOW());
INSERT provinces (pid, pname,datecreated,dateupdated) VALUES (33, N'澳门特别行政区',NOW(),NOW()); 
INSERT provinces (pid, pname,datecreated,dateupdated) VALUES (34, N'台湾省',NOW(),NOW());
SET FOREIGN_KEY_CHECKS = 1;


