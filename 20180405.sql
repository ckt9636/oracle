
select * from tabs;
(SELECT A.REGIONID, 
     B.REGIONNAME, 
     A.PRODUCT, 
     A.YEARWEEK, 
     A.QTY
FROM KOPO_CHANNEL_SEASONALITY_NEW A
RIGHT JOIN KOPO_REGION_MST B
ON A.REGIONID = B.REGIONID
) A
WHERE 1=1
AND REGIONNAME = '�밡��'
SELECT


WHERE A.REGIONID = 'A30'
select count(*)
from KOPO_CHANNEL_SEASONALITY_NEW

SELECT A.REGIONID, 
     B.REGIONNAME, 
     A.PRODUCT, 
     A.YEARWEEK, 
     A.QTY
FROM KOPO_CHANNEL_SEASONALITY_NEW A,
KOPO_REGION_MST B
WHERE 1=1
AND A.REGIONID = B.REGIONID (+)

select * from kopo_region_mst
SELECT A.REGIONID, 
     B.REGIONNAME, 
     A.PRODUCT, 
     A.YEARWEEK, 
     A.QTY
    
FROM KOPO_CHANNEL_SEASONALITY_NEW A
left join kopo_region_mst B
on A.regionid = B.regionid

