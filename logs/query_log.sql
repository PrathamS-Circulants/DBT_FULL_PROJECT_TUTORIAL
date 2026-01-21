-- created_at: 2026-01-16T06:57:02.375250400+00:00
-- finished_at: 2026-01-16T06:57:03.436155400+00:00
-- elapsed: 1.1s
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: not available
-- desc: dbt run query
select * from (select *
    from dbt_project_db.dbt_project_schema_l1.orderitems
    qualify
        row_number() over (
            partition by orderid
            order by updated_at desc
        ) = 1
) limit 1000;
