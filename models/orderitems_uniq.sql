{{ dbt_utils.deduplicate(
    relation=source('l1', 'orderitems'),
    partition_by='orderid',
    order_by="updated_at desc",
   )
}}