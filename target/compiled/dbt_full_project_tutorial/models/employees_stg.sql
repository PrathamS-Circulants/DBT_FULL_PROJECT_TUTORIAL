             -- this is redundant, and does not need to be set explicitly

SELECT
EmployeeID,
FirstName,
LastName,
Email,
JobTitle,
HireDate,
ManagerID,
Address,
City,
State,
ZipCode,
CONCAT(FirstName, ' ', LastName) AS EmployeeName,
Updated_at
FROM
dbt_project_db.dbt_project_schema_l1.employees