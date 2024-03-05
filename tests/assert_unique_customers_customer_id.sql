{{ config(enabled = false) }}

select
    customer_id, 
    count(customer_id) as number_recurring
from {{ ref('orders') }}
group by 1
having number_recurring > 1