-- A
WITH EmployeeSales AS (
    SELECT 
        e.employeeNumber AS employeeNumber,
        e.lastName AS lastName,
        e.firstName AS firstName,
        of1.country AS country,
        SUM(od.quantityOrdered * od.priceEach) AS totalSales
    FROM 
        employees e
	JOIN 
		offices of1 ON e.officeCode = of1.officeCode
    JOIN 
        customers c ON e.employeeNumber = c.salesRepEmployeeNumber
    JOIN 
        orders o ON c.customerNumber = o.customerNumber
    JOIN 
        orderdetails od ON o.orderNumber = od.orderNumber
    GROUP BY 
        e.employeeNumber
)
SELECT employeeNumber, concat(firstName,' ',lastName) as Name, totalSales
FROM EmployeeSales
WHERE country = "USA"
ORDER BY totalSales DESC
LIMIT 5;
