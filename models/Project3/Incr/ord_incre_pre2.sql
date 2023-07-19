{{
    config(
        materialized='incremental',
        unique_key='O_ORDERKEY',
        cluster_by = 'O_ORDERDATE',
        incremental_strategy = 'merge',
        incremental_predicates = [
            'DBT_INTERNAL_DEST.O_ORDERDATE > datediff(day, -7, current_date)'
        ]
    )
}}

select * from {{ ref('stg_ord') }} limit 100