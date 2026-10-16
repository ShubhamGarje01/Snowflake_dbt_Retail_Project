-- above instead of table/view, we are using incremental & also have to provide the unique key


{{ config(materialized = 'incremental', unique_key = 'EMP_ID') }}
select * from EMP_INCREMENTAL

-- incremental logic below

{% if is_incremental() %} -- checks whether dbt is running the model incrementally rather than creating the table from scratch.
where updated_at > (  -- filters the source data to load only records updated after that timestamp
    select max(updated_at)  -- -- finds the latest timestamp already loaded into that table.
    from {{this}}    -- refers to the current dbt model's target table.
)
{% endif %}  -- closes the condition



-- we have 3 incremental strategies : we can pass the strategy in config part of model. after unique_key.

-- 1) Merge :--> default : Inserts new records into the target table without updating existing records.
-- 2) append :--> Inserts new records and updates existing records based on a unique key.
-- 3) delete - insert :--> Deletes existing target records matching incoming keys, then inserts the new versions.

