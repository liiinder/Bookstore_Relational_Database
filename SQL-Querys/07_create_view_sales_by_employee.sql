
-- DROP VIEW IF EXISTS sales_by_employee

CREATE VIEW sales_by_employee AS
SELECT
    o.store_id AS 'Butiksnummer',
    e.id AS 'Anställningsnummer',
    MIN(e.firstname) + ' ' + MIN(e.lastname) AS 'Anställd',
    SUM(od.price * od.quantity) AS 'Total säljsumma',
    COUNT(DISTINCT o.id) AS 'Unika säljtillfällen',
    SUM(od.quantity) AS 'Antal sålda böcker'
FROM orders o
    JOIN order_details od
    ON od.order_id = o.id
    JOIN employee e
    ON o.employee_id = e.id
GROUP BY e.id, o.store_id