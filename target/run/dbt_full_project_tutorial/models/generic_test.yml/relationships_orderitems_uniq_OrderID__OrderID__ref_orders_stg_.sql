select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

with child as (
    select OrderID as from_field
    from dbt_project_db.dbt_project_schema_l3.orderitems_uniq
    where OrderID is not null
),

parent as (
    select OrderID as to_field
    from dbt_project_db.dbt_project_schema_l3_dbt_project_schema_l2.orders_stg
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



      
    ) dbt_internal_test