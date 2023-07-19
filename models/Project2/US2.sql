{{
    config(
        materialized = 'table'
    )
}}


with US2 as (
    select * from {{ source('PRO2', 'USERS2') }}
)

select * from US2