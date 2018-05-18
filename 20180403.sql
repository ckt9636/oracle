create table kopo_product_volume(
regionid varchar2(20),
productgroup varchar2(20),
yearweek varchar2(8),
volume number not null,
constraint pk_kopo_product_volume primary key(regionid,productgroup, yearweek))

--insert into kopo_product_volume
--values('a01','productgroup',null,'volume')

--insert into kopo_product_volume
--values ('A01','ST0002','201503',20)
--업데이트
--update kopo_product_volume
--set yearweek = '201503'
--where 1=1


--select * from kopo_product_volume;
--테이블 정보
--desc kopo_product_volume

create table kopo_event_info_foreign(
 eventid varchar2(20),
 eventperiod varchar2(20),
 PROMOTION_RATIO NUMBER,
 constraint pk_kopo_event_info_foreign primary key(eventid))

desc KOPO_PRODUCT_VOLUME_FOREIGN
 create TABLE KOPO_PRODUCT_VOLUME_FOREIGN(
 REGIONID VARCHAR2(20),
 PRODUCTGROUP VARCHAR2(20),
 YEARWEEK VARCHAR2(8),
 VOLUME NUMBER NOT NULL,
 EVENTID VARCHAR2(20),
 constraint pk_kopo_product_volume_foreign primary key(REGIONID, PRODUCTGROUP, YEARWEEK),
 constraint fk_kopo_product_volume_foreign foreign key(eventid) references kopo_event_info_foreign(eventid) 
 on delete cascade)

select * from kopo_product_volume_foreign;

alter table kopo_product_volume_foreign 
    enable constraint fk_kopo_product_volume_foreign

--edit kopo_event_info_foreign 수정 좋은건 아님..

-- 참조 무결성 예제: (자식이 있는데 지우려고 시도하는경우)
DELETE FROM KOPO_EVENT_INFO_FOREIGN
WHERE EVENTID = 'EV00001'
