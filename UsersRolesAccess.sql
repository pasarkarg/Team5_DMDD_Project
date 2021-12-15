-- MAIN USER Defining 
Create profile Moderator limit 
SESSIONS_PER_USER          UNLIMITED
CPU_PER_SESSION            UNLIMITED 
CONNECT_TIME               15
FAILED_LOGIN_ATTEMPTS 5
    PASSWORD_LIFE_TIME 90;
    


CREATE USER Moderator
    IDENTIFIED BY Northeastern2021
    PROFILE MODERATOR
    ACCOUNT UNLOCK;
   
create role Read_Transaction ;

grant select on crypto_transactions to Read_Transaction;
grant select on crypto_details to Read_Details;
grant select on Foreign_exchange_details to Read_Details;
grant select on Foreign_exchange_Transactions to Read_Transaction;
grant select on Mutual_fund_details to Read_Details;
grant select on Mutual_fund_transactions to Read_Transaction;
grant select on Stock_Transactions to Read_Transaction;

create role Read_Details;

Create role DML_Transaction;

grant update,insert on crypto_transactions to DML_Transaction;
grant update,insert on Foreign_exchange_Transactions to DML_Transaction;
grant update,insert on Mutual_fund_transactions to DML_Transaction;
grant update,insert on Stock_Transactions to DML_Transaction;

grant DML_Transaction to Moderator;
grant Read_Details to Moderator;
grant Read_Transaction to Moderator;

Create profile Customer_Profile limit 
SESSIONS_PER_USER          UNLIMITED
CPU_PER_SESSION            UNLIMITED 
CONNECT_TIME               60
FAILED_LOGIN_ATTEMPTS 5
PASSWORD_LIFE_TIME 30;
   
CREATE USER Customer
    IDENTIFIED BY Northeasternfall21
    PROFILE Customer_Profile
    ACCOUNT UNLOCK;
    

grant Read_Transaction to Customer;

create role Read_Insert_Feedback;
grant select, insert on Feedback to Read_Insert_Feedback;

grant Read_Insert_Feedback to Customer;

create role R_I_Financial_Details;
grant select, insert on Customer_Financial_Details to R_I_Financial_Details;

create role Read_View_Final_Investment;

grant select on VW_Final_Investment to Read_View_Final_Investment;

grant Read_View_Final_Investment to Customer;

create role Read_View;
grant select on VW_STOCK_STATISTICS to Read_View;
grant select on VW_MUTUAL_STATISTICS to Read_View;
grant select on VW_CRYPTO_STATISTICS to Read_View;
grant select on VW_CURRENCY_STATISTICS to Read_View;

grant Read_View to Customer;



VW_STOCK_STATISTICS

