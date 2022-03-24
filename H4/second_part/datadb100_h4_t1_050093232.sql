-- Tietokantojen perusteet - Database basics 2021
-- H4 T1
-- tommi.poikolainen@tuni.fi

select artwork_id, value, year_created
from artwork
where value < 50000 or
	year_created > 1510
order by artwork_id
;