-- T1.4
-- Poikolainen Tommi 050093232

select distinct ic1.ice_cream_name, ic2.ice_cream_name as s_ice_cream_name, ic1.ingredient_name
from (select ic.ice_cream_id, ice_cream_name, i.ingredient_id, ingredient_name
		from ice_cream as ic
		left outer join contains as c
			on ic.ice_cream_id = c.ice_cream_id
		left outer join ingredient as i
			on c.ingredient_id = i.ingredient_id) as ic1
left outer join (select ic.ice_cream_id, ice_cream_name, i.ingredient_id, ingredient_name
					from ice_cream as ic
					left outer join contains as c
						on ic.ice_cream_id = c.ice_cream_id
					left outer join ingredient as i
						on c.ingredient_id = i.ingredient_id) as ic2
	on ic1.ingredient_id = ic2.ingredient_id
where ic1.ice_cream_name <> ic2.ice_cream_name
order by ic1.ice_cream_name, ic2.ice_cream_name, ic1.ingredient_name
;