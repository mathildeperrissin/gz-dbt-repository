SELECT
date_date
, count(orders_id) as nb_transactions
, round(sum(revenue), 2) as revenue
, ROUND(AVG(revenue),1) AS average_basket
, ROUND(SUM(revenue)/COUNT(orders_id),1) AS average_basket_bis
, ROUND(SUM(margin),0) AS margin
, ROUND(SUM(op_margin),2) AS operational_margin
, ROUND(SUM(purchase_cost),2) AS purchase_cost
, ROUND(SUM(shipping_fee),2) AS shipping_fee
, ROUND(SUM(logcost),2) AS logcost
, ROUND(SUM(ship_cost),0) AS ship_cost
, SUM(quantity) AS quantity
FROM {{ ref("int_orders_operational")}}
GROUP BY date_date
ORDER BY date_date desc