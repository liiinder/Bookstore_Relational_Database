USE bookstore_manager

-- Test for a view of customer that spent most

SELECT
    min(c.firstname) + ' ' + min(c.lastname) AS 'Buyer',
    COUNT(b.isbn13) AS 'Amount',
    STRING_AGG(title, ', ') AS 'Books',
    SUM(od.price) AS 'Total spent'
FROM customers c
    JOIN orders o
    ON c.id = o.customer_id
    JOIN order_details od
    ON od.order_id = o.id
    JOIN stores s
    ON o.store_id = s.id
    JOIN books b
    ON b.isbn13 = od.isbn13
GROUP BY c.id
ORDER BY 'Total spent' desc

SELECT
    min(s.name) + ' ' + min(s.city) + ' ' + min(s.address) AS 'Seller',
    SUM(od.price) AS 'Total sold'
FROM orders o
    JOIN order_details od
    ON od.order_id = o.id
    JOIN stores s
    ON o.store_id = s.id
GROUP BY s.id
ORDER BY 'Total sold' desc

SELECT * FROM titles_by_author ORDER BY 'Lagervärde' desc

SELECT * FROM author_book

SELECT * FROM books WHERE isbn13 LIKE '9780747532743'

DELETE FROM books WHERE isbn13 LIKE '9780747532743'