
/*BASIC SELECT*/

/*1. Write a query to get unique department ID from employee table.*/
select distinct employee_id from employees;

/*2. Write a query to get all employee details from the employee table order by first name, descending.*/
select * from employees order by first_name desc;

/*3. Write a query to get the total salaries payable to employees.*/
select sum(salary) from employees;

/*4. Write a query to get the maximum and minimum salary from employees table.*/
select max(salary), min(salary) from employees;

/*5. Write a query to get the average salary and number of employees in the employees table.*/
select avg(salary) from employees;

/*6. Write a query to get the number of employees working with the company.*/
select count(employee_id) from employees;

/*7. Write a query to get the number of jobs available in the employees table.*/
select count(distinct job_id) from employees;

/*8. Write a query get all first name from employees table in upper case.*/
select upper(first_name)from employees;

/*9. Write a query to get the first 3 characters of first name from employees table.*/
select substring(first_name, 1, 3) from employees;

/*10. Write a query to get the names (for example Ellen Abel, Sundar Ande etc.) of all the employees from employees table.*/
select concat(first_name,' ', last_name) from employees;

/*11. Write a query to get first name from employees table after removing white spaces from both side.*/
select trim(first_name) from employees;

/*12. Write a query to get the length of the employee names (first_name, last_name) from employees table.*/
select length(first_name) + length(last_name) from employees;

/*13. Write a query to select first 10 records from a table.*/
select * from employees limit 10;