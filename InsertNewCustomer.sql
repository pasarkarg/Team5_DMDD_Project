create or replace FUNCTION is_number (p_string IN VARCHAR)
RETURN INT
IS
v_num NUMBER;
BEGIN
v_num := TO_NUMBER(p_string);
RETURN 1;
EXCEPTION
WHEN VALUE_ERROR THEN
RETURN 0;
END is_number;

/



create or replace procedure insert_newcustomer (
C_NAME IN VARCHAR2,
C_DOB IN date,
C_age IN number,
contact IN number,
zipcode IN VARCHAR2,
statename in VARCHAR2,
address IN VARCHAR2,
profile_creation_date IN date,
cPasswrod IN VARCHAR2,
sanswr1 IN VARCHAR2,
sanswr2 IN VARCHAR2)



is



MAX_CID number;
MAXCUST_ID number;
Contact_error Exception;
Uniquename exception;
CountUnique number;
ZIPCODE_NOTNUMBER exception;
customer_name_invalid exception;




begin






select count(*) into CountUnique from customer_details where customer_name = c_name;
Select nvl(MAX(customer_id),0) into MAXCUST_ID from customer_details;
MAX_CID := MAXCUST_ID + 1;




IF

(CountUnique>0)
then raise Uniquename ;

ELSIf
is_number(zipcode) = 0 or length(zipcode)<> 5
THEN RAISE ZIPCODE_NOTNUMBER;

ELSIf c_name is null then
raise customer_name_invalid;


ELSIF



length(contact)<>10 THEN
Raise Contact_error;




Else



insert into customer_details(Customer_ID,CUSTOMER_NAME ,
    DATE_OF_BIRTH,
    AGE ,
    CONTACT ,
    ZIP_CODE,
    STATE_NAME ,
    ADDRESS ,
    PROFILE_CREATION_DATE ,
    CUSTOMER_PASSWORD ,
    SECURITY_ANSWER1 ,
    SECURITY_ANSWER2)
values
(MaX_CID,
C_NAME ,
C_DOB ,
C_age ,
contact ,
zipcode ,
statename,
address ,
profile_creation_date ,
cPasswrod ,
sanswr1 ,
sanswr2);




END IF;
EXCEPTION
When Contact_error Then
raise_application_error (-20001,'Contact number should be 10 digits');
When ZIPCODE_NOTNUMBER Then
raise_application_error (-20002,'ZIPCODE SHOULD CONTAIN ONLY NUMBERS and should be 5 digits');
when customer_name_invalid then
raise_application_error (-20003,'customer name should not be null');
when Uniquename then

raise_application_error (-20004,'customer name should be unique');


end;
/


select * from customer_details;

exec insert_newcustomer('MS Dhon' , '11-NOV-1992' , 41, 2347865588 , '12345', 'FLORIDA' , '22, Park Street' , '17-MAY-2019' , 'Toyyy777' , 'Sanban*8' , 'Yussss');

