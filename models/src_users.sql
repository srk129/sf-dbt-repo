SELECT u.ID,u.user,c.country as country_name 
FROM {{source("shreya's sources","RAW_USERS")}} as u LEFT JOIN {{source("shreya's sources","RAW_COUNTRY")}} as c 
ON u.country = c.country_id