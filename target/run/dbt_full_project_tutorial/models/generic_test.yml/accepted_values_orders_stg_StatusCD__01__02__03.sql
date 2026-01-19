select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

with all_values as (

    select
        StatusCD as value_field,
        count(*) as n_records

    from dbt_project_db.dbt_project_schema_l3_dbt_project_schema_l2.orders_stg
    group by StatusCD

)

select *
from all_values
where value_field not in (
    '01','02','03'
)



      
    ) dbt_internal_test