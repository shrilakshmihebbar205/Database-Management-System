# Database-Management-System
Beneficial to beauty parlors in keeping customer data, hiring employees, taking care of bookings and promoting their services to public.

# Introduction
The scenario here is of a beauty parlour management system. 

# Relational tables:
There are 10 relational tables which describe the data model. First is the parlour table, which has 3 
attributes namely branch code, branch venue and branch type. Branch code will be unique for every 
branch, and acts as primary key for the table. branch type refers to two different arena that is for 
men and women. And branch venue refers to the place where particular branch is located. Second 
table is the owner’s table which contains details of the owner belonging to particular branch. 
Owner has attributes like first and last name, city, gender, and a unique attribute called o_id which 
designates to the branch which he owns. Similarly there are tables for packages, services, staffs,
staff skills, customers and appointments.

# Relationships:
Parlour owned by owner. this is a 1 to 1 relationship. Here, primary key of parlour acts as foreign 
key to owner attribute.
Parlour offers packages, is a 1 to many relationship. Since 1 parlour offers many packages. Here, 
primary key of parlour acts as foreign key for packages. Similarly, Parlour provides services is a 1 
to many relationship. Since 1 parlour provides many services. Here, primary key of parlour acts as 
foreign key for services.
Parlour hires staffs. This is a 1 to n relationship since 1 parlour can hire as many staffs as it wants. 
Here, primary key of parlour acts as foreign key for staffs.
Staffs record appointments. This is a many to many relationship. Which has total participation from 
both entities. So we create a separate table with primary key of both the entities being considered.
One major thing to note here is, staff has a multivalued attribute called skills, which requires a 
separate table with the primary key of staffs, and foreign key branch_code.
Appointments booked by customers. This is a 1 to 1 relationship. Here, primary key of customers 
act as foreign key for appointments.
Customers make payments. This is a 1 to 1 relationship. And payment is a weak entity which does 
not contain any primary key. So customer id is being considered as primary key for the same.
