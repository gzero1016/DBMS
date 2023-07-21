# functions 를 만들기전에 꼭확인해서 off가 되어있으면 만들지못하니 1을주면서 true로 바꿔줘야한다.
show global variables like 'log_bin_trust_function_creators';
set global log_bin_trust_function_creators = 1;

select create_name_and_age('김준일', 30);