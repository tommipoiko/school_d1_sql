-- Tietokantojen perusteet - Database basics 2021
-- H6 T10
-- tommi.poikolainen@tuni.fi

select a.artist_id, first_name, last_name, ifnull(created_artwork, 0) as created_artwork,
ifnull(exhibitions, 0) as exhibitions
from artist a
left outer join (select artist_id,
				artwork_id,
				count(artwork_name) as created_artwork
				from artwork
				group by artist_id) as pinfo
	on a.artist_id = pinfo.artist_id
left outer join (select artwork_id,
				count(exhibition_id) as exhibitions
				from displayed_at
				group by artwork_id) as dinfo
	on pinfo.artwork_id = dinfo.artwork_id
order by a.artist_id
;