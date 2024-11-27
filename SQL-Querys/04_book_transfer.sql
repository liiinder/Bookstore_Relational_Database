
-- DROP PROCEDURE transfer_book

CREATE PROCEDURE transfer_book
    @from_store_id INT,
    @to_store_id INT,
    @isbn13 VARCHAR(13),
    @quantity INT = 1
AS
BEGIN

    -- Check if the store we want to transfer books to exists
    IF (SELECT id FROM store WHERE id = @to_store_id) IS NULL RETURN

    -- Check stock in the store we want to transfer from
    DECLARE @stock_from INT
    SELECT @stock_from = stock FROM inventory WHERE isbn13 = @isbn13 AND store_id = @from_store_id
    IF @stock_from < @quantity OR @stock_from IS NULL RETURN

    -- Check stock in the store we want to transfer to
    DECLARE @stock_to INT
    SELECT @stock_to = stock FROM inventory WHERE isbn13 = @isbn13 AND store_id = @to_store_id

    BEGIN TRY
        BEGIN TRANSACTION
            IF @stock_to IS NOT NULL
                UPDATE inventory SET stock += @quantity WHERE store_id = @to_store_id AND isbn13 = @isbn13
            ELSE
                INSERT INTO inventory (store_id, isbn13, stock) VALUES (@to_store_id, @isbn13, @quantity)
            UPDATE inventory SET stock -= @quantity WHERE store_id = @from_store_id AND isbn13 = @isbn13
        COMMIT TRANSACTION
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION
    END CATCH
END
GO