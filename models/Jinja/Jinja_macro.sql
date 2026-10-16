{{ config(materialized = 'table') }}

select 
    ID, 
    lower(name) as NAME, 
    SALARY,
    case 
        when country = 'IND' then 'INDIA'
        else upper(country)
    end as COUNTRY,
    {{ audit() }}   --- as per function, 2 audit columns get added into newly created table as oer model name 
from 
    emp_test1
