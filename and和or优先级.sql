use world;

-- 因为and的优先级大于or，所以下面的注入是不会成功的
select *
from country
where Code='' or '1'='1' and Name='';

-- 通过增加一个新的or条件解决
select *
from country
where Code='' or '1'='1' or '1'='1' and Name='';

-- 对第二个属性进行攻击
select *
from country
where Code='' and Name ='' or '1'='1';

-- and的优先级大于or
select false or true and false;
select false and false or true;

select false or true or true and false;

