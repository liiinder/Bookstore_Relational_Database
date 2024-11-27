
-- Testing contains following cases and some transactions between those stores.

-- Stores 1 have the book 9780007465828
-- Store 3 doesnt have that book
-- Store 6 doesnt exist

DECLARE @isbn_test VARCHAR(13) = '9780007465828'

-- Try to move from a store that doesn't have the book

SELECT store_id AS '3 have no books: 3 -> 1', stock, isbn13 FROM inventory WHERE store_id IN (1, 3) AND isbn13 = '9780007465828'
EXEC transfer_book @from_store_id = 3, @to_store_id = 1, @isbn13 = @isbn_test
SELECT store_id AS 'Result after: 3 -> 1', stock, isbn13 FROM inventory WHERE store_id IN (1, 3) AND isbn13 = '9780007465828'

-- Successfully move books between stores

EXEC transfer_book @from_store_id = 1, @to_store_id = 3, @isbn13 = @isbn_test
SELECT store_id AS 'Result after 1 -> 3', stock, isbn13 FROM inventory WHERE store_id IN (1, 3) AND isbn13 = '9780007465828'
EXEC transfer_book @from_store_id = 3, @to_store_id = 1, @isbn13 = @isbn_test
SELECT store_id AS 'Result after 3 -> 1', stock, isbn13 FROM inventory WHERE store_id IN (1, 3) AND isbn13 = '9780007465828'

-- Move to a store that doesn't exist
-- Move more books than the store have

SELECT store_id AS 'Stock before 2 fail-tests', stock, isbn13 FROM inventory WHERE store_id IN (1, 3, 6) AND isbn13 = '9780007465828'
EXEC transfer_book @from_store_id = 1, @to_store_id = 6, @isbn13 = @isbn_test
EXEC transfer_book @from_store_id = 1, @to_store_id = 3, @isbn13 = @isbn_test, @quantity = 1000
SELECT store_id AS 'Stock after 2 fail-tests', stock, isbn13 FROM inventory WHERE store_id IN (1, 3) AND isbn13 = '9780007465828'

-- Manually reset data to MOCK state as these tests will leave store_id 3 to have a record of the book with the stock 0.

DELETE FROM inventory WHERE isbn13 = @isbn_test AND store_id = 3