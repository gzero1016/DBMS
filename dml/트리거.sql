insert into user_tb
values (0, '김준일');

#user_tb를 기준으로 table1을 만듬
insert into table1
select 
	0,
    (select ifnull(max(user_id), 0) from user_tb) as max_user_id,	#user_tb에 있는 user_id를 자동으로 가져와 table1에 insert 한다.
    concat((select
				name 
			from 
				user_tb 
			where 
				user_id = (select 
								ifnull(max(user_id), 0)
							from 
								user_tb)), '의 자기소개');		#user_tb에 있는 user_name을 자동으로 가져와 concat으로 글씨를 덧붙여 table1에 insert 해준다.

insert into table1
values (0, 1, '김준일의 자기소개');

insert into table2
values (0, 1, '자기소개 내용을 입력하세요.');

delete
from
	user_tb
where
	name = '김준일';