-- Tietokantojen perusteet - Database basics 2021
-- H6 T11
-- tommi.poikolainen@tuni.fi

select w.artwork_id, artwork_name, w.artist_id, value, artwork_count, avg_value
from artwork as w
left outer join (select artist_id,
				artwork_id,
				count(artwork_name) as artwork_count
				from artwork
				group by artist_id) as cinfo
	on w.artist_id = cinfo.artist_id
left outer join (select artist_id,
				artwork_id,
				avg(value) as avg_value
				from artwork
				group by artist_id) as vinfo
	on w.artist_id = vinfo.artist_id
order by artwork_count, avg_value
;