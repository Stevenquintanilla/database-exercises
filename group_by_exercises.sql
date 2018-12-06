use employees;

select distinct titles.title
from employees.titles;

select  last_name
from employees.employees
where last_name like '%e' and last_name like 'e%'
group by last_name;

select distinct first_name, last_name
from employees.employees
where last_name like '%e' and last_name like 'e%'
group by first_name, last_name;

select last_name, count(*)
from employees.employees
where last_name like '%q%' and last_name not like '%qu%'
group by last_name
order by count(*) desc;

select gender, count(*)
from employees.employees
where first_name = 'Irena' or first_name = 'Vidya' or first_name= 'Maya'
group by gender;

