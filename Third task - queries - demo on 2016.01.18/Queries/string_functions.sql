
/* STRING FUNCTIONS*/

/*1. Write a query to get the employee id, email id (discard the last three characters).*/
select employee_id, (reverse(substring((reverse(email)), 4, (length(email))))) from employees;

/*2. Write a query to get the locations that have minimum street length.*/
select * from locations where length(street_address)=(select min(length(street_address)) from locations);

/*3. Write a query that displays the first name and the length of the first name for all employees whose name starts with the letters 'A', 'J' or 'M'. Give each column an appropriate label. Sort the results by the employees' first names.*/
select first_name as "First name starting with 'A', 'J' or 'M'", length(first_name) as "Length of first name starting with 'A', 'J' or 'M'" from employees where first_name like "A%" or first_name like "J%" or first_name like "M%"group by first_name;