-- Write your query below
select e.left_operand, e.operator, e.right_operand,
Case 
when e.operator = '>' and va.value > vb.value
then 'true'
when e.operator = '<' and va.value < vb.value
then 'true'
when e.operator = '=' and va.value = vb.value
then 'true'
else 'false'
end as value
from expressions e
join variables va
on e.left_operand = va.name
join variables vb
on e.right_operand = vb.name;