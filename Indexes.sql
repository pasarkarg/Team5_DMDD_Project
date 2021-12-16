create index transaction_index_crypto on crypto_transactions (customer_id);
create index transaction_index_stock on stock_transactions (customer_id);
create index transaction_index_mutual on mutual_fund_transactions (customer_id);
create index transaction_index_forex on Foreign_exchange_transactions(customer_id);

commit;
