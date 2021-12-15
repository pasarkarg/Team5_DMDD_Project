
SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE DELETE_CUSTOMER_DETAILS (CUSTOMER_ID IN NUMBER, p_table_name IN VARCHAR2) IS
v_control NUMBER(1);
DELETE_RECORD EXCEPTION;
BEGIN
SELECT COUNT(1)
INTO v_control
FROM user_tables a
WHERE UPPER(a.table_name) = UPPER(p_table_name);
IF v_control >= 1 THEN
EXECUTE IMMEDIATE('DELETE FROM '||P_TABLE_NAME||' WHERE '|| 'CUSTOMER_ID = ' ||CUSTOMER_ID);
DBMS_OUTPUT.PUT_LINE('Record deleted successfully...');
ELSIF v_control < 1 THEN
RAISE DELETE_RECORD;
--dbms_output.put_line('Table does not exist');
END IF;
EXCEPTION WHEN DELETE_RECORD THEN RAISE_APPLICATION_ERROR(-20002,'RECORD WHICH YOU WISH TO DELETE DOES NOT EXIST!!!!!');
END DELETE_CUSTOMER_DETAILS;

SELECT * FROM CUSTOMER_DETAILS;

BEGIN DELETE_CUSTOMER_DETAILS(66751,'CUSTOMER_DETAILS'); END;

SELECT * FROM CUSTOMER_DETAILS WHERE CUSTOMER_ID = 66751;

ROLLBACK;

------------------------------------------------MUTUAL_FUND_DETAILS-----------------------------------------------------

CREATE OR REPLACE PROCEDURE DELETE_MUTUAL_FUND_TRANSACTIONS (CUSTOMER_ID IN NUMBER, P_TABLE_NAME IN VARCHAR2) IS
v_control NUMBER(1);
DELETE_RECORD EXCEPTION;
BEGIN
SELECT COUNT(1)
INTO v_control
FROM user_tables a
WHERE UPPER(a.table_name) = UPPER(p_table_name);
IF v_control >= 1 THEN
EXECUTE IMMEDIATE('DELETE FROM '||P_TABLE_NAME||' WHERE '|| 'CUSTOMER_ID = ' ||CUSTOMER_ID);
DBMS_OUTPUT.PUT_LINE('Record deleted successfully...');
ELSIF v_control < 1 THEN
RAISE DELETE_RECORD;
--dbms_output.put_line('Table does not exist');
END IF;
EXCEPTION WHEN DELETE_RECORD THEN RAISE_APPLICATION_ERROR(-20002,'RECORD WHICH YOU WISH TO DELETE DOES NOT EXIST!!!!!');
END DELETE_MUTUAL_FUND_TRANSACTIONS;


BEGIN DELETE_MUTUAL_FUND_TRANSACTIONS(31000,'MUTUAL_FUND_TRANSACTIONS'); END;

SELECT COUNT(*) FROM MUTUAL_FUND_TRANSACTIONS;

SELECT * FROM MUTUAL_FUND_TRANSACTIONS WHERE CUSTOMER_ID = 31000;

ROLLBACK;


-----------------------------------------------STOCK_DETAILS-----------------------------------------------------
CREATE OR REPLACE PROCEDURE DELETE_STOCK_TRANSACTIONS (CUSTOMER_ID IN NUMBER, P_TABLE_NAME IN VARCHAR2) IS
v_control NUMBER(1);
DELETE_RECORD EXCEPTION;
BEGIN
SELECT COUNT(1)
INTO v_control
FROM user_tables a
WHERE UPPER(a.table_name) = UPPER(p_table_name);
IF v_control >= 1 THEN
EXECUTE IMMEDIATE('DELETE FROM '||P_TABLE_NAME||' WHERE '|| 'CUSTOMER_ID = ' ||CUSTOMER_ID);
DBMS_OUTPUT.PUT_LINE('Record deleted successfully...');
ELSIF v_control < 1 THEN
RAISE DELETE_RECORD;
--dbms_output.put_line('Table does not exist');
END IF;
EXCEPTION WHEN DELETE_RECORD THEN RAISE_APPLICATION_ERROR(-20002,'RECORD WHICH YOU WISH TO DELETE DOES NOT EXIST!!!!!');
END DELETE_STOCK_TRANSACTIONS;


BEGIN DELETE_STOCK_TRANSACTIONS('21000','STOCK_TRANSACTIONS'); END;

SELECT * FROM STOCK_TRANSACTIONS WHERE CUSTOMER_ID = 21000;

SELECT COUNT(*) FROM STOCK_TRANSACTIONS;

ROLLBACK;

--------------------------------------------------CRYPTO_DETAILS--------------------------------------------------------

CREATE OR REPLACE PROCEDURE DELETE_CRYPTO_TRANSACTIONS (CUSTOMER_ID IN NUMBER, P_TABLE_NAME IN VARCHAR2) IS
v_control NUMBER(1);
DELETE_RECORD EXCEPTION;
BEGIN
SELECT COUNT(1)
INTO v_control
FROM user_tables a
WHERE UPPER(a.table_name) = UPPER(p_table_name);
IF v_control >= 1 THEN
EXECUTE IMMEDIATE('DELETE FROM '||P_TABLE_NAME||' WHERE '|| 'CUSTOMER_ID = ' ||CUSTOMER_ID);
DBMS_OUTPUT.PUT_LINE('Record deleted successfully...');
ELSIF v_control < 1 THEN
RAISE DELETE_RECORD;
--dbms_output.put_line('Table does not exist');
END IF;
EXCEPTION WHEN DELETE_RECORD THEN RAISE_APPLICATION_ERROR(-20002,'RECORD WHICH YOU WISH TO DELETE DOES NOT EXIST!!!!!');
END DELETE_CRYPTO_TRANSACTIONS;


BEGIN DELETE_CRYPTO_TRANSACTIONS(11123,'CRYPTO_TRANSACTIONS'); END;

SELECT * FROM CRYPTO_TRANSACTIONS WHERE CUSTOMER_ID = 11123;

SELECT COUNT(*) FROM CRYPTO_TRANSACTIONS;

ROLLBACK;

-----------------------------------------------------FOREIGN_EXCHANGE_DETAILS-------------------------------------------

CREATE OR REPLACE PROCEDURE DELETE_FOREIGN_EXCHANGE_TRANSACTIONS (CUSTOMER_ID IN NUMBER, P_TABLE_NAME IN VARCHAR2) IS
v_control NUMBER(1);
DELETE_RECORD EXCEPTION;
BEGIN
SELECT COUNT(1)
INTO v_control
FROM user_tables a
WHERE UPPER(a.table_name) = UPPER(p_table_name);
IF v_control >= 1 THEN
EXECUTE IMMEDIATE('DELETE FROM '||P_TABLE_NAME||' WHERE '|| 'CUSTOMER_ID = ' ||CUSTOMER_ID);
DBMS_OUTPUT.PUT_LINE('Record deleted successfully...');
ELSIF v_control < 1 THEN
RAISE DELETE_RECORD;
--dbms_output.put_line('Table does not exist');
END IF;
EXCEPTION WHEN DELETE_RECORD THEN RAISE_APPLICATION_ERROR(-20002,'RECORD WHICH YOU WISH TO DELETE DOES NOT EXIST!!!!!');
END DELETE_FOREIGN_EXCHANGE_TRANSACTIONS;


BEGIN DELETE_FOREIGN_EXCHANGE_TRANSACTIONS(11075,'FOREIGN_EXCHANGE_TRANSACTIONS'); END;

SELECT * FROM FOREIGN_EXCHANGE_TRANSACTIONS WHERE CUSTOMER_ID = 11075;

SELECT COUNT(*) FROM FOREIGN_EXCHANGE_TRANSACTIONS;

ROLLBACK;


--------------------------------------------------------CUSTOMER_FINANCIAL_DETAILS------------------------------------------



CREATE OR REPLACE PROCEDURE DELETE_CUSTOMER_FINANCIAL_DETAILS (CUSTOMER_ID IN NUMBER, P_TABLE_NAME IN VARCHAR2) IS
v_control NUMBER(1);
DELETE_RECORD EXCEPTION;
BEGIN
SELECT COUNT(1)
INTO v_control
FROM user_tables a
WHERE UPPER(a.table_name) = UPPER(p_table_name);
IF v_control >= 1 THEN
EXECUTE IMMEDIATE('DELETE FROM '||P_TABLE_NAME||' WHERE '|| 'CUSTOMER_ID = ' ||CUSTOMER_ID);
DBMS_OUTPUT.PUT_LINE('Record deleted successfully...');
ELSIF v_control < 1 THEN
RAISE DELETE_RECORD;
--dbms_output.put_line('Table does not exist');
END IF;
EXCEPTION WHEN DELETE_RECORD THEN RAISE_APPLICATION_ERROR(-20002,'RECORD WHICH YOU WISH TO DELETE DOES NOT EXIST!!!!!');
END DELETE_CUSTOMER_FINANCIAL_DETAILS;


BEGIN DELETE_CUSTOMER_FINANCIAL_DETAILS(11489,'CUSTOMER_FINANCIAL_DETAILS'); END;

SELECT * FROM CUSTOMER_FINANCIAL_DETAILS WHERE CUSTOMER_ID = 11489;

SELECT COUNT(*) FROM CUSTOMER_FINANCIAL_DETAILS;

ROLLBACK;