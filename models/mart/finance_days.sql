SELECT
date_date
, count(orders_id) as nb_transactions
, round(sum(revenue), 2) as revenue
, ROUND(SUM(revenue)/COUNT(orders_id),2) AS average_basket
, ROUND(SUM(op_margin),2) AS total_operational_margin
, ROUND(SUM(purchase_cost),2) AS total_purchase_cost
, ROUND(SUM(shipping_fee),2) AS total_shipping_fee
, ROUND(SUM(logcost),2) AS total_logcost
, COUNT(products_id) AS total_quantity_of_products_sold
FROM {{ ref("int_orders_operational")}}
GROUP BY date_date
ORDER BY date_date desc