create database if not exists zd;

use zd;

create table employeers(
id_e int not null primary key auto_increment,
name_e varchar(100) not null,
surname_e varchar(100) not null,
patronymic_e varchar(100),
post_e varchar(100) not null,
department_e varchar(100) not null,
phone_e varchar(12) not null
);




create table trains(
train_id int not null primary key auto_increment,
name_t varchar(100) not null,
number_t int not null,
hp_t int not null,
odometr_t decimal(6,1), 
responsible_t int

);


create table route(
id_r int not null primary key auto_increment,
exit_point_r varchar(100) not null,
finish_point_r varchar(100) not null,
goal_r varchar(100) not null,
price decimal(5,1),
kilometrage_r decimal(6,1),
responsible_r int, 
train_r int,

);

