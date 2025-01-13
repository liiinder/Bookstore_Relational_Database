-- DECLARE @book NVARCHAR(MAX) = '9780007582235'
-- "9780007582235"

CREATE PROCEDURE get_stock
    @isbn13 VARCHAR(13)
AS
BEGIN
    SELECT
        @isbn13 AS 'ISBN',
        s.id AS 'StoreId',
        s.name AS 'Name',
        s.address AS 'Address',
        s.city AS 'City',
        ISNULL(stock, 0) AS 'Stock'
    FROM store s
        FULL JOIN (
            SELECT *
            FROM inventory
            WHERE isbn13 = @isbn13
        ) AS si
        ON si.store_id = s.id
END
GO