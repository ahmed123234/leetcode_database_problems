select user_id, 
concat(Upper(substr(name, 1, 1)), Lower(substr(name, 2))  ) as name
from Users
order by user_id;
