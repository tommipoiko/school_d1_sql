-- Tietokantojen perusteet - Database basics 2021
-- Query 4A
-- tommi.poikolainen@tuni.fi

select t.tnimi, min(a.arvosana) as min_arvosana, max(a.arvosana) as max_arvosana,
	avg(a.arvosana) as ka_arvosana, count(a.arvosana) as lkm_arvosana
from tuote as t
left outer join arviointi as a
	on t.ttunnus = a.ttunnus
group by t.tnimi
order by t.tnimi
;