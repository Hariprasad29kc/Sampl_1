{{
    config(
        materialized='table'
    )
}}

select * from {{ ref('cust_eph') }} c right join {{ ref('ord_eph') }} o
on c.C_CUSTKEY = o.O_CUSTKEY