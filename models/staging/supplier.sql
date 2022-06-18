{{
    config (
        engine='MergeTree()',
        order_by=['S_SUPPKEY']
    )
}}

SELECT
    *
from {{ source('dbt', 'supplier') }}