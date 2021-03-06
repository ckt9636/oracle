select * from tabs
where 1=1
and table_name like '%PF%'

EDIT PROMOTION_PF

SELECT A.*, B.PRODUCTNAME, C.PROMOTION_RATIO
--C테이블: 프로모션 관리 테이블--
FROM LEFTTABLE_PF A
LEFT JOIN RIGHTTABLE_PF B
ON A.PRODUCTGROUP = B.PRODUCTID
--첫번째 키: 상품--
LEFT JOIN PROMOTION_PF C
--두번째 키: 주차 정보--
ON A.PRODUCTGROUP = C.PRODUCTGROUP

AND A.YEARWEEK = C.PROMOTION_WEEK;

SELECT * FROM PROMOTION_PF


--보기 좋게
SELECT A.REGIONID
       , A.PRODUCTGROUP
        , A.YEARWEEK
        , B.PRODUCTNAME
        , C.PROMOTION_RATIO
--C테이블: 프로모션 관리 테이블--
FROM LEFTTABLE_PF A
LEFT JOIN RIGHTTABLE_PF B
ON A.PRODUCTGROUP = B.PRODUCTID
--첫번째 키: 상품--
LEFT JOIN PROMOTION_PF C
--두번째 키: 주차 정보--
ON A.PRODUCTGROUP = C.PRODUCTGROUP

AND A.YEARWEEK = C.PROMOTION_WEEK;

SELECT * FROM PROMOTION_PF


--현업
SELECT A.*
     , B.PRODUCTNAME
     , C.PROMOTION_RATIO
--A테이블: 실적 관리 테이블     
FROM LEFTTABLE_PF A,
     RIGHTTABLE_PF B,
     PROMOTION_PF C
      --+를 쓰면 LEFT JOIN 안쓰면 INNER JOIN
WHERE 1=1
AND A.PRODUCTGROUP = B.PRODUCTID (+)
AND A.PRODUCTGROUP = C.PRODUCTGROUP (+)
AND A.YEARWEEK = C.PROMOTION_WEEK (+)

select * from lefttable_pf
where 1=1
and yearweek = '201502'