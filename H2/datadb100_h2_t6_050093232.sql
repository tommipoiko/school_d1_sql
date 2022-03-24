-- Tietokantojen perusteet - Database basics 2021
-- H2 T6
-- tommi.poikolainen@tuni.fi

select distinct ar.artwork_id, ar.artwork_name
from artwork as ar, displayed_at as di, exhibition as ex
where ar.artwork_id = di.artwork_id and
	  di.exhibition_id = ex.exhibition_id
order by ar.artwork_id;
