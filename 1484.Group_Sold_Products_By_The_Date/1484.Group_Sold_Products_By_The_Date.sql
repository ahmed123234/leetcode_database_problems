select sell_date, count(distinct product) as num_sold,
group_CONCAT(distinct product) as products
from Activities
group by 1
order by 1;
