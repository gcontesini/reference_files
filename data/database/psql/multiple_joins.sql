SELECT 
    emp.first_name,
    emp.last_name,
    jobs.job_title,
    loc.city,
    loc.state_province,
    loc.country_id
FROM employees AS emp 
    INNER JOIN jobs
    ON emp.job_id=jobs.job_id
    INNER JOIN departments AS dept
    ON emp.department_id=dept.department_id
    INNER JOIN locations AS loc
    ON dept.location_id=loc.location_id;