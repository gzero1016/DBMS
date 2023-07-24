# 사용자 추가
create user test1@localhost identified by '1234';
# test1 @ % : 어디서든지 접근가능
# test1 @ localhost : 내 컴퓨터 안에서만 접근가능
# test1 @ 192.168.0.1 : 해당 아이피주소에서만 접근가능

use mysql;
select host, user from user;

# 사용자 권한 (DCL)
revoke all on study3.* from test1@localhost;
# rovoke all : 모든 권한 회수

grant all privileges on study3.user_tb to test1@localhost;
# grant all privileges on study3.*  : study3에 있는 모든 테이블의 모든 권한을 다주겠다.

create user 'test2'@'%' identified by '1234';
use mysql;	# mysql을 쓰겠다라고 선택
select host, user from user;

# 아래 두개 세트 패스워드변경 후 적용해줘야함
alter user 'test2'@'%' identified by '1111';
flush privileges;

alter user 'test1'@'localhost' identified by '1111';
flush privileges;

# select, insert 권한을 test2에게 줌
grant select, insert on `study3`.`user_tb` to 'test2'@'%';
flush privileges;

# test2 유저에게 insert 권한을 회수하겠음
revoke insert on `study3`.`user_tb` from 'test2'@'%';
flush privileges;

# 해당 유저에게 어떤 권한이 있는지 조회
show grants for 'test2'@'%';