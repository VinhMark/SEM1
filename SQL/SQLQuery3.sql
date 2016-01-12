drop table customer

create table customer(
	custId bigint primary key,
	custName varchar not null
)
insert into customer(custId,custName) values(1003,'teo')
select * from customer

drop table customer
create table customer(
	custId bigint 
	constraint ten_gi_cung_duoc primary key,
	custName varchar(100) not null,
)
drop table customer
create table customer(
	custId bigint 
	constraint ten_gi_cung_duoc primary key,
	custName varchar(100) not null,
	phone char(10) constraint so_dt_trung unique
)
insert into customer values(1001,'teo','0168456950')
insert into customer values(1004,'meo')

drop table supplier
create table supplier(
	supId int primary key,
	supName	nvarchar(100) not null
)
create table product(
	productId bigint primary key,
	productName nvarchar(200) not null,
	supId int foreign key references supplier(supId)
)
insert into supplier values(111,'hai lua')
--giá tr? c?a c?t khóa ngo?i ph?i t?n t?i ? b?ng tham chi?u
insert into product values(101,'xoai tuong',111)

select * from product
select * from supplier