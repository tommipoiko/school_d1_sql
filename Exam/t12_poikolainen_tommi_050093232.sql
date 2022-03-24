-- T1.2
-- Poikolainen Tommi 050093232

select distinct ice_cream_name
from ice_cream as ic
left outer join contains as c
	on ic.ice_cream_id = c.ice_cream_id
left outer join ingredient as i
	on c.ingredient_id = i.ingredient_id
where ingredient_name = 'Vanilla extract'
except
select distinct ice_cream_name
from ice_cream as ic
left outer join contains as c
	on ic.ice_cream_id = c.ice_cream_id
left outer join ingredient as i
	on c.ingredient_id = i.ingredient_id
where ingredient_name = 'Cream'
order by ice_cream_name
;