{{
    config(
        materialized='view'
    )
}}

with v_cust23 as (
    select * from {{ ref('cust23') }}
)

select * from v_cust23