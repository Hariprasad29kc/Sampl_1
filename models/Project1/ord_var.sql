{%- set PRIORITY = ["2-High ", "1-Urgent"] %}

select
    O_ORDERKEY,
    o_orderstatus,
    '{{ var('var_data') }}' as v_col,
    {% for orderpriority in PRIORITY %}
        sum(
            case
                when
                    o_orderpriority = '{{ orderpriority }}'
                    then o_totalprice else 0
            end
        ) as {{ orderpriority }}_price
        {% if not loop.last %},{% endif %}

    {% endfor %}
from {{ ref("Orders") }}
where o_orderstatus = '{{ var('var_data') }}'
group 1;