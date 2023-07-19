{{
    config(
        materialized='table'
    )
}}

select * from {{ source('Pro23', 'CUSTOMER') }}