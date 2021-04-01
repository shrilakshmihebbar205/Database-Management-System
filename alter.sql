UPDATE staffs
SET salary = '60,000'
WHERE staff_id = '10';

UPDATE customers
SET contact='9480763682'
WHERE c_id='123';
	    	
	    	



ALTER TABLE owner
ADD CONSTRAINT fk_owner_branch_code
FOREIGN KEY (branch_code)
REFERENCES beautyparlor(branch_code)
ON DELETE CASCADE
ON UPDATE CASCADE;


ALTER TABLE staffs
ADD CONSTRAINT fk_staff_branch_code
FOREIGN KEY (branch_code)
REFERENCES beautyparlor(branch_code)
ON DELETE CASCADE
ON UPDATE CASCADE;


ALTER TABLE staff_skill
ADD CONSTRAINT fk_staff_skill_branch_code
FOREIGN KEY (branch_code)
REFERENCES beautyparlor(branch_code)
ON DELETE CASCADE
ON UPDATE CASCADE;


ALTER TABLE packages
ADD CONSTRAINT fk_packages_branch_code
FOREIGN KEY (branch_code)
REFERENCES beautyparlor(branch_code)
ON DELETE CASCADE
ON UPDATE CASCADE;


 ALTER TABLE services
ADD CONSTRAINT fk_services_branch_code
FOREIGN KEY (branch_code)
REFERENCES beautyparlor(branch_code)
ON DELETE CASCADE
ON UPDATE CASCADE;


ALTER TABLE appointments
ADD CONSTRAINT fk_appointments_c_id
FOREIGN KEY (c_id)
REFERENCES customers(c_id)
ON DELETE CASCADE
ON UPDATE CASCADE;


ALTER TABLE payment
ADD CONSTRAINT fk_payment_c_id
FOREIGN KEY (c_id)
REFERENCES customers(c_id)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE records
ADD CONSTRAINT fk1_records_staff_id
FOREIGN KEY (staff_id)
REFERENCES staffs(staff_id)
ON DELETE CASCADE
ON UPDATE CASCADE,
ADD CONSTRAINT fk2_appointments_a_id
FOREIGN KEY (a_id)
REFERENCES appointments(a_id)
ON DELETE CASCADE
ON UPDATE CASCADE;
