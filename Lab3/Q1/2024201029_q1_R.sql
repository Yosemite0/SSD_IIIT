-- R
SELECT o.orderNumber, o.orderDate, od.productCode, p.productName, od.quantityOrdered, od.priceEach
FROM orders o
LEFT JOIN orderdetails od ON o.orderNumber = od.orderNumber
LEFT JOIN products p ON od.productCode = p.productCode;
