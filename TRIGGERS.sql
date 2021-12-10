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