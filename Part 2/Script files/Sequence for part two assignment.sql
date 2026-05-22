-- CREATE SEQUENCE crime_id_seq
-- START WITH 110
-- INCREMENT BY 1;

CREATE OR REPLACE TRIGGER trg_generate_crime_id
BEFORE INSERT ON crime
FOR EACH ROW
BEGIN
    :NEW.crime_id := crime_id_seq.NEXTVAL;
END;