--마스터 테이블
select * from kopo_st_ckj_join

--로그 실적
select * from kopo_stock_log;

--KOSPI 지수 화면에는 마스터에 관리되는 KOSPI 지수 화면만 시현되어야 합니다. 어떻게 하면 될까요?
CREATE TABLE KOPO_ST_CKJ_JOIN AS
(       
  SELECT
      A.SCREEN_CODE
     ,A.SCREED_DIV   AS SCREEN_DIV
     ,B.OPEN
     ,B.HIGH
     ,B.LOW
     ,A.CONTENT
   FROM KOPO_STOCK_MST A
   LEFT JOIN KOPO_STOCK_LOG B
   ON A.SCREEN_CODE = B.ST_CODE
   WHERE 1=1
   AND SCREED_DIV = 'KOSPI'
);            



select * from kopo_st_CKJ_join;

drop table kopo_st_ckj_join;

SELECT * FROM KOPO_CHANNEL_RESULT;

CREATE TABLE TESTHK AS

SELECT
    CONCAT(REGIONID, CONCAT('_', PRODUCT)) AS KEYCOL,
    A.REGIONID,
    A.PRODUCT,
    A.YEARWEEK,
    A.QTY,
    B.PRODUCT_NAME
    FROM kopo_channel_seasonality_new a
    left join kopo_product_mst b
    on a.product = b.product_id;



