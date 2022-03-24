-- Tietokantojen perusteet - Database basics 2021
-- H6 T8
-- tommi.poikolainen@tuni.fi

select artwork_name, value, year_created, first_name, last_name
from artwork as w
left outer join artist as a
	on a.artist_id = w.artist_id
group by artwork_name
having max(value) = (select max(value)
					from artwork)
;