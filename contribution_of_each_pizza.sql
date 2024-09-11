-- Calculate the percentage contribution of each pizza type to total revenue

SELECT category,round(sum(od.quantity*p.price)*100/
(select sum(od.quantity*p.price) 
from order_details od
join pizzas p on od.pizza_id=p.pizza_id
),2)
as percent_revenue FROM pizza_types pt
join pizzas p on p.pizza_type_id=pt.pizza_type_id
join order_details od on od.pizza_id=p.pizza_id
group by category;