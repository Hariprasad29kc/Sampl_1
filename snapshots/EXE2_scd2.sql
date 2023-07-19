{% snapshot orders_snapshot_hard_delete %}

    {{
        config(
          target_schema='snapshots',
          strategy='timestamp',
          unique_key='O_ORDERKEY',
          updated_at='O_ORDERDATE',
          invalidate_hard_deletes=True,
        )
    }}

    select * from {{ source('snapshot1', 'ORDERS') }}

{% endsnapshot %}