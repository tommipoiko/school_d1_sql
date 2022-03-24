-- Tietokantojen perusteet - Database basics 2021
-- H3 T2
-- tommi.poikolainen@tuni.fi

select f.title, s.title as predecessor_title
from book as f left outer join book as s
	on f.predecessor_id = s.id
order by f.id;
