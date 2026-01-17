
  
    

create or replace transient table dbt_project_db.dbt_project_schema_l3.customerorder
    
    
    
    as (

with customerorder as (
    select
        c.customerid,
        concat(c.firstname,' ',c.lastname) as customername,
        count(o.orderid) as ordercount
    from
        dbt_project_db.dbt_project_schema_l1.customers as c
    join
        dbt_project_db.dbt_project_schema_l1.orders as o
    on
        c.customerid=o.customerid
    group by c.customerid,customername
    order by ordercount desc
)
select customerid,customername,ordercount from customerorder
    )
;


  