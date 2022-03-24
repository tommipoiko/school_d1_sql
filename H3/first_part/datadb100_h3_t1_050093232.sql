-- Tietokantojen perusteet - Database basics 2021
-- H3 T1
-- tommi.poikolainen@tuni.fi

select f.title, s.title as predecessor_title
from book as f left outer join book as s
	on f.predecessor_id = s.id
where f.predecessor_id not null
order by f.id;
