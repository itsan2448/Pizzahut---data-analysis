-- Calculate the total revenue generated from pizza sales.

SELECT 
    ROUND(SUM(p.price * od.quantity), 2) AS total_revenue
FROM
    order_details AS od
        JOIN
    pizzas AS p ON p.pizza_id = od.pizza_id;