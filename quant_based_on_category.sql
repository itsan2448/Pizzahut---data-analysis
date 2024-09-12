-- Join the necessary tables to find the total quantity of each pizza category ordered

select pt.category,
sum(od.quantity) as quantity
from pizza_types pt
join pizzas p on p.pizza_type_id=pt.pizza_type_id
join order_details od on p.pizza_id=od.pizza_id
group by pt.category
order by quantity desc;
