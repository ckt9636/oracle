
--데이터 조회는 테이블 값을 변하게 하는 것은 아니다.

select * from kopo_product_volume

--사용자 조건 입력 받아 출력하기 ctrl + enter 후 'st0001' 입력

SELECT
   REGIONID, PRODUCTGROUP, YEARWEEK
FROM KOPO_PRODUCT_VOLUME
WHERE PRODUCTGROUP = &PRODUCT
OR YEARWEEK = '201544'
;


select * from kopo_promotion

--KOPO_PROMOTION 테이블에서
--STARTWEEK ENDWEEK 2개의
--사용자 변수를 입력 받아 201501, 201503
--사이 데이터를 조회하세요.
--ctrl + enter 후 201501, 201503 입력

select *
    from kopo_promotion
    where 1=1
    and targetweek
         between &start and &end
;

-- 정렬하기 기본 값은 오름차순 ASC[오름차순] / DESC [내림차순]

SELECT
   REGIONID, PRODUCTGROUP, YEARWEEK
FROM KOPO_PRODUCT_VOLUME
WHERE PRODUCTGROUP = 'ST0001'
AND YEARWEEK BETWEEN 201501 AND 201503
ORDER BY YEARWEEK desc
;

--case when
--Not Available -> Male -> Female

select * from kopo_customerdata;
 
select A.*,
          -- LOWER (소문자변환) UPPER (대문자 변환)
       case when LOWER(A.GENDER) = 'Not Available'
            then 0
            when A.GENDER = 'MALE'
            then 1
            else 2 end as SORT_ORDER 
from kopo_customerdata A
order by SORT_ORDER
;

--KOPO_PRODUCT_VOLUME 테이블에서
--지역, 상품, 주차 오름차순 형태로  조회되게 하세요

select * from kopo_product_volume;

select REGIONID
        ,PRODUCTGROUP
        ,YEARWEEK
        ,VOLUME
        FROM KOPO_PRODUCT_VOLUME
order by REGIONID, PRODUCTGROUP ASC, YEARWEEK DESC        
;

--집합 연산자 (UNION, INTERSECT, MINUS)

-- UNION (합집합)

SELECT * 
FROM KOPO_PRODUCT_VOLUME
WHERE PRODUCTGROUP = 'ST0001'
UNION
SELECT * 
FROM KOPO_PRODUCT_VOLUME
WHERE PRODUCTGROUP = 'ST0002'
;

-- INTERSECT (교집합) 현업에서 잘 안씀
SELECT YEARWEEK
FROM KOPO_PRODUCT_VOLUME
WHERE PRODUCTGROUP = 'ST0001'
INTERSECT
SELECT YEARWEEK
FROM KOPO_PRODUCT_VOLUME
WHERE PRODUCTGROUP = 'ST0002'
;

-- MINUS (차집합)
SELECT YEARWEEK
FROM KOPO_PRODUCT_VOLUME
WHERE PRODUCTGROUP = 'ST0001'
MINUS
SELECT YEARWEEK
FROM KOPO_PRODUCT_VOLUME
WHERE PRODUCTGROUP = 'ST0002'
;

select *
from KOPO_PRODUCT_VOLUME
where 1=1
and PRODUCTGROUP = 'ST0001'
and YEARWEEK not in (
                      select distinct YEARWEEK
                          from KOPO_CHANNEL_RESULT_NEW
                     )
;         

-- 대/소문자 변경하기

select 
     UPPER(PRODUCT) as CASE1,
     LOWER(PRODUCT) as CASE2
     from KOPO_CHANNEL_SEASONALITY_NEW 
;

--ctrl + enter 후 'A60', 'product4' 입력
select
      * 
      FROM KOPO_CHANNEL_SEASONALITY_NEW
      WHERE 1=1
      AND LOWER(REGIONID) = LOWER(&UI_INPUT1)
      AND LOWER(PRODUCT) = LOWER(&UI_INPOUT2)  
;         

-- 컬럼 값 합치기
select * from KOPO_CHANNEL_SEASONALITY_NEW;

SELECT 
    CONCAT(REGIONID,CONCAT('_',PRODUCT)) AS KEYCOL1,
    REGIONID||'_'||PRODUCT AS KEYCOL2
FROM KOPO_CHANNEL_SEASONALITY_NEW
;

-- 컬럼 값 추출하기
SELECT 
    PRODUCT,
    SUBSTR(PRODUCT,1,7)
FROM KOPO_CHANNEL_SEASONALITY_NEW
;

--2016
select substr('201624',0,4) from dual
;
--42
select substr('201624',4,6) from dual
;

-- 컬럼 값 추출하기
SELECT 
    PRODUCT,
    SUBSTR(PRODUCT,1,7)
FROM KOPO_CHANNEL_SEASONALITY_NEW
;

-- 컬럼 값 채우기
select * from kopo_channel_seasonality_new;

SELECT 
LPAD(PRODUCT, 10, '0')
FROM KOPO_CHANNEL_SEASONALITY_NEW
;

select lpad('UN42F6000', 13, '0') from DUAL;

select upper('asddxcDDDDDss') from dual;

--KOPO_CUSTOMERDATA 테이블에서
--KOPO_CUSTOMERCODE를 12자리로 조회하세요
--단, 12자리가 안될경우 앞에 ‘*’로 채우세요

select
LPAD(CUSTOMERCODE, 12, '*')
from kopo_customerdata
;