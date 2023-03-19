USE store;

SHOW tables;

SELECT name 
FROM products;

SELECT unit_price 
FROM products;

SELECT name, unit_price, unit_price * 1.1 AS "New Price"
FROM products;

SELECT *
FROM customers 
WHERE state != 'FL';

SELECT *
FROM customers ;

SELECT *
FROM  customers 
WHERE birth_date >= '1990-01-01';

SELECT *
FROM customers
WHERE birth_date > '1990-01-01' AND points > 3000; 

SELECT *
FROM customers
WHERE birth_date > '1990-01-01' OR points > 3000;

SELECT *
FROM customers
WHERE birth_date > '1889-01-01' OR (points > 1000 AND state = 'VA');

SELECT *
FROM customers
WHERE (birth_date > '1989-01-01' AND points > 1000) OR state = 'VA';

SELECT *
FROM customers 
WHERE NOT (state = 'FL');

SELECT *
FROM customers
WHERE state IN ('FL','VA','GA');

 SELECT *
 FROM customers
 WHERE points BETWEEN 3000 AND 10000;
 
SELECT *
FROM products 
WHERE quantity_in_stock IN (49,38,72);

SELECT *
FROM products 
WHERE quantity_in_stock != 72;

SELECT * 
FROM customers
WHERE birth_date BETWEEN '1990-01-01' AND '2000-01-01';

SELECT *
FROM customers
WHERE address LIKE '%Tra%' OR address LIKE '%Ave%';

SELECT * 
FROM customers
WHERE LOCATE('Trail',address) OR LOCATE('Avenue',address);

SELECT *
FROM customers
WHERE phone LIKE '%9';

SELECT *
FROM customers
WHERE NOT phone LIKE '%9';

SELECT *
FROM customers
WHERE first_name IN ('ELKA','AMBUR');

SELECT *
FROM customers
WHERE last_name LIKE '%EY' OR last_name LIKE '%ON';

SELECT *
FROM customers
WHERE last_name REGEXP 'EY$|ON&';

SELECT *
FROM customers
WHERE last_name LIKE 'MY%' OR last_name LIKE '%SE%';

SELECT *
FROM customers
WHERE last_name REGEXP '^MY|SE';

SELECT *
FROM customers
WHERE phone IS NULL;

SELECT *
FROM customers
WHERE NOT phone IS  NULL;

SELECT *
FROM orders
WHERE NOT shipper_id IS NULL;

 

SELECT *
FROM customers
WHERE last_name LIKE '%BR%' OR last_name LIKE '%BU%';

-- * means multiple time 

SELECT * 
FROM customers
WHERE last_name REGEXP 'B[a-z]*[ru]';


SELECT *
FROM customers
WHERE last_name REGEXP 'B[RU]';


SELECT last_name
FROM customers
WHERE last_name LIKE '_____y';

SELECT last_name 
FROM customers
WHERE last_name LIKE 'b____y';

/*

REGEX

*/

SELECT *
FROM customers
WHERE last_name LIKE '%age%';

SELECT *
FROM customers
WHERE last_name REGEXP 'age';

SELECT *
FROM customers
WHERE last_name REGEXP 'Mac';

SELECT *
FROM customers
WHERE last_name REGEXP 'field$';


SELECT *
FROM customers
WHERE last_name REGEXP 'Mac|field$';

SELECT *
FROM customers
WHERE last_name REGEXP 'ae|be|ce|de|ee|fe|ge|he';

SELECT *
FROM customers
WHERE last_name REGEXP 'ge|ie|me';	

SELECT *
FROM customers
WHERE last_name REGEXP '[gim]e';	




/*
^ - starts with
$ - ends with
[.] (set)- logical or with sequence
 
*/
SELECT *
FROM customers
WHERE last_name REGEXP '[a-h]e';




-- Limit

SELECT *
FROM customers 
ORDER BY points DESC 
LIMIT 3;


-- if we doesn't give a order by in variable it willl be ascending in a primary key. 

EXPLAIN 
SELECT * 
FROM customers;

SELECT *
FROM customers
WHERE first_name = 'Lex';

EXPLAIN
SELECT *
FROM customers
WHERE first_name = 'Lex';

USE exercise_hr;

EXPLAIN
SELECT *
FROM employees
WHERE employee_id = 102;

EXPLAIN
SELECT *
FROM employees
WHERE last_name ='de haan';





 















