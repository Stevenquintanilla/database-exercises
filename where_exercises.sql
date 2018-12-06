use employees;

select first_name
from employees.employees
where first_name = 'Irena' or first_name = 'Vidya' or first_name= 'Maya'
and gender = 'M';


select first_name, last_name
from employees.employees
where last_name like 'E%' or last_name like '%e';

select first_name, last_name
from employees.employees
where last_name like '%q%' and last_name not like '%qu%';

select first_name, hire_date, birth_date
from employees.employees
where hire_date like '199%' and birth_date like '%-12-25%';

select first_name, birth_date
from employees.employees
where birth_date like '%-12-25%';