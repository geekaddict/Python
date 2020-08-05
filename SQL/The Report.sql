select * from (select name,grade,marks from students,grades where marks between min_mark and max_mark and grade>=8 order by grade desc, name)
union all
select * from (select null,grade,marks from students,grades where marks<max_mark and marks>min_mark and grade<8 order by grade desc,marks);