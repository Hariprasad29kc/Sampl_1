{{
    config(
        materialized = 'table'
    )
}}


with testus1 as (
    select * from {{ us1 }}
)

select * from testus1