-- Using if clause

select stock_name, sum(
if(operation like "Buy", -1 * price, price)
) as capital_gain_loss
from Stocks
group by stock_name;



-- OR using case clause

select stock_name, sum(
case
when operation like "Buy" then  -1 * price

else price
end
) as capital_gain_loss
from Stocks
group by stock_name;
