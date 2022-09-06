/** Only ally name and tags **/

select data->>'name' as name, data->'tags' as tags 
from STORES
WHERE 
	(
		data->'tags'->>0='finanzas' OR
		data->'tags'->>1='finanzas' OR
		data->'tags'->>2='finanzas'
	)
ORDER BY data->>'name' ASC;

/**Alternatively **/

select *
from STORES
WHERE 
	(
		data->'tags'->>0='finanzas' OR
		data->'tags'->>1='finanzas' OR
		data->'tags'->>2='finanzas'
	)
ORDER BY data->>'name' ASC;