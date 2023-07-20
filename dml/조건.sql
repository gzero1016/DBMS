#조건문
select
	*,
    case
			when product_price < 100000 then '10만원 미만'	#price가격이 10만원보다 작으면 가격범위 표시를 10만원 미만이라 표시
			when product_price < 200000 then '20만원 미만'	#price가격이 20만원보다 작으면 가격범위 표시를 20만원 미만이라 표시
			else '20만원 이상'	#price가격이 20만원 초과할 시 20만원 이상으로 표시
		end as '가격 범위',	#컬럼명을 가격범위라 지정
		if(product_price < 100000, '10만원 미만', '10만원 이상') as '가격 범위2',	#삼항조건 price가 10만원보다 작을 시 true 반환 첫번째 10만원미만을 표시, price가 10만원보다 클경우 false 반환 첫번째 10만원이상을 표시 
        if(size_m is null, '사이즈 없음', size_m) as size_m2,	#삼항조건 size_m 칼럼이 null일 경우 true 사이즈없음 표시, size_m 칼럼에 값이 있을경우 false size_m 표시
        ifnull(size_m, '사이즈 없음') as size_m3,	#ifnull은 size_m 칼럼에 값이 null이 있을경우 '사이즈 없음' 으로 바꿔서 출력
        nullif(size_m, 'M') as size_m4	#nullif는 size_m 칼럼에 값이 M이면 null을 반환하고 size_m 칼럼에 값이 M이 아닐경우 size_m의 값을 반환
	from
		product_tb;
        
