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

select * from custom;

create table category(
	cateNo int primary key auto_increment,
	cateName varchar(50)
);

insert into category(cateName) values ("스낵");
insert into category(cateName) values ("라면");
insert into category(cateName) values ("간편식");
insert into category(cateName) values ("음료");

alter table notice add visited int default 0;

create table wearing(
	proNo int primary key,
    amount int);
    
    
create table product(
	proNo int primary key auto_increment,
	cateNo int not null,
	proName varchar(40) not null,
	proSpec varchar(500),
	oriPrice int not null,
	discountRate double not null,
	proPic varchar(200),
	proPic2 varchar(200)
);

commit;

select * from product;
select * from wearing;
desc sales;
create table sales(
	saleNo int primary key auto_increment,
    cusId varchar(13) not null,
    proNo int not null,
    amount int not null,
    saleDate datetime default now(),
    parselNo int,
    salePayNo int
);

desc sales;
select * from sales;

create table payment(
	salePayNo int primary key auto_increment,
    payMethod varchar(20),
    payCom varchar(50),
    cardNum varchar(40),
    payAmount int
);

desc qnaa;

commit;

desc cart;