SELECT * FROM product_tb;
	
# 상품의 가격이 10~20만원 사이의 상품을 조회
select
	*
from
	product_tb
where
	product_price between 100000 and 200000;
    
    
# 상품의 카테고리가 2,4번인 것만 조회
select
	*
from
	product_tb
where
-- category_id = 2 or category_id = 4;
    category_id in (2,4);
    
# 상품의 이름이 같은 것이 몇개 있는지 조회
select
	product_name,
	count(product_name) as count
from
	product_tb
group by
	product_name;
    
    
# 동일 카테고리 상품의 가격 총액을 조회
select
	category_id,
    sum(product_price) as sum
from
	product_tb
group by
	category_id;

 
 # 서브쿼리로 상품의 중복제거 후 동일한 카테고리의 가격 총액
 select
	category_id,
    sum(product_price)
 from
	(select
		product_name,
		product_price,
		category_id
	from
		product_tb
	group by
		product_name,
		product_price,
		category_id) as product_name_group
group by
	category_id;
	
    
# 상품가격이 10~20만원 사이의 상품 중에 동일 카테고리 상품의 총액을 조회하고 총액의 내림차순으로 정렬
select
	category_id,
	sum(product_price) as sum
from
	product_tb
where
	product_price between 100000 and 200000
group by
	category_id
order by
	sum desc;