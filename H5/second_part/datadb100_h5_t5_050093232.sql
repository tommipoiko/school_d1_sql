-- Tietokantojen perusteet - Database basics 2021
-- H5 T5
-- tommi.poikolainen@tuni.fi

select a.artist_id, first_name, last_name, count(distinct artwork_name) as artwork_count,
min(value) as min_value, max(value) as max_value
from artist as a
left outer join artwork as w
	on a.artist_id = w.artist_id
group by a.artist_id
order by a.artist_id
;