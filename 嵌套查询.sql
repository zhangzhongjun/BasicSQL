use world;
show tables;

-- 嵌套查询
select *
from country 
where Population >= (select Population from country where Name='India');

-- 嵌套查询 亚洲所有的城市
select *
from city
where CountryCode in (select Code from country where Continent='Asia');

-- 嵌套查询 同样是亚洲所有城市
select * 
from city
where CountryCode = some(select Code from country where Continent='Asia');

select ID,Name,(select SurfaceArea from country where name ='city') as SurfaceArea
from city where CountryCode = 'CHN';
