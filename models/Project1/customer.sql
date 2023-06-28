{{
    config(
        materialized = 'view'
    )
}}


with customer as (
    select * from {{ source('SNOWFLAKE_SAMPLE_DATA', 'CUSTOMER') }}
)