DROP DATABASE beautyparlor;
CREATE DATABASE beautyparlor;
\c beautyparlor;


CREATE TABLE beautyparlor(
   branch_code varchar(20) PRIMARY KEY not null,
   branch_venue varchar(200) NOT NULL,
   branch_type varchar(100) NOT NULL
);

CREATE TABLE owner(
    o_id varchar(20) primary key not null,
    fname varchar(40) NOT NULL,
    lname varchar(40)  not null,
    gender varchar(50) NOT NULL,
    o_city varchar(50) NOT NULL,
    branch_code varchar(20) not null
);



CREATE TABLE staffs(
     staff_id varchar(20) primary key not null,
     s_name varchar(50) not null,
     education varchar(60) not null,
     Salary varchar(50) not null,
     branch_code varchar(20) not null
 );



 CREATE TABLE staff_skill(
     staff_id varchar(20) primary key not null,
     skills varchar(200) not null,
     branch_code varchar(20) not null
 );


 CREATE TABLE packages(
     p_id varchar(20) primary key not null,
     p_name varchar(60) NOT NULL,
     p_type varchar(60) NOT NULL,
     branch_code varchar(20) not null
 );



 CREATE TABLE services(
     s_id varchar(20) primary key not null, 
     s_type varchar(60) NOT NULL,
     branch_code varchar(20) not null
 );
 


CREATE TABLE customers(
    c_id varchar(20) primary key not null,
    c_name varchar(200) not null,
    c_address varchar(200) not null,
    contact bigint not null,
    gender varchar(20) not null
);


CREATE TABLE appointments(
    a_id varchar(20) primary key not null,
    a_date DATE not null,
    c_id varchar(20) not null
    );



CREATE TABLE payment(
    p_id varchar(20) not null,
    p_amount varchar(50) not null,
    p_date date not null,
    c_id varchar(20) primary key not null
);



CREATE TABLE records(
    staff_id varchar(20) not null,
    a_id varchar(20) not null,
    primary key(staff_id,a_id)
);



