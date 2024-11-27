DROP TABLE IF EXISTS inventory      -- Must be dropped before book and store
DROP TABLE IF EXISTS order_details  -- Must be dropped before orders
DROP TABLE IF EXISTS orders         -- Can be dropped after order_details and before employee_store  and customers
DROP TABLE IF EXISTS employee_store -- Can be dropped after orders
DROP TABLE IF EXISTS employee       -- Can be dropped after employee_store
DROP TABLE IF EXISTS store          -- Can be dropped after employee_store
DROP TABLE IF EXISTS customer       -- Can be dropped after orders
DROP TABLE IF EXISTS author_book    -- Must be dropped before author and book
DROP TABLE IF EXISTS author         -- Can be dropped after author_book
DROP TABLE IF EXISTS book           -- Can be dropped after author_book

DROP VIEW IF EXISTS titles_by_author
DROP VIEW IF EXISTS sales_by_employee

DROP FUNCTION IF EXISTS dbo.verify_isbn13

DROP PROCEDURE IF EXISTS dbo.transfer_book

DROP TRIGGER IF EXISTS dbo.force_format_isbn13