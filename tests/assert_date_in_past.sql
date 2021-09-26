select created_at
from {{ ref('stage_payments') }}
where created_at > CURRENT_DATE()