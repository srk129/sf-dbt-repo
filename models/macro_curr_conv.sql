SELECT *,
{{ curr_conv('currency','sales')}} as sales_in_rupees,
{{ curr_conv('currency','cost')}} as cost_in_rupees,
{{ curr_conv('currency','discount')}} as discount_in_rupees,
FROM {{source("shreya's sources","CURR_CONV")}}