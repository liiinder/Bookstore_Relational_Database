
-- Test for the trigger to see if it is possible to add books with the same ISBN 13

INSERT INTO book VALUES ('978-91-7203-147-0', 'testbook_trigger1', 'English', 299)

SELECT 'INSERTED ISBN13 -> (''978-91-7203-147-0'', ''testbook_trigger1'', ''English'', 299) into book table' AS 'Message'

SELECT * FROM book WHERE title LIKE 'testbook_trigger%'

BEGIN TRY
    INSERT INTO book VALUES ('978-917203-147-0', 'testbook_trigger2', 'English', 299)
END TRY
BEGIN CATCH
    SELECT ERROR_NUMBER() AS ErrorNumber,
           ERROR_SEVERITY() AS ErrorSeverity,
           ERROR_STATE() AS ErrorState,
           ERROR_PROCEDURE() AS ErrorProcedure,
           ERROR_LINE() AS ErrorLine,
           ERROR_MESSAGE() AS ErrorMessage
END CATCH

DELETE FROM book WHERE title LIKE 'testbook_trigger%'