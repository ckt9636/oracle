select 
  gender,
  avg(total_amount)
from kopo_customerdata
group by gender  
;

select * from kopo_student_2018

--groupBy���� ���� ���� ��
select 
     team_id
     ,avg(score_math)    --���
     ,sum(score_math)      --��
     ,min(score_math)     --����
     ,max(score_math)     --�ְ�
     ,count(score_math)    --��
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

--�׷��� ���� Ȯ��#1 (�������� Ȱ��)
select a.*, b, avg_total
from
    kopo_customerdate a,
    (select
         gender