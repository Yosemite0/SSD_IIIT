-- T
WITH CustomerTotalSales AS (
    SELECT c.customerNumber, c.customerName, SUM(od.quantityOrdered * od.priceEach) AS totalSales
    FROM customers c
    Natural JOIN orders o
    Natural JOIN orderdetails od
    GROUP BY c.customerNumber, c.customerName
),
AverageSales AS (
    SELECT AVG(totalSales) AS avgSales
    FROM CustomerTotalSales
)
SELECT c.customerNumber, c.customerName, c.totalSales
FROM CustomerTotalSales c
JOIN AverageSales a ON c.totalSales > 2 * a.avgSales;
