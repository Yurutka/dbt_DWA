{{
    config (
        engine='MergeTree()',
        order_by='C_CUSTKEY'
    )
}}

SELECT
    {{ dbt_utils.star(
        from = source('dbt', 'customer'),
        except = ['C_NAME']
    )}}
    , C_NAME as FIRS_NAME
from {{ source('dbt', 'customer') }}