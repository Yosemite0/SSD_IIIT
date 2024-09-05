-- H
SELECT p.productCode, p.productName, o.officeCode, o.city
FROM products p
CROSS JOIN offices o;
