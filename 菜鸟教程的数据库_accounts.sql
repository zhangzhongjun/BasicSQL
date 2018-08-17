SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

USE RUNOOB;
-- ----------------------------
--  Table structure for `accounts`
-- ----------------------------
DROP TABLE IF EXISTS `accounts`;
CREATE TABLE IF NOT EXISTS accounts(
	id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(20) ,
    balance int
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

ALTER TABLE accounts
CHANGE balance balance double(10,2);
-- ----------------------------
--  Records of `accounts`
-- ----------------------------
BEGIN;
INSERT INTO `accounts` VALUES (1, 'zs', 100),(null, 'ls', 100), (null,'ww',100);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;


SELECT * from accounts;