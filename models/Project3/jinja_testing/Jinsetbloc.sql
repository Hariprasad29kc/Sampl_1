{% set payment_methods_query %}
select distinct 
O_ORDERSTATUS
from {{ ref('stg_ord') }}
order by 1
{% endset %}

{% set results = run_query(payment_methods_query) %}

{% if execute %}
{% set results_list = results.columns[0].values() %}
{% else %}
{% set results_list = [] %}    
{% endif %}

select 
O_ORDERKEY,
{% for ck in  results_list %}
sum(case when O_ORDERSTATUS = '{{ck}}' then O_TOTALPRICE end) as {{ck}}__amt
{%- if not loop.last %}, {% endif -%}
{% endfor %}
from {{ ref('stg_ord') }}
group by 1

