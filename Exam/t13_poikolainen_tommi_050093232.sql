-- T1.3
-- Poikolainen Tommi 050093232

select distinct ingredient_name, no_ice_creams,
count(distinct manufacturer_id) as no_manufacturers
from ingredient as i
left outer join (select ingredient_id,
					count(ice_cream_id) as no_ice_creams
					from contains
					group by ingredient_id) as cinfo
	on i.ingredient_id = cinfo.ingredient_id
left outer join contains as c
	on i.ingredient_id = c.ingredient_id
left outer join ice_cream as ic
	on c.ice_cream_id = ic.ice_cream_id
group by i.ingredient_id
order by ingredient_name
;