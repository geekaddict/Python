select t1.start_date, t2.end_date from 
(select Row_number() over(order by Start_date) as rn1, start_date from projects where start_date not in(select end_date from projects )) t1 
join
(select Row_number() over (order by end_date asc) as rn2, end_date from projects where end_date not in(select start_date from projects )) t2 
on t1.rn1=t2.rn2 
order by t2.end_date-t1.start_date, t1.start_date;