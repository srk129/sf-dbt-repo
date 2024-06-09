SELECT s.salesid,s.sales,c.countryname as country_name 
FROM {{source("shreya's sources","RAW_SALES_1")}} as s LEFT JOIN {{ref('country_lookup')}}
as c ON CAST(REPLACE(s.country,' ','') AS String)
= CAST(REPLACE(c.countrycode,' ','') AS string)