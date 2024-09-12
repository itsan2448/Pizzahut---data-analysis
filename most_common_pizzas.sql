-- List the top 5 most ordered pizza types along with their quantities

select pt.name, p.pizza_id,sum(od.quantity) as count 
from order_details as od
join pizzas as p on p.pizza_id=od.pizza_id
join pizza_types as pt on p.pizza_type_id=pt.pizza_type_id
group by pt.name, p.pizza_id
order by count desc 
limit 5; 