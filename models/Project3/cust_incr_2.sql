{{
    config(
        materialized='incremental',
        unique_key = 'C_CUSTKEY'
    )
}}

select * from {{ ref('stg_cust') }}

--with unique key 