-- Connection Id: 20
-- User: root
-- Host: localhost
-- DB: None
-- Command: Sleep
-- Time: 1
-- State: None

-- 大部分数据库会把 用绝对值引起来的数字 转化为 数字
-- 但是SQL SERVER不会，它重载了+ ，‘2’+‘2’=‘22’
select '2'+'2';