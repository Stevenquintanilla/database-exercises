use employees;

select concat(emp_no, ' - ' ,last_name, ', ', first_name) as full_name, birth_date
from employees.employees
limit 10;