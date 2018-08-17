/*
	start transcction:开始事务
    rollback:回滚
    commit:提交
*/
START TRANSACTION;
UPDATE accounts SET balance = balance - 10 WHERE name='zs';
UPDATE accounts SET balance = balance + 10 WHERE name='ls';
ROLLBACK;

START TRANSACTION;
UPDATE accounts SET balance = balance-10 WHERE name='zs';
UPDATE accounts SET balance = balance+10 WHERE name='ls';
COMMIT;

select * from accounts;