-- Analyze the cumulative revenue generated over time

select order_date, revenue, round(sum(revenue) over(order by order_date),2)
as cumulative_revenue from 
(select o.order_date, round(sum(od.quantity*p.price),2) as revenue from orders o
join order_details od on od.order_id=o.order_id
join pizzas p on p.pizza_id=od.pizza_id
group by o.order_date) as sales
