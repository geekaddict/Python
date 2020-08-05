select a.Name from 
(select students.id as ID,students.name as Name, packages.salary as Salary from students join packages on students.id=packages.id) a
join
(select friends.id as ID, friends.friend_id as Friend, packages.salary as Salary from friends join packages on friends.friend_id=packages.id) b
on a.ID=b.ID
where a.salary<b.salary
order by b.salary;