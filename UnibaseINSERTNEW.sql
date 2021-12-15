CREATE OR REPLACE PACKAGE INSERT_NEWCUS 
AS
procedure insert_newcustomer(c_name varchar2,c_dob in date, c_age in number, c_contact in number, zipcode in VARCHAR2, statename in VARCHAR2, address in varchar2, profile_creation_date in date,
cPassword in varchar2, sanswr1 in varchar2, sanswr2 in varchar2);
procedure insert_newMFD(schemeid in varchar2, mname in varchar2, mfrisk in varchar2, netav in number );
procedure insert_newMFTransaction( schemeid in varchar2, customerid in number, transacdate in date, units in number, 
netav in number, ttype in varchar2, latest_price in number);
procedure insert_newCD(cryptoid in varchar2, cname in varchar2, symb in varchar2, crycprice in number );
procedure insert_newFEXD(currid in varchar, cname in varchar2, ccountry in varchar2,curriso in varchar2 ,currcuprice in number ) ;
procedure insert_newStock(stockid in varchar2, stockName in varchar2, stockTicker in varchar2, stockIndustryType in varchar2, stockCurrentPrice in number);
procedure insert_stock_transactions(stockid in varchar2,customerid in number, transacdate in date, sunit in number,sprice in number,transacttype in char,stkexchange in VARCHAR2,latest_price in number);

END INSERT_NEWCUS;
/

set define off;







---------------------------------------------insert new customer----------------------------------------------------------
create or replace package body INSERT_NEWCUS as
procedure insert_newcustomer
(
c_name IN VARCHAR2,
c_dob IN date,
c_age IN number,
c_contact IN number,
zipcode IN VARCHAR2,
statename in VARCHAR2,
address IN VARCHAR2,
profile_creation_date IN date,
cPassword IN VARCHAR2,
sanswr1 IN VARCHAR2,
sanswr2 IN VARCHAR2)

is

MAX_CID number;
MAXCUST_ID number;
Contact_error Exception;
--Uniquename exception;
uniquePhone exception;
countPhone number;
--CountUnique number;
ZIPCODE_NOTNUMBER exception;
customer_name_invalid exception;



begin



select count(*) into countPhone from customer_details where contact = c_contact;
--select count(*) into CountUnique from customer_details where customer_name = c_name;
Select nvl(MAX(customer_id),0) into MAXCUST_ID from customer_details;
MAX_CID := MAXCUST_ID + 1;




--IF

--(CountUnique>0)
--then raise Uniquename ;

if 
(countPhone > 0)

then raise uniquePhone;


ELSIf
is_number(zipcode) = 0 or length(zipcode)<> 5
THEN RAISE ZIPCODE_NOTNUMBER;

--ELSIf c_name is null then
--raise customer_name_invalid;


ELSIF



length(c_contact)<>10 THEN
Raise Contact_error;




Else



insert into customer_details(Customer_ID,
CUSTOMER_NAME ,
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
c_name ,
c_dob ,
c_age ,
c_contact ,
zipcode ,
statename,
address ,
profile_creation_date ,
cPassword ,
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
--when Uniquename then

--raise_application_error (-20004,'customer name should be unique');

when uniquePhone then
raise_application_error (-20004,'One number can only be taken by one user and it seems this one is already registered, please enter another number');


end insert_newcustomer;

-------------------------------------------insert new mutual funds-------------------------------------------------------------------

procedure insert_newMFD(schemeid in varchar2, mname in varchar2, mfrisk in varchar2, netav in number ) as

schemeUnique number;
schemid_unique exception;
mfUnique number;
mf_name exception;
risk exception;
nav_not_number exception; 

begin

select count(*) into schemeUnique from mutual_fund_details where mutual_scheme_id = schemeid;
select count(*) into mfUnique from mutual_fund_details where mutual_name = mname;

if 

(schemeUnique > 0)

then raise schemid_unique;

elsif
(mfUnique >0)

then raise mf_name;

ELSif

mfrisk NOT IN('Medium', 'Low', 'High')
then raise risk;
elsif 

is_number(netav) = 0
then raise nav_not_number;

else

insert into mutual_fund_details(mutual_scheme_id, mutual_name , mutual_risk , mutual_current_nav ) values(schemeid , mname , mfrisk, netav);

end if;

exception

when schemid_unique then
raise_application_error (-20005,'scheme id should be unique');

when mf_name then
raise_application_error (-20006,'mutual fund name should be unique');

when risk then
raise_application_error (-20007, 'risk should be in medium, low, high');
when nav_not_number then
raise_application_error (-20011, 'nav should be number');

end INSERT_newMFD;

-----------------------------------------------------new mf transaction-----------------------------------

procedure insert_newMFTransaction(schemeid in varchar2, customerid in number, transacdate in date, units in number, 
netav in number, ttype in varchar2, latest_price in number) as

maxTID number;
maxMFTID number;
mfunits number;
mfunit exception;
mfttype exception;
v_date date;
incorrectdate exception;

begin

Select nvl(MAX(mutual_transaction_id),0) into maxMFTID from mutual_fund_transactions;
maxTID := maxMFTID + 1;
if
is_number(units) = 0 or length (units) > 3
then raise mfunit;

elsif 
ttype not in('B','S')
then raise mfttype;

--select TO_DATE(transacdate,DateFormat) from mutual_fund_details;

else

insert into mutual_fund_transactions(mutual_transaction_id,mutual_scheme_id,customer_id,MUTUAL_TRANSACTION_DATE,MUTUAL_UNITS ,MUTUAL_NAV_PRICE,MUTUAL_TRANSACTION_TYPE,
    MUTUAL_LATEST_PRICE) values (maxTID, schemeid, customerid , transacdate , units , netav , ttype , latest_price );


end if;

exception

when mfunit then
raise_application_error (-20008,' unit format not right');

when mfttype then
raise_application_error (-20009,' transaction type can only be B or S');

--when others then dbms_output.put_line('NOT A VALID DATE');

end insert_newMFTransaction;


--------------------------------------------insert new crypto Details---------------------------------------------

procedure insert_newCD(cryptoid in varchar2, cname in varchar2, symb in varchar2, crycprice in number ) is


cidUnique number;
cid_unique exception;
cnameUnique number;
c_name exception;
c_symbol number;
Uniquesymbol exception;
--nav_not_number exception;



begin



select count(*) into cidUnique from crypto_details where crypto_id = cryptoid;
select count(*) into cnameUnique from crypto_details where crypto_name = cname;
select count(*) into c_symbol from crypto_details where symbol = symb;


if



(cidUnique > 0)



then raise cid_unique;



elsif
(cnameUnique >0)



then raise c_name;



ELSif

(c_symbol>0)

then raise Uniquesymbol;



else



insert into crypto_details(CRYPTO_ID,CRYPTO_NAME ,SYMBOL ,CRYPTO_CURRENT_PRICE ) values(cryptoid , cname , symb, crycprice);




end if;



exception



when cid_unique then
raise_application_error (-20005,'crypto id should be unique');



when c_name then
raise_application_error (-20006,'crypto name should be unique');



when Uniquesymbol then
raise_application_error (-20007, 'symbol should be unique');



end insert_newCD;




---------------------------------------------insert foreign exchange details-----------------------

procedure insert_newFEXD(currid in varchar, cname in varchar2, ccountry in varchar2,curriso in varchar2 ,currcuprice in number ) 
is



curridUnique number;
currid_unique exception;
currnameUnique number;
curr_name exception;
currcountryUnique number;
currcountry_unique exception;
currisoUnique number;
curriso_unique exception;



--risk exception;
--nav_not_number exception;



begin



select count(*) into curridUnique from FOREIGN_EXCHANGE_DETAILS where currency_id = currid;
select count(*) into currnameUnique from FOREIGN_EXCHANGE_DETAILS where currency_name = cname;
select count(*) into currcountryUnique from FOREIGN_EXCHANGE_DETAILS where currency_country = ccountry;
select count(*) into currisoUnique from FOREIGN_EXCHANGE_DETAILS where currency_iso = curriso;



if



(curridUnique > 0)

then raise currid_unique;



elsif
(currnameUnique >0)

then raise curr_name;



ELSif

(currcountryUnique >0)

then raise currcountry_unique;

ELSif

(currisoUnique >0)

then raise curriso_unique;


--is_number(netav) =0
--then raise nav_not_number;



else



insert into FOREIGN_EXCHANGE_DETAILS(CURRENCY_ID,CURRENCY_NAME, CURRENCY_COUNTRY , CURRENCY_ISO,CURRENCY_CURRENT_PRICE ) values(currid , cname , ccountry ,curriso ,currcuprice);




end if;



exception



when currid_unique then
raise_application_error (-20005,'currency id should be unique');



when curr_name then
raise_application_error (-20006,'currency name should be unique');



when currcountry_unique then
raise_application_error (-20007, 'currency country should be unique');


when curriso_unique then
raise_application_error (-20007, 'currency iso should be unique');

end INSERT_newFEXD;


--------------------------------------------insert_stock_details--------------------------------------------------------

procedure insert_newStock(stockid in varchar2, 
stockName in varchar2, 
stockTicker in varchar2, 
stockIndustryType in varchar2, 
stockCurrentPrice in number) 

is

stockIDUnique number;
stockIDUniqueEx exception;
stockNameUnique number;
stockNameUniqueEx exception;
stockTickerUnique number;
stockTickerUniqueEx exception;

begin

select count(*) into stockIDUnique from stock_details where stock_id = stockid;
select count(*) into stockNameUnique from stock_details where stock_name = stockName;
select count(*) into stockTickerUnique from stock_details where stock_ticker = stockTicker;

if
(stockIDUnique > 0)
then raise stockIDUniqueEx;

elsif
(stockNameUnique >0)
then raise stockNameUniqueEx;

elsif
(stockTickerUnique > 0)
then raise stockTickerUniqueEx;

else
insert into stock_details(stock_id, stock_name , stock_ticker , stock_industry_type, stock_current_price) values(stockid , stockName , stockTicker, stockIndustryType, stockCurrentPrice);

end if;

exception

when stockIDUniqueEx then
raise_application_error (-20005,'Stock ID Should be Unique');

when stockNameUniqueEx then
raise_application_error (-20006,'Stock Name Should be Unique');

when stockTickerUniqueEx then
raise_application_error (-20007, 'Stock Ticker Should be Unique');

end insert_newStock;


-------------------------------------------------------Stock_transaction----------------------------------------------------


procedure insert_stock_transactions(stockid in varchar2,customerid in number, transacdate in date, sunit in number,sprice in number,transacttype in char,stkexchange in VARCHAR2,latest_price in number)
is

maxS_ID number;
maxs_IDD number;
stockUnits number;
stockUnitsEx exception;
transactionTypeEx exception;
v_date date;
incorrectdate exception;


begin
Select nvl(MAX(stock_transaction_id),0) into maxS_ID from stock_transactions;
maxs_IDD := maxs_ID + 1;

if
is_number(sunit) = 0 or length (sunit) >10
then raise stockUnitsEx;

elsif
transacttype not in('B','S')
then raise transactionTypeEx;

else
insert into stock_transactions(STOCK_TRANSACTION_ID, STOCK_ID, CUSTOMER_ID, STOCK_TRANSACTION_DATE, NUMBER_OF_UNITS ,UNIT_STOCK_PRICE, STOCK_TRANSACTION_TYPE,
STOCK_EXCHANGE, STOCK_LATEST_PRICE) values (maxs_IDD, stockid, customerid , transacdate , sunit , sprice , transacttype , stkexchange, latest_price);
end if;
exception
when stockUnitsEx then
raise_application_error (-20008,' Enter proper number of units');
when transactionTypeEx then
raise_application_error (-20009,' transaction type can only b B or S');
end insert_stock_transactions;

end insert_newcus;

/

execute INSERT_NEWCUS.insert_newcustomer('MSI' , '11-NOV-1992' , 41, 1234567809 , '12345', 'FLORIDA' , '22, Park Street' , '17-MAY-2019' , 'Toyyy777' , 'Sanban*8' , 'Yussss');
execute INSERT_NEWCUS.insert_newMFD('MU1005' , 'MidcapGrowth' , 'Medium' , 'abs');
execute insert_newcus.insert_newmftransaction('MU1005',	1,'20-Jan-22',313,99.12,'B',99.12);
execute insert_newcus.insert_newCD('CRYPTO00B',	'BITCOIN',	   'BTC',	58704);
execute insert_newcus.insert_newstock('STOCK001', 'Apple', 'AAPL', 'Technology', 164.94);
execute insert_newcus.insert_stock_transactions('STOCK001', 1,    '20-Jan-21',100,170.89,'B','NYSE', 170.89);

select * from customer_details;
delete from stock_transactions;
select * from stock_details;
select * from mutual_fund_details;
select * from mutual_fund_transactions;
select * from crypto_details;
select * from stock_transactions;
