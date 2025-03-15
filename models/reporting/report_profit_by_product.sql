SELECT PRODUCTID, PRODUCTNAME,category,subcategory, sum(orderprofit) as profit
FROM {{ ref('stg_orders') }}
GROUP BY productid, productname,category,subcategory