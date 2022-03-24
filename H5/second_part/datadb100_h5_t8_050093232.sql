-- Tietokantojen perusteet - Database basics 2021
-- H5 T8
-- tommi.poikolainen@tuni.fi

select w.artwork_id, artwork_name, technique, first_name, last_name
from artwork as w
left outer join displayed_at as d
	on w.artwork_id = d.artwork_id
left outer join exhibition as e
	on d.exhibition_id = e.exhibition_id
left outer join artist as a
	on w.artist_id = a.artist_id
group by w.artwork_id
having count(e.exhibition_id) = 1
order by w.artwork_id
;