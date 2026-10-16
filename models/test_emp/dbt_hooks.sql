{{config(
    materialized = 'table', 

    pre_hook = "update AUDIT_LOG
                set STATUS = 'OLD'",

    post_hook = "INSERT INTO AUDIT_LOG VALUES (
                 CURRENT_TIMESTAMP(),
                 'DBT_HOOKS_MODEL',
                 'SUCCESS' ) "
    )
}}  
-- in pre hook, updating status of all existing records in audit_log table as 'OLD'
-- in post hook, inserting timestamp, model_name & status as SUCCESS.
SELECT * FROM emp_test1


--- this will create a new table named : dbt_hooks & in audit_log table, it will create insert.