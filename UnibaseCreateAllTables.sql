SET SERVEROUTPUT ON;
DECLARE
numCount NUMBER;
BEGIN
SELECT count(*) into numCount FROM user_tables where table_name = 'CUSTOMER_DETAILS';
IF(numCount > 0)
THEN
    DBMS_OUTPUT.PUT_LINE('CUSTOMER_DETAILS TABLE ALREADY EXISTS IN DATABASE!!');
    DBMS_OUTPUT.PUT_LINE('-----------------------------------------------------------------------');
ELSE
    EXECUTE IMMEDIATE 'CREATE TABLE CUSTOMER_DETAILS (CUSTOMER_ID NUMBER(10),
    CUSTOMER_NAME VARCHAR2(50) NOT NULL,
    DATE_OF_BIRTH DATE NOT NULL,
    AGE NUMBER(2) NOT NULL,
    CONTACT NUMBER(10) NOT NULL,
    ZIP_CODE VARCHAR2(5) NOT NULL,
    STATE_NAME VARCHAR2(20) NOT NULL,
    ADDRESS VARCHAR2(100) NOT NULL,
    PROFILE_CREATION_DATE DATE NOT NULL,
    CUSTOMER_PASSWORD VARCHAR2(8) NOT NULL,
    SECURITY_ANSWER1 VARCHAR2(15) NOT NULL,
    SECURITY_ANSWER2 VARCHAR2(15) NOT NULL,
    
    PRIMARY KEY(CUSTOMER_ID))';
    
    DBMS_OUTPUT.PUT_LINE('CUSTOMER_DETAILS TABLE CREATED SUCCESSFULLY!!!');
    DBMS_OUTPUT.PUT_LINE('-----------------------------------------------------------------------');
    
    END IF;
    COMMIT;
    
SELECT count(*) into numCount from user_tables where table_name = 'MUTUAL_FUND_DETAILS';

IF(numCount > 0)
THEN
    DBMS_OUTPUT.PUT_LINE('MUTUAL_FUND_DETAILS TABLE ALREADY EXISTS IN DATABASE!!');
    DBMS_OUTPUT.PUT_LINE('-----------------------------------------------------------------------');
ELSE
    EXECUTE IMMEDIATE 'CREATE TABLE MUTUAL_FUND_DETAILS(
    MUTUAL_SCHEME_ID VARCHAR2(10),
    MUTUAL_NAME VARCHAR2(40) NOT NULL,
    MUTUAL_RISK VARCHAR2(10) NOT NULL,
    MUTUAL_CURRENT_NAV NUMBER(10,2) NOT NULL,
    
    
    PRIMARY KEY(MUTUAL_SCHEME_ID))';
    
    DBMS_OUTPUT.PUT_LINE('MUTUAL_FUND_DETAILS TABLE CREATED SUCCESSFULLY!!!');
    DBMS_OUTPUT.PUT_LINE('-----------------------------------------------------------------------');

END IF;
COMMIT;



SELECT count(*) into numCount from user_tables where table_name = 'MUTUAL_FUND_TRANSACTIONS';

IF(numCount > 0)
THEN
    DBMS_OUTPUT.PUT_LINE('MUTUAL_FUND_TRANSACTION TABLE ALREADY EXISTS IN DATABASE!!');
    DBMS_OUTPUT.PUT_LINE('-----------------------------------------------------------------------');
ELSE
    EXECUTE IMMEDIATE 'CREATE TABLE MUTUAL_FUND_TRANSACTIONS(
    MUTUAL_TRANSACTION_ID NUMBER(10),
    MUTUAL_SCHEME_ID VARCHAR2(10) NOT NULL,
    CUSTOMER_ID NUMBER(10) NOT NULL,
    MUTUAL_TRANSACTION_DATE DATE NOT NULL,
    MUTUAL_UNITS  NUMBER(3)NOT NULL,
    MUTUAL_NAV_PRICE NUMBER(10,2) NOT NULL,
    MUTUAL_TRANSACTION_TYPE VARCHAR2(1) NOT NULL,
    MUTUAL_LATEST_PRICE NUMBER(10, 2) NOT NULL,
    
    PRIMARY KEY(MUTUAL_TRANSACTION_ID),
    FOREIGN KEY (MUTUAL_SCHEME_ID) REFERENCES MUTUAL_FUND_DETAILS (MUTUAL_SCHEME_ID),
    FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMER_DETAILS (CUSTOMER_ID))';
    
    DBMS_OUTPUT.PUT_LINE('MUTUAL_FUND_TRANSACTIONS TABLE CREATED SUCCESSFULLY!!!');
    DBMS_OUTPUT.PUT_LINE('-----------------------------------------------------------------------');

END IF;
COMMIT;

SELECT count(*) into numCount from user_tables where table_name = 'FOREIGN_EXCHANGE_DETAILS';

IF(numCount > 0)
THEN
    DBMS_OUTPUT.PUT_LINE('FOREIGN_EXCHANGE_DETAILS TABLE ALREADY EXISTS IN DATABASE!!');
    DBMS_OUTPUT.PUT_LINE('-----------------------------------------------------------------------');
ELSE
    EXECUTE IMMEDIATE 'CREATE TABLE FOREIGN_EXCHANGE_DETAILS(
    CURRENCY_ID VARCHAR2(10),
    CURRENCY_NAME VARCHAR2(40) NOT NULL,
    CURRENCY_COUNTRY VARCHAR2(40) NOT NULL,
    CURRENCY_ISO VARCHAR2(5) NOT NULL,
    CURRENCY_CURRENT_PRICE NUMBER(10,4) NOT NULL,
    
    PRIMARY KEY(CURRENCY_ID))';
    
    DBMS_OUTPUT.PUT_LINE('FOREIGN_EXCHANGE_DETAILS TABLE CREATED SUCCESSFULLY!!!');
    DBMS_OUTPUT.PUT_LINE('-----------------------------------------------------------------------');

END IF;
COMMIT;

SELECT count(*) into numCount from user_tables where table_name = 'FOREIGN_EXCHANGE_TRANSACTIONS';

IF(numCount > 0)
THEN
    DBMS_OUTPUT.PUT_LINE('FOREIGN_EXCHANGE_TRANSACTIONS TABLE ALREADY EXISTS IN DATABASE!!');
    DBMS_OUTPUT.PUT_LINE('-----------------------------------------------------------------------');
ELSE
    EXECUTE IMMEDIATE 'CREATE TABLE FOREIGN_EXCHANGE_TRANSACTIONS(
   FOREIGN_TRANSACTION_ID NUMBER(10),
    CURRENCY_ID VARCHAR2(10),
    CUSTOMER_ID NUMBER(10) NOT NULL,
    CURRENCY_TRANSACTION_DATE DATE NOT NULL,
    PURCHASED_CURRENCY_ID VARCHAR2(6) NOT NULL,
    MONEY_INVESTMENT_VALUE NUMBER(10,2) NOT NULL,
    PURCHASED_CURRENCY_VALUE NUMBER(10,4) NOT NULL,
    CURRENCY_TRANSACTION_TYPE VARCHAR(20) NOT NULL,
     FEX_LATEST_PRICE NUMBER(10, 4) NOT NULL,
    
    PRIMARY KEY(FOREIGN_TRANSACTION_ID),
    FOREIGN KEY (CURRENCY_ID)REFERENCES FOREIGN_EXCHANGE_DETAILS (CURRENCY_ID))';
    
    DBMS_OUTPUT.PUT_LINE('FOREIGN_EXCHANGE_TRANSACTIONS TABLE CREATED SUCCESSFULLY!!!');
    DBMS_OUTPUT.PUT_LINE('-----------------------------------------------------------------------');

END IF;
COMMIT;



SELECT count(*) into numCount from user_tables where table_name = 'CRYPTO_DETAILS';

IF(numCount > 0)
THEN
    DBMS_OUTPUT.PUT_LINE('CRYPTO_DETAILS TABLE ALREADY EXISTS IN DATABASE!!');
    DBMS_OUTPUT.PUT_LINE('-----------------------------------------------------------------------');
ELSE
    EXECUTE IMMEDIATE 'CREATE TABLE CRYPTO_DETAILS(
  CRYPTO_ID VARCHAR2(20 BYTE),
  CRYPTO_NAME VARCHAR2(20 BYTE),
  SYMBOL VARCHAR2(10 BYTE) NOT NULL ,
  CRYPTO_CURRENT_PRICE NUMBER (10,2)NOT NULL,
  PRIMARY KEY(CRYPTO_ID))';
  
    DBMS_OUTPUT.PUT_LINE('CRYPTO_DETAILS TABLE CREATED SUCCESSFULLY!!!');
    DBMS_OUTPUT.PUT_LINE('-----------------------------------------------------------------------');

END IF;
COMMIT;


SELECT count(*) into numCount from user_tables where table_name = 'CRYPTO_TRANSACTIONS';

IF(numCount > 0)
THEN
    DBMS_OUTPUT.PUT_LINE('CRYTPO_TRANSACTIONS TABLE ALREADY EXISTS IN DATABASE!!');
    DBMS_OUTPUT.PUT_LINE('-----------------------------------------------------------------------');
ELSE
    EXECUTE IMMEDIATE 'CREATE TABLE CRYPTO_TRANSACTIONS(
  TRANSACTION_ID NUMBER (10),
  CRYPTO_ID VARCHAR2(20 BYTE) NOT NULL,
  CUSTOMER_ID NUMBER(10)NOT NULL,
  CRYPTO_TRANSACTION_DATE DATE NOT NULL, 
  TRANSACTION_TYPE CHAR(1 BYTE) NOT NULL, 
  CRYPTO_UNITS NUMBER(10,0) NOT NULL, 
  CRYPTO_PRICE NUMBER (10,2) NOT NULL,
  CRYPTO_EXCHANGE VARCHAR2 (10 BYTE) NOT NULL,
  CRYPTO_LATEST_PRICE NUMBER(10, 2) NOT NULL,
    PRIMARY KEY(TRANSACTION_ID),
    FOREIGN KEY(CRYPTO_ID) REFERENCES CRYPTO_DETAILS(CRYPTO_ID),
    FOREIGN KEY(CUSTOMER_ID) REFERENCES CUSTOMER_DETAILS(CUSTOMER_ID))';

    DBMS_OUTPUT.PUT_LINE('CRYPTO_TRANSACTIONS TABLE CREATED SUCCESSFULLY!!!');
    DBMS_OUTPUT.PUT_LINE('-----------------------------------------------------------------------');

END IF;
COMMIT;

SELECT count(*) into numCount from user_tables where table_name = 'FEEDBACK';

IF(numCount > 0)
THEN
    DBMS_OUTPUT.PUT_LINE('FEEDBACK TABLE ALREADY EXISTS IN DATABASE!!');
    DBMS_OUTPUT.PUT_LINE('-----------------------------------------------------------------------');
ELSE
    EXECUTE IMMEDIATE 'CREATE TABLE FEEDBACK(
  FEEDBACK_ID NUMBER(10),
    CUSTOMER_ID NUMBER(10) NOT NULL,
    ASSET_NAME VARCHAR(20) NOT NULL,
    ASSET_RATING NUMBER(10,2)NOT NULL,
    ASSET_FEEDBACK VARCHAR2(100)NOT NULL,
    
    PRIMARY KEY(FEEDBACK_ID),
    FOREIGN KEY(CUSTOMER_ID) REFERENCES CUSTOMER_DETAILS(CUSTOMER_ID))';
    
    DBMS_OUTPUT.PUT_LINE('FEEDBACK TABLE CREATED SUCCESSFULLY!!!');
    DBMS_OUTPUT.PUT_LINE('-----------------------------------------------------------------------');

END IF;
COMMIT;

SELECT count(*) into numCount from user_tables where table_name = 'CUSTOMER_FINANCIAL_DETAILS';

IF(numCount > 0)
THEN
    DBMS_OUTPUT.PUT_LINE('CUSTOMER_FINANCIAL_DETAILS TABLE ALREADY EXISTS  IN DATABASE!!');
    DBMS_OUTPUT.PUT_LINE('-----------------------------------------------------------------------');
ELSE
    EXECUTE IMMEDIATE 'CREATE TABLE CUSTOMER_FINANCIAL_DETAILS(
    CUSTOMER_ID NUMBER(10),
    PRIMARY_INCOME NUMBER(10,2)NOT NULL,
    SECONDARY_INCOME NUMBER(10,2) NOT NULL,
    EMPLOYMENT_TYPE VARCHAR2(30) NOT NULL,
    ESTIMATED_INVESTMENT NUMBER(10,2) NOT NULL,
    
    PRIMARY KEY (CUSTOMER_ID))';
    
    DBMS_OUTPUT.PUT_LINE('CUSTOMER_FINANCIAL_DETAILS TABLE CREATED SUCCESSFULLY!!!');
    DBMS_OUTPUT.PUT_LINE('-----------------------------------------------------------------------');

END IF;
COMMIT;


SELECT count(*) into numCount from user_tables where table_name = 'STOCK_DETAILS';

IF(numCount > 0)
THEN
    DBMS_OUTPUT.PUT_LINE('STOCK_DETAILS TABLE ALREADY EXISTS IN DATABASE!!');
    DBMS_OUTPUT.PUT_LINE('-----------------------------------------------------------------------');
ELSE
    EXECUTE IMMEDIATE 'CREATE TABLE STOCK_DETAILS(
    STOCK_ID VARCHAR2(10),
    STOCK_NAME VARCHAR2(20) NOT NULL,
    STOCK_TICKER VARCHAR2(10) NOT NULL ,
    STOCK_INDUSTRY_TYPE VARCHAR2 (10) NOT NULL,
    STOCK_CURRENT_PRICE NUMBER(10,2)NOT NULL,
    
    PRIMARY KEY(STOCK_ID))';
    
    DBMS_OUTPUT.PUT_LINE('STOCK_DETAILS TABLE CREATED SUCCESSFULLY!!!');
    DBMS_OUTPUT.PUT_LINE('-----------------------------------------------------------------------');

END IF;
COMMIT;

SELECT count(*) into numCount from user_tables where table_name = 'STOCK_TRANSACTIONS';

IF(numCount > 0)
THEN
    DBMS_OUTPUT.PUT_LINE('STOCK_TRANSACTIONS TABLE ALREADY EXISTS IN DATABASE!!');
    DBMS_OUTPUT.PUT_LINE('-----------------------------------------------------------------------');
ELSE
    EXECUTE IMMEDIATE 'CREATE TABLE STOCK_TRANSACTIONS(
    STOCK_TRANSACTION_ID NUMBER (10),
    STOCK_ID VARCHAR2(20) NOT NULL,
    CUSTOMER_ID NUMBER(10) NOT NULL,
    STOCK_TRANSACTION_DATE DATE NOT NULL, 
    NUMBER_OF_UNITS NUMBER(10) NOT NULL, 
    UNIT_STOCK_PRICE NUMBER(10,2) NOT NULL, 
    STOCK_TRANSACTION_TYPE CHAR(2) NOT NULL,
    STOCK_EXCHANGE VARCHAR2 (10)NOT NULL,
    STOCK_LATEST_PRICE NUMBER(10, 2) NOT NULL,
    
    
    PRIMARY KEY(STOCK_TRANSACTION_ID),
    FOREIGN KEY(STOCK_ID) REFERENCES STOCK_DETAILS(STOCK_ID),
    FOREIGN KEY(CUSTOMER_ID) REFERENCES CUSTOMER_DETAILS(CUSTOMER_ID))';
    
    DBMS_OUTPUT.PUT_LINE('STOCK_TRANSACTIONS TABLE CREATED SUCCESSFULLY!!!');
    DBMS_OUTPUT.PUT_LINE('-----------------------------------------------------------------------');

END IF;
COMMIT;


END;
/


