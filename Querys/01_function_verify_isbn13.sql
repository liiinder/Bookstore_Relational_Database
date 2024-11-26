
-- DROP FUNCTION IF EXISTS fn_verify_isbn13
--  IF LEN(@isbn13) > 17 OR LEN(@isbn13) < 13 RETURN 0

CREATE FUNCTION dbo.fn_verify_isbn13 (@isbn13 VARCHAR(max))
RETURNS BIT AS
BEGIN
    IF LEN(@isbn13) NOT BETWEEN 13 AND 17 RETURN 0

    DECLARE @isbn VARCHAR(max) = REPLACE(@isbn13, '-', '')

    IF TRY_CONVERT(BIGINT, @isbn) IS NULL RETURN 0

    IF LEN(@isbn) <> 13 RETURN 0

    IF LEFT(@isbn, 3) NOT IN ('978', '979') RETURN 0

    DECLARE @check_digit TINYINT

    SELECT
        @check_digit = 10 - (SUM(factor * number) % 10)
    FROM
        (SELECT
            1 + ((value + 1) % 2) * 2 AS factor,
            SUBSTRING(@isbn, value, 1) AS number
        FROM
            generate_series(1, 12)) AS verification_list

    IF (RIGHT(@isbn, 1) = RIGHT(@check_digit, 1)) RETURN 1
    -- RIGHT(@check_digit, 1) för att när checkdigit är 0 så kommer variabeln vara 10 så då tar vi den 

    RETURN 0
END