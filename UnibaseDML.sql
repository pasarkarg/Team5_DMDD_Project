CREATE OR REPLACE PACKAGE INSERT1 
AS
procedure insert_customer(customerid in number, cname varchar2,dob in date, age in number, contact in number, zip in number, statename in VARCHAR2, address in varchar2, profilecreationdate in date,
cpassword in varchar2, security_answer1 in varchar2, security_answer2 in varchar2);
procedure insert_mutual_fund_details(schemeid in number, mname in varchar2, risk in varchar2, netav in float );
procedure insert_mutual_fund_transactions(transactid in number, schemeid in number, customerid in number, transacdate in date, units in number, 
netav in float, ttype in varchar2 );


  /* TODO enter package declarations (types, exceptions, methods etc) here */ 

END INSERT1;
/


create or replace package body INSERT1
AS
PROCEDURE insert_customer(customerid in number,cname varchar2, dob in date, age in number, contact in number, zip in number, statename in VARCHAR2, address in varchar2, profilecreationdate in date,
cpassword in varchar2, security_answer1 in varchar2, security_answer2 in varchar2) as
begin
insert into customer_details(customer_id,customer_name,date_of_birth, age, contact, zip_code, state_name, address, profile_creation_date, customer_password,
    security_answer1, security_answer2) values (customerid, cname,dob, age, contact, zip, statename, address, profilecreationdate, cpassword, security_answer1, security_answer2);
    commit;
    
    exception
when dup_val_on_index 
  then 
  
dbms_output.put_line('Duplicate row');

end insert_customer;


---------------------------------insert mutual fund details-------------------------------------------------------------
 
procedure insert_mutual_fund_details(schemeid in number, mname in varchar2, risk in varchar2, netav in float )as
begin
insert into mutual_fund_details(MUTUAL_SCHEME_ID,MUTUAL_NAME ,MUTUAL_RISK,MUTUAL_CURRENT_NAV) values (schemeid, mname, risk , netav );
 commit;
exception
when dup_val_on_index 
  then 
  
dbms_output.put_line('Duplicate row');

end insert_mutual_fund_details; 


-------------------------------------------------------------------------------------------------------------------------

procedure insert_mutual_fund_transactions(transactid in number, schemeid in number, customerid in number, transacdate in date, units in number, 
netav in float, ttype in varchar2) as 
begin
insert into mutual_fund_transactions(MUTUAL_TRANSACTION_ID ,MUTUAL_SCHEME_ID ,CUSTOMER_ID ,MUTUAL_TRANSACTION_DATE ,MUTUAL_UNITS ,MUTUAL_NAV_PRICE ,
    MUTUAL_TRANSACTION_TYPE) values (transactid, schemeid, customerid, transacdate , units , netav , ttype );

commit;
exception
when dup_val_on_index 
  then 
  
dbms_output.put_line('Duplicate row');



end insert_mutual_fund_transactions;





end;
/




select * from customer_details;
select * from mutual_fund_details;

delete from customer_details;



set serveroutput on;

begin
insert1.insert_customer(11489 , 'Megan Joseph' , '19-jun-1980' , 41, 2347905511 , 92133 , 'New York' , '41, Melvin street' , '22-FEB-2020' , 'Knight@1' , 'Safforn' , 'Balling');
end;

/
    