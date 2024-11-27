
-- DROP FUNCTION IF EXISTS dbo.verify_isbn13

CREATE FUNCTION dbo.verify_isbn13 (@isbn13 VARCHAR(max))
RETURNS VARCHAR(24) AS
BEGIN
    IF LEN(@isbn13) NOT BETWEEN 13 AND 17 RETURN 'invalid length'

    DECLARE @isbn VARCHAR(max) = REPLACE(@isbn13, '-', '')

    IF TRY_CONVERT(BIGINT, @isbn) IS NULL RETURN 'invalid characters'

    IF LEN(@isbn) <> 13 RETURN 'invalid amount of digits'

    IF LEFT(@isbn, 3) NOT IN ('978', '979') RETURN 'invalid prefix'

    DECLARE @check_digit TINYINT

    SELECT
        @check_digit = 10 - (SUM(factor * number) % 10)
    FROM
        (SELECT
            1 + ((value + 1) % 2) * 2 AS factor,
            SUBSTRING(@isbn, value, 1) AS number
        FROM
            generate_series(1, 12)) AS verification_list

    IF (RIGHT(@isbn, 1) = RIGHT(@check_digit, 1)) RETURN @isbn

    RETURN 'invalid check digit'
END