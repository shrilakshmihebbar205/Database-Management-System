-- simple and aggregate queries--
select count(*) from staffs;

select count(*) from staffs group by branch_code;

select c_id,c_name,gender from customers
order by c_name;

select fname,lname,o_city from owner
where gender='female' order by fname;

select * from staffs, records 
where staffs.staff_id = records.staff_id;

select c_name,gender,p_amount,p_date
from customers,payment
where customers.c_id = payment.c_id;

select * from owner natural join beautyparlor;

select s_name,min(Salary) from staffs group by staffs.s_name
having min(Salary)>'20,000';

select s_name from staffs where Salary>= ALL(select Salary from staffs);

-- nested queries--

select c_name,contact,c_address from customers
where c_id in ('123','124','125','126');

select s_name,Salary,education from staffs where
staff_id in (select staff_id from staff_skill where branch_code in ('1','2','3'));


-- correlated nested queries --
select a_id from appointments where
exists(select a_id from records where appointments.a_id = records.a_id);

select * from beautyparlor
where branch_code in
(select branch_code from packages intersect select branch_code from services);

--types of sql joins --
select customers.c_name,appointments.a_date
from customers
inner join appointments on customers.c_id = appointments.c_id;

select customers.c_name,payment.p_amount
from customers
left join payment on customers.c_id = payment.c_id;

select customers.c_name,payment.p_amount
from customers
right join payment on customers.c_id = payment.c_id;

select packages.branch_code,packages.p_type,services.s_type
from packages
full outer join services on packages.branch_code = services.branch_code;