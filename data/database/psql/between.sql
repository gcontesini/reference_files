SELECT employee_id, first_name, last_name, email, hire_date
    FROM employees
    WHERE hire_date 
        BETWEEN '1999-01-01 00:00:00'
        AND '1999-12-31 00:00:00';