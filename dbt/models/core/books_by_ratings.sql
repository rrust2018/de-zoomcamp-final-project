{{ config(materialized="table") }}

with books_ratings as (
    select b.*, r.rating
    from {{ ref("stg_books") }} as b
    inner join {{ ref("stg_ratings") }} as r on b.isbn = r.isbn
)
select
    title,
    author,
    publ_year,
    rating
from books_ratings