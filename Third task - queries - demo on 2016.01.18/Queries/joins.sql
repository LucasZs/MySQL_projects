
/*JOINS*/

/*1. Write a query to find the addresses (location_id, street_address, city, state_province, country_name) of all the departments.*/
select location_id, street_address, city, state_province, country_name from locations, countries where locations.country_id = countries.country_id;

/*2. Write a query to find the names (first_name, last name), department ID and name of all the employees.*/
select employee_id,first_name, last_name, employees.department_id, department_name from employees, departments where employees.department_id = departments.department_id;

/*3. Find the names (first_name, last_name), job, department number, and department name of the employees who work in London.*/
select first_name, last_name, job_title, departments.department_id, department_name from employees, departments, jobs, locations where locations.city="London" and employees.job_id = jobs.job_id and employees.department_id = departments.department_id  and departments.location_id = locations.location_id;

/*4. Write a query to get the department name and number of employees in the department.*/
select department_name, count(employees.department_id) from employees, departments where departments.department_id = employees.department_id group by departments.department_id;

/*5. Find the names (first_name, last_name) and hire date of the employees who were hired after 'Jones'.*/
select first_name, last_name, hire_date from employees where hire_date > (select hire_date from employees where last_name="Jones");