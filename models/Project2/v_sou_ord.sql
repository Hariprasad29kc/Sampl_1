{{
    config(
        materialized='view'
    )
}}

with v_ord as (
    select * from {{ ref('sou_ord') }}
)

select * from v_ord