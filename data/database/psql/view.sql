CREATE VIEW IF NOT EXISTS employees_view
    AS
        SELECT *
        FROM employees
        ORDER BY employee_id
WITH DATA;