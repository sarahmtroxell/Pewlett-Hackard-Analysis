--Challenge Code

--Create Retirement Titles Table

SELECT e.emp_no
	,e.first_name
	,e.last_name
	,t.title
	,t.from_date
	,t.to_date
INTO retirement_titles
FROM employees AS e
INNER JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31');

--Create Unique Titles Table
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) 
	emp_no
	,first_name
	,last_name
	,title
INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;

--Create Retiring Titles Table
--Number of Employees by Job Title to Retire
SELECT COUNT(emp_no)
	,title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count(emp_no) DESC;