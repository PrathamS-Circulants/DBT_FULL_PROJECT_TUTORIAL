
    
    

select
    OrderID as unique_field,
    count(*) as n_records

from dbt_project_db.dbt_project_schema_l3_dbt_project_schema_l2.orders_stg
where OrderID is not null
group by OrderID
having count(*) > 1


