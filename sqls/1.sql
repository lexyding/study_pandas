select a.date, c.first_date, 
datediff(a.date, c.first_date) as retention_day,
a.l_baselevel, 
c.country, c.network, 
c.f_serveridofevent,
a.uid, b.price, b.total_price, 
(case when b.total_price = 0 then '未付费'
when b.total_price < 1 then '(0,1]'
when b.total_price < 10 then '(1,10]'
when b.total_price < 100 then '(10,100]'
when b.total_price < 200 then '(100,200]'
when b.total_price < 500 then '(200,500]'
when b.total_price < 1000 then '(500,1000]'
else '(1000,∞]' end) as ac_price_tag
from fact_20000073_11.ding_fact_user_daily_info_01 a
left join fact_20000073_11.ding_fact_user_daily_info_02 b
on a.uid = b.uid and a.date = b.date
left join fact_20000073_11.ding_fact_new_user_info c
on a.uid = c.uid 
where a.date >= "2022-04-15"
and a.date <= "2022-05-15"
and c.first_date >= "2022-04-15"
-- and c.first_date <= "2022-03-22"
and c.f_serveridofevent in(4, 3)
-- and b.paycount != 0
;
