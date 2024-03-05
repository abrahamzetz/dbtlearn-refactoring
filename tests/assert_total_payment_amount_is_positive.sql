{{ config(enabled = false) }}

select
    customer_id, 
    sum(amount) as total_amount
from {{ ref('orders') }}
group by 1
having total_amount < 0
