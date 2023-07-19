{{
    config(
        materialized = 'table'
    )
}}


with cust23 as (
    select * from {{ source('Pro55', 'customer23') }}
)

select * from cust23