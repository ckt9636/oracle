select * from kopo_promotion

--KOPO_PROMOTION ���̺��� ��ȸ�� ����
--PMAP�� 10%���ε� ������ ROUND ó���Ͽ� 
--PMAP�̶�� �÷��� �����ϼ���

select
    regionid, item, targetweek, planweek, map_price, ir, pmap, product,
    round (pmap - (pmap * 0.1), 0) as pmap10
    from kopo_promotion
    ;


--KOPO_PROMOTION ���̺���
-- PMP/MAP_PRICE ������ ���ؼ� PERCENT
--�÷��� �����ϼ���

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

--between A �� B���̿� �ִ� ���� ���� ��� �˻� (A,B �� ����)

select * from kopo_product_volume
where 1=1
and yearweek between 201515 and 201516
;
--in A �̰ų� B �̰ų� C �� ������ �˻�
SELECT * FROM KOPO_PRODUCT_VOLUME
WHERE 1=1
AND PRODUCTGROUP = 'ST0002'
AND YEARWEEK IN ('201515' , '201516')
;

--like  Ư�� ������ ������ �ִ� ������ �˻�

select * from tabs
where table_name like '%mst%'