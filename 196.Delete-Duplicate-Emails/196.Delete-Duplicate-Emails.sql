-- this solution is done using self join
delete b from Person a, Person b where a.id < b.id and a.email = b.email;

