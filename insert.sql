
INSERT INTO beautyparlor(branch_code,branch_venue,branch_type)
VALUES
('1','rajajinagar','men'),
('2','basavanagudi','women'),
('3','hebbal','women');

INSERT INTO owner(o_id,fname,lname,gender,o_city,branch_code)
VALUES
('100','john','ledger','male','mumbai','1'),
('101','reena','chopra','female','kolkata','3'),
('102','akshata','sharma','female','delhi','2');

INSERT INTO staffs(staff_id,s_name,education,Salary,branch_code)
VALUES
('10','hithesh','b.sc','20,000','2'),
('20','heema','diploma','40,000','1'),
('30','bhushan','puc','10,000','1'),
('40','selena','B.E','80,000','3'),
('50','sushmita','bca','20,000','3'),
('60','imran','b.sc','20,000','3');


INSERT INTO staff_skill(staff_id,skills,branch_code)
VALUES
('10','modelling','2'),
('20','makeup artist','1'),
('30','hair stylist','1'),
('40','nail artist','3'),
('50','modelling','3'),
('60','makeup artist','3');


 INSERT INTO packages(p_id,p_name,p_type,branch_code)
 VALUES('12','loreal','wholesales','1'),
 ('13','himalayas','new arrivals','1'),
 ('15','lakme','branded sales','3'),
 ('14','herbals','discounts','2');

 INSERT INTO services(s_id,s_type,branch_code)
 VALUES('1000','facial','1'),
 ('2000','pedicure','1'),
 ('3000','manicure','1'),
 ('4000','massages','2'),
 ('5000','waxing','2'),
 ('6000','threading','3'),
 ('7000','makeup','3');


INSERT INTO customers(c_id,c_name,c_address,contact,gender)
VALUES
('123','ayush','hosakerehalli road,3rd cross, 5th main, banashankari, 560050','9449331740','male'),
('124','ayesha','r.k gupta road, 4th main, chandigarh 450060','9432567432','female'),
('125','rohan','indiranagar, 6th cross ,layout bangalore 560030','9345678653','male'),
('126','prajaktha','shankar guru circle, 4th main, new bellore, kolkata 400500','8132453465','female'),
('127','apoorva','shivanagar, 4th road, new delhi 405060','7123634567','female'),
('128','barkha','r r nagar, 7th cross gurgauv, punjab 505060','8934236543','female'),
('129','carry','h s koppa road, 4th cross, basavani shringeri 278312','7786546534','male'),
('130','bhuvan','new brigade road, 5th main manipal, udupi 276210','9823547688','male');

INSERT INTO appointments(a_id,a_date,c_id)
VALUES('1732',DATE '3/3/2018','123'),
('1733',DATE '4/3/2018','125'),
('1734',DATE '5/3/2018','127'),
('1735',DATE '6/3/2018','130');


INSERT INTO payment(p_id,p_amount,p_date,c_id)
VALUES
('1670','50,000/-',date '5/3/2018','123'),
('1671','30,000/-',date '7/3/2018','125'),
('1672','10,000/-',date '9/3/2018','127'),
('1673','40,000/-',date '12/3/2018','130');


INSERT INTO records(staff_id,a_id)
VALUES('10','1732'),
('20','1733'),
('30','1734'),
('40','1735');

