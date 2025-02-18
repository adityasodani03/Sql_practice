show databases;

use sakila;

show tables;

desc actor;

select * from actor;

select actor_id,first_name,ACTOR_ID FROM ACTOR;

select actor_id,first_name,ACTOR_ID*100 FROM ACTOR;

select * from actor;

select * from actor
     where actor_id=2;
     
select * from actor
     where actor_id between 1 and 5;
     
select * from actor
     where actor_id in (2,5,500);
     
select actor_id,first_name from actor
      where first_name in ('NICK','ED');
      
select first_name from actor
	  where first_name like 'E%';

select first_name from actor
	  where first_name like 'E_';

select first_name from actor
	  where first_name like '%E';
      
select first_name from actor
	  where first_name like '%Y';

select first_name from actor
	  where first_name like 'S%Y';
      
select first_name from actor
	  where first_name like '%A%';
      
select first_name from actor
	  where first_name like '%SA%';
      
select first_name from actor
	  where first_name like 'E_';
      
select first_name from actor
	  where first_name like '_A';
      
select first_name from actor
	  where first_name like '_A%';
      
select first_name from actor
	  where first_name like 'E%';
      
select * from actor
	  where first_name like '____';
      
select * from actor
	  where first_name like '%E__';
      
select * from actor
	  where first_name like '_%E%_';
      
select * from actor
	  where first_name like '%_R__';
      
select * from actor
	  where first_name like '%EE%';
      
select * from actor
	  where first_name like '_H%Z_';
      


