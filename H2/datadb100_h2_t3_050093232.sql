-- Tietokantojen perusteet - Database basics 2021
-- H2 T3
-- tommi.poikolainen@tuni.fi

select artwork_id, artwork_name, first_name, last_name, year_created 
from artwork, artist
where technique = 'painting' and artwork.artist_id = artist.artist_id
order by artwork_id;
