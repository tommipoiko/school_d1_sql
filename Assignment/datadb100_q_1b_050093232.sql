-- Tietokantojen perusteet - Database basics 2021
-- Query 1B
-- tommi.poikolainen@tuni.fi

select tm.tmnimi, t.tnimi, a.paivamaara, a.arvosana
from arviointi as a
left outer join tuote as t
	on a.ttunnus = t.ttunnus
left outer join tuotemerkki as tm
	on t.tmtunnus = tm.tmtunnus
left outer join kayttaja as ka
	on ka.katunnus = a.katunnus
where ka.kanimi = 'Anni N'
order by tm.tmnimi, t.tnimi, a.paivamaara DESC
;