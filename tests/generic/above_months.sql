{% test above_months(model, column_name) %}

with validation as (

    select
        {{ column_name }} as date_column

    from {{ model }}

),

validation_errors as (

    select
        date_column

    from validation
    where month(date_column) >= 12

)

select *
from validation_errors
 
{% endtest %}
