select *
from Cinema 
where id % 2 = 1 and description not like "boring"
and rating between 0 and 10
order by rating desc; 
