select * from {{ ref('dim_emp_test') }}
where salary < 0