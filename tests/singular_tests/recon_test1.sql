--if any record that are not present in either source or target 

{% if var('var_data')=='sou' %}

select * from {{ ref('stg_ord') }}

minus

select * from {{ ref('ord_Incre_pre3') }}

{%else%}

select * from {{ ref('ord_Incre_pre3') }}

minus

select * from {{ ref('stg_ord') }}

{% endif %}