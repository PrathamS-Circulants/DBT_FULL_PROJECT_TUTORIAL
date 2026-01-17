SELECT
    OS.StoreID,
    SUM(OFACT.Revenue) AS TotalRevenue
FROM
    dbt_project_db.dbt_project_schema_l2.orders_stg OS
JOIN
    dbt_project_db.dbt_project_schema_l2.orders_fact OFACT ON OS.OrderID = OFACT.OrderID
GROUP BY 1