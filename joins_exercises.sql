use employees;

select departments.dept_name as 'Department Name', Concat(employees.first_name, ' ', employees.last_name) as 'Department Manager'
from departments
join dept_manager
  on dept_manager.dept_no = departments.dept_no
join employees
  on employees.emp_no = dept_manager.emp_no
where dept_manager.to_date > NOW()
order by `Department Name`;

-- Refactoring to use more aliases
select departments.dept_name as 'Department Name', Concat(employees.first_name, ' ', employees.last_name) as 'Department Manager'
from departments as 'd'
join dept_manager as 'dm'
  on dm.dept_no = d.dept_no
join employees as 'e'
  on e.emp_no = dm.emp_no
where dm.to_date > NOW()
order by `Department Name`;

select departments.dept_name as 'Department Name', Concat(employees.first_name, ' ', employees.last_name) as 'Manager Name'
from departments
join dept_manager
  on dept_manager.dept_no = departments.dept_no
join employees
  on employees.emp_no = dept_manager.emp_no
where employees.gender = 'F' and dept_manager.to_date > NOW()
order by `Department Name`;

select titles.title as 'Title', count(*) as 'Count'
from titles
join dept_emp
  on dept_emp.emp_no = titles.emp_no
where titles.to_date > Now() and dept_emp.dept_no = 'd009'
  group by `Title`;

select departments.dept_name as 'Department Name', Concat(employees.first_name, ' ', employees.last_name) as 'Name', salaries.salary as 'Salary'
from departments
join dept_manager
  on dept_manager.dept_no = departments.dept_no
join employees
  on employees.emp_no = dept_manager.emp_no
join salaries
  on salaries.emp_no = employees.emp_no
where dept_manager.to_date > NOW() and salaries.to_date > now()
order by `Department Name`;

select concat(employees.first_name, ' ', employees.last_name) as 'Employee Name', departments.dept_name as 'Department Name'
from departments
join dept_emp
 on dept_emp.dept_no = departments.dept_no
join employees
 on employees.emp_no = dept_emp.emp_no
where dept_emp.to_date > now()
order by `Employee Name`
