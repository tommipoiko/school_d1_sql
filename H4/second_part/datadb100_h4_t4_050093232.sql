-- Tietokantojen perusteet - Database basics 2021
-- H4 T4
-- tommi.poikolainen@tuni.fi

select technique, artwork_name, last_name
from artwork
left outer join artist
on artist.artist_id = artwork.artist_id
where technique = 'drawing' or
	technique = 'sculpture'
order by technique, artwork_name
;