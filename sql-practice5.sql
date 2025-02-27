use sakila;

-- order by
-- alias

select amount,amount*10 from payment;

select amount,amount*10 as new from payment;

select amount,amount*10 as `select` from payment;

select * from payment order by amount;

select * from payment order by amount desc;

select * from payment order by amount desc,rental_id desc;


-- subquery
-- case statement

-- if-else

select amount ,
  if(amount=0.99,'correct','incorrect')
     from payment;
  
-- nested if-else

select amount ,
  if(amount=0.99,'correct',
          if(amount=2.99,'yes','incorrect'))
     from payment;
     
-- case statement

select amount,
case
    when amount=0.99 then 'value is 0.99'
    when amount=2.99 then 'value is 2.99'
    else amount
end as cond
from payment;   

select amount,count(amount),
     if(count(amount)>1000,'greater than 1000','less than 1000') as cond
         from payment group by amount;

select amount,
case
    when amount>7 then 'greater than 7$'
    when amount>3 then 'greater than 3$'
    when amount>1 then 'greater than 1$'
    else 'lesser than 1$'
end as cond
from payment;

-- subquery = query within a query

select * from payment where 
    amount=(select amount from payment where payment_id=5);
    






