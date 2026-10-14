{% snapshot emp_check_snapshot %}

{{
   config(
       target_database='lbdi_retail',
       target_schema='dbt_snapshots',
       unique_key='id',

       strategy='check',
       check_cols=['name', 'salary', 'country'],
   )
}}

select * from emp_test1

{% endsnapshot %}