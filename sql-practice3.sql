use sakila;

select round(12.8) from dual;

select round(12.4) from dual;

select round(12.5) from dual;

select round(12.48,1) from dual;

select round(12.41,1) from dual;

select round(12.41,2) from dual;

select round(12.418,2) from dual;

-- ones place convert

select round(842.4,-1) from dual;

-- twos place 
select round(842.4,-2) from dual;
select round(872.4,-2) from dual;

-- threes place
select round(842.4,-3) from dual;
select round(342.4,-3) from dual;


select truncate(42.43,1) from dual;

select mod(20,3) from dual;

select pow(2,3) from dual;

-- date function

select curdate(),curtime(),now(),current_timestamp() from dual;

select curdate() , adddate(curdate(),1) from dual;

select curdate() , adddate(curdate(),interval 1 month) from dual;

select curdate() , adddate(curdate(),interval 1 week) from dual;

select curdate() , adddate(curdate(),interval -1 week) from dual;

 select
    datediff( curdate(),
           adddate(curdate(),interval -1 week))  from dual;
           
select now(),last_day(now()) from dual;

-- date format

select date_format(now() , '%a') from dual;

select date_format(now() , '%b') from dual;

select date_format(now() , 'current month is %M') from dual;

select curdate(), str_to_date( '17 2025 02', '%d %Y %m')  from dual;



