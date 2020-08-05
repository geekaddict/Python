/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
select c.company_code, c.founder, count(distinct l.lead_manager_code),count(distinct s.senior_manager_code), count(distinct m.manager_code), count(distinct e.employee_code) from company c 
inner join lead_manager l on c.company_code=l.company_code 
inner join senior_manager s on c.company_code=s.company_code
inner join manager m on s.company_code=m.company_code
inner join employee e on m.company_code=e.company_code
group by c.company_code,c.founder order by c.company_code;