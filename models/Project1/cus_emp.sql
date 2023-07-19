{{

  config(

    materialized='emphemeral'


  )

}}

with cus_emp as (
    select *, ActiveStatus from {{ source('Pro1','CUSTOMER') }}
)

select * from cus_emp