-- D
SELECT DISTINCT c.customerNumber, c.customerName
FROM customers c
Natural JOIN orders o
Natural JOIN payments p
