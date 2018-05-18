--��KOPO_PRODUCT_VOLUME�� ���̺���
--201601���� �̻��̸鼭
--ST0001 ��ǰ �����͸� ��ȸ�ϼ���

select * from kopo_product_volume
where 1=1
and volume >= 201601
and productgroup = 'ST0001'

select * from kopo_product_volume_a02

edit kopo_product_volume_a01

--������
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