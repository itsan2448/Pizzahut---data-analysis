-- Determine the top 3 most ordered pizza types based on revenue for each pizza category.

select * from
(select category, name, revenue, rank() over(partition by category order by revenue desc) as C_rank
from
(SELECT pt.category,pt.name, round(sum(p.price*od.quantity),2) as revenue
FROM pizzahut.pizza_types pt
join pizzas p on p.pizza_type_id=pt.pizza_type_id
join order_details od on p.pizza_id=od.pizza_id
group by pt.category,pt.name) as a)as b
where C_rank<=3;