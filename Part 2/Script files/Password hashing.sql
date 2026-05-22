-- CREATE OR REPLACE FUNCTION hash_password(p_password IN VARCHAR2) RETURN VARCHAR2 IS
-- l_salt RAW(2000) := UTL_RAW.CAST_TO_RAW(DBMS_RANDOM.STRING('X', 32));
-- l_hash RAW(2000);
-- BEGIN
-- l_hash := UTL_RAW.CAST_TO_RAW(l_salt || p_password);
-- dbms_output.put_line ('l_hash  : '||l_hash);
-- RETURN RAWTOHEX(l_hash);
-- END hash_password;

-- CREATE TABLE USERR(
--     USER_ID NUMBER PRIMARY KEY,
--     USERNAME VARCHAR2(500),
--     EMAIL VARCHAR2(500),
--     PASSWORDD VARCHAR2(500),
--     ENTERED_BY VARCHAR2(500)
-- );

-- INSERT INTO USERR VALUES(1, 'KAUSHIK', 'kaushik108@gmail.com', hash_password('kaushikgupta'), v('APP_USER'));
-- INSERT INTO USERR VALUES(2, 'Pratham', 'pratham109@gmail.com', hash_password('prathamstha'), v('APP_USER'));
-- INSERT INTO USERR VALUES(3, 'Prabesh', 'prabesh110@gmail.com', hash_password('prabeshgaire'), v('APP_USER'));
-- INSERT INTO USERR VALUES(4, 'Pawan', 'pawan111@gmail.com', hash_password('pawanadhikari'), v('APP_USER'));

--SELECT * FROM USERR;

--Trigger for calling function in form
CREATE OR REPLACE TRIGGER userr_password_trg
BEFORE INSERT OR UPDATE ON USERR
FOR EACH ROW
BEGIN
   -- Hash the password only if it's being changed or inserted
   :NEW.PASSWORDD := hash_password(:NEW.PASSWORDD);
END;
