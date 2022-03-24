-- Tietokantojen perusteet - Database basics 2021
-- H5 T6
-- tommi.poikolainen@tuni.fi

select w.artwork_id, artwork_name, count(e.exhibition_id) as exhibition_count
from artwork as w
left outer join displayed_at as d
	on w.artwork_id = d.artwork_id
left outer join exhibition as e
	on d.exhibition_id = e.exhibition_id
group by w.artwork_id
order by w.artwork_id
;