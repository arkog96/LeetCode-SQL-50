# Write your MySQL query statement below
SELECT Products.product_name, SUM(Orders.unit) AS unit
FROM Products
INNER JOIN Orders
ON Products.product_id = Orders.product_id  
WHERE MONTH(Orders.order_date) = 2 AND YEAR(Orders.order_date) = 2020
GROUP BY product_name
HAVING unit >= 100; 