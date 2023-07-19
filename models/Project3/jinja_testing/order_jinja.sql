{% set ord_sta = ['P', 'F', 'O'] %}

with ordxs as(select
    O_ORDERKEY,
    {% for ordp in ord_sta %}
    sum(case when O_ORDERSTATUS = '{{ordp}}' then O_TOTALPRICE end) as {{ordp}}_amt
    {%- if not loop.last %}, {% endif -%}
    {% endfor %}
    from {{ref('stg_ord')}}
    group by 1)
        
select * from ordxs
where O_ORDERKEY = {{var('var_data')}}