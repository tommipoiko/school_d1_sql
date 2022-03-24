-- T1.1
-- Poikolainen Tommi 050093232

select ice_cream_name, manufacturing_cost, manufacturer_name
from ice_cream as ic
left outer join manufacturer as m
	on ic.manufacturer_id = m.manufacturer_id
where manufacturing_cost between 1 and 1.4
order by ice_cream_name
;