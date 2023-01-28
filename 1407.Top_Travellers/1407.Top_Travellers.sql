select name, ifnull(sum(distance), 0) as travelled_distance
from Users u
left join
Rides 
on u.id = user_id
Group by u.id
order by travelled_distance desc, name;
