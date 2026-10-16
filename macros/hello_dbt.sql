{% macro hello_dbt() %}
  'Hello DBT & Snowflake'
{% endmacro %}

-- lets call this hello_dbt() function in hello_jinja.sql model

-- macros file name & function can be different.