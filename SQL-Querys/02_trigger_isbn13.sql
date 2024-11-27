CREATE TRIGGER force_format_isbn13
ON book
INSTEAD OF INSERT
AS
BEGIN
    INSERT book ([isbn13], title, language, price)
    SELECT dbo.verify_isbn13([isbn13]), title, language, price
    FROM INSERTED
END
GO