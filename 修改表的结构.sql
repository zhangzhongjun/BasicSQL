use runoob;

--修改表——修改表名
alter table websites
rename to website;

--修改表——添加一列
alter table Websites
add (
	temp int,
	temp2 char(255)
);

--修改表——修改列类型
alter table Websites
modify temp char(255);

--修改表——修改列名 列类型
alter table Websites
change temp2 temp2_change char(255);

--修改表——删除一列
alter table Websites
drop temp2_change;

alter table Websites
drop temp;

--修改表——去除主键
alter table Websites
drop primary key;

--修改表——设置主键
alter table Websites
add primary key(列名)

-- 修改表——设置外键
alter table apps
add constraint fk_app_web
foreign key(belong_web) references website(id);


desc websites;

alter table website
rename to websites;