# like

select
	*
from
	product_tb
where
	product_name like 'NO%'	#NO로 시작하는 이름
    or product_name like 'PROPERTY%' #PROPERTY로 시작하는 이름
-- 	product_name like in('NO%', 'PROPERTY%')
    ;