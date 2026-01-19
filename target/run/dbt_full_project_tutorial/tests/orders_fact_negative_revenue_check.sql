select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      SELECT OrderID
FROM dbt_project_db.dbt_project_schema_l3_dbt_project_schema_l2.orders_fact
WHERE Revenue < 0
      
    ) dbt_internal_test