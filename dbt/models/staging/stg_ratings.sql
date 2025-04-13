{{ config(materialized="view") }}

select t.*
from {{ source("staging", "ratings") }} as t
