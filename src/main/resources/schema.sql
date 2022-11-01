create table users(
id int primary key,
first_name varchar(30),
last_name varchar(30)
)

create table bank_accounts(
id int primary key,
balance decimal (7,2),
user_id int,
constraint user_fk foreign key(user_id) references users(id)
)
insert into users (id,first_name,last_name) values (1,'Jasdhir','Singh')

insert into bank_accounts (id,balance,user_id) values
(1,500,1),
(2,600,1)