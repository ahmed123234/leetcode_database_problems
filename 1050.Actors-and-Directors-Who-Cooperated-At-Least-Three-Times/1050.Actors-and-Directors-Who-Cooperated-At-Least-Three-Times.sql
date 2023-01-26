select actor_id, director_id
from ActorDirector 
Group by actor_id, director_id
having  count(director_id) >=3;
