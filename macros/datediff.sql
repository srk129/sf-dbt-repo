{% macro datediff(col) %}
     DATEDIFF(day, TO_DATE({{ col }}, 'DD-MM-YYYY'), CURRENT_DATE)
{% endmacro %}
