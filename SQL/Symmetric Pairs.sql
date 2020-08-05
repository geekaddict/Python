select x,y from functions
where (x,y) in (select y,x from functions) and x<y
union all
select x,y from functions group by x,y having count(*)>1
order by x;