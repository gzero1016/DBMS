insert into product_tb
values
	(20230701, '상품1'),
	(20230702, '상품2'),
	(20230703, '상품3'),
	(20230704, '상품4'),
	(20230705, '상품5');
    
create view product_view as
select * from product_tb;

# create table을 만들때 pk , uq 또는 제약사항을 걸었을 경우 자동으로 index가 생성된다.
create index product_code_index on product_tb(product_code);	# product_tb에 product_code를 인덱스로 잡고 그 인덱스의 이름은 product_code_index라 한다.

# index 보기
show index from user_tb;

# 해당 데이터베이스에 만들어진 VIEW만 조회
show full tables in study3 where table_type = 'VIEW';

# 해당 데이터베이스에 만들어진 모든 table, VIEW를 type까지 조회
show full tables in study3;

# 해당 데이터베이스에 만들어진 모든 table , VIEW 간단하게 조회
show tables;