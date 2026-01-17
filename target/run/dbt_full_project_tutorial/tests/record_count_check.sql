
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  -- Define the expected record counts for each table


-- Test the count of records in each table

  SELECT 'customers' AS table_name,
         (SELECT COUNT(*) FROM dbt_project_db.dbt_project_schema_l1.customers) AS record_count,
         50 AS expected_count
  WHERE (SELECT COUNT(*) FROM dbt_project_db.dbt_project_schema_l1.customers) < 50
   UNION ALL 

  SELECT 'employees' AS table_name,
         (SELECT COUNT(*) FROM dbt_project_db.dbt_project_schema_l1.employees) AS record_count,
         20 AS expected_count
  WHERE (SELECT COUNT(*) FROM dbt_project_db.dbt_project_schema_l1.employees) < 20
   UNION ALL 

  SELECT 'stores' AS table_name,
         (SELECT COUNT(*) FROM dbt_project_db.dbt_project_schema_l1.stores) AS record_count,
         10 AS expected_count
  WHERE (SELECT COUNT(*) FROM dbt_project_db.dbt_project_schema_l1.stores) < 10
   UNION ALL 

  SELECT 'suppliers' AS table_name,
         (SELECT COUNT(*) FROM dbt_project_db.dbt_project_schema_l1.suppliers) AS record_count,
         5 AS expected_count
  WHERE (SELECT COUNT(*) FROM dbt_project_db.dbt_project_schema_l1.suppliers) < 5
   UNION ALL 

  SELECT 'products' AS table_name,
         (SELECT COUNT(*) FROM dbt_project_db.dbt_project_schema_l1.products) AS record_count,
         100 AS expected_count
  WHERE (SELECT COUNT(*) FROM dbt_project_db.dbt_project_schema_l1.products) < 100
   UNION ALL 

  SELECT 'orderitems' AS table_name,
         (SELECT COUNT(*) FROM dbt_project_db.dbt_project_schema_l1.orderitems) AS record_count,
         1000 AS expected_count
  WHERE (SELECT COUNT(*) FROM dbt_project_db.dbt_project_schema_l1.orderitems) < 1000
   UNION ALL 

  SELECT 'orders' AS table_name,
         (SELECT COUNT(*) FROM dbt_project_db.dbt_project_schema_l1.orders) AS record_count,
         200 AS expected_count
  WHERE (SELECT COUNT(*) FROM dbt_project_db.dbt_project_schema_l1.orders) < 200
  

  
  
      
    ) dbt_internal_test