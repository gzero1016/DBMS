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