{{ config(materialized="view") }}

with
    t as (
        select *, row_number() over (partition by isbn) as row_num
        from {{ source("staging", "books") }}
    )
select t.*
from t
where row_num = 1
