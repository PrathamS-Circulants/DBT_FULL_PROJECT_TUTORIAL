
    select JobTitle
    from dbt_project_db.dbt_project_schema_l3.employees_stg
    where TRIM(JobTitle) = ''
