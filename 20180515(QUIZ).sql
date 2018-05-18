--KOPO2 서버 내 "SORT_EXAMPLE" 테이블을 WEEK 별로 오름차순정렬하고 쿼리문을 작성하세요
select
     LPAD(WEEK,2,'0') AS WEEK
     ,QTY
from SORT_EXAMPLE
ORDER BY LPAD (WEEK,2,'0')
;

--4. 정렬을 진행하다 고객의 요구 사항이 오름/내림차순 정렬로 풀리지 않을경우 사용하는 문법은?
--case when

--[SQL함수]- 실제로 보이기엔 STR인데 길이함수를 활용하여 
--LENGTH('컬럼명') 10이라는 숫자가 나왔다 이때 공백을 제거하는 함수는?
--TRIM

SELECT LENGTH('  STR   ') FROM DUAL;

CREATE TABLE TEST_TRIM(
VAR_TEST VARCHAR2(10))
;
SELECT LENGTH(VAR_TEST) FROM TEST_TRIM
;
SELECT LENGTH(TRIM(VAR_TEST)) FROM TEST_TRIM
;
SELECT TRIM(TO_CHAR(LENGTH('      STR      '))) FROM DUAL
;

