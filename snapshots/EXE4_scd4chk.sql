{% snapshot snap4 %}
    {{
        config(
            target_database = 'RAW',
            target_schema = 'SNAPSHOTS',
            unique_key='C_CUSTKEY',
            strategy='check',
            check_cols='all'
        )
    }}

    select * from {{ ref('stg_cust') }}
 {% endsnapshot %}