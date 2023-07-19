{%- set orderprioritys = ['4-NOT SPECIFIED', '2-HIGH', '3-MEDIUM', '1-URGENT', '5-LOW'] -%}

with ORDERPRIORITY as (
   select * from {{ ref('Orders') }}
),

ord_priority as (
   select
       O_ORDERKEY,
       {% for importance in orderprioritys -%}

        sum(case when O_ORDERPRIORITY = '{{ importance }}' then O_TOTALPRICE else 0 end)
            

        {% if not loop.last %},{% endif %}

       {% endfor %}
   from {{ ref('Orders') }}
   group by 1 
)
select * from ord_priority
