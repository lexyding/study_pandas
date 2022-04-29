select a.date, 
c.country, c.f_serveridofevent, 
b.product_cn2, 
count(distinct a.uid) as pay_users, 
sum(a.fixedprice/1000) as price
from fact_20000073_11.raw_payment a
left join fact_20000073_11.map_payment b
on a.productid = b.productid
and a.productclassifiedid = b.productclassifiedid
left join ding_fact_new_user_info c
on a.uid = c.uid 
where a.date >= "2022-03-15"
and a.date <= $yesterday
and c.first_date >= "2022-03-15"
-- and c.first_date <= "2022-03-22"
and c.f_serveridofevent in(2, 3)
and ifnull(paystep, "") != 'clickPurchase'
group by 1, 2, 3, 4
;