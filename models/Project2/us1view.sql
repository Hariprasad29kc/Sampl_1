{{
    config(
        materialized='view'
    )
}}

with v_us1 as (
    select * from {{ ref('us1') }}
)

select * from v_us1