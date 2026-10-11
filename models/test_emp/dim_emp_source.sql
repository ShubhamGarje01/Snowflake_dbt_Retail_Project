select 
    ID, 
    lower(name) as NAME, 
    SALARY,
    case 
        when country = 'IND' then 'INDIA'
        else upper(country)
    end as COUNTRY
from {{ source('raw_data', 'emp_test1') }}
-------------(source_name given in yml file, table_name from database)