{{ config(materialized="table") }}

select author, publ_year, publisher, count(*) as total
from {{ ref("stg_books") }}
group by author, publ_year, publisher
