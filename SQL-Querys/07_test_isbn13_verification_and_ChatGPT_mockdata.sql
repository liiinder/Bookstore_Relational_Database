
-- Test for the ISBN 13 verification function

DROP TABLE IF EXISTS #fntestcases

CREATE TABLE #fntestcases (
    isbn13 VARCHAR(MAX),
    expected VARCHAR(MAX)
)

INSERT INTO #fntestcases(isbn13, expected)
VALUES
    ('978-0439-3621-39', '9780439362139'),              -- Correct number with hypens
    ('9789172632189', '9789172632189'),                 -- Correct number without hyphens
    ('9780356521640', '9780356521640'),                 -- Correct number with 0 as a check digit
    ('978-9172632183', 'invalid check digit'),          -- Wrong check digit (3 instead of 9)
    ('928-9172632183', 'invalid prefix'),               -- Wrong prefix, ISBN should start with 978 or 979.
    ('978917262333218332', 'invalid length'),           -- Too many characters
    ('978933218312', 'invalid length'),                 -- Too few characters
    ('9789-332183-1232', 'invalid amount of digits'),   -- Too many digits
    ('978-933-218-312', 'invalid amount of digits'),    -- Too few digits
    ('not-a-correctISBN', 'invalid characters'),        -- All text
    ('978-917d26f-32183', 'invalid characters')         -- Letters inside

SELECT
    isbn13 AS 'ISBN13',
    expected AS 'Expected',
    bookstore_manager.dbo.verify_isbn13(isbn13) AS 'Result'
FROM #fntestcases



-----------------------------------------------------------------------------------------------------------------------

-- Test books mockdata to see if ISBN13 is valid

DROP TABLE IF EXISTS #testcases

CREATE TABLE #testcases (
    isbn13 VARCHAR(MAX),
    title NVARCHAR(100),
    language NVARCHAR(100),
    price MONEY
)


-- Got this insert statement from ChatGPT which had some invalid ISBN 13 numbers
-- So I had to do a check to see which was invalid and manually edit them...
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
    ('9780553386790', 'A Game of Thrones', 'English', 399),
    ('9780553573403', 'A Clash of Kings', 'English', 399),
    ('9780553573427', 'A Storm of Swords', 'English', 399),
    ('9780553582023', 'A Feast for Crows', 'English', 399),
    ('9780553801475', 'A Dance with Dragons', 'English', 399),
    ('9780345535528', 'Fire & Blood', 'English', 399),
    ('9780062024039', 'The Name of the Wind', 'English', 349),
    ('9780756404741', 'The Wise Man''s Fear', 'English', 349),
    ('9780547928227', 'The Hobbit', 'English', 299),
    ('9780544003415', 'The Fellowship of the Ring', 'English', 299),
    ('9780544003416', 'The Two Towers', 'English', 299),
    ('9780544003417', 'The Return of the King', 'English', 299),
    ('9780060850524', 'To Kill a Mockingbird', 'English', 199),
    ('9780141036137', '1984', 'English', 199),
    ('9780140177398', 'Of Mice and Men', 'English', 199),
    ('9780743477123', 'Romeo and Juliet', 'English', 199),
    ('9780143039433', 'The Great Gatsby', 'English', 199),
    ('9780061120084', 'Brave New World', 'English', 199),
    ('9780062316110', 'Fahrenheit 451', 'English', 199),
    ('9781451673319', 'Slaughterhouse-Five', 'English', 199),
    ('9780316769488', 'The Catcher in the Rye', 'English', 199),
    ('9780385533225', 'The Night Circus', 'English', 299),
    ('9780765377067', 'The Way of Kings', 'English', 399),
    ('9780765326355', 'Words of Radiance', 'English', 399),
    ('9780765326379', 'Oathbringer', 'English', 399),
    ('9781250767548', 'Rhythm of War', 'English', 399),
    ('9780446310789', 'Gone with the Wind', 'English', 249);

SELECT
    isbn13 AS 'ISBN13',
    bookstore_manager.dbo.verify_isbn13(isbn13) AS 'Result',
    title
FROM #testcases