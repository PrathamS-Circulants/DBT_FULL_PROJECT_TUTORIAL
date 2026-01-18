select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select OrderID
from dbt_project_db.dbt_project_schema_l2.orders_stg
where OrderID is null



      
    ) dbt_internal_test