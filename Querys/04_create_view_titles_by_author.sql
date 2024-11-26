-- DROP VIEW IF EXISTS titles_by_author

--/*

CREATE VIEW titles_by_author AS
SELECT
    a.firstname + ' ' + a.lastname AS 'Namn',
    CASE
        WHEN a.birthdate IS NULL THEN 'Okänd ålder'
        WHEN a.deathdate IS NULL THEN CAST(DATEDIFF(year, a.birthdate, GETDATE()) AS NVARCHAR(max)) + ' år'
        ELSE 'Död vid ' + CAST(DATEDIFF(year, a.birthdate, a.deathdate) AS NVARCHAR(max)) + ' års ålder'
    END AS 'Ålder',
    COUNT(DISTINCT ab.isbn13) AS 'Titlar',
    SUM(i.stock * b.price) AS 'Lagervärde'
FROM authors a
    LEFT JOIN author_book ab ON ab.author_id = a.id
    LEFT JOIN books b ON b.isbn13 = ab.isbn13
    LEFT JOIN inventory i ON i.isbn13 = ab.isbn13
GROUP BY a.id, a.firstname, a.lastname, a.birthdate, a.deathdate

--*/

--
/*

SELECT
    firstname + ' ' + lastname AS 'Namn',
    CASE
        WHEN deathdate IS NULL THEN CAST(DATEDIFF(year, birthdate, GETDATE()) AS NVARCHAR(max))
        ELSE (CAST(DATEDIFF(year, birthdate, deathdate) AS NVARCHAR(max)) + ' *dead*')
    END AS 'Ålder',
    COUNT(DISTINCT ab.isbn13) AS 'Titlar',
    SUM(i.stock * b.price) AS 'Lagervärde'
FROM authors a
    JOIN author_book ab ON ab.author_id = a.id
    JOIN books b ON b.isbn13 = ab.isbn13
    JOIN inventory i ON i.isbn13 = ab.isbn13
GROUP BY a.id, firstname, lastname, birthdate, deathdate

--*/