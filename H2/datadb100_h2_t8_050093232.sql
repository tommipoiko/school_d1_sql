-- Tietokantojen perusteet - Database basics 2021
-- H2 T8
-- tommi.poikolainen@tuni.fi

select ar.artwork_id, ar.artwork_name, ex.exhibition_id, exhibition_name, year
from artwork as ar 
left outer join displayed_at as di 
	on ar.artwork_id = di.artwork_id
left outer join exhibition as ex 
	on di.exhibition_id = ex.exhibition_id
order by ar.artwork_id, ex.exhibition_id;
