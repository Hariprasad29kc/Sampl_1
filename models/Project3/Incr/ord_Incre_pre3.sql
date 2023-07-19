{{
    config(
        materialized='incremental',
        unique_key='O_ORDERKEY',
        cluster_by = ['currentflag'],
        incremental_strategy = 'merge',
        incremental_predicates = [
            "DBT_INTERNAL_DEST.currentflag = 'Y' "
        ]
    )
}}

select * from {{ ref('stg_ord') }} 

