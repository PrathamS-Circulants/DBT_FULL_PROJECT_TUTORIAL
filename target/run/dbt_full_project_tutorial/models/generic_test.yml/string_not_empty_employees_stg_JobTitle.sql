
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    select JobTitle
    from dbt_project_db.dbt_project_schema_l3.employees_stg
    where TRIM(JobTitle) = ''

  
  
      
    ) dbt_internal_test