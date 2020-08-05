select * from (select  CITY,length(CITY) from station order by length(CITY) asc,CITY)
where rownum=1;
select * from (select  CITY,length(CITY) from station order by length(CITY) desc,CITY)
where rownum=1;