{{
    config(
        materialized = 'table'
    )
}}


with sou_ord as (
    select * from {{ source('Pro67', 'ORDERS') }}
)

select * from sou_ord