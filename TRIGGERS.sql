---------------------------------------------TRIGGERS--------------------------------------------------------

---------------------------------------------CRYPTOCURRENCY----------------------------------------------------------
create or replace trigger crypto_price_update1

after update of crypto_current_price on crypto_details
for each row
begin
update crypto_transactions set crypto_latest_price = : new.crypto_current_price
where crypto_id =  :old.crypto_id;
end;

/

create or replace trigger stockprice_update

after update of stock_current_price on stock_details
for each row
begin
update stock_transactions set stock_latest_price = : new.stock_current_price
where stock_id =  :old.stock_id;
end;
/

-------------------MUTUALFUND-----------------------------------------------------------------------------------------
create or replace trigger mutualfund_update

after update of mutual_current_nav on mutual_fund_details
for each row
begin
update mutual_fund_transactions set mutual_latest_price = : new.mutual_current_nav
where mutual_scheme_id=  :old.mutual_scheme_id;
end;
/