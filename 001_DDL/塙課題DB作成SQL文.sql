f[^x[Xì¬
create database fashionshop_suka;

e[uì¬
[U[e[u
create table user(id int not null primary key auto_increment,userType int not null,name varchar(20) ,pass varchar(20),branch_id int);
insert into user(userType,name,pass,branch_id) values(1,"]Æõ","eee",3);
insert into user(userType,name,pass,branch_id) values(2,"ÇÒ","aaa",2);
insert into user(userType,name,pass,branch_id) values(3,"Úq","ccc",1);

[U[e[uJÇÁSQL(2020/11/07)
alter table user add branch_name varchar(10);
update user set branch_name = 'LEAxX' where branch_id = 1;
update user set branch_name = 'éÊXJxX' where branch_id = 2;
update user set branch_name = 'ÔâxX' where branch_id = 3;

EHbge[u
create table wallet(user_id int not null primary key,balance int,update_date datetime);
insert into wallet(user_id,balance,update_date) values(1,1000,cast(now() as datetime));
insert into wallet(user_id,balance,update_date) values(2,20000,cast(now() as datetime));
insert into wallet(user_id,balance,update_date) values(3,300000,cast(now() as datetime));



ÝÉe[u
create table stock(stock_id int not null primary key auto_increment,branch_id int not null,branch_name varchar(10),product_code int not null,product_name varchar(20),color varchar(10),size varchar(3),price int,quantity int);
insert into stock values(0,1,"LEAxX",1,"XJsVc","Ô","S",2000,10);
insert into stock values(0,1,"LEAxX",2,"XJsVc","Ô","M",2000,10);
insert into stock values(0,1,"LEAxX",3,"XJsVc","Ô","L",2000,10);
insert into stock values(0,1,"LEAxX",4,"XJsVc","Î","S",2000,10);
insert into stock values(0,1,"LEAxX",5,"XJsVc","Î","M",2000,10);
insert into stock values(0,1,"LEAxX",,6,"XJsVc","Î","L",2000,10);
insert into stock values(0,1,"LEAxX",7,"XJsVc","","S",2000,10);
insert into stock values(0,1,"LEAxX",8,"XJsVc","","M",2000,10);
insert into stock values(0,1,"LEAxX",9,"XJsVc","","L",2000,10);
insert into stock values(0,2,"éÊXJxX",1,"XJsVc","Ô","S",2000,10);
insert into stock values(0,2,"éÊXJxX",2,"XJsVc","Ô","M",2000,10);
insert into stock values(0,2,"éÊXJxX",3,"XJsVc","Ô","L",2000,10);
insert into stock values(0,2,"éÊXJxX",4,"XJsVc","Î","S",2000,10);
insert into stock values(0,2,"éÊXJxX",5,"XJsVc","Î","M",2000,10);
insert into stock values(0,2,"éÊXJxX",6,"XJsVc","Î","L",2000,10);
insert into stock values(0,2,"éÊXJxX",7,"XJsVc","","S",2000,10);
insert into stock values(0,2,"éÊXJxX",8,"XJsVc","","M",2000,10);
insert into stock values(0,2,"éÊXJxX",9,"XJsVc","","L",2000,10);
insert into stock values(0,3,"ÔâxX",1,"XJsVc","Ô","S",2000,10);
insert into stock values(0,3,"ÔâxX",2,"XJsVc","Ô","M",2000,10);
insert into stock values(0,3,"ÔâxX",3,"XJsVc","Ô","L",2000,10);
insert into stock values(0,3,"ÔâxX",4,"XJsVc","Î","S",2000,10);
insert into stock values(0,3,"ÔâxX",5,"XJsVc","Î","M",2000,10);
insert into stock values(0,3,"ÔâxX",6,"XJsVc","Î","L",2000,10);
insert into stock values(0,3,"ÔâxX",7,"XJsVc","","S",2000,10);
insert into stock values(0,3,"ÔâxX",8,"XJsVc","","M",2000,10);
insert into stock values(0,3,"ÔâxX",9,"XJsVc","","L",2000,10);

stocke[uJÇÁSQL(2020/11/04)@¦createªÍC³ÏÝ
alter table stock add branch_name varchar(10) after branch_id;
update stock set branch_name = 'LEAxX' where branch_id = 1;
update stock set branch_name = 'éÊXJxX' where branch_id = 2;
update stock set branch_name = 'ÔâxX' where branch_id = 3;


­e[u
create table fashionshop_suka.stockorder (no int primary key auto_increment,product_name varchar(10),price int,color varchar(10),size varchar(3),branch_id int,order_quantity int,del_flg int, status int,index(no));

ãe[u
create table earnings(no int primary key auto_increment,earnings int,ins_date date,branch_id int,del_flg int);

earningse[uJÇÁSQL
alter table earnings add product_name varchar(10);
alter table earnings add quantity int;
alter table earnings add color varchar(10);
alter table earnings add size varchar(5);


