create database everytime;

create user 'everytime'@localhost identified by 'everytime';

grant all privileges on everytime.* to 'everytime'@localhost;

use everytime;

create table member (
    id varchar(30) not null,
    password varchar(30) not null,
    nickname varchar(30) primary key,
    email varchar(50) not null,
    academyname varchar(100) not null,
    del boolean default false    
);
drop table freeboard;
drop table freereply;
drop table member;
create table freeboard (
	fbno int auto_increment primary key,
    fnickname varchar(30) references member(nickname),
    ftitle varchar(100) not null,
    fcontents varchar(200) not null,
    freadcount int default 0,
    fregdate datetime default current_timestamp,
    frecommendation int default 0,
    fdel boolean default false
);

create table freereply(
	frrno int auto_increment primary key,
    frbno int references freeboard (fbno), 
    frnickname varchar(30) references member(nickname),
    frrcontents varchar(200) not null,
    frregdate datetime default current_timestamp,
    frrecommendation int,
    frdel boolean default false
);


    
create table promotionboard (
    pbno int auto_increment primary key ,
    pnickname varchar(30) references member(nickname),
    ptitle varchar(100) not null,
    pcontents varchar(200) not null,
    preadcount int,
    pregdate date,
    precommendation int,
    pdel boolean default false
);

create table promotionreply(
    prrno int auto_increment primary key,
    prbno int references promotionboard (pbno), 
    prnickname varchar(30) references member(nickname),
    prrcontents varchar(200) not null,
    prregdate date,
    prrecommendation int,
    prdel boolean default false
);

SET SQL_SAFE_UPDATES = 0;
show variables where variable_name like '%dir';