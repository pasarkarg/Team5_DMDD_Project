




create or replace procedure update_password(C_ID in number, pass in varchar2 )
IS
same_password_As_before exception;
CUST_PASSWORD varchar2(8);
Pass_length exception;
Begin
Select CUSTOMER_PASSWORD into CUST_PASSWORD from CUSTOMER_DETAILS where C_ID=customer_details.CUSTOMER_ID;
If(CUST_PASSWORD=pass)
then raise same_password_As_before;
elsif
length(pass)>8 then raise Pass_length;
else
update customer_details set CUSTOMER_PASSWORD=pass where customer_details.Customer_id=C_ID;
END IF;
Exception
When same_password_As_before then
RAISE_APPLICATION_ERROR(-20000, 'passwords cannot be same as before');
when Pass_length then
RAISE_APPLICATION_ERROR(-20001, 'passwords cannot be more than 8 alphanumeric characters');
END;

exec update_password(11489,'Knig133');

select * from customer_details;


------------------------


CREATE OR REPLACE PROCEDURE updateStock(
P_STOCK_ID IN STOCK_DETAILS.STOCK_ID%TYPE,
P_STOCK_NAME IN STOCK_DETAILS.STOCK_NAME%TYPE)
IS
BEGIN



UPDATE STOCK_DETAILS SET STOCK_NAME = P_STOCK_NAME where STOCK_ID = P_STOCK_ID;

COMMIT;



END;
/



BEGIN
updateStock('STOCK001','APPLEMAC');
END;




select * from stock_details;


COMMIT;

