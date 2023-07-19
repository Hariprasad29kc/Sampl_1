{{
    config(
        materialized='table'
    )
}}

select * from {{ source('Pro1', 'LINEITEM') }}