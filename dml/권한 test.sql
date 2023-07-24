# '자신의 이름(영문)' @ 서버에서만 연결하도록, 비밀번호는 1234
create user 'jiyoung'@'localhost' identified by '1234';

# 해당 계정의 비밀번호를 1q2w3e4r로 변경
alter user 'jiyoung'@'localhost' identified by '1q2w3e4r';
flush privileges;

# 권한 study2 db -> user_tb(select, insert, update, delete)
grant select, insert, update, delete on `study2`.`user_tb` to 'jiyoung'@'localhost';
flush privileges;

# update 권한 회수
revoke update on `study2`.`user_tb` from 'jiyoung'@'localhost';
flush privileges;

# 권한 study3 db -> product_tb(select)
grant select on `study3`.`product_tb` to 'jiyoung'@'localhost';
flush privileges;

# delete 권한 추가
grant delete on `study3`.`product_tb` to 'jiyoung'@'localhost';
flush privileges;

show grants for 'jiyoung'@'localhost';