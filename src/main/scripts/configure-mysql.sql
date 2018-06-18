# docker run --name mysqldb -p 3306:3306 -e MYSQL_ALLOW_EMPTY_PASSWORD=yes -d mysql

CREATE DATABASE sfg_dev;
create database sfg_prod;

create user 'sfg_dev_user'@'localhost' identified by 'guru';
create user 'sfg_prod_user'@'localhost' identified by 'guru';
create user 'sfg_dev_user'@'%' identified by 'guru';
create user 'sfg_prod_user'@'%' identified by 'guru';

grant select on sfg_dev.* to 'sfg_dev_user'@'localhost';
grant insert on sfg_dev.* to 'sfg_dev_user'@'localhost';
grant delete on sfg_dev.* to 'sfg_dev_user'@'localhost';
grant update on sfg_dev.* to 'sfg_dev_user'@'localhost';
grant select on sfg_prod.* to 'sfg_prod_user'@'localhost';
grant insert on sfg_prod.* to 'sfg_prod_user'@'localhost';
grant delete on sfg_prod.* to 'sfg_prod_user'@'localhost';
grant update on sfg_prod.* to 'sfg_prod_user'@'localhost';
grant select on sfg_dev.* to 'sfg_dev_user'@'%';
grant insert on sfg_dev.* to 'sfg_dev_user'@'%';
grant delete on sfg_dev.* to 'sfg_dev_user'@'%';
grant update on sfg_dev.* to 'sfg_dev_user'@'%';
grant select on sfg_prod.* to 'sfg_prod_user'@'%';
grant insert on sfg_prod.* to 'sfg_prod_user'@'%';
grant delete on sfg_prod.* to 'sfg_prod_user'@'%';
grant update on sfg_prod.* to 'sfg_prod_user'@'%';
