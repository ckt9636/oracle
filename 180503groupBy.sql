select 
  gender,
  avg(total_amount)
from kopo_customerdata
group by gender  
;

select * from kopo_student_2018

--groupBy에서 많이 쓰는 것
select 
     team_id
     ,avg(score_math)    --평균
     ,sum(score_math)      --합
     ,min(score_math)     --최저
     ,max(score_math)     --최고
     ,count(score_math)    --수
     from kopo_student_2018
     group by team_id
;
select 
   a.student_id
   ,a.team_id
   ,score_math
   from
       kopo_student_2018 a
       (select
          team_id
          ,avg(score_math) as avg_math
           from kopo_student_2018
           group by team_id) b
    where 1=1
    and a.team_id = b.team_id  
;

SELECT
     A.STUDENT_ID
     ,A.TEAM_ID
     ,SCORE_MATH
     ,B.AVG_MATH
     FROM
        KOPO_STUDENT_2018 A
        SELECT
            TEAM_ID
            ,AVG(SCORE_MATH) AS AVG_MATH
            FROM KOPO_STUDENT_2018
            GROUP BY TEAM_ID) B
         WFERE1:1
         AND A.TEAM_ID = B.TEAM_ID
;           

--그룹핑 개념 확장#1 (서브쿼리 활용)
select a.*, b, avg_total
from
    kopo_customerdate a,
    (select
         gender