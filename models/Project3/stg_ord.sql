{{
    config(
        materialized='table'
    )
}}

select *, 'N' as currentflag from {{ source('Pro23', 'ORDERS') }}