{{
    config(
        materialized = 'table'
    )
}}


with Orders as (
    select * from {{ source('Pro1', 'ORDERS') }}
)

select * from Orders