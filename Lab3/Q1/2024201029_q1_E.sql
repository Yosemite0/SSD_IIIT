-- E
SELECT e.employeeNumber, e.lastName, e.firstName
FROM employees e
LEFT JOIN employees e2 ON e.employeeNumber = e2.reportsTo
WHERE e2.employeeNumber IS NULL;
