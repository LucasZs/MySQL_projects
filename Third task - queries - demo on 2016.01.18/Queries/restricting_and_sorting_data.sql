
/*RESTRICTING AND SORTING DATA*/

/*1. Write a query to display the names (first_name, last_name) and salary for all employees whose salary is not in the range $10,000 through $15,000 and are in department 30 or 100.*/
select first_name, last_name from employees where (salary not between 10000.00 and 15000.00) and (department_id=30 or department_id=100);

/*2. Write a query to display the names (first_name, last_name) and hire date for all employees who were hired in 1987.*/
/*first version*/select first_name, last_name, hire_date from employees where hire_date like "1987%";
/*second version*/select first_name, last_name, hire_date from employees where year(hire_date)=1987;

/*3. Write a query to display the first_name of all employees who have both "b" and "c" in their first name.*/
select first_name from employees where first_name like "%b%" and first_name like "%c%";

/*4. Write a query to display the last name, job, and salary for all employees whose job is that of a Programmer or a Shipping Clerk, and whose salary is not equal to $4,500, $10,000, or $15,000.*/
select last_name, job_title, salary from employees, jobs where (job_title="Programmer" or job_title="Shipping Clerk") and not (salary=4500.00 or  salary=10000.00 or salary=15000.00);

/*5. Write a query to select all record from employees where last name in 'BLAKE', 'SCOTT', 'KING' and 'FORD'.*/
select * from employees where last_name like "%blake%" or last_name like "%scott%" or last_name like "%king%" or last_name like "%ford%";