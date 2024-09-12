-- Determine the top 3 most ordered pizza types based on revenue.

SELECT pt.name, round(sum(p.price*od.quantity),2) as revenue
FROM pizzahut.pizza_types pt
join pizzas p on p.pizza_type_id=pt.pizza_type_id
join order_details od on p.pizza_id=od.pizza_id
group by pt.name
order by revenue desc
limit 3;