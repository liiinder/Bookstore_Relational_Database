    DECLARE @isbn VARCHAR(max) = '9780356521640'
	--9780356521640
select 10 - (sum(factor * number) % 10) from
--select factor, substring(@isbn, value, 1) from
(
select
	value,
	1 + ((value + 1) % 2) * 2 as factor,
	substring(@isbn, value, 1) as number
from 
	generate_series(1, 12)
) subquery

DROP TABLE IF EXISTS #fntestcases2

CREATE TABLE #fntestcases2 (
    isbn13 VARCHAR(17),
    expected BIT
)

INSERT INTO #fntestcases2(isbn13, expected)
VALUES
    ('978-0439-3621-39', 1),      -- Harry potter 1 with extra '-'
    ('9789172632189', 1),         -- Lord of the rings without any '-'
    ('978-9172632183', 0),        -- Wrong check digit, 3 instead of 9
    ('928-9172632183', 0),        -- Wrong prefix, ISBN should start with 978 or 979.
    ('9789172623332183', 0),      -- Too many digits
    ('978933218312', 0),          -- Too few digits
    ('not-a-correctISBN', 0),     -- All text
    ('978-917d26f-32183', 0),     -- Letters inside
    ('9780356521640', 1)          -- 10 p� slutet

SELECT
    isbn13 AS 'ISBN13',
    expected AS 'Expected',
    bookstore_manager.dbo.fn_verify_isbn13(isbn13) AS 'Result'
FROM #fntestcases2
