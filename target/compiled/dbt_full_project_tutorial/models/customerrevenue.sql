SELECT
    OS.CustomerID,
    C.CustomerName,
    SUM(OS.OrderCount) AS OrderCount,
    SUM(OS.Revenue) AS Revenue
FROM
    dbt_project_db.dbt_project_schema_l3_dbt_project_schema_l2.orders_fact OS
JOIN
    dbt_project_db.dbt_project_schema_l3_dbt_project_schema_l2.customers_stg C ON OS.CustomerID = C.CustomerID
GROUP BY
    OS.CustomerID,
    C.CustomerName