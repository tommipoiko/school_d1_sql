-- Tietokantojen perusteet - Database basics 2021
-- Query 2
-- tommi.poikolainen@tuni.fi

select ka.sukupuoli, ka.syntymavuosi, ka.kanimi
from arviointi as a
left outer join tuote as t
	on a.ttunnus = t.ttunnus
left outer join tuotemerkki as tm
	on t.tmtunnus = tm.tmtunnus
left outer join kayttaja as ka
	on ka.katunnus = a.katunnus
where tm.tmnimi = 'KooTek'
intersect
select ka.sukupuoli, ka.syntymavuosi, ka.kanimi
from arviointi as a
left outer join tuote as t
	on a.ttunnus = t.ttunnus
left outer join tuotemerkki as tm
	on t.tmtunnus = tm.tmtunnus
left outer join kayttaja as ka
	on ka.katunnus = a.katunnus
where tm.tmnimi = 'McCee'
order by ka.sukupuoli, ka.syntymavuosi, ka.kanimi
;