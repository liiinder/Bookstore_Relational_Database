SELECT
    ISNULL(i.store_id, 1) AS 'Storeid?',
    ISNULL(b.isbn13, null) AS 'isbn13?',
    ISNULL(i.stock, 0) AS 'Stock'
FROM book b
    LEFT OUTER JOIN inventory i
    ON b.isbn13 = i.isbn13
WHERE b.isbn13 LIKE '9780140177398'

SELECT * FROM book CROSS JOIN store WHERE store.id = 1