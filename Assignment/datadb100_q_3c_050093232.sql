-- Tietokantojen perusteet - Database basics 2021
-- Query 3C
-- tommi.poikolainen@tuni.fi

select t.tnimi, min(t.hinta) as hinta
from tuote as t
left outer join tuotemerkki as tm
	on t.tmtunnus = tm.tmtunnus
where tm.tmnimi = 'McCee'
;