{{ config(materialized = 'table', alias = 'emp_alias_tag_finance', tags = ['finance']) }}

select * from {{ ref('dim_emp_info') }}