-- Tietokantojen perusteet - Database basics 2021
-- H6 T1
-- tommi.poikolainen@tuni.fi

select distinct w.artwork_id, artwork_name
from artwork as w
left outer join displayed_at as d
	on w.artwork_id = d.artwork_id
left outer join exhibition as e
	on d.exhibition_id = e.exhibition_id
where w.artwork_id in
	(select artwork_id
	from displayed_at)
order by w.artwork_id
;