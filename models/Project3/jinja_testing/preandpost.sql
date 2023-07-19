{{
    config(
        materialized='incremental',
        unique_key = 'C_CUSTKEY',
        pre_hook = "truncate table {{this}}",
        post_hook = "UPDATE {{this}} set C_ADDRESS ='JJJJK' where C_CUSTKEY = 285001 "
    )
}}

select * from {{ ref('stg_cust') }}