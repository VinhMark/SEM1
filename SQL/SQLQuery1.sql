use customer_db
go
drop table customer

create table customer(
	custId bigint not null,
	custName varchar(100)
)

insert into customer(custId) values(1001)
insert into customer(custId,custName) values(1002,'')
select * from customer
--
alter table customer
	alter column custName nvarchar(150) null
--thêm cột nhày tháng
alter table customer
	add dob datetime
--thêm cột địa chỉ
alter table customer
	add custAdd nvarchar(200)
--xóa cột địa chỉ
alter table customer
	drop column custAdd

--chèn đủ column thì có thể ko cần ghi tên column
insert into customer values(1003,'tobiss','10/03/1997')
--chèn thiếu cột thì vui lòng điền column
insert into customer(custId,dob) values(1003,'10/03/1997')
select * from customer

--cập nhật tên customer
update customer
 set custName=N'Pham Van Cu',dob = '01/11/1997'
	where custId=1002
delete from customer
	where custId=1003
select * from customer

create table supplier
(
	supId bigint not null,
	contactName varchar(100),
	supType nvarchar(20) default('dealer')
) 
drop table supplier
insert into supplier(supId,contactName)
	values(100,'My sup')
select * from supplier