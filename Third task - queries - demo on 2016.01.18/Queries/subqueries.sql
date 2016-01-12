
/*SUBQUERIES*/

/*1. Write a query to find the names (first_name, last_name) and salaries of the employees who have higher salary than the employee whose last_name='Bull'*/
select first_name, last_name, salary from employees where salary >= (select salary from employees where last_name='Bull');

/*2. Find the names (first_name, last_name) of all employees who works in the IT department.*/
select concat(first_name, ' ', last_name) from employees where department_id=(select department_id from departments where department_name="IT");

/*3. Find the names (first_name, last_name) of the employees who are managers.*/
select concat(first_name, ' ', last_name) from employees where job_id in (select job_id from jobs where job_title like "%Manager");

/*4. Find the names (first_name, last_name), salary of the employees whose salary is greater than the average salary.*/
select concat(first_name, ' ', last_name) from employees where salary>(select avg(salary) from employees);

/*5. Find the names (first_name, last_name), salary of the employees whose salary is equal to the minimum salary for their job grade.*/
select concat(first_name, ' ', last_name), min(salary) from employees group by job_id;

/*6. Find the names (first_name, last_name), salary of the employees who earn the same salary as the minimum salary for all departments.*/
select concat(first_name, ' ', last_name), min(salary) from employees where salary = (select min(salary) from employees);

/*7. Write a query to display the employee ID, first name, last names, and department names of all employees.*/
select employee_id, first_name, last_name, department_name from employees, departments where employees.department_id = departments.department_id;

/*8. Write a query to select last 10 records from a table.*/
select * from employees order by employee_id desc limit 10;