select * from kopo_promotion

--KOPO_PROMOTION 테이블에서 조회를 통해
--PMAP에 10%할인된 가격을 ROUND 처리하여 
--PMAP이라는 컬럼을 생성하세요

select
    regionid, item, targetweek, planweek, map_price, ir, pmap, product,
    round (pmap - (pmap * 0.1), 0) as pmap10
    from kopo_promotion
    ;


--KOPO_PROMOTION 테이블에서
-- PMP/MAP_PRICE 비율을 구해서 PERCENT
--컬럼을 생성하세요

select
     case when map_price = 0
             then 1
          WHEN MAP_PRICE = 1
             THEN 2   
         else pmap/NVL(map_price,1) end as promotion_ratio    
from kopo_promotion
;

select * from kopo_promotion
where 1=1
and map_price = is null
;

--between A 와 B사이에 있는 범위 값을 모두 검색 (A,B 값 포함)

select * from kopo_product_volume
where 1=1
and yearweek between 201515 and 201516
;
--in A 이거나 B 이거나 C 인 조건을 검색
SELECT * FROM KOPO_PRODUCT_VOLUME
WHERE 1=1
AND PRODUCTGROUP = 'ST0002'
AND YEARWEEK IN ('201515' , '201516')
;

--like  특정 패턴을 가지고 있는 조건을 검색

select * from tabs
where table_name like '%mst%'