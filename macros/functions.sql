 {% macro margin_percent (revenue, purchase_cost) %}
     round((({{revenue}}-{{purchase_cost}})*100/{{revenue}}),2)
 {% endmacro %}