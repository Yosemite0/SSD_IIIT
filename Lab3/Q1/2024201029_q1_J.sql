-- j
SELECT p.productCode, p.productName, SUM(od.quantityOrdered) as totalOrdered
FROM products p
LEFT JOIN orderdetails od ON p.productCode = od.productCode
GROUP BY p.productCode
