{{
    config(
        materialized='view'
    )
}}

with v_customer as (
    select * from {{ source('Pro1', 'CUSTOMER') }}
)

select * from v_customer