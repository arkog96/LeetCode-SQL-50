# Write your MySQL query statement below

SELECT Products.product_name, SUM(Orders.unit) AS unit 
FROM Products 
Inner JOIN Orders 
ON Products.product_id = Orders.product_id
WHERE MONTH(Orders.order_date) = 2 AND YEAR(Orders.order_date) = 2020
GROUP by product_name
HAVING unit >= 100;