--���̺�
drop table culturalEventInfo;
create table culturalEventInfo(
        CODENAME varchar2(1000),			-- 1 �з�
        GUNAME varchar2(1000),	-- 2 ��ġ��
		TITLE varchar2(1000)		,	-- 3 ����/����
		EVENTDATE varchar2(1000)		,	-- 4 ��¥/�ð�
		PLACE varchar2(1000)		,	-- 5 ���
		ORG_NAME varchar2(1000)	,	-- 6 �����
		USE_TRGT varchar2(1000)	,		-- 7 �̿���
		USE_FEE varchar2(1000)	,		-- 8 �̿���
		PLAYER varchar2(1000)		,	-- 9 �⿬������
		PROGRAM varchar2(1000)	,	-- 10 ���α׷��Ұ�
        ETC_DESC varchar2(1000)	,		-- 11 ��Ÿ����
		ORG_LINK varchar2(1000)	,	-- 12 Ȩ������ �ּ�
		MAIN_IMG varchar2(1000)	,		-- 13 ��ǥ�̹���
		RGSTDATE varchar2(1000)	,		-- 14 ��û��
		TICKET varchar2(1000)		,	-- 15 �ù�/���
		STRTDATE varchar2(1000)	,		-- 16 ������
		END_DATE varchar2(1000)	,		-- 17 ������
		THEMECODE varchar2(1000)	,		-- 18 �׸��з�
		LOT varchar2(1000)		,	-- 19 ����(X��ǥ)
		LAT varchar2(1000)		,	-- 20 �浵(Y��ǥ)
		IS_FREE varchar2(1000)	,		-- 21 ������
		HMPG_ADDR varchar2(1000)			-- 22 ��ȭ���л�URL
        );
        
describe culturalEventInfo;
select * from culturaleventinfo;
delete from culturaleventinfo;
truncate table culturaleventinfo;
insert into culturaleventinfo values('','','','','','','','','','','','','','','','','','','','','','');
commit;

select * from culturaleventinfo where codename = '�ܼ�Ʈ' and guname = '������';
select * from culturaleventinfo where 'codename' like '%�ܼ�Ʈ%' and 'guname' like '%������%';
select * from culturaleventinfo where 1 like '%1%';


