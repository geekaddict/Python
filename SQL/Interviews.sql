select
    con.contest_id,
    con.hacker_id,
    con.name,
    sum(subsum.ts),
    sum(subsum.tas),
    sum(vsum.tv),
    sum(vsum.tuv)
    from contests con
    join colleges col on con.contest_id = col.contest_id
    join challenges chal on col.college_id = chal.college_id
    left join
    (select
    challenge_id,
    sum(total_submissions) as ts,
    sum(total_accepted_submissions) as tas
    from submission_stats group by challenge_id) subsum
    on chal.challenge_id = subsum.challenge_id
    left join
    (select
    challenge_id,
    sum(total_views) as tv,
    sum(total_unique_views) as tuv
    from view_stats group by challenge_id) vsum
    on chal.challenge_id = vsum.challenge_id
    group by con.contest_id, con.hacker_id, con.name
    having
    sum(subsum.ts)>0 or
    sum(subsum.tas)>0 or
    sum(vsum.tv)>0 or
    sum(vsum.tuv)>0
    order by con.contest_id;