{% macro audit() %}
  current_timestamp() as load_time,
  'shubh' as user
{% endmacro %}

-- called this macro in new model : jinja_macro.sql included in select statement.