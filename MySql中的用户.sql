use mysql;
show tables;

select *
from user;

-- 增加一个用户，其中的password函数是一个加密函数
INSERT INTO user 
(host, user, authentication_string,select_priv, insert_priv, update_priv) 
VALUES ('localhost', 'guest',PASSWORD('guest123'), 'Y', 'Y', 'Y');

-- 重新载入授权表
FLUSH PRIVILEGES;

-- 删除一个用户
delete
from user
where user='guest';