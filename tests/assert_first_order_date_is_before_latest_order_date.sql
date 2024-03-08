-- first order date should always be before or on the same date as most recent order date, it cannot be after
select *
from {{ ref('dim_customers') }}
where first_order_date > most_recent_order_date