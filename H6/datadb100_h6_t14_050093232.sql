-- Tietokantojen perusteet - Database basics 2021
-- H6 T14
-- tommi.poikolainen@tuni.fi

select artwork_name, (value * 1.1) as increased_value
from artwork
order by artwork_name
;