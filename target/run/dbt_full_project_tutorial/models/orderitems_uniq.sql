
  create or replace   view dbt_project_db.dbt_project_schema_l3.orderitems_uniq
  
  
  
  
  as (
    select *
    from dbt_project_db.dbt_project_schema_l1.orderitems
    qualify
        row_number() over (
            partition by orderid
            order by updated_at desc
        ) = 1
  );

