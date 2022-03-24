-- Tietokantojen perusteet - Database basics 2021
-- H6 T9
-- tommi.poikolainen@tuni.fi

select technique
from artwork
group by technique
having value > (select avg(value)
				from artwork)
;