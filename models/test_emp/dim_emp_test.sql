select 
    ID, 
    lower(name) as NAME, 
    SALARY,
    case 
        when country = 'IND' then 'INDIA'
        else upper(country)
    end as COUNTRY
from 
    emp_test1