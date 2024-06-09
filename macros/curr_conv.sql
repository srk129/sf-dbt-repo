{% macro curr_conv(col,val) %}
    CASE WHEN {{ col }} = 'YEN' THEN {{ val }} * 0.53
    WHEN {{ col }} = 'DOLLARS' THEN {{ val }} * 83.52
    WHEN {{ col }} = 'PAR' THEN {{ val }} * 0.0791
    ELSE {{ val }}
    END
{% endmacro %}