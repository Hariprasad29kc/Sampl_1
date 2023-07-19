{%- set LPayment_Methods = ['MACHINERY','HOUSEHOLD'] -%}
select 
C_NATIONKEY, '{{var('var_data')}}' as var_col,
{% for paymentmethod in LPayment_Methods %}
    sum(case when C_MKTSEGMENT = '{{ paymentmethod }}' then C_ACCTBAL else 0 end) 
        as {{ paymentmethod }}_amount
        {% if not loop.last %},{% endif %}

        {% endfor %}
from {{ ref('customer') }}
where C_NATIONKEY='{{var('var_data')}}'
group by 1  
