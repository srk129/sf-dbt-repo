--sales to be between 100 & 200 so test should not be in between 100 & 200 for it to fail
SELECT * FROM {{ ref('test_sales')}}
WHERE sales not between 100 and 200