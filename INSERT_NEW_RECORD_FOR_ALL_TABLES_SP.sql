-------------------------INSERT STOCK DETAILS-----------------------------------
create or replace procedure insert_newStock(stockid in varchar2, 
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

-------------------------INSERT NEW CRYPTO DETAILS-----------------------------------

create or replace procedure insert_newCD(cryptoid in varchar2, cname in varchar2, symb in varchar2, crycprice in number ) is


cidUnique number;
cid_unique exception;
cnameUnique number;
c_name exception;


begin

select count(*) into cidUnique from crypto_details where crypto_id = cryptoid;
select count(*) into cnameUnique from crypto_details where crypto_name = cname;

if

(cidUnique > 0)
then raise cid_unique;

elsif
(cnameUnique >0)

then raise c_name;

else

insert into crypto_details(CRYPTO_ID,CRYPTO_NAME ,SYMBOL ,CRYPTO_CURRENT_PRICE ) values(cryptoid , cname , symb, crycprice);

end if;

exception

when cid_unique then
raise_application_error (-20005,'crypto id should be unique');

when c_name then
raise_application_error (-20006,'crypto name should be unique');


end insert_newCD;

-------------------------INSERT NEW FOREIGN EXCHANGE DETAILS-----------------------------------
create or replace procedure insert_newFEXD(currid in varchar, cname in varchar2, ccountry in varchar2,curriso in varchar2 ,currcuprice in number ) 
is


curridUnique number;
currid_unique exception;
currnameUnique number;
curr_name exception;
currcountryUnique number;
currcountry_unique exception;
currisoUnique number;
curriso_unique exception;


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

---------------------------------------------------------------------