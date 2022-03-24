-- Tietokantojen perusteet - Database basics 2021
-- H3 T3
-- tommi.poikolainen@tuni.fi

select f.title, s.title as sequel_title
from book as f left outer join book as s
	on f.id = s.predecessor_id
order by f.id;
