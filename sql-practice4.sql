use sakila;

select * from payment;

select sum(amount) from payment;

select count(amount) from payment;

select avg(amount) , sum(amount)/count(amount) from payment;

select distinct(amount) from payment;

select sum(amount),amount from payment;

select count(distinct(amount)),count(amount) from payment;

select count(amount) from payment
       where amount=0.99; 
       
select count(*) from payment
       where amount=0.99;

-- group by = collecting similar values together

select amount,count(amount) from payment group by amount;

select amount,count(amount),sum(amount),avg(amount) from payment group by amount;

select payment_id,amount,payment_date,date_format(payment_date,'%b') from payment;

select date_format(payment_date,'%b'),sum(amount) 
         from payment group by date_format(payment_date,'%b');

select customer_id,sum(amount),avg(amount) 
      from payment group by customer_id;
      
select staff_id , sum(amount) , max(amount) , min(amount)
     from payment group by staff_id;
     
select staff_id , count(amount) from payment group by staff_id;

select customer_id , sum(amount),count(payment_id),avg(amount),max(amount)
       from payment where amount>2 and payment_id>10
                 group by customer_id ;
                 
select amount , sum(amount)
    from payment
       group by amount
         having sum(amount)>5000;
        
