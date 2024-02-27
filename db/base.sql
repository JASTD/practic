drop database zd;
create database if not exists zd;

use zd;

-- создание таблицы администратора, который будет работать с БД 
create table administrator(
admin_id int not null primary key auto_increment,
name_a varchar(100) not null,
surname_e varchar(100) not null,
patronymic_e varchar(100),
login varchar(100) not null,
password_a varchar(100) not null

);

-- создание таблицы сотрудики(обслуживают маршруты и поезда) 
create table employeers(
id_e int not null primary key auto_increment,
name_e varchar(100) not null,
surname_e varchar(100) not null,
patronymic_e varchar(100),
post_e varchar(100) not null,
department_e varchar(100) not null,
phone_e varchar(12) not null
);



-- создание таблицы поездов
create table trains(
train_id int not null primary key auto_increment,
name_t varchar(100) not null,
number_t int not null,
hp_t int not null,
odometr_t decimal(6,1), 
responsible_t int,
foreign key (responsible_t) references employeers(id_e) 
);

create table stations(
id_station int not null primary key auto_increment,
name_s varchar(100) not null,
cost_s decimal(6,1)
);

create table marhrut(
id_m int not null primary key auto_increment,
start_m bool,
finish_m bool,
fk_s int,
foreign key (fk_s) references stations(id_station)
);

-- создание таблицы маршруты
create table route(
id_r int not null primary key auto_increment,
goal_r varchar(100) not null,
kilometrage_r decimal(6,1), 
train_r int,
marhrut_fk int,
foreign key (marhrut_fk) references marhrut(id_m),
foreign key (train_r) references trains(train_id)
);


