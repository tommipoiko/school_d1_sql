-- Tietokantojen perusteet - Database basics 2021
-- H2 T4
-- tommi.poikolainen@tuni.fi

select year, exhibition_name, first_name, last_name, artwork_name
from displayed_at, exhibition, artwork, artist
where artwork.artist_id = artist.artist_id and 
	  artwork.artwork_id = displayed_at.artwork_id and 
	  exhibition.exhibition_id = displayed_at.exhibition_id
order by year, last_name;
