
SELECT e.emp_no, 
e.last_name, 
e.first_name, 
e.sex, 
s.salary
FROM "Employees" as e
JOIN "Salaries" as s ON e.emp_no = s.emp_no;


SELECT first_name, 
last_name, 
hire_date
FROM "Employees"
WHERE EXTRACT(YEAR FROM hire_date) = 1986


SELECT d.dept_no, 
d.dept_name, 
dm.emp_no AS manager_emp_no, 
e.last_name AS manager_last_name, 
e.first_name AS manager_first_name
FROM "Departments" d
JOIN "Dept_Manager" dm ON d.dept_no = dm.dept_no
JOIN "Employees" e ON dm.emp_no = e.emp_no;


SELECT e.emp_no, 
e.last_name, 
e.first_name, 
d.dept_name, 
de.dept_no
FROM "Employees" e
JOIN "Dept_Emp" de ON e.emp_no = de.emp_no
JOIN "Departments" d ON de.dept_no = d.dept_no;


SELECT first_name, last_name, sex
FROM "Employees"
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';


SELECT e.emp_no, 
e.last_name, 
e.first_name
FROM "Employees" e
JOIN "Dept_Emp" de ON e.emp_no = de.emp_no
JOIN "Departments" d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';


SELECT e.emp_no, 
e.last_name, 
e.first_name, 
d.dept_name
FROM "Employees" e
JOIN "Dept_Emp" de ON e.emp_no = de.emp_no
JOIN "Departments" d ON de.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales', 'Development');


SELECT last_name, COUNT(*) as name_count
FROM "Employees"
GROUP BY last_name
ORDER BY name_count DESC;
