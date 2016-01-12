
/*AGGREGATE FUNCTIONS AND GROUP BY*/

/*1. Write a query to get the number of employees with the same job.*/
select count(*) from employees group by job_id;

/*2. Write a query to find the manager ID and the salary of the lowest-paid employee for that manager.*/
select manager_id, min(salary) from employees group by manager_id;

/*3. Write a query to get the department ID and the total salary payable in each department.*/
select department_id, sum(salary) from employees group by department_id;

/*4. Write a query to get the average salary for each job ID excluding programmer.*/
select job_id, avg(salary) from employees where job_id!="it_prog" group by job_id;

/*5. Write a query to get the job ID and maximum salary of the employees where maximum salary is greater than or equal to $4000.*/
select job_id, max(salary) from employees group by job_id having max(salary) >= 4000.00;

/*6. Write a query to get the average salary for all departments employing more than 10 employees.*/
select avg(salary) from employees group by department_id having count(department_id) > 10;