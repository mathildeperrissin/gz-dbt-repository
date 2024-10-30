SELECT 
date_date
, round((operational_margin-ads_cost),2) as ads_margin
, average_basket
, operational_margin
, ads_cost
, ads_impressions
, ads_clicks
, quantity
, revenue
, purchase_cost
, margin
, shipping_fee
, logcost
, ship_cost
FROM {{ ref("int_campaigns_day")}}
JOIN {{ ref ("finance_days")}}
USING (date_date)
order by date_date desc