/* ==================================*/
/* Table Aliasing*/

SELECT employee_id, first_name, last_name 
FROM employee e;

SELECT employee_id, first_name, last_name, e.salary
FROM employee e;

SELECT employee_id, first_name, last_name, e.salary
FROM employee e
WHERE e.salary < 30000;

/* ==================================*/
/* Column Aliasing*/

SELECT employee_id, first_name, last_name, e.salary AS annual_salary
FROM employee e;

SELECT employee_id, first_name, last_name, e.salary AS "Annual salary"
FROM employee e;

SELECT employee_id, first_name, last_name, e.salary AS annual_salary, e.salary/12 AS monthly_salary
FROM employee e;

SELECT department_id, COUNT(*) AS num_of_employees
FROM employee
GROUP BY department_id
ORDER BY department_id;

/* ==================================*/
/* Inner Join (Intersection) */

SELECT e.employee_id, 
e.first_name, 
e.last_name, 
d.department_id,
d.department_name
FROM employee e
JOIN department d ON e.department_id = d.department_id;

SELECT e.employee_id, 
e.first_name, 
e.last_name, 
e.salary,
d.department_id,
d.department_name
FROM employee e
JOIN department d ON e.department_id = d.department_id
WHERE e.salary > 60000;

/* ==================================*/
/* Left Outer Join */

SELECT 
c.customer_id,
c.first_name,
c.last_name,
co.order_date
FROM customer c
LEFT JOIN customer_order co ON c.customer_id = co.customer_id;

SELECT d.department_id,
d.department_name,
e.employee_id,
e.first_name,
e.last_name
FROM department d
LEFT JOIN employee e ON d.department_id = e.department_id
ORDER BY d.department_id;

/* ==================================*/
/* Right Outer Join */

SELECT d.department_id,
d.department_name,
e.employee_id,
e.first_name,
e.last_name
FROM department d
RIGHT JOIN employee e ON d.department_id = e.department_id
ORDER BY d.department_id;

/* ==================================*/
/* Full Outer Join */

SELECT d.department_id,
d.department_name,
e.employee_id,
e.first_name,
e.last_name
FROM department d
FULL JOIN employee e ON d.department_id = e.department_id
ORDER BY d.department_id, e.employee_id;

/* ==================================*/
/* Natural Join */

/* Not recommended to use.
Needs both columns to have the same name
If names change, query will stop working
if new columns are added, query may stop working, or show incorrect data*/

SELECT
e.employee_id,
e.first_name,
e.last_name,
department_id,                      
d.department_name
FROM employee e
NATURAL JOIN department d;

 /* These quesries work because column names 
 are same in bothe tables*/

SELECT product_id,
product_name,
department_id,
department_name
FROM product 
NATURAL JOIN department;


/* ==================================*/
/* Cartesian Join */

SELECT employee_id, first_name, last_name
FROM employee;

SELECT department_id, department_name
FROM department;

SELECT employee_id, first_name, last_name,  /*this is one way of cartesian join*/
department_name
FROM employee, department;    

SELECT employee_id, first_name, last_name,  /*this is another way of cartesian join*/
department_name
FROM employee
CROSS JOIN department; 

/* ==================================*/
/* Self Join */

SELECT emp.employee_id,
emp.first_name,
emp.last_name,
emp.manager_id,
mgr.first_name,
mgr.last_name
FROM employee emp 
LEFT JOIN employee mgr ON emp.manager_id = mgr.employee_id;

/* ==================================*/
/* Joining many tables */

/*To show all the orders and products by customers*/
SELECT 
c.customer_id,
c.first_name,
c.last_name,
c.address_state,
co.order_id,
co.order_date,
p.product_name,
p.product_id
FROM customer c
JOIN customer_order co ON c.customer_id = co.customer_id
JOIN product p ON co.product_id = p.product_id
ORDER BY co.order_id; 


/*All customers and show product and order details. 
Can contain customers without orders*/
SELECT 
c.customer_id,
c.first_name,
c.last_name,
c.address_state,
co.order_id,
co.order_date,
p.product_name,
p.product_id
FROM customer c
LEFT JOIN customer_order co ON c.customer_id = co.customer_id
LEFT JOIN product p ON co.product_id = p.product_id
ORDER BY c.customer_id; 

SELECT 
c.customer_id,
c.first_name,
c.last_name,
c.address_state,
co.order_id,
co.order_date,
p.product_name,
p.product_id,
d.department_name
FROM customer c
LEFT JOIN customer_order co ON c.customer_id = co.customer_id
LEFT JOIN product p ON co.product_id = p.product_id
LEFT JOIN department d ON p.department_id = d.department_id
ORDER BY c.customer_id; 


/* ==================================*/
/* Alternative Join Syntax */







