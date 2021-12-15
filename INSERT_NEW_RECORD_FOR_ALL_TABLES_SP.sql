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