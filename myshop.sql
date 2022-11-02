create database myshop;
commit;
use myshop;
create table custom( cusId varchar(13) primary key,
cusPw varchar(200) not null, cusName varchar(50) not null,
address varchar(500) not null, tel varchar(14) not null,
regDate datetime default now(), point int default 0, level int default 0, visited int default 0
); 

create table notice(
	notiNo int primary key auto_increment,
	title varchar(50) not null,
	content varchar(1000) not null,
	author varchar(20) not null,
	resDate datetime default now()
    );

insert into notice(title, content, author) values("테스트 제목1","테스트 내용1","admin");
insert into notice(title, content, author) values("테스트 제목2","테스트 내용2","admin");
insert into notice(title, content, author) values("테스트 제목3","테스트 내용3","admin");
insert into notice(title, content, author) values("테스트 제목4","테스트 내용4","admin");
insert into notice(title, content, author) values("테스트 제목5","테스트 내용5","admin");
commit;

select * from notice order by notiNo desc;