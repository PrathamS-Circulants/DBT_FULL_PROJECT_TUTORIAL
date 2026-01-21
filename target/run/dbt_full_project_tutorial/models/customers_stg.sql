
  create or replace   view dbt_project_db.dbt_project_schema_l2.customers_stg
  
  
  
  
  as (
    select
    customerid,
    firstname,
    lastname,
    email,
    phone,
    address,
    city,
    state,
    zipcode,
    updated_at,
    concat(firstname,' ',lastname) as customername
from dbt_project_db.dbt_project_schema_l1.customers
  );

