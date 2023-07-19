{{
    config(
        materialized='ephemeral'
    )
}}

select * from {{ source('Pro23', 'ORDERS') }}