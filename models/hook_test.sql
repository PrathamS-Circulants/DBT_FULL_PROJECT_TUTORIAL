{{
    config(
        pre_hook=["insert into dbt_project_schema_l3.model_runs (model_name,run_type,run_timestamp) values ('{{this}}','start',current_timestamp)"],
        post_hook=["insert into dbt_project_schema_l3.model_runs (model_name,run_type,run_timestamp) values ('{{this}}','end',current_timestamp)"]
    )
}}

SELECT * from dbt_project_schema_l1.orders