-- JOINS

use sakila;

select count(*) from address;

select count(address2) from address;

create database test1;
use test1;

create table product(pid int,name varchar(20),price int);

insert into product values(10,'tv',100),(20,'apple',200),
   (30,'mobile',300),(40,'shoe',1500);
   
select * from product;

create table orders(oid varchar(20),city varchar(20),
                      product_id int);
                      
insert into orders values('A1012','jaipur',10),
  ('B21012','goa',20),('C3012','japan',30),('D4012','uk',60);
  
select * from orders;

-- cross join/cartisian join
select pid,name,price,city
  from product join orders;
  
select pid,name,price,city
  from product join orders where pid=product_id;
 -- equi join(older syntax) 
select p.pid,p.name,p.price,o.city
  from product as p join orders as o
    where p.pid=o.product_id;
    
 -- inner join (new syntax)  
select p.pid,p.name,p.price,o.city
  from product as p inner join orders as o
    on p.pid=o.product_id;
  
-- left join
select p.pid,p.name,p.price,o.city
  from product as p left join orders as o
    on p.pid=o.product_id;
    
-- right join
select p.pid,p.name,p.price,o.city
  from product as p right join orders as o
    on p.pid=o.product_id;  

-- non-equi join
select pid,city 
 from product,orders
   where pid=product_id;
   
-- natural join
select p.pid,p.name,p.price,o.city
  from product as p natural join orders as o;
  
desc orders;

alter table orders rename column product_id to pid;

desc orders;

select p.pid,p.name,p.price,o.city
  from product as p natural join orders as o;
  
alter table orders rename column city to name;

desc orders;

select p.pid,p.name,p.price,o.name
  from product as p natural join orders as o;



