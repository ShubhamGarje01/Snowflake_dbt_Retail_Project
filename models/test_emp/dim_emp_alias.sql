{{ config(materialized = 'table', alias = 'dim_emp_alias_final') }}

select * from {{ ref('dim_emp_info') }}