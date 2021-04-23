SELECT DISTINCT ON (______) _____,
______,
______,
______

INTO nameyourtable
FROM _______
ORDER BY _____, _____ DESC;

-- Deliverable 1 - unique titles

SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no ASC, to_date DESC;

-- Deliverable 1 - retiring titles

SELECT emp.emp_no,
	   emp.first_name,
	   emp.last_name,
	   ti.title,
	   ti.from_date,
	   ti.to_date
INTO retirement_titles
FROM employees as emp
LEFT JOIN titles as ti
ON emp.emp_no = ti.emp_no
WHERE (emp.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no ASC;


SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no ASC, to_date DESC;


SELECT COUNT(title) as "count", title
--INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY "count" DESC;

SELECT * FROM retiring_titles;
SELECT * FROM mentorship_eligibilty;


-- Deliverable 2

SELECT DISTINCT ON (emp.emp_no)emp.emp_no, emp.first_name, emp.last_name, emp.birth_date, de.from_date, de.to_date, ti.title
INTO mentorship_eligibilty
FROM employees AS emp
LEFT JOIN dept_emp AS de
ON emp.emp_no = de.emp_no
LEFT JOIN titles AS ti
ON emp.emp_no = ti.emp_no
WHERE ((emp.birth_date BETWEEN '1965-01-01' AND '1965-12-31') AND (de.to_date = '9999-01-01'))
ORDER BY emp.emp_no ASC;


-- Summary and result queries

SELECT * FROM current_emp
SELECT * FROM retirement_by_dept
SELECT * FROM emp_info
SELECT * FROM mentorship_eligibilty
SELECT * FROM retirement_by_dept
SELECT * FROM retirement_info

SELECT SUM('count')
FROM retirement_by_dept;

SELECT COUNT (emp_no)
FROM current_emp;

SELECT COUNT ('title') AS "count", title
FROM mentorship_eligibilty
GROUP BY title
ORDER BY "count" DESC;

SELECT DISTINCT ON (ri.emp_no)ri.emp_no, 
	   ri.first_name,
	   ri.last_name,
	   de.to_date
FROM retirement_info as ri
LEFT JOIN dept_emp as de
ON ri.emp_no = de.emp_no
WHERE (de.to_date = '9999-01-01')
ORDER BY ri.emp_no ASC;

SELECT 
	ce.emp_no,
	ce.first_name,
	ce.last_name,
	ce.to_date,
	ut.title
INTO current_retiring_employees
FROM current_emp AS ce
LEFT JOIN unique_titles AS ut
ON ce.emp_no = ut.emp_no;
	

SELECT COUNT ('title') AS "count", title
FROM current_retiring_employees
GROUP BY title
ORDER BY "count" DESC;

