CREATE OR REPLACE PACKAGE INSERT1 
AS
procedure insert_customer(customerid in number, cname varchar2,dob in date, age in number, contact in number, zip in number, statename in VARCHAR2, address in varchar2, profilecreationdate in date,
cpassword in varchar2, security_answer1 in varchar2, security_answer2 in varchar2);
procedure insert_mutual_fund_details(schemeid in number, mname in varchar2, risk in varchar2, netav in float );
procedure insert_mutual_fund_transactions(transactid in number, schemeid in number, customerid in number, transacdate in date, units in number, 
netav in float, ttype in varchar2 );
procedure insert_foreign_exchange_details(currencyid in number,curname in varchar2, country in varchar2, iso in varchar2, cur_price in float);
procedure insert_foreign_exchange_transactions(transactid in number, currencyid in number,customerid in number,transacdate in date, pcurid in varchar2, investvalue in float, pcurvalue in float, curtransacttp in varchar2);
procedure insert_crypto_details(cryptoid in number, crypname in varchar2, symbol in varchar2, curprice in varchar2);  /* TODO enter package declarations (types, exceptions, methods etc) here */ 
procedure insert_crypto_transaction(transactid in number, cryptoid in number, customerid in number,transacdate in date, transacttype in char, crypunit in number, crypprice in number, crypexchange in varchar2  );
procedure insert_stock_detail(stockid in number, sname in varchar2, ticker in varchar2, industry in varchar2, curprice in number);
procedure insert_stock_transactions(transactid in number,stockid in number,customerid in number, transacdate in date, sunit in number,sprice in number,transacttype in char,stkexchange in VARCHAR2 );
procedure insert_feedback(feedid in number, customerid in number, assetname in varchar2, rating in float, cfeedback in varchar2);
procedure insert_cfinancial_detail(customerid in number, primaryincome in float, secondaryincome in float, emptype in varchar2, estinvestment in float);
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

-----------------------------------------------------------------------------------------------------------------

procedure insert_foreign_exchange_details(currencyid in number,curname in varchar2, country in varchar2, iso in varchar2, cur_price in float) as
begin
insert into foreign_exchange_details(CURRENCY_ID,CURRENCY_NAME ,CURRENCY_COUNTRY,CURRENCY_ISO, CURRENCY_CURRENT_PRICE) values (currencyid ,curname , country , iso , cur_price);

commit;
exception
when dup_val_on_index 
  then 
  
dbms_output.put_line('Duplicate row');
end insert_foreign_exchange_details;

------------------------------insert foreign exchange transaction----------------------------------------------------

procedure insert_foreign_exchange_transactions(transactid in number, currencyid in number,customerid in number,transacdate in date, pcurid in varchar2, investvalue in float, pcurvalue in float, curtransacttp in varchar2) as
begin
insert into foreign_exchange_transactions(FOREIGN_TRANSACTION_ID ,CURRENCY_ID,CUSTOMER_ID,CURRENCY_TRANSACTION_DATE ,PURCHASED_CURRENCY_ID,MONEY_INVESTMENT_VALUE,
PURCHASED_CURRENCY_VALUE,CURRENCY_TRANSACTION_TYPE) values (transactid , currencyid,customerid ,transacdate , pcurid , investvalue , pcurvalue , curtransacttp );

commit;
exception
when dup_val_on_index 
  then 
  
dbms_output.put_line('Duplicate row');


end insert_foreign_exchange_transactions;

-------------------------------insert_crypto_details------------------------------------------------------------

procedure insert_crypto_details(cryptoid in number, crypname in varchar2, symbol in varchar2, curprice in varchar2) as
begin
insert into crypto_details(CRYPTO_ID ,CRYPTO_NAME ,SYMBOL ,CRYPTO_CURRENT_PRICE ) values (cryptoid, crypname, symbol , curprice );

commit;
exception
when dup_val_on_index 
  then 
  
dbms_output.put_line('Duplicate row');


end insert_crypto_details;

------------------------------------------insertCryptoTransactions-------------------------------------------------------

procedure insert_crypto_transaction(transactid in number, cryptoid in number,customerid in number,transacdate in date, transacttype in char, crypunit in number, crypprice in number, crypexchange in varchar2  ) as
begin
insert into crypto_transactions(TRANSACTION_ID,CRYPTO_ID,CUSTOMER_ID,CRYPTO_TRANSACTION_DATE, TRANSACTION_TYPE, CRYPTO_UNITS, CRYPTO_PRICE, CRYPTO_EXCHANGE) 
values(transactid , cryptoid, customerid,transacdate , transacttype , crypunit , crypprice, crypexchange);
commit;
exception
when dup_val_on_index 
  then 
  
dbms_output.put_line('Duplicate row');


end insert_crypto_transaction;
-----------------------------------------insert Stock Details-------------------------------------------------------------


procedure insert_stock_detail(stockid in number, sname in varchar2, ticker in varchar2, industry in varchar2, curprice in number)as
begin
insert into stock_details(STOCK_ID,STOCK_NAME,STOCK_TICKER,STOCK_INDUSTRY_TYPE,STOCK_CURRENT_PRICE) values(stockid, sname, ticker , industry , curprice);
commit;
exception
when dup_val_on_index 
  then 
  
dbms_output.put_line('Duplicate row');

end insert_stock_detail;

-------------------------------------insert Stock Transaction------------------------------------------------------------

procedure insert_stock_transactions(transactid in number,stockid in number,customerid in number, transacdate in date, sunit in number,sprice in number,transacttype in char,stkexchange in VARCHAR2 )as
begin
insert into stock_transactions(STOCK_TRANSACTION_ID,STOCK_ID,CUSTOMER_ID ,STOCK_TRANSACTION_DATE, NUMBER_OF_UNITS, UNIT_STOCK_PRICE, STOCK_TRANSACTION_TYPE,STOCK_EXCHANGE) 
values(transactid ,stockid ,customerid , transacdate , sunit,sprice,transacttype,stkexchange);
commit;
exception
when dup_val_on_index 
  then 
  
dbms_output.put_line('Duplicate row');

end insert_stock_transactions;



--------------------------------------INSERT CUSTOMER FEEDBACK-------------------------------------------------------
procedure insert_feedback(feedid in number, customerid in number, assetname in varchar2, rating in float, cfeedback in varchar2) as
begin
insert into feedback (FEEDBACK_ID,CUSTOMER_ID,ASSET_NAME ,ASSET_RATING,ASSET_FEEDBACK) values (feedid , customerid , assetname , rating , cfeedback );

commit;
exception
when dup_val_on_index 
  then 
  
dbms_output.put_line('Duplicate row');


end insert_feedback;

------------------------------------INSERT CUSTOMER FINANCIAL DETAILS---------------------------------------------

procedure insert_cfinancial_detail(customerid in number, primaryincome in float, secondaryincome in float, emptype in varchar2, estinvestment in float)AS
BEGIN

insert into customer_financial_details(CUSTOMER_ID,PRIMARY_INCOME, SECONDARY_INCOME ,EMPLOYMENT_TYPE, ESTIMATED_INVESTMENT) VALUES (customerid, primaryincome , secondaryincome , emptype , estinvestment );


commit;
exception
when dup_val_on_index 
  then 
  
dbms_output.put_line('Duplicate row');


end insert_cfinancial_detail;


end;
/




select * from customer_details;
select * from mutual_fund_details;
select * from foreign_exchange_details;

delete from customer_details;



set serveroutput on;

begin
insert1.insert_customer(11489 , 'Megan Joseph' , '19-jun-1980' , 41, 2347905511 , 92133 , 'New York' , '41, Melvin street' , '22-FEB-2020' , 'Knight@1' , 'Safforn' , 'Balling');
end;

/
    