/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
select n, case when p is null then 'Root' when n not in (select p from BST where p is not null) then 'Leaf' else 'Inner' end from BST order by n;
