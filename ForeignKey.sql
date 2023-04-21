#foreign Key...
use products;

create table supplier(
supid int,
firstName varchar(30) not null,
lastName varchar(30),
phoneNumber bigint not null,
email varchar(50),
primary key(supid)
);
desc supplier;
select * from supplier;

create table item(
itemId int primary key,
itemName varchar(30),
cost float,
supid int,
foreign key(supid) references supplier(supid) 
);
insert into item
values(1,"Pendrive",670,101);

insert into item
values(2,"Harddisk",950,102);

insert into item
values(3,"WebCamera",500,102);

insert into item
values(4,"WebCamera",800,104);

insert into item
values(5,"HeadPhone",540,101);

desc item;
select * from item;

desc item;




