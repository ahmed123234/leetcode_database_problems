select name from SalesPerson where
sales_id not in (select sales_id from 
Orders o inner join Company c 
on c.com_id =  o.com_id
    where name = "RED"
);
