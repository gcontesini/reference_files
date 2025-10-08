select round(salary/1000,2) as sal_in_thousands from (select * from employees as emp left join jobs on emp.job_id=jobs.job_id) as emp_job;
