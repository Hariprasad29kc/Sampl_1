{{

  config(

    materialized='incremental',
    unique_key='O_ORDERKEY',
    cluster_by = ['O_ORDERSTATUS'],
    incremental_strategy='merge',
    incremental_predicates = [
        "DBT_INTERNAL_DEST.O_ORDERSTATUS = 'O' "
    ]

  )

}}

with Order_incr as
(
    select * from {{ source('Pro1','ORDERS') }}
    {%if is_incremental() %}
        where O_ORDERSTATUS = 'O'
    {%endif%}

)
select * from Order_incr