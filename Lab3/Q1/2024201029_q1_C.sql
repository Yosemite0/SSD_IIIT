-- C

SELECT DISTINCT c.customerNumber, c.customerName
FROM customers c
natural JOIN orders o 
UNION
SELECT DISTINCT c.customerNumber, c.customerName
FROM customers c
natural JOIN payments p
