-- Tietokantojen perusteet - Database basics 2021
-- H6 T5
-- tommi.poikolainen@tuni.fi

select distinct a.artist_id, first_name, last_name
from artist as a
left outer join artwork as w
	on a.artist_id = w.artist_id
where technique = 'painting'
intersect
select distinct a.artist_id, first_name, last_name
from artist as a
left outer join artwork as w
	on a.artist_id = w.artist_id
where technique = 'drawing'
order by a.artist_id
;