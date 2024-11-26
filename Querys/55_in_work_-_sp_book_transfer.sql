/* Algorithm setup

Create... parameters from_store_id, to_store_id, isbn13, amount

begin transaction

    if from_store_id inventory isbn13.amount >= amount (borde funka oavsett om boken finns eller inte?)
        if to_store_id inventory has book
            update amount
        else
            insert book
        commit
    else
        "not enough books to transfer"

*/

DECLARE @isbn13 VARCHAR(13) = '9780747532743'

DECLARE @from_store_id INT = 1
--DECLARE @to_store_id INT = 1
DECLARE @to_store_id INT = 6
DECLARE @amount INT = 1
DECLARE @stock_from INT
DECLARE @stock_to INT -- funkar nog med bit också och kolla om det är 1 eller 0

SELECT * FROM inventory WHERE isbn13 = @isbn13
SELECT * FROM inventory WHERE store_id = @from_store_id AND isbn13 = @isbn13
SELECT * FROM inventory WHERE store_id = @to_store_id AND isbn13 = @isbn13

-- Kolla upp dessa två innan begin transaction?
SELECT @stock_from = stock FROM inventory WHERE isbn13 LIKE @isbn13 AND store_id = @from_store_id
PRINT @stock_from

SELECT @stock_to = stock FROM inventory WHERE isbn13 LIKE @isbn13 AND store_id = @to_store_id
PRINT @stock_to

DECLARE @to_store_exists INT
SELECT @to_store_exists = id FROM stores WHERE id = @to_store_id
IF @to_store_exists IS NULL PRINT 'IS NULL'
PRINT 'Hello' + CAST(@to_store_exists AS VARCHAR(max))
PRINT 'Hello World'

IF @stock_from >= @amount
BEGIN TRY
    BEGIN TRANSACTION
        IF @stock_to > 0
			PRINT 'UPDATE TO STORE INVENTORY'
            --UPDATE inventory SET stock += @amount WHERE store_id = @to_store_id AND isbn13 = @isbn13
        ELSE
			PRINT 'INSERT INTO TO STORE INVENTORY'
            --INSERT INTO inventory (store_id, isbn13, stock) VALUES (@to_store_id, @isbn13, @amount)
		PRINT 'UPDATE FROM STORE INVENTORY'
        --UPDATE inventory SET stock -= @amount WHERE store_id = @from_store_id AND isbn13 = @isbn13
    COMMIT TRANSACTION
END TRY
BEGIN CATCH
	ROLLBACK TRANSACTION
END CATCH
ELSE
    PRINT 'Not enough books in the store to transfer'

-- Check where if any rollback is nessecary!?