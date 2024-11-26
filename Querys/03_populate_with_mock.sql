-- Used ChatGPT to populate the table with real "fake" data
-- https://chatgpt.com/c/6740e287-2934-8013-b409-ec9b224eebce

USE bookstore_manager

INSERT INTO authors
    (firstname, lastname, birthdate, deathdate)
VALUES
    ('J.K.', 'Rowling', '1965-07-31', NULL),                -- Harry Potter series
    ('George', 'Martin', '1948-09-20', NULL),               -- A Song of Ice and Fire series
    ('Patrick', 'Rothfuss', '1973-06-06', NULL),            -- The Kingkiller Chronicle
    ('J.R.R.', 'Tolkien', '1892-01-03', '1973-09-02'),      -- The Hobbit and The Lord of the Rings
    ('Harper', 'Lee', '1926-04-28', '2016-02-19'),          -- To Kill a Mockingbird
    ('George', 'Orwell', '1903-06-25', '1950-01-21'),       -- 1984
    ('John', 'Steinbeck', '1902-02-27', '1968-12-20'),      -- Of Mice and Men
    ('William', 'Shakespeare', '1564-04-23', '1616-04-23'), -- Romeo and Juliet
    ('F. Scott', 'Fitzgerald', '1896-09-24', '1940-12-21'), -- The Great Gatsby
    ('Aldous', 'Huxley', '1894-07-26', '1963-11-22'),       -- Brave New World
    ('Ray', 'Bradbury', '1920-08-22', '2012-06-05'),        -- Fahrenheit 451
    ('Kurt', 'Vonnegut', '1922-11-11', '2007-04-11'),       -- Slaughterhouse-Five
    ('J.D.', 'Salinger', '1919-01-01', '2010-01-27'),       -- The Catcher in the Rye
    ('Erin', 'Morgenstern', '1978-07-08', NULL),            -- The Night Circus
    ('Brandon', 'Sanderson', '1975-12-19', NULL),           -- The Stormlight Archive
    ('Margaret', 'Mitchell', '1900-11-08', '1949-08-16');   -- Gone with the Wind

INSERT INTO books
    (isbn13, title, language, price)
VALUES
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
    ('9780385333849', 'Slaughterhouse-Five', 'English', 199),
    ('9780316769488', 'The Catcher in the Rye', 'English', 199),
    ('9780385533225', 'The Night Circus', 'English', 299),
    ('9780765377067', 'The Way of Kings', 'English', 399),
    ('9780765326355', 'Words of Radiance', 'English', 399),
    ('9780765326379', 'Oathbringer', 'English', 399),
    ('9781250757302', 'Rhythm of War', 'English', 399),
    ('9780446310789', 'Gone with the Wind', 'English', 249)

INSERT INTO author_book (author_id, isbn13) 
VALUES
    (1, '9780747532743'), -- J.K. Rowling: Harry Potter and the Philosopher's Stone
    (1, '9780747538493'), -- J.K. Rowling: Harry Potter and the Chamber of Secrets
    (1, '9780747542155'), -- J.K. Rowling: Harry Potter and the Prisoner of Azkaban
    (1, '9780747546245'), -- J.K. Rowling: Harry Potter and the Goblet of Fire
    (1, '9780747551003'), -- J.K. Rowling: Harry Potter and the Order of the Phoenix
    (1, '9780747581086'), -- J.K. Rowling: Harry Potter and the Half-Blood Prince
    (1, '9780747591054'), -- J.K. Rowling: Harry Potter and the Deathly Hallows
    (2, '9780553381689'), -- George R.R. Martin: A Game of Thrones
    (2, '9780007465828'), -- George R.R. Martin: A Clash of Kings
    (2, '9780553381702'), -- George R.R. Martin: A Storm of Swords
    (2, '9780007582235'), -- George R.R. Martin: A Feast for Crows
    (2, '9780553385953'), -- George R.R. Martin: A Dance with Dragons
    (2, '9780345535528'), -- George R.R. Martin: Fire & Blood
    (3, '9780062024039'), -- Patrick Rothfuss: The Name of the Wind
    (3, '9780756404741'), -- Patrick Rothfuss: The Wise Man's Fear
    (4, '9780547928227'), -- J.R.R. Tolkien: The Hobbit
    (4, '9780544003415'), -- J.R.R. Tolkien: The Fellowship of the Ring
    (4, '9780345339713'), -- J.R.R. Tolkien: The Two Towers
    (4, '9780358380252'), -- J.R.R. Tolkien: The Return of the King
    (5, '9780060850524'), -- Harper Lee: To Kill a Mockingbird
    (6, '9780141036137'), -- George Orwell: 1984
    (7, '9780140177398'), -- John Steinbeck: Of Mice and Men
    (8, '9780743477123'), -- William Shakespeare: Romeo and Juliet
    (9, '9780143039433'), -- F. Scott Fitzgerald: The Great Gatsby
    (10, '9780061120084'), -- Aldous Huxley: Brave New World
    (11, '9781451673319'), -- Ray Bradbury: Fahrenheit 451
    (12, '9780385333849'), -- Kurt Vonnegut: Slaughterhouse-Five
    (13, '9780316769488'), -- J.D. Salinger: The Catcher in the Rye
    (14, '9780385533225'), -- Erin Morgenstern: The Night Circus
    (15, '9780765377067'), -- Brandon Sanderson: The Way of Kings
    (15, '9780765326355'), -- Brandon Sanderson: Words of Radiance
    (15, '9780765326379'), -- Brandon Sanderson: Oathbringer
    (15, '9781250757302'), -- Brandon Sanderson: Rhythm of War
    (16, '9780446310789'); -- Margaret Mitchell: Gone with the Wind

INSERT INTO stores
    (name, country, city, postal_code, address, phonenumber, email)
VALUES
    ('Akademibokhandeln', 'Sverige', 'Göteborg', '411 06', 'Norra Hamngatan 26', '010-744 19 00', 'goteborg.nordstan@akademibokhandeln.se'),
    ('Akademibokhandeln', 'Sverige', 'Göteborg', '411 17', 'Västra Hamngatan 22', '010-744 18 50', 'goteborg.vastrahamngatan@akademibokhandeln.se'),
    ('Sci-Fi Bokhandeln', 'Sverige', 'Stockholm', '111 29', 'Västerlånggatan 48', '08-21 50 52', 'fragor@sfbok.se'),
    ('Sci-Fi Bokhandeln', 'Sverige', 'Göteborg', '411 18', 'Kungsgatan 19', '031-13 06 70', 'fragor@sfbok.se'),
    ('Mariaplans Bokhandel', 'Sverige', 'Göteborg', '414 70', 'Slottsskogsgatan 46B', '031-14 75 22', 'mariaplansbokhandel@telia.com')

INSERT INTO employees
    (firstname, lastname, birthdate, phonenumber, email)
VALUES
    ('Konny', 'Krutsson', '1965-10-23', '0709328535', 'krutet@telenor.se'),
    ('Clara', 'Bengtsson', '1999-03-30', '0739856858', 'cool_girl_99@hotmail.com'),
    ('Alice', 'Andersson', '1990-07-14', '0724567891', 'alice.andersson@gmail.com'),
    ('Benny', 'Boris', '1983-10-20', '0765684397', 'boris@gmail.com'),
    ('David', 'Karlsson', '1985-02-28', '0701234567', 'david.karlsson@hotmail.com'),
    ('Emma', 'Johansson', '2001-05-10', '0736589456', 'emma.johansson@telia.com'),
    ('Olof', 'Persson', '1972-11-15', '0768543212', 'olof.persson@gmail.com'),
    ('Sara', 'Lundqvist', '1995-08-19', '0709745632', 'sara_lundqvist@outlook.com'),
    ('Fredrik', 'Bergström', '1988-06-22', '0723985647', 'fredrik.bergstrom@jehovas.org'),
    ('Lina', 'Sandström', '1993-04-12', '0738765492', 'lina.sandstrom@provider.net')

INSERT INTO employee_store
    (employee_id, store_id, hiredate)
VALUES
    (1, 1, '1986-01-10'), -- Akademibokhandeln GBG
    (2, 1, '2020-06-30'),
    (2, 2, '2020-06-30'),
    (3, 1, '2020-05-24'),
    (3, 2, '2020-09-20'),
    (4, 2, '2000-03-05'),
    (5, 3, '2000-12-14'), -- SIFI Stockholm
    (6, 3, '2024-01-10'),
    (7, 4, '1990-02-20'), -- SIFI Göteborg
    (8, 4, '2009-11-05'),
    (9, 5, '2012-01-15'), -- Mariaplan
    (10, 5, '2019-08-12')

INSERT INTO inventory (store_id, isbn13, stock)
VALUES
    (1, '9780747532743', 25),
    (1, '9780747538493', 18),
    (1, '9780747546245', 30),
    (1, '9780553381689', 15),
    (1, '9780007465828', 8),
    (1, '9780553381702', 20),
    (1, '9780007582235', 5),
    (1, '9780553385953', 12),
    (1, '9780345535528', 10),
    (1, '9780062024039', 17),
    (1, '9780747551003', 12),
    (1, '9780747581086', 8),
    (1, '9780747542155', 8),
    (1, '9780747591054', 10),
    (2, '9780062024039', 17),
    (2, '9780756404741', 21),
    (2, '9780547928227', 9),
    (2, '9780544003415', 13),
    (2, '9780345339713', 30),
    (2, '9780358380252', 24),
    (2, '9780747532743', 20),
    (2, '9780747538493', 18),
    (2, '9780747542155', 28),
    (2, '9780747546245', 25),
    (2, '9780747551003', 15),
    (2, '9780747581086', 10),
    (2, '9780747591054', 14),
    (2, '9780553381689', 13),
    (2, '9780007465828', 22),
    (2, '9780553381702', 21),
    (2, '9780007582235', 19),
    (2, '9780553385953', 15),
    (2, '9780345535528', 14),
    (3, '9780547928227', 29),
    (3, '9780544003415', 19),
    (3, '9780345339713', 12),
    (3, '9780358380252', 7),
    (3, '9780060850524', 40),
    (3, '9780141036137', 18),
    (3, '9780140177398', 24),
    (3, '9780743477123', 12),
    (3, '9780143039433', 7),
    (3, '9780061120084', 9),
    (3, '9781451673319', 11),
    (3, '9780385333849', 5),
    (3, '9780316769488', 25),
    (3, '9780385533225', 32),
    (3, '9780765377067', 12),
    (3, '9780765326355', 9),
    (3, '9780765326379', 18),
    (3, '9781250757302', 5),
    (3, '9780446310789', 14),
    (4, '9780765377067', 18),
    (4, '9780765326355', 16),
    (4, '9780765326379', 11),
    (4, '9781250757302', 8),
    (4, '9780446310789', 20),
    (4, '9780747546245', 30),
    (4, '9780747532743', 14),
    (4, '9780747538493', 9),
    (4, '9780747542155', 28),
    (4, '9780747551003', 19),
    (4, '9780747581086', 23),
    (4, '9780747591054', 31),
    (4, '9780553381689', 15),
    (4, '9780007465828', 8),
    (4, '9780553381702', 20),
    (4, '9780007582235', 5),
    (4, '9780553385953', 12),
    (4, '9780345535528', 10),
    (4, '9780062024039', 17),
    (5, '9780747581086', 9),
    (5, '9780747591054', 16),
    (5, '9780747532743', 12),
    (5, '9780747538493', 25),
    (5, '9780747542155', 30),
    (5, '9780747546245', 35),
    (5, '9780747551003', 20),
    (5, '9780062024039', 22),
    (5, '9780756404741', 12),
    (5, '9780547928227', 10),
    (5, '9780544003415', 15),
    (5, '9780345339713', 19),
    (5, '9780358380252', 17),
    (5, '9780060850524', 30),
    (5, '9780141036137', 20),
    (5, '9780140177398', 18),
    (5, '9780743477123', 11),
    (5, '9780143039433', 6),
    (5, '9780061120084', 14),
    (5, '9781451673319', 9),
    (5, '9780385333849', 7),
    (5, '9780316769488', 21),
    (5, '9780385533225', 16),
    (5, '9780765377067', 18),
    (5, '9780765326355', 19),
    (5, '9780765326379', 13),
    (5, '9781250757302', 8),
    (5, '9780446310789', 14),
    (5, '9780553381689', 10),
    (5, '9780007465828', 5),
    (5, '9780553381702', 25),
    (5, '9780007582235', 20),
    (5, '9780553385953', 15),
    (5, '9780345535528', 17)

