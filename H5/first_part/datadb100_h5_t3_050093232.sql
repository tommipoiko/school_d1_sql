-- Tietokantojen perusteet - Database basics 2021
-- H5 T3
-- tommi.poikolainen@tuni.fi

select distinct a.artist_id, first_name, last_name
from artist as a
left outer join artwork as w
	on a.artist_id = w.artist_id
where technique = 'drawing'
intersect
select distinct a.artist_id, first_name, last_name
from artist as a
left outer join artwork as w
	on a.artist_id = w.artist_id
where technique = 'painting'
order by a.artist_id
;