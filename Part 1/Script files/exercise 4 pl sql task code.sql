-- CREATE OR REPLACE TRIGGER tmp_salary_check
-- BEFORE INSERT OR UPDATE OF sal, job
-- ON tmpemp
-- FOR EACH ROW
-- WHEN (NEW.job <> 'PRESIDENT')
-- DECLARE
--     minsal  NUMBER;
--     maxsal  NUMBER;
-- BEGIN
--     SELECT minsal, maxsal
--     INTO minsal, maxsal
--     FROM tmpsalguide
--     WHERE job = :NEW.job;

--     -- Check if salary is outside the range
--     IF (:NEW.sal < minsal OR (:NEW.sal > maxsal AND maxsal IS NOT NULL)) THEN
--         RAISE_APPLICATION_ERROR(
--             -20601,
--             'Salary ' || :NEW.sal || ' is out of range for job ' || :NEW.job ||
--             ' for employee ' || :NEW.ename
--         );
--     END IF;
-- END;

-- try inserting
-- INSERT INTO tmpemp (empno, ename, job, sal) VALUES (9999, '', 'CLERK', 4000);

-- For update operation, inserting a valid row first
-- INSERT INTO tmpemp (empno, ename, job, sal) VALUES (8999, '', 'CLERK', 6000);

-- Attempt to update the salary to 4000
UPDATE tmpemp
SET sal = 4000
WHERE empno = 8999;