-- Tietokantojen perusteet - Database basics 2021
-- H6 T13
-- tommi.poikolainen@tuni.fi

select artwork_name
from artwork
where year_created between 1500 and 1600
order by artwork_name
;