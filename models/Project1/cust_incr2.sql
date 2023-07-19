{{

  config(

    materialized='incremental',



  )

}}

select * from {{ source('Pro1','CUSTOMER') }}