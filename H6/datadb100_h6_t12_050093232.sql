-- Tietokantojen perusteet - Database basics 2021
-- H6 T12
-- tommi.poikolainen@tuni.fi

select artwork_name
from artwork
where artwork_name like '% of %'
order by artwork_name
;