-- 使用group by来对搜索结果分组
-- 使用having对group by之后的结果筛选（因为where不能用在group by中）

show databases;
use world;
show tables;

select code,Continent,count(Name) as sum
from country
group by Continent
having sum>15;

-- 对于sql serve来说
-- 凡是在group by后面出现的字段（即分组列），必须同时在select后面出现；
-- 凡是在select后面出现的、同时未在聚合函数中出现的字段，必须同时出现在group by后面”
-- 即，只能select聚合函数 或 group by后面的字段
select code
from country
group by Continent;

