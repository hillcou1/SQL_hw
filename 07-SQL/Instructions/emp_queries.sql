/* 1. Employee Details */
SELECT E.emp_no, E.first_name, E.last_name, E.gender, S.salary
	from employees E
		JOIN salaries S
			ON E.emp_no = S.emp_no;

/* 2. Employees Hired in 1986 */
SELECT * from employees where hire_Date >= '1986-01-01'
			and hire_date < '1987-01-01';
			
/* 3. Manager of Each department */
SELECT P.dept_no, P.dept_name, E.first_name, E.last_name, M.from_date, M.to_date 
 from employees E 
 INNER JOIN dept_manager M
 	on E.emp_no = M.emp_no
 INNER JOIN departments P
 	on M.dept_no = P.dept_no;
	
/* 4. Department of each Employee*/
SELECT E.emp_no, E.first_name, E.last_name, P.dept_name
 from employees E
 INNER JOIN dept_emp D
 	on E.emp_no = D.emp_no
 INNER JOIN departments P
 	on D.dept_no = P.dept_no;
	
/* 5. First Name: Hercules, Last Name begins with "B"*/
SELECT * FROM employees where first_name = 'Hercules'
	and last_name like 'B%';
	
/* 6. Employees In Sales Dpt */
SELECT E.emp_no, E.first_name, E.last_name, P.dept_name
 from employees E
 INNER JOIN dept_emp D
 	on E.emp_no = D.emp_no
 INNER JOIN departments P
 	on D.dept_no = P.dept_no
	where dept_name = 'Sales';
	
/* 7. Employees in Sales and Development*/
SELECT E.emp_no, E.first_name, E.last_name, P.dept_name
 from employees E
 INNER JOIN dept_emp D
 	on E.emp_no = D.emp_no
 INNER JOIN departments P
 	on D.dept_no = P.dept_no
	and P.dept_name IN ('Sales', 'Development');
	
/* 8. Number of Employees with Same Last Name */
SELECT last_name, COUNT(*) AS Frequency FROM employees GROUP BY last_name ORDER BY Frequency DESC;