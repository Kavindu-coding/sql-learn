/* -----------------------------------------------------------------*/
/*Single row  subquery*/

SELECT employee_id,
first_name,
last_name,
salary
FROM employee WHERE salary >(
SELECT AVG(salary)
FROM employee);

/* -----------------------------------------------------------------*/
/*Multi row  subquery*/

/*
  Canot use greater than (>) sign with multiple values
  eg : WHERE salary > x,y,z
  
  Use an operator than can handle multiple value
  eg : IN(), > ANY, < ALL
*/


SELECT employee_id,
first_name,
last_name,
department_id
FROM employee
WHERE department_id IN (
    SELECT department_id
    FROM department
    WHERE department_name IN ('Sales', 'Finance')
);



