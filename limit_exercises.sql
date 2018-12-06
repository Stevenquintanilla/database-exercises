use employees;

select distinct last_name
from employees.employees
order by last_name desc
limit 10;

select first_name, last_name
from employees.employees
limit 5 offset 110;

select first_name, last_name, hire_date, birth_date
from employees.employees
where hire_date like '199%' and birth_date like '%-12-25%'
order by  hire_date desc
limit 5;