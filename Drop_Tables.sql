------------------------Procedure to drop all the tables in the database-----------------------


CREATE OR REPLACE PROCEDURE DROP_IF_EXISTS (p_table_name IN VARCHAR2) IS
v_control NUMBER(1);
TABLE_DONT_EXIST EXCEPTION;
BEGIN
SELECT COUNT(1) 
  INTO v_control 
  FROM user_tables a
  WHERE UPPER(a.table_name) = UPPER(p_table_name); 
IF v_control >= 1 THEN 
  EXECUTE IMMEDIATE('DROP TABLE '||p_table_name);
  dbms_output.put_line('Table deleted successfully...');
ELSIF v_control < 2 THEN
    RAISE TABLE_DONT_EXIST;
END IF;
EXCEPTION WHEN TABLE_DONT_EXIST THEN RAISE_APPLICATION_ERROR(-20001,'TABLE OR VIEW WHICH YOU WISH TO DELETE DOES NOT EXIST!!!!!');
END drop_if_exists; 




begin DROP_IF_EXISTS('MUTUAL_FUND_TRANSACTIONS'); end;
begin DROP_IF_EXISTS('MUTUAL_FUND_DETAILS'); end;
begin DROP_IF_EXISTS('STOCK_TRANSACTIONS'); end;
begin DROP_IF_EXISTS('STOCK_DETAILS'); end;
begin DROP_IF_EXISTS('FEEDBACK'); end;
begin DROP_IF_EXISTS('CRYPTO_TRANSACTIONS'); end;
begin DROP_IF_EXISTS('CRYPTO_DETAILS'); end;
begin DROP_IF_EXISTS('FOREIGN_EXCHANGE_TRANSACTIONS'); end;
begin DROP_IF_EXISTS('FOREIGN_EXCHANGE_DETAILS'); end;
begin DROP_IF_EXISTS('CUSTOMER_FINANCIAL_DETAILS'); end;
begin DROP_IF_EXISTS('CUSTOMER_DETAILS'); end;


