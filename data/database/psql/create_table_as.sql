CREATE TEMP TABLE staff_by_dep AS
	SELECT 	dep.department_name,
		STRING_AGG(
			emp.first_name::text ||' ' || emp.last_name::text,
			' , '
			ORDER BY emp.first_name
		) full_emp_name
	FROM employees AS emp
	INNER JOIN departments AS dep
	ON dep.department_id=emp.department_id
	GROUP BY dep.department_name;
