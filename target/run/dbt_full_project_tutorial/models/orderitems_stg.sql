
  create or replace   view dbt_project_db.dbt_project_schema_l2.orderitems_stg
  
  
  
  
  as (
    SELECT
    OrderItemID,
    OrderID,
    ProductID,
    Quantity,
    UnitPrice,
    Quantity * UnitPrice AS TotalPrice,
    Updated_at
FROM
    dbt_project_db.dbt_project_schema_l1.orderitems
  );

