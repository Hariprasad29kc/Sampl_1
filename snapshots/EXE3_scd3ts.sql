{% snapshot Snap3 %}
    {{
        config(
            target_database = 'RAW',
            target_schema = 'SNAPSHOTS',
            unique_key='O_ORDERKEY',
            strategy='timestamp',
            updated_at='O_ORDERDATE'
        )
    }}

    select * from {{ ref('stg_ord') }}
 {% endsnapshot %}