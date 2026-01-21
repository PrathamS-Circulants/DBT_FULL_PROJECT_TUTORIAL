SELECT
    O.OrderID,
    O.OrderDate,
    O.CustomerID,
    O.EmployeeID,
    O.StoreID,
    O.StatusCD,
    O.StatusDesc,
    COUNT(DISTINCT O.OrderID) AS OrderCount,
    SUM(OI.TotalPrice) AS Revenue,
    O.Updated_at
FROM
    dbt_project_db.dbt_project_schema_l2.orders_stg O
JOIN
    dbt_project_db.dbt_project_schema_l2.orderitems_stg OI ON O.OrderID = OI.OrderID

GROUP BY
    O.OrderID,
    O.OrderDate,
    O.CustomerID,
    O.EmployeeID,
    O.StoreID,
    O.StatusCD,
    O.StatusDesc,
    O.Updated_at