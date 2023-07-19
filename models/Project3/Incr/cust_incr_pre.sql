{{
    config(
        materialized='incremental',
        unique_key='CUSTOMERID',
        cluster_by = 'ORDER_DATE',
        incremental_strategy = 'merge',
        incremental_predicates = [
            'DBT_INTERNAL_DEST.ORDER_DATE > datediff(day, -7, current_date)'
        ]
    )
}}

select * from {{ source('incre2', 'CUSTOMER23') }}