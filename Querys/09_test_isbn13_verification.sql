-- DROP TABLE IF EXISTS #fntestcases

-- CREATE TABLE #fntestcases (
--     isbn13 VARCHAR(17),
--     expected BIT
-- )

-- INSERT INTO #fntestcases(isbn13, expected)
-- VALUES
--     ('978-0439-3621-39', 1),      -- Harry potter 1 with extra '-'
--     ('9789172632189', 1),         -- Lord of the rings without any '-'
--     ('978-9172632183', 0),        -- Wrong check digit, 3 instead of 9
--     ('928-9172632183', 0),        -- Wrong prefix, ISBN should start with 978 or 979.
--     ('9789172623332183', 0),      -- Too many digits
--     ('978933218312', 0),          -- Too few digits
--     ('not-a-correctISBN', 0),     -- All text
--     ('978-917d26f-32183', 0),     -- Letters inside
--     ('9780356521640', 1)          -- 10 på slutet

-- SELECT
--     isbn13 AS 'ISBN13',
--     expected AS 'Expected',
--     dbo.fn_verify_isbn13(isbn13) AS 'Result'
-- FROM #fntestcases

-- SELECT TOP 5 * FROM customers

-- test

DECLARE @isbn VARCHAR(MAX) = '9780356521640'
DECLARE @check_digit TINYINT

SELECT
    @check_digit = 10 - (SUM(factor * number) % 10)
FROM
    (SELECT
        1 + ((value + 1) % 2) * 2 AS factor,
        SUBSTRING(@isbn, value, 1) AS number
    FROM
        generate_series(1, 12)) AS verification_list

-- SELECT
--     @check_digit = 10 - (SUM(factor * number) % 10)
-- FROM (
    SELECT @check_digit =
        SUM((1 + ((value + 1) % 2) * 2) * SUBSTRING(@isbn, value, 1))
    FROM
        generate_series(1, 12)
        --) subquery

PRINT 'HELLO WORLD ' + CAST(@check_digit AS VARCHAR(MAX))
PRINT 'TEST'

/*

-- Test books mockdata to see if ISBN13 is valid

DROP TABLE IF EXISTS #testcases

CREATE TABLE #testcases (
    isbn13 VARCHAR(17),
    title NVARCHAR(100),
    language NVARCHAR(100),
    price MONEY
)

INSERT INTO #testcases
    (isbn13, title, language, price)
VALUES
    ('9781781100486', 'Harry Potter and the Sorcerer''s Stone', 'English', 299),
    ('9781781100509', 'Harry Potter and the Chamber of Secrets', 'English', 299),
    ('9781781100523', 'Harry Potter and the Goblet of Fire', 'English', 299),
    ('9780439358071', 'Harry Potter and the Order of the Phoenix', 'English', 299),
    ('9780439785969', 'Harry Potter and the Half-Blood Prince', 'English', 299),
    ('9780545010221', 'Harry Potter and the Deathly Hallows', 'English', 299),
    ('9780747532743', 'Harry Potter and the Philosopher''s Stone', 'English', 299),
    ('9780747538493', 'Harry Potter and the Chamber of Secrets', 'English', 299),
    ('9780747542155', 'Harry Potter and the Prisoner of Azkaban', 'English', 299),
    ('9780747546245', 'Harry Potter and the Goblet of Fire', 'English', 299),
    ('9780747551003', 'Harry Potter and the Order of the Phoenix', 'English', 299),
    ('9780747581086', 'Harry Potter and the Half-Blood Prince', 'English', 299),
    ('9780747591054', 'Harry Potter and the Deathly Hallows', 'English', 299),
    ('9780553381689', 'A Game of Thrones', 'English', 399),
    ('9780007465828', 'A Clash of Kings', 'English', 399),
    ('9780553381702', 'A Storm of Swords', 'English', 399),
    ('9780007582235', 'A Feast for Crows', 'English', 399),
    ('9780553385953', 'A Dance with Dragons', 'English', 399),
    ('9780345535528', 'Fire & Blood', 'English', 399),
    ('9780062024039', 'The Name of the Wind', 'English', 349),
    ('9780756404741', 'The Wise Man''s Fear', 'English', 349),
    ('9780547928227', 'The Hobbit', 'English', 299),
    ('9780544003415', 'The Fellowship of the Ring', 'English', 299),
    ('9780345339713', 'The Two Towers', 'English', 299),
    ('9780358380252', 'The Return of the King', 'English', 299),
    ('9780060850524', 'To Kill a Mockingbird', 'English', 199),
    ('9780141036137', '1984', 'English', 199),
    ('9780140177398', 'Of Mice and Men', 'English', 199),
    ('9780743477123', 'Romeo and Juliet', 'English', 199),
    ('9780143039433', 'The Great Gatsby', 'English', 199),
    ('9780061120084', 'Brave New World', 'English', 199),
    ('9781451673319', 'Fahrenheit 451', 'English', 199),
    ('9781451673319', 'Slaughterhouse-Five', 'English', 199),
    ('9780316769488', 'The Catcher in the Rye', 'English', 199),
    ('9780385533225', 'The Night Circus', 'English', 299),
    ('9780765377067', 'The Way of Kings', 'English', 399),
    ('9780765326355', 'Words of Radiance', 'English', 399),
    ('9780765326379', 'Oathbringer', 'English', 399),
    ('9781250757302', 'Rhythm of War', 'English', 399),
    ('9780446310789', 'Gone with the Wind', 'English', 249)

SELECT
    isbn13 AS 'ISBN13',
    title,
    dbo.fn_verify_isbn13(isbn13) AS 'Result'
FROM #testcases

*/