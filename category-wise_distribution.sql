-- Join relevant tables to find the category-wise distribution of pizzas.

SELECT category,count(name) FROM pizzahut.pizza_types
group by category;