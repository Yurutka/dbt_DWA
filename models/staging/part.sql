{{
    config (
        engine='MergeTree()',
        order_by=['P_PARTKEY']
    )
}}

SELECT
    *
from {{ source('dbt', 'part') }}