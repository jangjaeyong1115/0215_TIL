-- 문제 1
SELECT
	employeeNumber,lastName,firstName,city
FROM
	employees
INNER JOIN offices
	ON employees.officeCode = offices.officeCode
ORDER BY
	employeeNumber ASC;
    
-- 문제 2

SELECT
	customerNumber,officecode,customers.city,offices.city
FROM
	customers
LEFT JOIN offices
	ON customers.city = offices.city
ORDER BY
	customerNumber DESC;
    
-- 문제 3
    
SELECT
	customerNumber,officecode,customers.city,offices.city
FROM
	customers
RIGHT JOIN offices
	ON customers.city = offices.city
ORDER BY
	customerNumber DESC;
    
-- 문제 4

SELECT
	customerNumber,officecode,customers.city,offices.city
FROM
	customers
INNER JOIN offices
	ON customers.city = offices.city
ORDER BY
	customerNumber DESC;
    
-- 문제 5
# 

-- 문제 6

SELECT
	customerNumber,officecode,customers.city,offices.city
FROM
	customers
LEFT JOIN offices
	ON customers.city = offices.city
UNION
SELECT
customerNumber,officecode,customers.city,offices.city
FROM
	customers
RIGHT JOIN offices
	ON customers.city = offices.city
ORDER BY
	customerNumber DESC;
		
-- 문제 7

SELECT
	orderdetails.orderNumber,orders.orderDate
FROM
	orderdetails
INNER JOIN orders
ORDER BY
	orderNumber ASC;
    
-- 문제 8

SELECT 
	orderdetails.orderNumber,products.productCode,products.productName
FROM
	orderdetails
INNER JOIN products
ORDER BY
	orderNumber ASC;
    
-- 문제 9

select orders.orderNumber,orderdetails.productCode, orderDate, productName
from orderdetails
inner join orders on orderdetails.orderNumber = orders.orderNumber
inner join products
order by orderNumber asc;