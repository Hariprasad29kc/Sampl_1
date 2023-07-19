{{
    config(
        materialized = 'table'
    )
}}


with Discountpr_order as (
    select O_TOTALPRICE, {{discount_pr('O_TOTALPRICE')}} as Discount_Price  from {{ ref('Orders') }}
)

select * from Discountpr_order