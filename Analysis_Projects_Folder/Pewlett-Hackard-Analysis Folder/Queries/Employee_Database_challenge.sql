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

SELECT COUNT(title) as "count", title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY "count" DESC;


SELECT emp_no, first_name, last_name, birth_date
FROM employees;

SELECT emp.emp_no, emp.first_name, emp.last_name, emp.birth_date, de.from_date, de.to_date, ti.title
-- INTO
FROM employees AS emp
LEFT JOIN dept_emp AS de
ON emp.emp_no = de.emp_no
LEFT JOIN titles AS ti
ON de.emp_no = ti.emp_no;

SELECT DISTINCT ON (emp.emp_no)emp.emp_no, emp.first_name, emp.last_name, emp.birth_date, de.from_date, de.to_date, ti.title
-- INTO
FROM employees AS emp
LEFT JOIN dept_emp AS de
ON emp.emp_no = de.emp_no
LEFT JOIN titles AS ti
ON emp.emp_no = ti.emp_no;


SELECT DISTINCT ON (emp.emp_no)emp.emp_no, emp.first_name, emp.last_name, emp.birth_date, de.from_date, de.to_date, ti.title
INTO mentorship_eligibilty
FROM employees AS emp
LEFT JOIN dept_emp AS de
ON emp.emp_no = de.emp_no
LEFT JOIN titles AS ti
ON emp.emp_no = ti.emp_no
WHERE ((emp.birth_date BETWEEN '1965-01-01' AND '1965-12-31') AND (de.to_date = '9999-01-01'))
ORDER BY emp.emp_no ASC;

