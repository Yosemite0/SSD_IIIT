-- B

SELECT productCode, productName, MSRP
FROM products
ORDER BY MSRP DESC
LIMIT 5, 10;
