select
    orderid,
    orderdate,
    customerid,
    employeeid,
    storeid,
    status as statuscd,
    case
        when status='01' then 'In Progress'
        when status='02' then 'Completed'
        when status='03' then 'Cancelled'
        else null
    end as statusdesc,
    updated_at
from
    {{source('l1','orders')}}