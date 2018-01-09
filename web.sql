create database web

use web

create table roles(
r_id int primary key,
rname nvarchar(8) unique not null,
)

insert into roles values(1,'����Ա')
insert into roles values(2,'�û�')

create table users (
u_id int identity(1,1) primary key,
uname nvarchar(32) unique not null,
upass varchar(16) not null,
rid int references roles(r_id),
)

insert into users values('admin','admin',1)
insert into users values('xiaohong','123456',2)

delete from users where rid=2

 
select * from users

create table detail(
company nvarchar(16), 
flight varchar(16)primary key ,
start nvarchar(16), 
finish nvarchar(16),
)


insert into detail values('��򺽿�','GS7815','���','�ൺ')
insert into detail values('�Ҹ�����','JR1602','���','ʯ��ׯ')
insert into detail values('�й�����','CA1533','���','��³��')
insert into detail values('��Ԫ����','AQ1055','����','���')
insert into detail values('���ﺽ��','9C8930','����','�Ϻ�')
insert into detail values('�ӱ�����','NS8117','����','����')
insert into detail values('���ĺ���','G52909','����','�人')
insert into detail values('��������','MU2787','����','����')
insert into detail values('��������','MU2788','����','�Ϻ�')
insert into detail values('��������','MU2517','�ൺ','����')
insert into detail values('�Ϸ�����','CZ6551','֣��','����')
insert into detail values('�й�����','CA4418','����','�㺺')
insert into detail values('���ź���','MF8342','����','����')
insert into detail values('���ں���','ZH1359','����','�żҽ�')
insert into detail values('��������','MU5223','����','����')
insert into detail values('���ں���','ZH9969','�Ϻ�','̨��')
insert into detail values('��������','9H8308','����','����')

select * from detail where flight = 'GS7815'
select * from detail



