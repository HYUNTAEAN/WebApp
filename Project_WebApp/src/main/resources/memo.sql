/*
000

1. 제이쿼리 코드

	<script
	  src="https://code.jquery.com/jquery-3.6.0.js"
	  integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	  crossorigin="anonymous"></script>
	  
	JQuery Script문입니다.
	AJAX 안정성을 위해 통일 부탁드립니다.

2. 테이블 명세서

-- 회원 테이블 : user_tb --
create table user_tb(
    id  varchar2(10)    primary key
    ,password  varchar2(10)    not null
    ,count number
    ,theme number
    ,background varchar2(1000)
);

-- 북마크 테이블 : bookmark --
create table bookmark(
    bseq    number      primary key
    ,id     varchar2(10) references user_tb(id)
    ,bookurl    varchar2(1000) not null
);

-- 음악 테이블 : music --
create table music(
    mseq    number      primary key
    ,id     varchar2(10) references user_tb(id)
    ,fileurl    varchar2(1000) not null
);

-- 명령어 테이블 : command --
create table command(
    cseq    number      primary key
    ,id     varchar2(10) references user_tb(id)
    ,command    varchar(20) not null
    ,comurl     varchar(1000) not null
);

---

drop table user_tb;
drop table bookmark;
drop table music;
drop table command;

3. 깃허브

	
	항상 작업전에 
	New Branch -> Pull 
	이후 작업입니다.
	
	커밋시에는
	add to index -> commit and push -> 
	깃허브 저장소에서 Pull Request 신청 
	순서 입니다.
	
	
**/
