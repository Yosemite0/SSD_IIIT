-- I
WITH EmployeeSales AS (
    SELECT 
        e.employeeNumber AS employeeNumber,
        e.lastName AS lastName,
        e.firstName AS firstName,
        SUM(od.quantityOrdered * od.priceEach) AS totalSales
    FROM 
        employees e
    JOIN 
        customers c ON e.employeeNumber = c.salesRepEmployeeNumber
    JOIN 
        orders o ON c.customerNumber = o.customerNumber
    JOIN 
        orderdetails od ON o.orderNumber = od.orderNumber
    GROUP BY 
        e.employeeNumber
)
SELECT employeeNumber, lastName, firstName, totalSales
FROM EmployeeSales
ORDER BY totalSales DESC
LIMIT 3;
