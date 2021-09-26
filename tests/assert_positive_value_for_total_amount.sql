select
    order_id,
    sum(amount) as total_value
from {{ ref('stage_payments') }}
group by order_id
having not(total_value >= 0)