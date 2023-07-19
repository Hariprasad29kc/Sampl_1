{% set payment_methods_query %}
select distinct 
C_MKTSEGMENT
from {{ ref('stg_cust') }}
order by 1
{% endset %}

{% set results = run_query(payment_methods_query) %}

