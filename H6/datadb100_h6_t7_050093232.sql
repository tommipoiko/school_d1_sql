-- Tietokantojen perusteet - Database basics 2021
-- H6 T7
-- tommi.poikolainen@tuni.fi

select artwork_name, value, year_created
from artwork
group by artwork_name
having max(value) = (select max(value)
					from artwork)
;