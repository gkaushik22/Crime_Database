drop table tmpsalguide cascade constraints;
drop table tmpemp cascade constraints;
create table tmpemp as select * from emp;
create table tmpsalguide
( job varchar2(9) primary key,
 minsal number(7,2) not null,
 maxsal number(7,2) );

insert into tmpsalguide values ('CLERK', 5000, 15000);
insert into tmpsalguide values ('ANALYST', 10000, 20000);
insert into tmpsalguide values ('MANAGER', 20000, 40000);
insert into tmpsalguide values ('SALESMAN', 5000, 30000);
insert into tmpsalguide values ('PRESIDENT', 50000,'' );