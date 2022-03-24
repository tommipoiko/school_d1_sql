-- Tietokantojen perusteet - Database basics 2021
-- H5 T2
-- tommi.poikolainen@tuni.fi

select distinct artwork_name, technique
from artwork
where technique in ('drawing', 'painting')
order by technique, artwork_name
;