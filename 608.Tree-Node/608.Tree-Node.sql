select id , case
when p_id is null then 'Root'
when t.id = Any (select d.p_id from Tree d where d.p_id = t.id)
then 'Inner'
else 'Leaf'
end as type
from Tree t;
