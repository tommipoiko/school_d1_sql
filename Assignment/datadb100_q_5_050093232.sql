-- Tietokantojen perusteet - Database basics 2021
-- Query 5
-- tommi.poikolainen@tuni.fi

select kanimi
from arviointi as a
left outer join tuote as t
	on a.ttunnus = t.ttunnus
left outer join tuotemerkki as tm
	on t.tmtunnus = tm.tmtunnus
left outer join kayttaja as ka
	on a.katunnus = ka.katunnus
where tmnimi = 'KooTek'
group by kanimi
having count(kanimi) > (select count(*)
						from tuotemerkki
						where tmnimi = 'KooTek')
order by kanimi
;