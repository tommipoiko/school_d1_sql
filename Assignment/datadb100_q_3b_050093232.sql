-- Tietokantojen perusteet - Database basics 2021
-- Query 3B
-- tommi.poikolainen@tuni.fi

select t.tnimi, min(t.hinta) as hinta, tm.tmnimi
from tuote as t
left outer join tuotemerkki as tm
	on t.tmtunnus = tm.tmtunnus
;