SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `files`
-- ----------------------------
DROP TABLE IF EXISTS `files`;
CREATE TABLE IF NOT EXISTS`files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  filename varchar(100),
  content mediumblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

alter table file
rename to files;

-- ----------------------------
--  Records of `access_log`
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;

SELECT * FROM files;
