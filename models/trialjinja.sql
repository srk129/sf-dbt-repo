{# SELECT {{datediff('2024-06-05') }}#}
select *,
        {{ datediff('ship_date') }} as days_diff_ship,
        {{ datediff('delivered_date') }} as days_diff_delivered,
    from {{source("shreya's sources","RAW_PRODUCT_SHIP")}}