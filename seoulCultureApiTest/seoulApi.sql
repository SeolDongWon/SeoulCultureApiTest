--테이블
drop table culturalEventInfo;
create table culturalEventInfo(
        CODENAME varchar2(1000),			-- 1 분류
        GUNAME varchar2(1000),	-- 2 자치구
		TITLE varchar2(1000)		,	-- 3 공연/행사명
		EVENTDATE varchar2(1000)		,	-- 4 날짜/시간
		PLACE varchar2(1000)		,	-- 5 장소
		ORG_NAME varchar2(1000)	,	-- 6 기관명
		USE_TRGT varchar2(1000)	,		-- 7 이용대상
		USE_FEE varchar2(1000)	,		-- 8 이용요금
		PLAYER varchar2(1000)		,	-- 9 출연자정보
		PROGRAM varchar2(1000)	,	-- 10 프로그램소개
        ETC_DESC varchar2(1000)	,		-- 11 기타내용
		ORG_LINK varchar2(1000)	,	-- 12 홈페이지 주소
		MAIN_IMG varchar2(1000)	,		-- 13 대표이미지
		RGSTDATE varchar2(1000)	,		-- 14 신청일
		TICKET varchar2(1000)		,	-- 15 시민/기관
		STRTDATE varchar2(1000)	,		-- 16 시작일
		END_DATE varchar2(1000)	,		-- 17 종료일
		THEMECODE varchar2(1000)	,		-- 18 테마분류
		LOT varchar2(1000)		,	-- 19 위도(X좌표)
		LAT varchar2(1000)		,	-- 20 경도(Y좌표)
		IS_FREE varchar2(1000)	,		-- 21 유무료
		HMPG_ADDR varchar2(1000)			-- 22 문화포털상세URL
        );
        
describe culturalEventInfo;
select * from culturaleventinfo;
delete from culturaleventinfo;
truncate table culturaleventinfo;
insert into culturaleventinfo values('','','','','','','','','','','','','','','','','','','','','','');
commit;

select * from culturaleventinfo where codename = '콘서트' and guname = '마포구';
select * from culturaleventinfo where 'codename' like '%콘서트%' and 'guname' like '%마포구%';
select * from culturaleventinfo where 1 like '%1%';


