{{

    config(

        materialized='incremental',

        unique_key='c_custkey',

        
        pre_hook= "Truncate table {{this}}",

        post_hook= "UPDATE {{this}} set C_name = 'AAA' WHERE C_CUSTKEY = 6001"

    )

}}
with TruncateType as (

    select * from {{ ref('customer') }}

)

select * from TruncateType
