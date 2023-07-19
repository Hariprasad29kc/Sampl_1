{{
    config(
        materialized='incremental'
    )
}}

select * from {{ ref('stg_cust') }}

--without unique key 