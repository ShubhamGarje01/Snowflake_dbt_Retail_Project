
{% set column = ['ID', 'Name', 'Salary', 'Country', 'Address_Info', 'Contact_Info'] %}

-- to get the column array elements printed

{% for i in column %}
{{ i }}
{% endfor %}



-- to create a select statement for table using for loop using these columns

select 

{% for i in column %}
{{ i }}, -- adding comma, so select statement can have comma between 2 column names
{% endfor %}

from table_name

-- in above query we are getting comma for all column including last column, which will give error
-- lets handle this using loop.last

select 

{% for i in column %}
{{ i }}

{% if not loop.last %}  -- if its not the last item of loop, then use comma, else break the loop.
,
{% endif %}

{% endfor %}

from table_name
