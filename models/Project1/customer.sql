{{
    config(
        materialized = 'table'
    )
}}


with customer as (
    select * from {{ source('Pro23', 'CUSTOMER') }}
)

select * from customer