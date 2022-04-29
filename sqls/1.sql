select a.date, c.first_date, a.l_baselevel, 
c.country, c.network, 
c.f_serveridofevent,
count(a.uid) as pay_users, 
sum(b.price) as price
from ding_fact_user_daily_info_01 a
left join ding_fact_user_daily_info_02 b
on a.uid = b.uid and a.date = b.date
left join ding_fact_new_user_info c
on a.uid = c.uid 
where a.date >= "2022-03-15"
and a.date <= $yesterday
and c.first_date >= "2022-03-15"
-- and c.first_date <= "2022-03-22"
and c.f_serveridofevent in(2, 3)
and b.paycount != 0
group by 1, 2, 3, 4, 5, 6
;
