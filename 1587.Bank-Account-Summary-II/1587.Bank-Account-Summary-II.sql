select u.name as name , sum(t.amount) as balance from
Users u inner join Transactions t 
on u.account = t.account
group by  name
having balance > 10000;
