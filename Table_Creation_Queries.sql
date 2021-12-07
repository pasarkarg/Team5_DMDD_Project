CREATE TABLE CUSTOMER_DETAILS(
    CUSTOMER_ID NUMBER(10),
    CUSTOMER_NAME VARCHAR2(50) NOT NULL,
    DATE_OF_BIRTH DATE NOT NULL,
    AGE NUMBER(2) NOT NULL,
    CONTACT NUMBER(10) NOT NULL,
    ZIP_CODE NUMBER(5) NOT NULL,
    STATE_NAME VARCHAR2(20) NOT NULL,
    ADDRESS VARCHAR2(100) NOT NULL,
    PROFILE_CREATION_DATE DATE NOT NULL,
    CUSTOMER_PASSWORD VARCHAR2(8) NOT NULL,
    SECURITY_ANSWER1 VARCHAR2(15) NOT NULL,
    SECURITY_ANSWER2 VARCHAR2(15) NOT NULL,
    
    PRIMARY KEY(CUSTOMER_ID)
);


CREATE TABLE MUTUAL_FUND_DETAILS(
    MUTUAL_SCHEME_ID VARCHAR2(10),
    MUTUAL_NAME VARCHAR2(40) NOT NULL,
    MUTUAL_RISK VARCHAR2(10) NOT NULL,
    MUTUAL_CURRENT_NAV FLOAT(10) NOT NULL,
    
    PRIMARY KEY(MUTUAL_SCHEME_ID)
);

CREATE TABLE MUTUAL_FUND_TRANSACTIONS(`
    MUTUAL_TRANSACTION_ID VARCHAR2(10),
    MUTUAL_SCHEME_ID VARCHAR2(10) NOT NULL,
    CUSTOMER_ID NUMBER(10) NOT NULL,
    MUTUAL_TRANSACTION_DATE DATE NOT NULL,
    MUTUAL_UNITS  NUMBER(3)NOT NULL,
    MUTUAL_NAV_PRICE FLOAT(10) NOT NULL,
    MUTUAL_TRANSACTION_TYPE VARCHAR2(1) NOT NULL,
    
    PRIMARY KEY(MUTUAL_TRANSACTION_ID),
    FOREIGN KEY (MUTUAL_SCHEME_ID) REFERENCES MUTUAL_FUND_DETAILS (MUTUAL_SCHEME_ID),
    FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMER_DETAILS (CUSTOMER_ID)
);

CREATE TABLE FOREIGN_EXCHANGE_DETAILS(
    CURRENCY_ID VARCHAR(10),
    CURRENCY_NAME VARCHAR2(40) NOT NULL,
    CURRENCY_COUNTRY VARCHAR2(40) NOT NULL,
    CURRENCY_ISO VARCHAR2(5) NOT NULL,
    CURRENCY_CURRENT_PRICE FLOAT(10) NOT NULL,
    
    PRIMARY KEY(CURRENCY_ID)
);

CREATE TABLE FOREIGN_EXCHANGE_TRANSACTIONS(
    FOREIGN_TRANSACTION_ID VARCHAR2(10),
    CURRENCY_ID VARCHAR2(10),
    CUSTOMER_ID VARCHAR2(10) NOT NULL,
    CURRENCY_TRANSACTION_DATE DATE NOT NULL,
    PURCHASED_CURRENCY_ID VARCHAR2(5) NOT NULL,
    MONEY_INVESTMENT_VALUE FLOAT(10) NOT NULL,
    PURCHASED_CURRENCY_VALUE FLOAT(10) NOT NULL,
    CURRENCY_TRANSACTION_TYPE VARCHAR(20) NOT NULL,
    
    PRIMARY KEY(FOREIGN_TRANSACTION_ID),
    FOREIGN KEY (CURRENCY_ID)
    REFERENCES FOREIGN_EXCHANGE_DETAILS (CURRENCY_ID)
);



CREATE TABLE CRYPTO_DETAILS(
CRYPTO_ID VARCHAR2(10 BYTE),
CRYPTO_NAME VARCHAR2(20 BYTE),
SYMBOL VARCHAR2(10 BYTE) NOT NULL ,
CRYPTO_CURRENT_PRICE NUMBER (10,2)NOT NULL,
PRIMARY KEY(CRYPTO_ID)

);



CREATE TABLE CRYPTO_TRANSACTIONS(
TRANSACTION_ID VARCHAR2 (20 BYTE),
CRYPTO_ID VARCHAR2(20 BYTE),
CUSTOMER_ID VARCHAR2(20 BYTE),
CRYPTO_TRANSACTION_DATE DATE, 
TRANSACTION_TYPE CHAR(1 BYTE), 
CRYPTO_UNITS NUMBER(10,0), 
CRYPTO_PRICE NUMBER (10,2),
CRYPTO_EXCHANGE VARCHAR2 (10 BYTE)

PRIMARY KEY(TRANSACTION_ID),
FOREIGN KEY(CRYPTO_ID) REFERENCES CRYPTO_DETAILS(CRYPTO_ID),
FOREIGN KEY(CUSTOMER_ID) REFERENCES TABLE_CUSTOMERR(CUSTOMER_ID)
);


CREATE TABLE STOCK_DETAILS(
STOCK_ID NUMBER(10),
STOCK_NAME VARCHAR2(20 BYTE),
STOCK_TICKER VARCHAR2(10 BYTE) NOT NULL ,
STOCK_INDUSTRY_TYPE VARCHAR2 (10 BYTE) NOT NULL,
STOCK_CURRENT_PRICE NUMBER (10,2)NOT NULL,
PRIMARY KEY(STOCK_ID)
);

CREATE TABLE STOCK_TRANSACTIONS(
STOCK_TRANSACTION_ID NUMBER (10),
STOCK_ID NUMBER(20),
CUSTOMER_ID NUMBER (10),
STOCK_TRANSACTION_DATE DATE, 
NUMBER_OF_UNITS NUMBER(10,0), 
UNIT_STOCK_PRICE NUMBER(10,2), 
STOCK_TRANSACTION_TYPE CHAR(1 BYTE),
STOCK_EXCHANGE VARCHAR2 (10 BYTE),

PRIMARY KEY(STOCK_TRANSACTION_ID),
FOREIGN KEY(STOCK_ID) REFERENCES STOCK_DETAILS(STOCK_ID),
FOREIGN KEY(CUSTOMER_ID) REFERENCES CUSTOMER_DETAILS(CUSTOMER_ID)
);


CREATE TABLE FEEDBACK(
    FEEDBACK_ID VARCHAR2(10),
    CUSTOMER_ID VARCHAR2(10),
    ASSET_ID VARCHAR2(10) NOT NULL,
    ASSET_NAME VARCHAR(20) NOT NULL,
    ASSET_RATING FLOAT NOT NULL,
    ASSET_FEEDBACK VARCHAR2(100)NOT NULL,
    
    PRIMARY KEY(FEEDBACK_ID),
    FOREIGN KEY(CUSTOMER_ID)
    REFERENCES CUSTOMER_DETAILS(CUSTOMER_ID)
);

CREATE TABLE CUSTOMER_FINANCIAL_DETAILS(
    CUSTOMER_ID VARCHAR2(10),
    PRIMARY_INCOME FLOAT NOT NULL,
    SECONDARY_INCOME FLOAT NOT NULL,
    EMPLOYMENT_TYPE VARCHAR2(30) NOT NULL,
    ESTIMATED_INVESTMENT FLOAT NOT NULL,
    
    PRIMARY KEY (CUSTOMER_ID)
    
);