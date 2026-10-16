{{config (materialized = 'table') }}

{% set min_salary = 66000 %}
{% set tbl_nm = 'EMP_TEST1' %} 

SELECT *
FROM {{ tbl_nm }}
WHERE SALARY > {{ min_salary }}

-- mostly we use dbt compile to test and see the exact sql code under folder target--> compile --> file
-- but here are are running model to see table in snowflake after compiling.
-- dont forget to add new folder under model to add in dbt_project.yml