
  create or replace   view dbt_project_db.dbt_project_schema_l3.hook_test
  
   as (
    

SELECT * from dbt_project_schema_l1.orders
  );

