/* ==================================*/
/* String Functions */

SELECT customer_id,
first_name,
last_name,
email_address,
INSTR(email_address,'@') AS at_postion  /*returns the position of the character*/ 
FROM customer;

SELECT customer_id,
first_name,
last_name,
email_address,
address_state,
INSTR(email_address,'@'), 
LENGTH(address_state)
FROM customer; 

SELECT customer_id,
first_name,
last_name,
email_address,
address_state,
INSTR(email_address,'@'),
LENGTH(address_state)
FROM customer
WHERE INSTR(email_address, '@')>0
AND LENGTH(address_state) = 2; 

SELECT customer_id,
first_name,
last_name,
email_address,
address_state,
INSTR(email_address,'@'),
LENGTH(address_state)
FROM customer
WHERE INSTR(email_address, '@')>0
AND LENGTH(address_state) = 2
ORDER BY LENGTH(email_address) DESC;

/* ==================================*/
/* Nesting Functions */

/*Find the length of an email address
Find the position of the @ symbol
Extract the characters between @ and the end of the email address*/

/*SUBSTR(source,position,length)*/

SELECT customer_id,
first_name,
last_name,
email_address,
address_state,
INSTR(email_address,'@'),
SUBSTR(email_address,INSTR(email_address,'@')+1,LENGTH(email_address)) AS email_domain
FROM customer; 

/* ==================================*/
/* Number Functions */

/*ROUND - rounds to the nearest whole number or specified decimal places
  CEIL  - rounds up to nearest whole number. short for "ceiling" 
  FLOOR - rounds down to nearest whole number*/

SELECT product_id,
product_name,
price,
ROUND(price),
ROUND(price, 1),
CEIL(price),
FLOOR(price)
FROM product;

SELECT product_id,
product_name,
price,
price * 9 * 0.85,
ROUND(price * 9 * 0.85,2),
ROUND(price * 9 * 0.85)
FROM product
WHERE product_id = 1;

/* ==================================*/
/* Date Functions */

/*SYSDATE       - Gets the current date
  ADD_MONTHS(date, num_of_months)    - Adds a number of months to a date value
  MONTHS_BETWEEN(start_date, end_date) - Finds the difference between two date values */
  
SELECT employee_id,
first_name,
last_name,
hire_date,
SYSDATE
FROM employee;

SELECT employee_id,
first_name,
last_name,
hire_date,
ADD_MONTHS(hire_date, 6) as review_date,
ADD_MONTHS(hire_date, 60) as five_year
FROM employee;

SELECT employee_id,
first_name,
last_name,
hire_date,
ROUND(MONTHS_BETWEEN(SYSDATE, hire_date)/12,1) as years_with_company
FROM employee;

SELECT employee_id,
first_name,
last_name,
hire_date,
ROUND(MONTHS_BETWEEN(SYSDATE, hire_date)/12,1) as years_with_company
FROM employee;

SELECT SYSDATE
FROM dual;

SELECT ADD_MONTHS(SYSDATE,20)
FROM dual;

/* =========================================*/
/* Data types and conversion Functions */

/* 
   CHAR      - character string with fixed size 
   VARCHAR   - character string with a variable size
   NUMBER    - stores numerci data with optional decimals
   DATE      - stores date and time
   TIMESTAMP - stores date, time and fractional seconds
   CLOB      - stores large amounts of text
*/

/*
  TO_CHAR   - 
  TO_DATE   -
  TO_NUMBER -
*/

SELECT first_name,
last_name,
hire_date,
TO_CHAR(hire_date, 'YYYY_MM_DD')
FROM employee;

SELECT TO_DATE('2017_05_28', 'YYYY_MM_DD')
FROM dual;

SELECT TO_NUMBER('200')
FROM dual;

/* =========================================*/
/* CASE statement */

/*
  CASE[expression] WHEN condtion_1 THEN result_1
  WHEN condition_2 THEN result_2
  .....
  WHEN condition_n THEN result_n
  ELSE result
  END case_name
*/

SELECT product_id,
product_name,
price,
CASE 
WHEN price> 200 THEN 'over 200' 
WHEN price >100 AND price <= 200 THEN 'Between 100 and 200'
WHEN price > 50 AND price <= 100 THEN 'Between 50 and 100'
ELSE 'Under 50'
END price_group
FROM product;

SELECT customer_id,
first_name,
last_name,
address_state,
CASE address_state
WHEN 'NY' THEN 'EAST'
WHEN 'CA' THEN 'West'
WHEN 'OR' THEN 'West'
WHEN 'SC' THEN 'EAST'
WHEN 'TX' THEN 'West'
WHEN 'FL' THEN 'EAST'
WHEN 'IN' THEN 'EAST'
ELSE 'Unknown' 
END state_group
FROM customer;

SELECT customer_id,
first_name,
last_name,
address_state,
CASE
WHEN address_state IN ('NY' , 'SC', 'FL' , 'IN') THEN 'EAST'
WHEN address_state IN ('CA', 'OR', 'TX') THEN 'WEST'
ELSE 'Unknown' 
END state_group
FROM customer;


