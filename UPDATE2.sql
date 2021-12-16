exec update_customer(11489,'AKASH');

Select * from customer_details where customer_id=11489;


Create or replace procedure update_customer(
C_ID IN NUMBER,
CUST_NAME IN VARCHAR2



--ZIP_CODE IN VARCHAR2,
--STATE_NAME IN VARCHAR2,
--ADDRESS IN VARCHAR2



)



IS
Cust_ID number(5);
no_cust_ID_exist exception;
--contact_ID number;
--notuniquecontact exception;
customerempty exception;
cust_not_exist exception;



Begin



select count(*) into CUST_ID from customer_details where customer_details.CUSTOMER_ID=C_ID;




IF(cust_id=0)
then raise cust_not_exist;
elsif (CUST_NAME IS NULL or LENGTH(CUST_NAME)=0)



Then raise customerempty;
else
update customer_details set CUSTOMER_NAME=CUST_NAME where customer_details.customer_id=C_ID;
END IF;
Exception
When cust_not_exist
then
raise_application_error(-20001,'Customer ID entered does not exist');



when customerempty
then
raise_application_error(-20002,'Customer name cannot be empty');



END;

COMMIT;
