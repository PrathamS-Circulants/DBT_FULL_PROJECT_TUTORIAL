select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    select Email
    from dbt_project_db.dbt_project_schema_l3_dbt_project_schema_l2.customers_stg
    where TRIM(Email) = ''

      
    ) dbt_internal_test