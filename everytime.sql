
-- 사용할 데이터베이스 생성
create database everytime;

-- 계정 생성
create user 'everytime'@localhost identified by 'everytime';

-- 계정에 권한 부여
grant all privileges on everytime.* to 'everytime'@localhost;

-- 변동 사항 즉시 반영
flush privileges;

-- 사용할 데이터베이스 선택
use everytime;

-- 멤버 테이블 (유저 테이블)
create table member (
    id 						varchar(30) not null,
    password 				varchar(30) not null,
    nickname 				varchar(30) primary key,
    email 					varchar(50) not null,
    academyname 			varchar(100) not null,
    del 					boolean default false    
);

-- 자유 게시판 테이블
create table freeboard (
	fbno 					int auto_increment primary key,
    fnickname 				varchar(30) references member(nickname),
    ftitle 					varchar(100) not null,
    fcontents 				varchar(200) not null,    
    fregdate 				datetime default current_timestamp,    
    fdel 					boolean default false
);

-- 자유 게시판 댓글 테이블
create table freereply (
	frrno 					int auto_increment primary key,
    frbno 					int references freeboard (fbno), 
    frnickname 				varchar(30) references member(nickname),
    frrcontents 			varchar(200) not null,
    frregdate 				datetime default current_timestamp,    
    frdel 					boolean default false
);

 -- 자유 게시판 추천 테이블
create table freeboardrec (
    fbrno 					int auto_increment primary key,
    frbno 					int references fbno(freeboard),
    frecid 					varchar(30) references id(member)
);

-- 자유 게시판 조회수 테이블
create table freeboardreadcount (
      fbrcno 				int auto_increment primary key,
      frbno 				int references fbno(freeboard),
      frcid 				varchar(30) references id(member)
);    

-- 자유 게시판 댓글 추천 테이블
create table freereplyrec (
      frrcno 				int auto_increment primary key,
      frrpno 				int references frrno(freereply),
      frrcid				varchar(30) references id(member)
);

-- 홍보 게시판 테이블
create table promotionboard (
    pbno 					int auto_increment primary key ,
    pnickname 				varchar(30) references member(nickname),
    ptitle 					varchar(100) not null,
    pcontents 				varchar(200) not null,
    pregdate 				datetime default current_timestamp,
    pdel 					boolean default false
);

-- 홍보 게시판 댓글 테이블
create table promotionreply (
    prrno 					int auto_increment primary key,
    prbno 					int references promotionboard (pbno), 
    prnickname 				varchar(30) references member(nickname),
    prrcontents 			varchar(200) not null,
    prregdate 				datetime default current_timestamp,
    prdel 					boolean default false
);

 -- 홍보 게시판 추천 테이블
create table promotionboardrec (
    pbrno 					int auto_increment primary key,
    prbno 					int references fbno(freeboard),
    precid 					varchar(30) references id(member)
);

-- 홍보 게시판 조회수 테이블
create table promotionboardreadcount (
      pbrcno			int auto_increment primary key,
      prbno 			int references fbno(freeboard),
      prcid 			varchar(30) references id(member)
);    

-- 홍보 게시판 댓글 추천 테이블
create table promotionreplyrec (
      prrcno 			int auto_increment primary key,
      prrpno 			int references frrno(freereply),
      prrcid 			varchar(30) references id(member)
);

-- 책방 판매 리스트 테이블
create table booklist (
	listnum 			int auto_increment primary key,
	isbn 				varchar(100),
    title 				varchar(100),
    authors 			varchar(100),
    publisher 			varchar(100),
    price 				varchar(100),
    translators			varchar(100),
    publishdate 		varchar(100),
    thumbnail 			varchar(1000)
);

-- 책방 상세 판매 테이블
create table booksell (
	listnum 			int references booklist(listnum),
    sellnum 			int auto_increment primary key,
    sellprice 			varchar(20),
    contents 			varchar(100),
	regdate				datetime default current_timestamp,
    underline			varchar(20) default '없음',
    writing 			varchar(20) default '없음',
    cover 				varchar(20) default '깨끗함',
    nameentry 			varchar(20) default '없음',
    pagecolor 			varchar(20) default '없음',
    pagestate 			varchar(20) default '없음',
    imgfile1 			varchar(1000) default null,
    imgfile2 			varchar(1000) default null,
    imgfile3 			varchar(1000) default null,
    delivery 			varchar(20) default '가능',
    directdeal 			varchar(20) default '가능',
    location 			varchar(100)
);

-- 메세지 테이블
CREATE table message (
    m_num               int auto_increment primary key,                 
    m_sender_nick       varchar(100) not null references member (nickname),
    m_sender_del        boolean default false,
    m_receiver_nick     varchar(100) not null references member (nickname),
    m_receiver_del      boolean default false,
    m_content           varchar(500) not null,    
    m_send_date         datetime default current_timestamp
);

select * from booksell;
