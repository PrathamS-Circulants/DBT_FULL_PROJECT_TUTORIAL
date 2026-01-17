
  create or replace   view dbt_project_db.dbt_project_schema_l3.storeperformance
  
  
  
  
  as (
    SELECT
    OS.StoreID,
    SUM(OFACT.Revenue) AS ActualSales,
    SUM(ST.SalesTarget) AS TargetSales
FROM
    dbt_project_db.dbt_project_schema_l2.orders_stg OS
JOIN
    dbt_project_db.dbt_project_schema_l2.orders_fact OFACT ON OS.OrderID = OFACT.OrderID
JOIN
    dbt_project_db.dbt_project_schema_l3.salestargets ST ON ST.StoreID = OS.StoreID
GROUP BY 1
  );

