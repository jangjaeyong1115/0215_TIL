DROP TABLE users;

CREATE TABLE users (
	id INT AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

DROP TABLE articles;

CREATE TABLE articles (
	id INT AUTO_INCREMENT,
    title VARCHAR(50) NOT NULL,
    content VARCHAR(100) NOT NULL,
    userID INT NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO
	users (name)
VALUES
	('권미자'),
	('류준하'),
    ('정영식');
    
INSERT INTO
	articles (title,content,userID)
VALUES
	('제목1','내용1', 1),
    ('제목2','내용2', 2),
    ('제목3','내용3', 4);
    
SELECT * FROM users;
SELECT * FROM articles;

SELECT 
	*
FROM 
	articles
INNER JOIN users
	 ON articles.userID = users.ID;
     
SELECT
	productCode,
	productName,
    textDescription
FROM
	products
INNER JOIN productlines
	ON 	products.productline = productlines.productline;
    
SELECT
	orders.orderNumber,
    status,
    priceEach
FROM
	orders
INNER JOIN orderdetails
	ON 	orders.orderNumber = orderdetails.orderNumber;
    
SELECT
	orders.orderNumber,
    status,
    SUM(quantityOrdered * priceEach) AS totalSales
FROM
	orders
INNER JOIN orderdetails
	ON 	orders.orderNumber = orderdetails.orderNumber
GROUP BY
	orderNumber;
    
SELECT
	*
FROM
	articles
LEFT JOIN users
	ON articles.userID = users.Id;
    
SELECT
	contactFirstName,
    orderNumber,
    status
FROM
	customers
LEFT JOIN orders
	ON orders.customerNumber = customers.customerNumber;
    
SELECT
	contactFirstName,
    orderNumber,
    status
FROM
	customers
LEFT JOIN orders
	On orders.customerNumber = customers.customerNumber
WHERE
	orders.orderNumber IS NULL;
    
SELECT
	employeeNumber, firstName, customerNumber, contactFirstName
FROM
	customers
RIGHT JOIN employees
	ON employees.employeeNumber = customers. salesRepEmployeeNumber;
    
SELECT
	employeeNumber, firstName, customerNumber, contactFirstName
FROM
	customers
RIGHT JOIN employees
	ON salesRepEmployeeNumber = employeeNumber
WHERE
	salesRepEmployeeNumber IS NULL;
