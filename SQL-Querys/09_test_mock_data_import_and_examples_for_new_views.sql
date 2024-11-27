USE bookstore_manager

-- TEST to see if all mock data has been imported correctly

DECLARE @quantity INT = 0

SELECT @quantity += COUNT(*) FROM author            -- 16
SELECT @quantity += COUNT(*) FROM book              -- 34
SELECT @quantity += COUNT(*) FROM author_book       -- 34
SELECT @quantity += COUNT(*) FROM store             -- 5
SELECT @quantity += COUNT(*) FROM employee          -- 10
SELECT @quantity += COUNT(*) FROM employee_store    -- 12
SELECT @quantity += COUNT(*) FROM customer          -- 300 ?!?! WHY...
SELECT @quantity += COUNT(*) FROM inventory         -- 105
SELECT @quantity += COUNT(*) FROM orders            -- 100
SELECT @quantity += COUNT(*) FROM order_details     -- 207

SELECT CAST(@quantity AS VARCHAR(MAX)) + ' / 823' AS 'Rows in database'



-- Test view of which customer that spent most money

SELECT
    min(c.firstname) + ' ' + min(c.lastname) AS 'Buyer',
    COUNT(b.isbn13) AS 'Quantity',
    STRING_AGG(title, ', ') AS 'Books',
    SUM(od.price) AS 'Amount spent'
FROM customer c
    JOIN orders o
    ON c.id = o.customer_id
    JOIN order_details od
    ON od.order_id = o.id
    JOIN store s
    ON o.store_id = s.id
    JOIN book b
    ON b.isbn13 = od.isbn13
GROUP BY c.id
ORDER BY 'Amount spent' DESC



-- Test "View" for a toplist,

SELECT
    min(s.name) + ' ' + min(s.city) + ' ' + min(s.address) AS 'Butik',
    SUM(od.price) AS 'Omsättning',
    COUNT(DISTINCT o.id) AS 'Unika Ordrar',
    COUNT(*) AS 'Antal sålda Böcker'
FROM orders o
    JOIN order_details od
    ON od.order_id = o.id
    JOIN store s
    ON o.store_id = s.id
GROUP BY s.id
ORDER BY 'Omsättning' DESC



-- Results from implemented views 'titles_by_author' and 'sales_by_employee' with some additions.

SELECT * FROM titles_by_author ORDER BY 'Lagervärde' DESC

SELECT * FROM sales_by_employee WHERE Anställningsnummer IN (1, 2, 3)