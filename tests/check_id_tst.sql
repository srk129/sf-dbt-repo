--id to be between 1 & 100 so test should not be in between 1 & 100 for it to fail
SELECT * FROM {{ ref('test_sales')}}
WHERE ID not between 1 and 100