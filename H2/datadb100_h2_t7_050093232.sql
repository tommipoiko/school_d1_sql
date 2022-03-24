-- Tietokantojen perusteet - Database basics 2021
-- H2 T7
-- tommi.poikolainen@tuni.fi

select first_name, last_name, ist.artist_id, ar.artwork_id, artwork_name
from artist as ist left outer join artwork as ar
	on ist.artist_id = ar.artist_id
order by ist.artist_id, ar.artwork_id;
