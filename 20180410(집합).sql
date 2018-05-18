--“KOPO_PRODUCT_VOLUME” 테이블에서
--201601주차 이상이면서
--ST0001 상품 데이터를 조회하세요

select * from kopo_product_volume
where 1=1
and volume >= 201601
and productgroup = 'ST0001'

select * from kopo_product_volume_a02

edit kopo_product_volume_a01

--합집합
select regionid, 
       productgroup, 
       yearweek, 
       QTY
      from KOPO_CHANNEL_RESULT_A01

UNION
select regionid, 
       productgroup, 
       yearweek, 
       QTY 
      from KOPO_CHANNEL_RESULT_A02

select * from KOPO_CHANNEL_RESULT_A01
union
select * from KOPO_CHANNEL_RESULT_A01_A02

SELECT
   'D516' AS MEASUREID,
   3*4 TEMPVALUE,
   REGIONID || '_' || 
   PRODUCTGROUP || '_' ||
   YEARWEEK AS KEY,
   CONCAT(REGIONID, PRODUCTGROUP) AS CON,
   REGIONID, 
   PRODUCTGROUP,
   YEARWEEK,
   VOLUME
FROM KOPO_PRODUCT_VOLUME