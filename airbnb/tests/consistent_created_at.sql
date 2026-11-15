select rev.listing_id as listing_id
from {{ ref('fct_reviews') }} rev
inner join {{ ref('dim_listings_cleansed') }} list
on rev.listing_id = list.listing_id
where rev.review_date < list.created_at