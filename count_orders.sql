-- total number of orders places 
SELECT 
    COUNT(order_id) AS total_count
FROM
    orders;
    