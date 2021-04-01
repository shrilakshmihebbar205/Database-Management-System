CREATE TABLE STAFF_AUDITS
(
   	s_id VARCHAR(15) NOT NULL,
   	Salary VARCHAR(50) NOT NULL,
   	changed_on TIMESTAMP(6) NOT NULL,
   	PRIMARY KEY(s_id)
	
);

CREATE TABLE CUSTOMER_AUDITS
(
   	cust_id VARCHAR(15) NOT NULL,
	contact VARCHAR(10) DEFAULT NULL,
   	changed_on TIMESTAMP(6) NOT NULL,
   	PRIMARY KEY(cust_id)
	
);
CREATE OR REPLACE FUNCTION STAFF_Salary_change()
  RETURNS trigger AS
$BODY$
BEGIN
	IF NEW.Salary <> OLD.Salary THEN
		 INSERT INTO staff_audits(s_id,Salary,changed_on)
		 VALUES(OLD.staff_id,OLD.Salary,now());
	END IF;
	RETURN NEW;
END;
$BODY$
language PLPGSQL;

CREATE OR REPLACE FUNCTION CUSTOMER_contact_change()
  RETURNS trigger AS
$BODY$
BEGIN
	IF NEW.contact <> OLD.contact THEN
		 INSERT INTO customer_audits(cust_id,contact,changed_on)
		 VALUES(OLD.c_id,OLD.contact,now());
	END IF;
	RETURN NEW;
END;
$BODY$
language PLPGSQL;


CREATE TRIGGER STAFF_Salary_change
  BEFORE UPDATE
  ON staffs
  FOR EACH ROW
  EXECUTE PROCEDURE STAFF_Salary_change();
  
CREATE TRIGGER CUSTOMER_contact_change
  BEFORE UPDATE
  ON CUSTOMERS
  FOR EACH ROW
  EXECUTE PROCEDURE CUSTOMER_contact_change();

