/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
/*select count(id) from station;*/
select round(s.lat_n,4) from station s where (select round((count(s.id)/2)-1) from station)=(select count(s1.id) from station s1 where s1.lat_n>s.lat_n);