use employees;

select first_name, last_name
from employees.employees
where first_name = 'Irena' or first_name = 'Vidya' or first_name= 'Maya'
order by last_name DESC, first_name DESC;

select first_name, last_name
from employees.employees
where last_name like '%e%'
order by emp_no DESC;

select first_name, last_name, hire_date, birth_date
from employees.employees
where hire_date like '199%' and birth_date like '%-12-25%'
order by  hire_date desc;
