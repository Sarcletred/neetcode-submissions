select e.student_id, MIN(e.exam_id) as exam_id, e.score from exam_results e
left join (SELECT student_id, MAX(score) as Max_score
from exam_results 
group by student_id) er
on e.student_id = er.student_id
where e.score = er.Max_score
group by e.student_id, e.score
order by e.student_id