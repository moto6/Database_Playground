-- -----------
-- 시작설정

create user 'sidedish'@'localhost' identified by 'password';


grant all privileges on sidedish.* to 'sidedish'@'localhost';


-- UPDATE mysql.user SET Password = PASSWORD('new_password_here') WHERE User = 'root';
UPDATE mysql.user SET authentication_string = PASSWORD('password') WHERE User = 'root';
alter user 'root'@'localhost' identified with mysql_native_password by 'password';
flush privileges;




CREATE DATABASE market;