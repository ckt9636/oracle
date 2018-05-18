
--������ ��ȸ�� ���̺� ���� ���ϰ� �ϴ� ���� �ƴϴ�.

select * from kopo_product_volume

--����� ���� �Է� �޾� ����ϱ� ctrl + enter �� 'st0001' �Է�

SELECT
   REGIONID, PRODUCTGROUP, YEARWEEK
FROM KOPO_PRODUCT_VOLUME
WHERE PRODUCTGROUP = &PRODUCT
OR YEARWEEK = '201544'
;


select * from kopo_promotion

--KOPO_PROMOTION ���̺���
--STARTWEEK ENDWEEK 2����
--����� ������ �Է� �޾� 201501, 201503
--���� �����͸� ��ȸ�ϼ���.
--ctrl + enter �� 201501, 201503 �Է�

select *
    from kopo_promotion
    where 1=1
    and targetweek
         between &start and &end
;

-- �����ϱ� �⺻ ���� �������� ASC[��������] / DESC [��������]

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
          -- LOWER (�ҹ��ں�ȯ) UPPER (�빮�� ��ȯ)
       case when LOWER(A.GENDER) = 'Not Available'
            then 0
            when A.GENDER = 'MALE'
            then 1
            else 2 end as SORT_ORDER 
from kopo_customerdata A
order by SORT_ORDER
;

--KOPO_PRODUCT_VOLUME ���̺���
--����, ��ǰ, ���� �������� ���·�  ��ȸ�ǰ� �ϼ���

select * from kopo_product_volume;

select REGIONID
        ,PRODUCTGROUP
        ,YEARWEEK
        ,VOLUME
        FROM KOPO_PRODUCT_VOLUME
order by REGIONID, PRODUCTGROUP ASC, YEARWEEK DESC        
;

--���� ������ (UNION, INTERSECT, MINUS)

-- UNION (������)

SELECT * 
FROM KOPO_PRODUCT_VOLUME
WHERE PRODUCTGROUP = 'ST0001'
UNION
SELECT * 
FROM KOPO_PRODUCT_VOLUME
WHERE PRODUCTGROUP = 'ST0002'
;

-- INTERSECT (������) �������� �� �Ⱦ�
SELECT YEARWEEK
FROM KOPO_PRODUCT_VOLUME
WHERE PRODUCTGROUP = 'ST0001'
INTERSECT
SELECT YEARWEEK
FROM KOPO_PRODUCT_VOLUME
WHERE PRODUCTGROUP = 'ST0002'
;

-- MINUS (������)
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

-- ��/�ҹ��� �����ϱ�

select 
     UPPER(PRODUCT) as CASE1,
     LOWER(PRODUCT) as CASE2
     from KOPO_CHANNEL_SEASONALITY_NEW 
;

--ctrl + enter �� 'A60', 'product4' �Է�
select
      * 
      FROM KOPO_CHANNEL_SEASONALITY_NEW
      WHERE 1=1
      AND LOWER(REGIONID) = LOWER(&UI_INPUT1)
      AND LOWER(PRODUCT) = LOWER(&UI_INPOUT2)  
;         

-- �÷� �� ��ġ��
select * from KOPO_CHANNEL_SEASONALITY_NEW;

SELECT 
    CONCAT(REGIONID,CONCAT('_',PRODUCT)) AS KEYCOL1,
    REGIONID||'_'||PRODUCT AS KEYCOL2
FROM KOPO_CHANNEL_SEASONALITY_NEW
;

-- �÷� �� �����ϱ�
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

-- �÷� �� �����ϱ�
SELECT 
    PRODUCT,
    SUBSTR(PRODUCT,1,7)
FROM KOPO_CHANNEL_SEASONALITY_NEW
;

-- �÷� �� ä���
select * from kopo_channel_seasonality_new;

SELECT 
LPAD(PRODUCT, 10, '0')
FROM KOPO_CHANNEL_SEASONALITY_NEW
;

select lpad('UN42F6000', 13, '0') from DUAL;

select upper('asddxcDDDDDss') from dual;

--KOPO_CUSTOMERDATA ���̺���
--KOPO_CUSTOMERCODE�� 12�ڸ��� ��ȸ�ϼ���
--��, 12�ڸ��� �ȵɰ�� �տ� ��*���� ä�켼��

select
LPAD(CUSTOMERCODE, 12, '*')
from kopo_customerdata
;