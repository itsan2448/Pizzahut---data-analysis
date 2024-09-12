-- Group the orders by date and calculate the average number of pizzas ordered per day.

select round(avg(order_quantity.quantity_ordered_that_day),0) as average_qty
from
(SELECT o.order_date, sum(od.quantity) as quantity_ordered_that_day
FROM orders o
join order_details od
on o.order_id = od.order_id
group by o.order_date) as order_quantity;
