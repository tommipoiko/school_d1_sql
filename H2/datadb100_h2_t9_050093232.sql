-- Tietokantojen perusteet - Database basics 2021
-- H2 T9
-- tommi.poikolainen@tuni.fi

select distinct ar.artwork_id, ar.artwork_name
from artwork as ar
left outer join displayed_at as di
	on ar.artwork_id = di.artwork_id
inner join exhibition as ex
	on di.exhibition_id is null
order by ar.artwork_id;
