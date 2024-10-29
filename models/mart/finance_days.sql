SELECT
date_date
, count(orders_id) as nb_transactions
, round(sum(revenue), 2) as revenue
, round((sum(revenue)/count(orders_id)), 2) as average_basket
, round(sum(op_margin), 2) as op_margin

FROM {{ ref("int_orders_operational")}}
GROUP BY date_date
ORDER BY date_date desc