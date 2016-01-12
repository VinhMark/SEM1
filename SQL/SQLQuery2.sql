use customer_db
go
drop table Thisinh
create table Thisinh(
	SBD int not null,
	Hoten varchar(100) not null
	diachi nvarchar(100) not null
	ngaysinh datetime
)

insert into Thisinh values(01,'Tobiss','HCM city','10/03/1997')
select * from Thisinh
	alter column Thisinh
alter table Thisinh

