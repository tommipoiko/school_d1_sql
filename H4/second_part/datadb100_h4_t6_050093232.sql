-- Tietokantojen perusteet - Database basics 2021
-- H4 T6
-- tommi.poikolainen@tuni.fi

select distinct a.artist_id, a.first_name
from artist as a
left outer join artwork as w
on a.artist_id = w.artist_id
where w.technique = 'painting'
intersect
select distinct a.artist_id, a.first_name
from artist as a
left outer join artwork as w
on a.artist_id = w.artist_id
where w.technique = 'drawing'
order by a.artist_id
;