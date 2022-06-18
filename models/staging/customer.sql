{{
    config (
        engine='MergeTree()',
        order_by='C_CUSTKEY'
    )
}}

SELECT
    {{ dbt_utils.star(
        source('dbt', 'customer')
    )}}
from {{ source('dbt', 'customer') }}
