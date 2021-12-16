select * from stock_details where stock_id = 'STOCK001';
select * from stock_transactions;

update stock_details 
set stock_current_price = 170
where stock_id = 'STOCK001';