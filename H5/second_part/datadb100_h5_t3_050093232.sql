-- Tietokantojen perusteet - Database basics 2021
-- H5 T3
-- tommi.poikolainen@tuni.fi

select technique, count(technique) as count
from artwork
group by technique
order by technique
;