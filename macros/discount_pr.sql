
{% macro discount_pr(column_name, precision=2) %}
    ({{ column_name }} * 0.10)::numeric(16, {{ precision }})
{% endmacro %}
