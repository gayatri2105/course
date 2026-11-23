{% docs dim_listing_cleansed__minimum_nights %}
## Minimum number of nights required to rent this property.

Keep in mind that old listings might have `minimum_nights` set
to 0 in the source tables. Our cleansing algorithm updates this to `1`.

{% enddocs %}

{% docs dim_hosts_cleansed_description %}
## Model to clean the records from src_hosts.

Values where `host_name` id `null` are replaced with value `Anonymous`.

{% enddocs %}