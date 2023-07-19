{% snapshot Snap1 %}
    {{
        config(
            target_schema = 'snapshots',
            unique_key = 'N_NATIONKEY',
            strategy = 'check',
            check_cols = ['N_NAME']
        )
    }}

    select * from {{ source( 'snapshot1', 'NATION') }}
{% endsnapshot %}