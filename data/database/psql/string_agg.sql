SELECT
	STRING_AGG(
		emp.first_name::text ||' ' || emp.last_name::text,
		' , '
		ORDER BY
		emp.first_name
	) full_emp_name,
	dep.department_name
FROM employees AS emp
INNER JOIN departments AS dep 
ON dep.department_id=emp.department_id
GROUP BY dep.department_name;
