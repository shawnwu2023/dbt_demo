select *
from {{ source('demo_project', 'BIKE') }}
limit 10