

{%- call statement('states', fetch_result=True) -%}

    Drop table {{ ref('preandpost') }}

{%- endcall -%}