{{

  config(

    materialized='incremental',

    unique_key='c_custkey',

    incremental_strategy='delete from{{ this }}'

  )

}}

select * from {{ source('Pro1','CUSTOMER') }}