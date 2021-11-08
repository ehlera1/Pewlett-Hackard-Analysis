-- Generate table with employee titles 
SELECT 
	e.emp_no,
    e.first_name,
	e.last_name,
    tl.title,
	tl.from_date,
    tl.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as tl
ON (e.emp_no = tl.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
    first_name,
	last_name,
	title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

-- Table to show count of employees ready to retire by job title
Select Count (title) as "count", title
INTO retiring_titles
FROM unique_titles
group by title
ORDER BY count DESC;


-- Creating Mentorship Eligibility table
SELECT DISTINCT ON (e.emp_no)
	e.emp_no,
    e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
    de.to_date,
	tl.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as tl
ON (e.emp_no = tl.emp_no)
WHERE de.to_date >= '9999-01-01'
and (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;

--Additional Queries 
-- Departments of Unique Retireing Employees

Select Distinct on (ut.emp_no)
ut.emp_no,
de.dept_no,
dep.dept_name
INTO retirement_depts
From unique_titles as ut
Inner Join dept_emp as de
ON (ut.emp_no = de.emp_no)
Inner Join departments as dep
on (de.dept_no = dep.dept_no)



--Count of Retirees by Dept 
Select Count (emp_no) as "count", dept_name
INTO retiring_dept_count
FROM retirement_depts
group by dept_name
ORDER BY count DESC;
