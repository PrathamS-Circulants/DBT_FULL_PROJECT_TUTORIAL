
    select Email
    from dbt_project_db.dbt_project_schema_l3_dbt_project_schema_l2.customers_stg
    where TRIM(Email) = ''
