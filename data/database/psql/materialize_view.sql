CREATE MATERIALIZED VIEW IF NOT EXISTS employees_matview
    AS
        SELECT *
        FROM employees
        ORDER BY employee_id 
WITH DATA;