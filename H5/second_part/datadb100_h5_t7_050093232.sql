-- Tietokantojen perusteet - Database basics 2021
-- H5 T7
-- tommi.poikolainen@tuni.fi

select w.artwork_id, artwork_name, technique
from artwork as w
left outer join displayed_at as d
	on w.artwork_id = d.artwork_id
left outer join exhibition as e
	on d.exhibition_id = e.exhibition_id
group by w.artwork_id
having count(e.exhibition_id) = 1
order by w.artwork_id
;