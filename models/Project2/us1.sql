{{
    config(
        materialized = 'table'
    )
}}


with US1 as (
    select * from {{ source('PRO2', 'USERS1') }}
)

select * from US1