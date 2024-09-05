-- P
SELECT o.orderNumber, o.orderDate, p.productName, od.quantityOrdered, od.priceEach
FROM orders o
Natural JOIN orderdetails od
Natural JOIN products p;
