select @@autocommit;	# 자동저장
set autocommit = 0;   # commit off

# start 부터 commit 까지의 내용만 저장하겠다. (autocommit을 off 했을경우)
start transaction;

savepoint insert_user;	# 중간저장지점 깃발세우기

insert into user_tb
values (0, 'ddd', '1234');

select * from user_tb;

savepoint update_user_password;	# 중간저장지점 깃발세우기

update user_tb
set password = '1111'
where username = 'ddd';

select * from user_tb;

rollback to savepoint update_user_password;	# 원하는 중간저장지점 깃발까지 되돌리기

rollback to savepoint insert_user;	# 원하는 중간저장지점 깃발까지 되돌리기

rollback;	# start transaction 이후에 실행되었던것 들이 모두 취소 start 전으로 되돌려준다. (commit 이후에는 사용할 수 없음)

commit;