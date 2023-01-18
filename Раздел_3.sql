/*Домашнее задание Раздел 3*/

select * from employees where first_name in 'David';

select * from employees where job_id in 'FI_ACCOUNT';

select * from employees;

select first_name, last_name, salary, department_id from employees
where department_id = 50 and salary > 4000;


select * from employees
where department_id = 20 or department_id = 30;

select * from employees
where first_name like '_a%a'; 

select * from employees
where department_id in (50, 80) and commission_pct is not null
order by email asc, 1 asc;

select * from employees
where first_name like '%n%n%';

select * from employees
where first_name like '_____%' order by department_id desc nulls last;

select * from employees
where salary BETWEEN 3000 and 7001 and commission_pct is null 
and job_id in('PU_CLERK', 'ST_MAN', 'ST_CLERK');

SELECT
    *
FROM employees where first_name like '%$%%' escape '$';

select job_id, first_name, salary  from employees
where job_id != 'IT_PROG' and manager_id >=120  order by job_id, first_name desc;



