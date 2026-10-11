{{ config(materialized = 'table') }} --- since we wanta table, as per precedence, it will be table object now in snowflake


select * from {{ ref('dim_emp_test') }}  

/* here we are refering model,
meanse we want result of mentioned model in our this current model.
And we not hardcoding the database.schema.table names,
we are just refering to existing models.

We can also have WHERE clause in the query, if needed. 
*/