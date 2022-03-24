-- Tietokantojen perusteet - Database basics 2021
-- H5 T1
-- tommi.poikolainen@tuni.fi

select count(artwork_name) as artwork_count, min(value) as min_value,
max(value) as max_value
from artwork
;