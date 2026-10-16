-- if salary is more than 66,000 then its high salary, else low salary.


{% set sal = 66000 %}  -- setting sal variable with  default salary

{% if sal > 75000 %}
select 'High Salary'
{% else %}
select 'Low Salary'
{% endif %}
