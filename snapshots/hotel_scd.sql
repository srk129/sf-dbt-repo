{% snapshot hotel_details_check_2 %}

    {{
        config(
          target_schema='snapshots',
          strategy='check',
          unique_key="ID",
          check_cols=['AC_OR_NO_AC'],
        )
    }}

    select * from {{source("shreya's sources","HOTEL_DETAILS")}}

{% endsnapshot %}