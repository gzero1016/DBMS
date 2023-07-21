# procedure(저장 프로시저)
# 프로시저를 호출하는 것은 main문을 호출하는거라고 생각하자
# 프로시저 호출은 call (프로시저명) (@프로시저안 매개변수,); 이런식

call save_user('ddd@gmail.com', '1111', '김준이', 'google', null);
call save_user_many('aaa', '1234', '김준일', null, null, 5);

# 프로시저안 color에 black을 넣는다. (프로시저안 color는 in이기 때문에 프로시저안에서 값을 바꿔도 내가 집어넣은 black이 유지된다.)
set @color = 'black';
set @color_name = 'blue';	# 여기서 blue를 집어넣었지만 프로시저 안에서 color_name이 inout이기때문에 blue가 아니라 프로시저안에서 집어넣은 색상의 이름이 두쪽다 변경될것이다.
call get_product_total_count(@color, @total_count, @color_name);
select @color, @total_count, @color_name;

# if문 : 크다 작다 범위 비교
call get_product_by_category('tees');
# case문 : 같은값 비교
call get_product_by_category_case('outer');