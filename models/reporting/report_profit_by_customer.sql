SELECT CUSTOMERID, SEGMENT, COUNTRY, sum(orderprofit) as profit
FROM {{ ref('stg_orders') }}
GROUP BY CUSTOMERID, SEGMENT, COUNTRY