-- 1 Target : The info is coming from profile.yml file, which we have provided while setting up project.

select {{target.database}}, {{target.schema}}  -- we get the snowflake db & schema name as its a target.

select '{{target.name}}'  -- to get the environment name from profile.yml




-- 2 this : it will give us db.schema.dbt_model_name with select. this = current model name only
-- if we call this in another model, it will give us that model name along with db & schema

select '{{this}}'

-- output : select 'LBDI_Retail.Stage_Layer.dbt_inbuilt_objects'



-- 3 var() : 

{% set country = 'India' %}
-- by doing this, we can set up the variable for one particular model. If we need this variable in 
-- more than 1 model, then we need to define this in each model. as it is a static for current model.

-- To make it more dynamic, define once and use multiple times in multiple model across the project
-- define vars in dbt_project.yml as below
{# 
vars:
  d_country: India
  d_salary: 99999
  d_department: IT 

and then use var keyword to call these variable anywhere in project.
#}

select 
    {{var('d_country')}} as country,
    {{var('d_salary')}} as salary,
    {{var('d_department')}} as dept
from table_nm

-- providing var in single quotes in necessary, else it will give error.
-- we can use these variables in any model across project once define in dbt_project.yml


-- 4 