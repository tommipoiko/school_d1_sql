-- Tietokantojen perusteet - Database basics 2021
-- H2 T5
-- tommi.poikolainen@tuni.fi

select ar.artwork_id, ar.artwork_name, ar.technique
from artwork as ar, exhibition as ex, displayed_at as di
where ar.artwork_id = di.artwork_id and 
	  ex.exhibition_id = di.exhibition_id and
	  location = 'Museum of Modern Art'
order by ar.artwork_id;
