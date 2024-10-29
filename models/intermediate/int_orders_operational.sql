SELECT
orders_id
, date_date
, round((margin+shipping_fee-logcost-ship_cost),2) as op_margin
, quantity
FROM {{ ref("int_orders_margin")}}
 JOIN {{ ref("stg_raw__ship")}}
USING (orders_id)