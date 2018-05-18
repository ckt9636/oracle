--group by 구분 시켜서 그룹을 지어주는것

--69만
select * from kopo_channel_result_new;
group

--12만
select * from kopo_channel_seasonality_new;

select 
     regionid
     , product
     , avg(qty)
from kopo_channel_seasonality_new
group by regionid, product
order by regionid, product

--주차별 판매량
select 
     yearweek
     , avg(qty)
from kopo_channel_seasonality_new
where 1=1
group by yearweek
order by yearweek

--제품 판매량
select 
     product
     , avg(qty)
from kopo_channel_seasonality_new
where 1=1
group by product
order by product


var groupRdd = mapRdd.groupBy(x=>{ (x.getString(keyNo))}).
map(x=>{
var key = x._1
var data = x._2
var size = x._2.map(x=>{x.getDouble(qtyNo)}).size
(key, size)
})
