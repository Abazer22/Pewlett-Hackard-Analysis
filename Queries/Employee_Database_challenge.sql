SELECT employees.emp_no, employees.first_name, employees.last_name,employess_title.title,
employess_title.from_date,employess_title.to_date
INTO retirement_titles
FROM employees
LEFT JOIN employess_title
ON employees.emp_no = employess_title.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY employees.emp_no; 
