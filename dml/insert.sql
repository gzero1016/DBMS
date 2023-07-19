select * from test_tb; 

# insert(데이터 추가) 구분을 지어줘야하는 경우 ` ` 사용해야함 평소에는 그냥 생략해도 무관함
insert into `study1`.`test_tb`(`test_id`, `name`, `birthday`) 
values(3, '김준삼', '1994-09-09');

insert into `study1`.`test_tb`(`test_id`, `birthday`, `name`)
values(4, '1994-09-10', '김준사');

insert into study1.test_tb(test_id, birthday, name)
values(5, '1994-09-11', '김준오');

insert into test_tb
values(6, '김준육', '1994-09-12');

insert into test_tb(test_id, birthday)
values(7, '1994-09-13');

insert into test_tb
values(8, '김준팔', null);

