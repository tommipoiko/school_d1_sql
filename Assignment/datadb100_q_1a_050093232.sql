-- Tietokantojen perusteet - Database basics 2021
-- Query 1A
-- tommi.poikolainen@tuni.fi

select tm.tmnimi, t.tnimi, a.paivamaara, a.arvosana
from arviointi as a
left outer join tuote as t
	on a.ttunnus = t.ttunnus
left outer join tuotemerkki as tm
	on t.tmtunnus = tm.tmtunnus
order by tm.tmnimi, t.tnimi, a.paivamaara DESC
;