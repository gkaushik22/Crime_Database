-- DROP TABLE CRIME_AUDIT;


-- -- CRIME AUDIT
-- CREATE TABLE CRIME_AUDIT (
--     Audit_ID NUMBER PRIMARY KEY,
--     Crime_ID NUMERIC(8),
--     Name VARCHAR(255),
--     Crime_Date DATE,
--     Action_Type VARCHAR(20),
--     Action_Date DATE,
--     Action_By VARCHAR(50)
-- );  

-- DROP SEQUENCE crime_audit_seq;
-- CREATE SEQUENCE crime_audit_seq START WITH 1 INCREMENT BY 1;

-- -- Trigger
-- CREATE OR REPLACE TRIGGER crime_audit_trg 
-- AFTER INSERT OR UPDATE OR DELETE ON CRIME 
-- FOR EACH ROW 
-- DECLARE 
--     v_action_type VARCHAR2(20); 
-- BEGIN
--     IF INSERTING THEN
--         v_action_type := 'INSERT';
--     ELSIF UPDATING THEN
--         v_action_type := 'UPDATE';
--     ELSIF DELETING THEN
--         v_action_type := 'DELETE';
--     END IF;

--     INSERT INTO CRIME_AUDIT (
--         Audit_ID, Crime_ID, Name, Crime_Date, Action_Type, Action_Date, 
--         Action_By
--     ) VALUES (
--         crime_audit_seq.NEXTVAL,
--         NVL(:old.Crime_ID, :new.Crime_ID),
--         NVL(:old.Name, :new.Name),
--         NVL(:old.Crime_Date, :new.Crime_Date),
--         v_action_type,
--         SYSDATE,
--         USER
--     );
-- END;
-- /

DROP TABLE LOCATION_AUDIT;


-- CRIME AUDIT
CREATE TABLE LOCATION_AUDIT (
    Audit_ID NUMBER PRIMARY KEY,
    Location_ID NUMERIC(8),
    City VARCHAR(255),
    Region VARCHAR(255),
    Action_Type VARCHAR(20),
    Action_Date DATE,
    Action_By VARCHAR(50)
);  

DROP SEQUENCE location_audit_seq;
CREATE SEQUENCE location_audit_seq START WITH 1 INCREMENT BY 1;

-- Trigger
CREATE OR REPLACE TRIGGER location_audit_trg 
AFTER INSERT OR UPDATE OR DELETE ON Location
FOR EACH ROW 
DECLARE 
    v_action_type VARCHAR2(20); 
BEGIN
    IF INSERTING THEN
        v_action_type := 'INSERT';
    ELSIF UPDATING THEN
        v_action_type := 'UPDATE';
    ELSIF DELETING THEN
        v_action_type := 'DELETE';
    END IF;

    INSERT INTO LOCATION_AUDIT (
        Audit_ID, location_ID, City, Region, Action_Type, Action_Date, 
        Action_By
    ) VALUES (
        location_audit_seq.NEXTVAL,
        NVL(:old.location_ID, :new.location_ID),
        NVL(:old.City, :new.City),
        NVL(:old.Region, :new.Region),
        v_action_type,
        SYSDATE,
        USER
    );
END;
/