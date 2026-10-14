{% snapshot emp_snapshot %}

{{
   config(
       target_database='lbdi_retail',
       target_schema='dbt_snapshots',
       unique_key='emp_id',

       strategy='timestamp',
       updated_at='load_time',
   )
}}

select * from emp_test2

{% endsnapshot %}


