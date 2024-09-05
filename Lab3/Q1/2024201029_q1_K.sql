-- k
SELECT p.productCode, p.productName, SUM(od.quantityOrdered) AS totalQuantityOrdered
FROM products p
Natural JOIN orderdetails od
GROUP BY p.productCode
HAVING SUM(od.quantityOrdered) > 1000;
