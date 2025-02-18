use sakila;

-- string functions

select first_name , lower(first_name),upper(lower(first_name))
    from actor;

select first_name,last_name, concat(first_name,' ',last_name)
     from actor;
     
select first_name,last_name, concat_ws('-' , first_name,last_name)
     from actor;
     
select * from actor
      where concat(first_name,last_name)='EDCHASE';
      
select first_name, substr(first_name,2) from actor;

select first_name, substr(first_name,2), substr(first_name,1,3)
        from actor;
        
select first_name, substr(first_name,-2) from actor;

select first_name, instr(first_name,'E') from actor;

select first_name, char_length(first_name) from actor;

select first_name , lpad(first_name,5,'$') from actor;

select first_name , rpad(first_name,7,'$') from actor;

select ' hey    ', trim(' hey    ') from dual; 

select ' hey    ', trim(leading 'z' from 'zzz heyz z  z z')
           from dual; 
           
select ' hey    ', trim(trailing 'z' from 'zzz heyz z  zzz')
           from dual; 
           
select ' hey    ', trim(both 'z' from 'zzz heyz  zzz')
           from dual; 

      

