-- Tietokantojen perusteet - Database basics 2021
-- H2 T2
-- tommi.poikolainen@tuni.fi

select artwork_id, artwork_name, first_name, last_name, year_created 
from artwork, artist
where artwork.artist_id = artist.artist_id
order by artwork_id;
