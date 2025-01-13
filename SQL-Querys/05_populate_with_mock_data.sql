-- Used ChatGPT to populate the table with real "fake" data
-- https://chatgpt.com/c/6740e287-2934-8013-b409-ec9b224eebce

USE bookstore_manager

INSERT INTO author
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

INSERT INTO book
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

INSERT INTO store
    (name, country, city, postal_code, address, phonenumber, email)
VALUES
    ('Akademibokhandeln', 'Sverige', 'Göteborg', '411 06', 'Norra Hamngatan 26', '010-744 19 00', 'goteborg.nordstan@akademibokhandeln.se'),
    ('Akademibokhandeln', 'Sverige', 'Göteborg', '411 17', 'Västra Hamngatan 22', '010-744 18 50', 'goteborg.vastrahamngatan@akademibokhandeln.se'),
    ('Sci-Fi Bokhandeln', 'Sverige', 'Stockholm', '111 29', 'Västerlånggatan 48', '08-21 50 52', 'fragor@sfbok.se'),
    ('Sci-Fi Bokhandeln', 'Sverige', 'Göteborg', '411 18', 'Kungsgatan 19', '031-13 06 70', 'fragor@sfbok.se'),
    ('Mariaplans Bokhandel', 'Sverige', 'Göteborg', '414 70', 'Slottsskogsgatan 46B', '031-14 75 22', 'mariaplansbokhandel@telia.com')

INSERT INTO employee
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

/*
    Used https://mockaroo.com/ to generate this mockup data

    Used this Ruby expression to get a somewhat true Swedish phonenumber:
    '07' + random(100000000, 999999999).to_s[1..]
*/

insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Teodoor', 'Baggs', 'tbaggs0@shinystat.com', 1, '1965-09-21', '2020-01-08', '0701123186');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Artus', 'Kerner', 'akerner1@paypal.com', 1, '2001-04-18', '2021-10-03', '0799285298');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Horst', 'Semark', 'hsemark2@berkeley.edu', 1, '2004-06-23', '2019-10-01', '0709205914');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Garry', 'Odney', 'godney3@cnet.com', 1, '1974-09-13', '2023-09-16', '0784659619');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Lon', 'Salatino', 'lsalatino4@skyrock.com', 1, '1967-06-01', '2024-03-29', '0707712704');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Faun', 'Karpychev', 'fkarpychev5@java.com', 1, '1973-04-28', '2022-01-09', '0787698838');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Ashley', 'Baldung', 'abaldung6@phoca.cz', 1, '1959-03-20', '2019-03-22', '0761787931');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Moishe', 'Restill', 'mrestill7@springer.com', 0, '1978-08-04', '2020-08-03', '0721562028');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Duke', 'Silbert', 'dsilbert8@delicious.com', 1, '1958-03-10', '2019-03-15', '0720134003');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Dian', 'Innwood', 'dinnwood9@myspace.com', 1, '1982-07-17', '2019-03-26', '0794076836');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Orren', 'Dunnan', 'odunnana@timesonline.co.uk', 1, '1988-09-07', '2019-03-09', '0749220935');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Eugenia', 'Mullen', 'emullenb@jimdo.com', 0, '1981-04-21', '2023-11-14', '0736748037');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Obadiah', 'Briscam', 'obriscamc@goodreads.com', 1, '2004-12-28', '2020-08-10', '0724649116');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Ardra', 'Dressel', 'adresseld@nifty.com', 1, '1981-09-11', '2021-11-16', '0701511887');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Nickie', 'Bottrell', 'nbottrelle@vistaprint.com', 1, '2001-09-26', '2024-01-06', '0752463395');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Pip', 'Vedstra', 'pvedstraf@google.nl', 0, '1980-02-22', '2020-09-09', '0775916870');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Alberto', 'Buttler', 'abuttlerg@umn.edu', 1, '1990-04-12', '2019-11-11', '0775410919');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Lanae', 'Debney', 'ldebneyh@wordpress.org', 0, '1999-12-24', '2020-11-15', '0756517975');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Lindon', 'Baitey', 'lbaiteyi@tuttocitta.it', 1, '1988-11-29', '2024-07-22', '0738136606');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Sofie', 'Roskell', 'sroskellj@imdb.com', 0, '1987-07-18', '2023-10-05', '0710088976');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Halley', 'Esland', 'heslandk@un.org', 1, '1958-02-11', '2024-08-16', '0750762786');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Wyatt', 'Thomson', 'wthomsonl@nps.gov', 1, '1953-10-29', '2021-02-01', '0730186771');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Blithe', 'Deathridge', 'bdeathridgem@storify.com', 0, '1956-11-02', '2020-09-29', '0718597424');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Willy', 'Minichi', 'wminichin@trellian.com', 0, '2003-04-25', '2022-09-23', '0722750215');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Karina', 'Kenninghan', 'kkenninghano@hexun.com', 1, '1995-01-22', '2023-04-20', '0778311441');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Faye', 'Massingberd', 'fmassingberdp@blinklist.com', 0, '1978-09-04', '2019-04-10', '0720408519');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Nert', 'MacFarlan', 'nmacfarlanq@posterous.com', 0, '1981-06-22', '2022-01-03', '0755536151');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Austine', 'Suttle', 'asuttler@answers.com', 0, '1950-05-14', '2023-08-08', '0745730020');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Zea', 'Betham', 'zbethams@jimdo.com', 1, '1976-04-11', '2020-10-29', '0799020436');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Kirbie', 'Cawson', 'kcawsont@icq.com', 0, '1960-02-05', '2024-02-21', '0725998993');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Gusti', 'Ledrane', 'gledraneu@yellowbook.com', 1, '1998-05-11', '2023-03-02', '0721173899');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Bevvy', 'Kupec', 'bkupecv@bbb.org', 0, '1952-03-19', '2022-03-01', '0746188922');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Tandy', 'McFetrich', 'tmcfetrichw@weebly.com', 1, '1999-10-31', '2020-08-13', '0727300994');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Peri', 'Younge', 'pyoungex@oracle.com', 1, '1991-05-20', '2020-09-14', '0769142185');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Matty', 'Housego', 'mhousegoy@reference.com', 1, '1951-02-05', '2019-12-05', '0796927161');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Dag', 'Haggish', 'dhaggishz@51.la', 1, '2006-11-08', '2023-12-05', '0737388167');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Malorie', 'Andries', 'mandries10@theatlantic.com', 1, '1953-03-23', '2024-11-13', '0756727465');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Harriet', 'Trimble', 'htrimble11@japanpost.jp', 1, '1995-08-28', '2019-06-11', '0743389760');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Gavrielle', 'Saenz', 'gsaenz12@is.gd', 1, '1995-07-01', '2022-07-11', '0792395251');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Karie', 'McGauhy', 'kmcgauhy13@hp.com', 0, '1976-12-13', '2019-08-06', '0713678339');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Tracee', 'Peealess', 'tpeealess14@eventbrite.com', 0, '1962-12-02', '2021-11-24', '0777267843');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Karil', 'Pidon', 'kpidon15@ucla.edu', 1, '1996-05-28', '2019-08-26', '0783436180');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Pauletta', 'Joll', 'pjoll16@people.com.cn', 1, '1960-03-15', '2022-05-03', '0770253961');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Penn', 'McMonies', 'pmcmonies17@slashdot.org', 1, '1951-11-16', '2024-11-11', '0733954748');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Milzie', 'McEvoy', 'mmcevoy18@wunderground.com', 0, '1975-02-12', '2019-09-10', '0756095545');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Alisha', 'Cousans', 'acousans19@sciencedaily.com', 1, '1958-06-07', '2019-04-16', '0786072627');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Zelma', 'Applewhaite', 'zapplewhaite1a@jalbum.net', 0, '1985-01-09', '2021-09-27', '0762887353');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Manon', 'Appleton', 'mappleton1b@nydailynews.com', 0, '1982-10-17', '2022-08-26', '0727953462');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Isobel', 'Bark', 'ibark1c@alibaba.com', 1, '1993-04-14', '2019-07-23', '0779878503');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Ulrika', 'Rankcom', 'urankcom1d@washingtonpost.com', 0, '1964-03-02', '2020-06-20', '0795464311');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Jemimah', 'Crompton', 'jcrompton1e@ft.com', 1, '2006-01-17', '2024-02-04', '0738453114');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Nelson', 'Denerley', 'ndenerley1f@ifeng.com', 1, '1969-08-17', '2021-03-28', '0768344025');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Arnaldo', 'Loines', 'aloines1g@slate.com', 0, '1957-08-21', '2024-01-26', '0753714921');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Keelby', 'Vaisey', 'kvaisey1h@comcast.net', 0, '1968-05-03', '2024-04-15', '0773465917');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Nichol', 'McJarrow', 'nmcjarrow1i@godaddy.com', 1, '2006-03-25', '2023-11-11', '0712734082');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Giffer', 'Bycraft', 'gbycraft1j@loc.gov', 0, '2005-09-16', '2022-11-27', '0705579049');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Melisande', 'Creaser', 'mcreaser1k@smugmug.com', 1, '1968-05-12', '2021-05-04', '0797561727');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Emlynne', 'Leason', 'eleason1l@weather.com', 1, '1969-07-21', '2022-08-11', '0701747149');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Korella', 'Berzons', 'kberzons1m@deliciousdays.com', 0, '2005-07-29', '2019-10-16', '0738780849');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Henderson', 'Bestall', 'hbestall1n@gmpg.org', 1, '1981-03-08', '2022-12-14', '0749314883');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Kathi', 'Bentke', 'kbentke1o@bloglovin.com', 0, '1952-05-01', '2024-01-03', '0759816664');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Jemie', 'Gamlin', 'jgamlin1p@cdc.gov', 0, '1995-05-22', '2020-08-28', '0713456654');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Bar', 'Betancourt', 'bbetancourt1q@china.com.cn', 0, '1978-06-28', '2020-10-07', '0709344947');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Glennis', 'Gilffilland', 'ggilffilland1r@biglobe.ne.jp', 0, '1965-03-31', '2020-03-02', '0774755431');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Sheela', 'Beynke', 'sbeynke1s@multiply.com', 0, '1985-04-13', '2022-11-21', '0753376272');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Casie', 'Manass', 'cmanass1t@latimes.com', 0, '1981-10-18', '2019-01-02', '0774179955');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Lisbeth', 'Desport', 'ldesport1u@infoseek.co.jp', 1, '1958-11-25', '2019-10-29', '0770897084');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Terence', 'Petraitis', 'tpetraitis1v@amazon.com', 0, '1967-09-27', '2024-11-14', '0771629067');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Wilmar', 'Spink', 'wspink1w@qq.com', 1, '1977-09-14', '2021-05-27', '0748365319');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Correy', 'Waud', 'cwaud1x@berkeley.edu', 1, '1999-08-18', '2019-12-25', '0772437649');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Nancey', 'Laughnan', 'nlaughnan1y@amazon.de', 1, '1995-01-30', '2022-07-04', '0703548339');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Nerti', 'Tommei', 'ntommei1z@sfgate.com', 0, '1978-08-09', '2020-12-23', '0736853802');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Chadd', 'Peacocke', 'cpeacocke20@t.co', 0, '1984-01-07', '2021-12-07', '0721421591');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Hortensia', 'Rumbold', 'hrumbold21@apple.com', 1, '2004-09-29', '2019-05-04', '0741762518');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Orbadiah', 'Malam', 'omalam22@census.gov', 1, '1975-11-01', '2024-03-24', '0786529903');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Anderson', 'Begbie', 'abegbie23@google.ca', 1, '1951-11-18', '2023-02-10', '0705562943');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Royall', 'Maliphant', 'rmaliphant24@unc.edu', 1, '2003-08-12', '2019-10-25', '0791513350');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Kendricks', 'Eles', 'keles25@msn.com', 0, '1989-12-02', '2021-07-09', '0755112630');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Lesley', 'Adamec', 'ladamec26@google.com.hk', 0, '1997-08-29', '2024-05-24', '0737640307');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Man', 'Aspital', 'maspital27@miibeian.gov.cn', 1, '2001-02-11', '2022-01-28', '0709859899');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Archambault', 'Golling', 'agolling28@techcrunch.com', 0, '1993-09-20', '2021-08-09', '0789229293');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Anny', 'Willoughby', 'awilloughby29@histats.com', 1, '1965-03-21', '2023-11-05', '0750726018');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Candida', 'Goulthorp', 'cgoulthorp2a@people.com.cn', 1, '1959-02-28', '2021-05-25', '0784968277');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Donalt', 'Latimer', 'dlatimer2b@nasa.gov', 1, '1983-11-26', '2024-10-24', '0760502432');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Stuart', 'Gobbet', 'sgobbet2c@joomla.org', 0, '1992-03-26', '2021-09-07', '0767868996');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Betteann', 'Fishe', 'bfishe2d@is.gd', 0, '1972-07-13', '2022-04-10', '0738939002');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Brooks', 'Paullin', 'bpaullin2e@163.com', 0, '1958-10-27', '2023-02-22', '0774940545');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Yvonne', 'Reeday', 'yreeday2f@dailymotion.com', 1, '1973-07-21', '2019-10-17', '0737431088');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Dre', 'Aucock', 'daucock2g@slate.com', 0, '1950-04-21', '2023-12-21', '0735724680');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Vanya', 'Brantl', 'vbrantl2h@last.fm', 0, '1958-12-22', '2020-04-18', '0792711931');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Bernetta', 'McGowing', 'bmcgowing2i@mac.com', 0, '1977-03-16', '2020-05-26', '0736252746');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Celestyn', 'Jasper', 'cjasper2j@vkontakte.ru', 0, '1953-10-17', '2023-03-11', '0747568115');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Naomi', 'Comino', 'ncomino2k@princeton.edu', 1, '1996-11-19', '2020-07-08', '0703183131');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Klarika', 'Purveys', 'kpurveys2l@dell.com', 1, '1980-07-04', '2023-04-01', '0738496428');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Domini', 'Coltherd', 'dcoltherd2m@examiner.com', 0, '1950-12-29', '2019-07-04', '0720929597');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Lisle', 'Roy', 'lroy2n@discuz.net', 0, '1968-07-15', '2020-08-15', '0784075585');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Emma', 'Rabier', 'erabier2o@usa.gov', 1, '2000-10-27', '2024-10-17', '0762732628');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Carry', 'Niche', 'cniche2p@simplemachines.org', 0, '1997-08-25', '2023-08-08', '0753549715');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Kristyn', 'Jorcke', 'kjorcke2q@sciencedirect.com', 1, '1994-10-08', '2024-02-03', '0785040709');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Jessey', 'Sellner', 'jsellner2r@mac.com', 1, '1955-10-17', '2020-09-09', '0758078938');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Marilyn', 'Mealiffe', 'mmealiffe2s@studiopress.com', 0, '1959-12-11', '2023-04-08', '0709684894');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Lissi', 'Cranshaw', 'lcranshaw2t@themeforest.net', 0, '1971-06-22', '2020-12-05', '0775574532');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Griz', 'Herley', 'gherley2u@cdc.gov', 1, '1984-08-03', '2021-03-22', '0789921416');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Rolph', 'Harbison', 'rharbison2v@nyu.edu', 1, '1991-03-16', '2020-08-25', '0752636478');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Donelle', 'Cordon', 'dcordon2w@joomla.org', 0, '1986-03-06', '2023-12-28', '0746710806');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Vite', 'Langwade', 'vlangwade2x@blog.com', 1, '2000-10-25', '2023-03-17', '0705727889');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Romeo', 'Goodbairn', 'rgoodbairn2y@newsvine.com', 1, '2000-09-01', '2019-01-27', '0754864828');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Trula', 'Sesser', 'tsesser2z@ow.ly', 1, '1987-09-16', '2024-04-14', '0709057779');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Roldan', 'Cortese', 'rcortese30@clickbank.net', 0, '1960-09-28', '2023-10-13', '0705889549');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Carlie', 'Kelcey', 'ckelcey31@mac.com', 0, '1973-03-30', '2024-03-15', '0785207034');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Silva', 'Roome', 'sroome32@hostgator.com', 1, '1987-07-23', '2023-12-05', '0711582660');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Joleen', 'Iffe', 'jiffe33@tripadvisor.com', 0, '1976-06-15', '2021-10-24', '0790458897');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Happy', 'Tongue', 'htongue34@cornell.edu', 1, '1954-05-30', '2020-05-17', '0710755252');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Alexandros', 'Adderley', 'aadderley35@delicious.com', 0, '1966-08-30', '2022-10-11', '0786809769');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Giovanna', 'Hobell', 'ghobell36@cisco.com', 1, '1989-12-22', '2020-10-22', '0720263165');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Carlin', 'Mughal', 'cmughal37@shareasale.com', 1, '1968-12-29', '2022-03-26', '0726364509');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Diandra', 'Beaney', 'dbeaney38@ow.ly', 0, '1984-01-12', '2022-07-24', '0791189300');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Mylo', 'Dowbekin', 'mdowbekin39@dion.ne.jp', 0, '1986-09-19', '2019-09-14', '0768069444');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Felicity', 'Trahearn', 'ftrahearn3a@topsy.com', 1, '1950-06-01', '2019-10-07', '0784722756');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Ambrose', 'Saffin', 'asaffin3b@usatoday.com', 0, '1950-09-20', '2020-12-28', '0764227770');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Babara', 'Stallybrass', 'bstallybrass3c@comcast.net', 1, '1966-04-04', '2024-02-24', '0724574969');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Mort', 'Haffard', 'mhaffard3d@slate.com', 0, '1988-11-25', '2024-05-18', '0784004281');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Pete', 'Lettice', 'plettice3e@prnewswire.com', 0, '1990-01-09', '2021-05-29', '0755322696');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Gretel', 'Bessom', 'gbessom3f@people.com.cn', 1, '1997-07-11', '2024-03-05', '0734638293');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Hewe', 'Stride', 'hstride3g@biglobe.ne.jp', 0, '2002-03-31', '2021-07-28', '0791675937');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Granny', 'Boatswain', 'gboatswain3h@google.de', 1, '1987-04-21', '2024-05-17', '0768437085');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Ari', 'Claricoates', 'aclaricoates3i@wp.com', 1, '2006-11-22', '2022-07-30', '0711049445');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Juli', 'Whitman', 'jwhitman3j@typepad.com', 1, '1984-12-27', '2022-05-17', '0709675236');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Griffie', 'Ramet', 'gramet3k@samsung.com', 1, '1987-10-17', '2024-07-11', '0708040643');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Farly', 'Heersema', 'fheersema3l@livejournal.com', 0, '1997-02-06', '2022-11-24', '0788378239');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Findley', 'Alpin', 'falpin3m@yahoo.co.jp', 0, '1952-07-16', '2022-02-10', '0770411255');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Nickey', 'Bloschke', 'nbloschke3n@free.fr', 1, '1998-11-06', '2019-08-30', '0745856732');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Gaby', 'Edards', 'gedards3o@spotify.com', 0, '2002-07-31', '2021-08-22', '0761360299');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Arte', 'Gianninotti', 'agianninotti3p@craigslist.org', 1, '1967-11-02', '2022-04-30', '0742901695');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('April', 'O''Lochan', 'aolochan3q@pen.io', 1, '1962-01-10', '2022-10-17', '0752947137');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Merry', 'Salvadori', 'msalvadori3r@abc.net.au', 0, '1990-10-25', '2021-09-24', '0725755011');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Joyous', 'Canland', 'jcanland3s@indiatimes.com', 1, '1953-10-03', '2024-08-28', '0730251092');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Darill', 'Madge', 'dmadge3t@pen.io', 0, '1964-05-01', '2022-02-23', '0783103720');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Saleem', 'Sherar', 'ssherar3u@freewebs.com', 1, '1978-07-20', '2020-12-17', '0703427231');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Hanni', 'Davidek', 'hdavidek3v@google.com.hk', 0, '1988-11-08', '2024-03-31', '0718210651');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Clemmie', 'Appleby', 'cappleby3w@squarespace.com', 1, '1989-03-19', '2021-09-10', '0741751080');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Florentia', 'Nix', 'fnix3x@ask.com', 1, '1983-06-23', '2019-11-10', '0771708037');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Guthry', 'Grinter', 'ggrinter3y@umn.edu', 0, '2001-09-17', '2021-04-03', '0751335617');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Raymund', 'Stogill', 'rstogill3z@upenn.edu', 1, '1956-05-19', '2021-12-06', '0781336153');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Ellen', 'Ellingworth', 'eellingworth40@woothemes.com', 1, '1988-10-28', '2024-01-03', '0745187824');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Boothe', 'Alsopp', 'balsopp41@goo.gl', 0, '1982-10-04', '2021-11-10', '0799737845');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Ursa', 'Prinnett', 'uprinnett42@indiatimes.com', 1, '1986-10-14', '2019-01-11', '0790286816');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Bibbie', 'Hatzar', 'bhatzar43@flickr.com', 0, '1983-03-11', '2020-10-21', '0710234921');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Teodoro', 'Grog', 'tgrog44@nifty.com', 1, '1952-04-21', '2021-10-07', '0756093329');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Babette', 'Kenton', 'bkenton45@google.it', 0, '1973-07-31', '2020-11-26', '0785021853');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Jere', 'Grandison', 'jgrandison46@oakley.com', 1, '1967-10-18', '2024-04-23', '0703678933');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Celina', 'Padwick', 'cpadwick47@bandcamp.com', 1, '1970-01-11', '2024-08-02', '0751078397');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Mikkel', 'Hasnney', 'mhasnney48@ow.ly', 0, '1956-02-22', '2022-06-02', '0706552520');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Oswell', 'Pritty', 'opritty49@slashdot.org', 0, '1979-08-09', '2022-06-07', '0747532859');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Bronson', 'Lightbowne', 'blightbowne4a@indiegogo.com', 1, '1961-05-17', '2023-03-06', '0795071164');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Goran', 'Lemon', 'glemon4b@4shared.com', 0, '1991-05-17', '2019-10-28', '0779577050');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Maurizio', 'Skypp', 'mskypp4c@cornell.edu', 1, '1983-01-10', '2019-01-03', '0790479002');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Sherwynd', 'Mardoll', 'smardoll4d@nymag.com', 0, '2004-03-15', '2021-05-12', '0728166773');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Melba', 'Pinchback', 'mpinchback4e@yellowpages.com', 0, '1994-05-31', '2020-12-30', '0717132560');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Rakel', 'Ghiotto', 'rghiotto4f@about.com', 1, '1999-01-31', '2022-11-19', '0781606990');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Ben', 'Shawcroft', 'bshawcroft4g@go.com', 0, '2005-05-21', '2019-07-17', '0798090040');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Helli', 'Proudlock', 'hproudlock4h@go.com', 1, '1950-01-28', '2023-06-21', '0712224204');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Bellanca', 'Bantock', 'bbantock4i@quantcast.com', 1, '1994-08-02', '2023-06-19', '0727239481');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Jerrie', 'Antoniazzi', 'jantoniazzi4j@aboutads.info', 0, '1970-01-13', '2019-02-25', '0724132573');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Michel', 'Tooher', 'mtooher4k@jalbum.net', 0, '1987-09-24', '2021-11-12', '0704135335');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Isidore', 'Labbey', 'ilabbey4l@ning.com', 0, '1970-04-22', '2023-09-29', '0794963135');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Shannah', 'Baumann', 'sbaumann4m@simplemachines.org', 0, '1974-04-05', '2023-09-09', '0706817478');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Dorolisa', 'Leghorn', 'dleghorn4n@marketwatch.com', 1, '1975-05-29', '2019-07-18', '0791202511');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Sid', 'Champken', 'schampken4o@phpbb.com', 1, '1953-03-29', '2021-06-30', '0757249561');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Alfonso', 'Schlagh', 'aschlagh4p@clickbank.net', 1, '2006-09-05', '2019-04-25', '0787693131');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Carola', 'De Ortega', 'cdeortega4q@indiatimes.com', 1, '1981-10-05', '2021-07-03', '0701128002');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Carissa', 'Oakenfall', 'coakenfall4r@etsy.com', 1, '1971-07-29', '2019-03-09', '0777844379');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Leanna', 'Krysztofiak', 'lkrysztofiak4s@facebook.com', 0, '1970-09-15', '2022-04-09', '0781294303');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Florette', 'Newland', 'fnewland4t@java.com', 0, '1997-07-09', '2019-09-06', '0797504395');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Amalita', 'Ciobutaru', 'aciobutaru4u@soup.io', 0, '1978-09-09', '2019-10-23', '0712918924');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Lynna', 'Clendinning', 'lclendinning4v@storify.com', 1, '2004-12-07', '2024-07-18', '0723407130');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Tab', 'Whitfield', 'twhitfield4w@nasa.gov', 0, '1974-02-27', '2023-05-22', '0761370552');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Meryl', 'Alday', 'malday4x@theatlantic.com', 0, '1977-11-20', '2019-07-14', '0760319994');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Lyndy', 'McMurdo', 'lmcmurdo4y@geocities.com', 1, '1972-04-03', '2021-06-28', '0774249123');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Vanessa', 'Fullilove', 'vfullilove4z@blogs.com', 1, '1973-11-21', '2023-06-23', '0740079376');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Flor', 'Paolinelli', 'fpaolinelli50@newsvine.com', 1, '1955-03-15', '2022-10-14', '0722775760');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Cynthea', 'Haddinton', 'chaddinton51@about.com', 1, '1953-05-30', '2021-10-22', '0791008034');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Teodoor', 'Greensides', 'tgreensides52@indiatimes.com', 1, '1975-11-22', '2022-02-05', '0781681824');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Aleksandr', 'Sertin', 'asertin53@businessweek.com', 0, '1987-11-26', '2022-11-17', '0719120704');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Mahmud', 'Faich', 'mfaich54@google.co.jp', 1, '1978-09-23', '2020-10-29', '0714041349');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Emili', 'Verner', 'everner55@51.la', 0, '1991-02-15', '2020-05-17', '0713278598');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Zea', 'Koubek', 'zkoubek56@europa.eu', 1, '2000-11-18', '2024-10-13', '0706290499');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Hannis', 'Lethardy', 'hlethardy57@printfriendly.com', 0, '1991-10-23', '2022-09-26', '0745301932');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Hayes', 'MacShane', 'hmacshane58@usda.gov', 0, '1951-10-20', '2024-01-17', '0702361710');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Mira', 'Dadge', 'mdadge59@auda.org.au', 1, '1972-11-28', '2020-08-04', '0707213025');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Nilson', 'McCutheon', 'nmccutheon5a@domainmarket.com', 0, '1979-07-02', '2021-02-24', '0757398555');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Hazel', 'Pallasch', 'hpallasch5b@1und1.de', 1, '1975-02-27', '2021-03-05', '0761880846');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Jobie', 'Showalter', 'jshowalter5c@ow.ly', 0, '1999-03-28', '2019-09-23', '0712413977');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Milka', 'Pendre', 'mpendre5d@china.com.cn', 1, '1996-05-22', '2022-05-13', '0782115220');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Mellie', 'Barkley', 'mbarkley5e@example.com', 0, '2006-11-08', '2023-06-27', '0795550938');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Carmelina', 'Ridges', 'cridges5f@discovery.com', 1, '1968-06-05', '2023-04-02', '0781788680');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Aloysia', 'Cowdrey', 'acowdrey5g@twitpic.com', 1, '2003-08-26', '2022-09-14', '0744694175');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Nisse', 'Rablen', 'nrablen5h@ftc.gov', 1, '1984-12-10', '2024-03-10', '0752957151');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Ferne', 'Eliassen', 'feliassen5i@qq.com', 0, '1965-12-12', '2020-03-23', '0776765561');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Mina', 'Piegrome', 'mpiegrome5j@1und1.de', 0, '2000-09-14', '2023-12-31', '0771345339');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Charity', 'Boal', 'cboal5k@sogou.com', 1, '1968-04-05', '2022-01-28', '0743427965');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Rubi', 'Reaveley', 'rreaveley5l@hc360.com', 0, '1952-06-03', '2020-08-19', '0703520056');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Carlo', 'Finnemore', 'cfinnemore5m@globo.com', 1, '1986-12-05', '2023-02-07', '0745959247');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Rhonda', 'Exall', 'rexall5n@clickbank.net', 0, '1967-09-16', '2022-05-07', '0746557598');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Dennis', 'Lovat', 'dlovat5o@sourceforge.net', 0, '1953-08-20', '2019-06-12', '0725953308');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Florette', 'Anderbrugge', 'fanderbrugge5p@about.me', 1, '1961-03-31', '2022-06-08', '0760057084');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Karlens', 'Connerly', 'kconnerly5q@intel.com', 1, '2005-07-20', '2024-05-10', '0741597678');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Renato', 'Morrid', 'rmorrid5r@discuz.net', 1, '1986-09-27', '2019-05-09', '0747290990');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Port', 'Lilford', 'plilford5s@ezinearticles.com', 0, '1965-04-08', '2022-01-29', '0719456820');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Alica', 'Mighele', 'amighele5t@51.la', 1, '1985-07-21', '2022-11-15', '0713631681');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Rod', 'McKerton', 'rmckerton5u@ft.com', 0, '1962-01-31', '2021-12-25', '0751285473');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Druci', 'Mioni', 'dmioni5v@amazon.co.jp', 0, '2001-01-16', '2021-01-02', '0747570644');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Franciska', 'Dailey', 'fdailey5w@cornell.edu', 1, '1977-04-02', '2023-05-16', '0766714518');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Elissa', 'Brotherhood', 'ebrotherhood5x@freewebs.com', 1, '2005-03-18', '2021-11-16', '0728182435');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Alan', 'Marrill', 'amarrill5y@arizona.edu', 0, '1979-01-02', '2023-10-06', '0719093181');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Ferrell', 'Rable', 'frable5z@seesaa.net', 1, '1955-06-02', '2023-08-23', '0780597912');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Vanya', 'Matiewe', 'vmatiewe60@trellian.com', 1, '1993-04-20', '2019-06-26', '0732615736');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Lyndel', 'Dunderdale', 'ldunderdale61@unicef.org', 1, '1992-11-05', '2023-12-20', '0759473265');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Trenna', 'Uppett', 'tuppett62@joomla.org', 1, '1992-01-13', '2019-11-01', '0744126917');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Michelina', 'Concannon', 'mconcannon63@artisteer.com', 0, '2004-12-21', '2019-11-02', '0771242901');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Inga', 'Wilprecht', 'iwilprecht64@eepurl.com', 1, '2004-07-13', '2024-10-12', '0718636970');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Isidro', 'Crosham', 'icrosham65@toplist.cz', 0, '1953-01-27', '2024-06-27', '0717567523');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Casper', 'Quenell', 'cquenell66@imgur.com', 0, '1963-11-18', '2024-05-23', '0720542327');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Skippie', 'Asmus', 'sasmus67@devhub.com', 1, '1968-02-19', '2021-04-21', '0757595194');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Erinn', 'Hold', 'ehold68@etsy.com', 0, '2004-11-29', '2021-04-05', '0789171711');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Griselda', 'Heibel', 'gheibel69@nifty.com', 0, '1988-06-29', '2023-05-07', '0702113363');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Liuka', 'Handlin', 'lhandlin6a@howstuffworks.com', 0, '1957-03-16', '2022-08-13', '0758666364');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Maurine', 'Poltone', 'mpoltone6b@ftc.gov', 0, '1971-09-03', '2020-06-27', '0779680397');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Lynne', 'Fideler', 'lfideler6c@fc2.com', 1, '1985-11-25', '2019-11-28', '0799417735');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Phillipe', 'Crossman', 'pcrossman6d@mysql.com', 0, '1989-03-04', '2022-04-22', '0758679263');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Glennis', 'Coysh', 'gcoysh6e@nyu.edu', 1, '1961-10-03', '2024-07-14', '0775882928');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Eben', 'Radnedge', 'eradnedge6f@mlb.com', 0, '1963-03-30', '2022-04-25', '0709545325');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Adora', 'Pibworth', 'apibworth6g@delicious.com', 0, '1967-12-13', '2020-05-02', '0784549971');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Corrine', 'Fearns', 'cfearns6h@ucsd.edu', 1, '2005-12-28', '2021-04-13', '0796371540');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Davey', 'Ryall', 'dryall6i@printfriendly.com', 1, '1955-07-24', '2019-05-29', '0719838510');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Boigie', 'Blakiston', 'bblakiston6j@alibaba.com', 0, '1996-09-03', '2021-04-17', '0776481427');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Ignace', 'Crowcum', 'icrowcum6k@washingtonpost.com', 0, '2004-10-09', '2020-01-18', '0781441185');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Mortie', 'Mutch', 'mmutch6l@example.com', 0, '1983-12-22', '2020-03-16', '0796828317');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Johnathan', 'Tinker', 'jtinker6m@flickr.com', 1, '1992-08-28', '2024-01-18', '0711246581');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Zarla', 'Gaveltone', 'zgaveltone6n@spiegel.de', 0, '1966-04-16', '2023-08-11', '0701079294');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Caresse', 'Mac Giolla Pheadair', 'cmacgiollapheadair6o@edublogs.org', 1, '1976-11-29', '2021-02-18', '0733898220');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Waite', 'Mandrake', 'wmandrake6p@hexun.com', 1, '1952-12-23', '2023-05-24', '0712330838');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Gian', 'Coursor', 'gcoursor6q@yandex.ru', 0, '1968-02-28', '2020-02-15', '0781816788');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Isabelle', 'Tott', 'itott6r@vistaprint.com', 0, '1993-11-15', '2024-05-22', '0733603825');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Gerhardt', 'Prinne', 'gprinne6s@themeforest.net', 1, '1998-12-30', '2021-09-15', '0719182395');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Chance', 'Wittke', 'cwittke6t@europa.eu', 1, '1986-12-05', '2023-08-09', '0721994407');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Gerick', 'Kohrsen', 'gkohrsen6u@free.fr', 0, '1960-05-05', '2022-03-26', '0793580174');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Jessa', 'Cummungs', 'jcummungs6v@usnews.com', 1, '1983-11-14', '2021-04-28', '0796892358');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Lib', 'Yakubov', 'lyakubov6w@youtube.com', 0, '1952-01-09', '2024-10-20', '0720417332');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Giusto', 'Oherlihy', 'goherlihy6x@buzzfeed.com', 1, '1963-09-19', '2024-05-08', '0721682960');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Nedda', 'Fibbings', 'nfibbings6y@addtoany.com', 1, '1991-12-04', '2024-08-28', '0706606804');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Claus', 'Desorts', 'cdesorts6z@toplist.cz', 0, '1985-02-27', '2020-06-05', '0708331927');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Breena', 'Barnish', 'bbarnish70@creativecommons.org', 0, '1957-10-02', '2021-12-31', '0710439401');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Belle', 'McLevie', 'bmclevie71@w3.org', 0, '1967-04-21', '2022-02-12', '0765200101');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Ginny', 'Baudesson', 'gbaudesson72@guardian.co.uk', 0, '1970-08-11', '2024-06-05', '0739588394');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Anselm', 'Dowty', 'adowty73@va.gov', 1, '2002-01-26', '2019-01-03', '0705506209');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Lorettalorna', 'Anelay', 'lanelay74@bbc.co.uk', 1, '1997-01-11', '2019-02-09', '0777620555');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Marchall', 'Kearsley', 'mkearsley75@youku.com', 1, '1982-10-28', '2021-10-19', '0717267083');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Darlleen', 'Slamaker', 'dslamaker76@europa.eu', 1, '1954-05-06', '2023-08-17', '0738774582');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Flynn', 'Swindley', 'fswindley77@dell.com', 1, '1968-05-20', '2021-04-17', '0762626903');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Theo', 'Kellitt', 'tkellitt78@cornell.edu', 0, '1960-03-01', '2019-03-19', '0762264115');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Anabal', 'Toderini', 'atoderini79@linkedin.com', 0, '1990-01-07', '2022-05-02', '0768963847');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Tommi', 'Caudrelier', 'tcaudrelier7a@yellowbook.com', 1, '1969-06-17', '2021-10-15', '0751562877');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Basil', 'Castillon', 'bcastillon7b@blogtalkradio.com', 1, '1991-05-31', '2023-10-30', '0705938358');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Eimile', 'Nowakowski', 'enowakowski7c@furl.net', 1, '2004-08-05', '2019-12-20', '0710365789');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Claiborn', 'Akid', 'cakid7d@hud.gov', 0, '1963-08-24', '2022-01-22', '0703614967');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Giovanni', 'Coleman', 'gcoleman7e@prweb.com', 0, '1988-12-15', '2024-10-18', '0793031926');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Heda', 'Bishop', 'hbishop7f@npr.org', 1, '2004-10-13', '2021-08-05', '0730963673');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Tyler', 'Climson', 'tclimson7g@bandcamp.com', 0, '1994-07-25', '2019-07-19', '0753548171');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Conroy', 'Tayspell', 'ctayspell7h@pen.io', 0, '1989-10-22', '2024-04-28', '0762822202');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Jacquenette', 'Keward', 'jkeward7i@army.mil', 1, '1967-09-08', '2024-04-21', '0798215905');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Hobard', 'McGawn', 'hmcgawn7j@hexun.com', 1, '2003-02-12', '2024-07-17', '0768915078');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Catherine', 'Ambrosetti', 'cambrosetti7k@hexun.com', 1, '1966-09-26', '2021-10-16', '0716883509');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Verina', 'Groombridge', 'vgroombridge7l@hibu.com', 1, '1986-10-07', '2023-09-07', '0792470973');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Garfield', 'Craighill', 'gcraighill7m@youtube.com', 1, '1995-09-11', '2019-03-31', '0757908116');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Andros', 'Lambertson', 'alambertson7n@newyorker.com', 1, '1992-03-25', '2020-01-02', '0745286528');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Heddi', 'Ceyssen', 'hceyssen7o@dyndns.org', 0, '1995-10-02', '2022-07-20', '0794796572');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Skippy', 'Pebworth', 'spebworth7p@examiner.com', 1, '1990-05-24', '2019-12-16', '0718373309');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Arch', 'Messiter', 'amessiter7q@rambler.ru', 0, '1995-08-09', '2021-01-17', '0793310048');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Claudian', 'Pakeman', 'cpakeman7r@about.me', 1, '1999-06-23', '2019-02-09', '0718442001');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Ignatius', 'Stein', 'istein7s@google.com', 0, '1955-09-08', '2022-07-05', '0711740107');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Vickie', 'Darwent', 'vdarwent7t@exblog.jp', 1, '1959-08-21', '2019-06-04', '0720583412');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Adora', 'Fried', 'afried7u@123-reg.co.uk', 1, '1967-07-25', '2019-12-02', '0716695992');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Sherwynd', 'McQuarter', 'smcquarter7v@ed.gov', 0, '1978-03-14', '2021-04-06', '0733949375');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Dianna', 'Lawranson', 'dlawranson7w@reverbnation.com', 0, '1968-04-25', '2024-05-20', '0794897279');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Saba', 'Tomasek', 'stomasek7x@ted.com', 0, '1980-02-07', '2020-06-03', '0700422764');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Lizette', 'Giovannacc@i', 'lgiovannacci7y@washingtonpost.com', 1, '1984-03-11', '2019-10-31', '0797741367');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Kati', 'Soonhouse', 'ksoonhouse7z@storify.com', 1, '1981-02-19', '2023-12-03', '0746206325');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Rafaello', 'Farley', 'rfarley80@telegraph.co.uk', 0, '1954-03-27', '2022-05-27', '0703431103');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Zorana', 'Lermouth', 'zlermouth81@exblog.jp', 1, '1965-11-19', '2023-12-14', '0769443061');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Josefa', 'Ghidini', 'jghidini82@a8.net', 1, '1976-04-11', '2024-01-17', '0784436667');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Gill', 'Ivashnikov', 'givashnikov83@elegantthemes.com', 0, '2006-09-08', '2019-09-17', '0778714214');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Giuseppe', 'Bickerdicke', 'gbickerdicke84@ocn.ne.jp', 1, '2005-12-02', '2021-05-10', '0762959363');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Carlene', 'Beavors', 'cbeavors85@mapy.cz', 0, '1990-02-12', '2022-10-20', '0723613647');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Brion', 'Eckley', 'beckley86@salon.com', 1, '1971-12-13', '2023-12-04', '0756880178');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Berry', 'Pollendine', 'bpollendine87@wsj.com', 0, '1992-01-28', '2019-11-19', '0755524130');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Paolina', 'Stobart', 'pstobart88@youku.com', 0, '1973-04-14', '2022-12-15', '0735003273');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Deborah', 'Kemshell', 'dkemshell89@phpbb.com', 1, '2000-08-29', '2023-09-02', '0767201110');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Dannie', 'Lynde', 'dlynde8a@creativecommons.org', 0, '2000-01-23', '2021-05-22', '0774601991');
insert into customer (firstname, lastname, email, premium_member, birthdate, joined, phonenumber) values ('Shamus', 'Longega', 'slongega8b@marketwatch.com', 0, '1993-06-02', '2024-04-12', '0792220811');
--*/

INSERT INTO orders
    (store_id, employee_id, customer_id, created_at, updated_at, deleted_at)
VALUES
    (1, 1, 48, '2024-02-02 00:00:00.000', NULL, NULL),
    (1, 1, 47, '2023-01-01 00:00:00.000', NULL, NULL),
    (1, 1, NULL, '2023-01-03 00:00:00.000', NULL, NULL),
    (1, 1, NULL, '2023-01-01 00:00:00.000', NULL, NULL),
    (1, 1, NULL, '2023-01-01 00:00:00.000', NULL, NULL),
    (1, 1, 8, '2023-01-01 00:00:00.000', NULL, NULL),
    (1, 1, 62, '2023-01-01 00:00:00.000', NULL, NULL),
    (1, 1, 29, '2023-01-01 00:00:00.000', NULL, NULL),
    (1, 1, NULL, '2023-01-01 00:00:00.000', NULL, NULL),
    (1, 1, 69, '2023-01-01 00:00:00.000', NULL, NULL),
    (1, 2, 64, '2023-01-01 00:00:00.000', NULL, NULL),
    (1, 2, NULL, '2023-01-01 00:00:00.000', NULL, NULL),
    (1, 2, NULL, '2024-06-25 00:00:00.000', NULL, NULL),
    (1, 2, 98, '2023-05-27 00:00:00.000', NULL, NULL),
    (1, 2, 6, '2023-01-01 00:00:00.000', NULL, NULL),
    (1, 2, NULL, '2023-01-01 00:00:00.000', NULL, NULL),
    (1, 2, NULL, '2023-01-01 00:00:00.000', NULL, NULL),
    (1, 2, NULL, '2024-09-29 00:00:00.000', NULL, NULL),
    (1, 2, 23, '2024-02-28 00:00:00.000', NULL, NULL),
    (1, 3, NULL, '2023-01-01 00:00:00.000', NULL, NULL),
    (1, 3, 85, '2023-01-01 00:00:00.000', NULL, NULL),
    (1, 3, NULL, '2023-01-01 00:00:00.000', NULL, NULL),
    (1, 3, NULL, '2023-01-01 00:00:00.000', NULL, NULL),
    (1, 3, NULL, '2024-10-14 00:00:00.000', NULL, NULL),
    (1, 3, 78, '2024-09-14 00:00:00.000', NULL, NULL),
    (2, 2, NULL, '2024-03-07 00:00:00.000', NULL, NULL),
    (2, 2, 8, '2023-01-01 00:00:00.000', NULL, NULL),
    (2, 2, 76, '2023-07-17 00:00:00.000', NULL, NULL),
    (2, 2, 64, '2023-01-01 00:00:00.000', NULL, NULL),
    (2, 2, 13, '2023-01-01 00:00:00.000', NULL, NULL),
    (2, 2, 91, '2023-01-01 00:00:00.000', NULL, NULL),
    (2, 3, 20, '2023-01-01 00:00:00.000', NULL, NULL),
    (2, 3, NULL, '2023-01-21 00:00:00.000', NULL, NULL),
    (2, 3, 86, '2023-01-01 00:00:00.000', NULL, NULL),
    (2, 3, 43, '2023-01-01 00:00:00.000', NULL, NULL),
    (2, 4, NULL, '2023-01-01 00:00:00.000', NULL, NULL),
    (2, 3, 43, '2024-01-23 00:00:00.000', NULL, NULL),
    (2, 4, 93, '2023-01-01 00:00:00.000', NULL, NULL),
    (2, 4, NULL, '2024-10-13 00:00:00.000', NULL, NULL),
    (2, 4, 93, '2023-01-01 00:00:00.000', NULL, NULL),
    (2, 4, NULL, '2023-01-01 00:00:00.000', NULL, NULL),
    (2, 4, NULL, '2023-01-01 00:00:00.000', NULL, NULL),
    (3, 5, 71, '2023-01-01 00:00:00.000', NULL, NULL),
    (3, 5, NULL, '2023-01-01 00:00:00.000', NULL, NULL),
    (3, 5, NULL, '2023-01-01 00:00:00.000', NULL, NULL),
    (3, 5, NULL, '2023-01-01 00:00:00.000', NULL, NULL),
    (3, 5, NULL, '2023-01-01 00:00:00.000', NULL, NULL),
    (3, 5, NULL, '2023-01-01 00:00:00.000', NULL, NULL),
    (3, 5, 21, '2023-01-01 00:00:00.000', NULL, NULL),
    (3, 5, 72, '2023-01-01 00:00:00.000', NULL, NULL),
    (3, 5, 59, '2023-01-01 00:00:00.000', NULL, NULL),
    (3, 5, 18, '2023-01-01 00:00:00.000', NULL, NULL),
    (3, 5, NULL, '2024-02-04 00:00:00.000', NULL, NULL),
    (3, 6, 13, '2024-08-28 00:00:00.000', NULL, NULL),
    (3, 6, NULL, '2023-04-30 00:00:00.000', NULL, NULL),
    (3, 6, 7, '2024-03-19 00:00:00.000', NULL, NULL),
    (3, 6, 90, '2023-01-01 00:00:00.000', NULL, NULL),
    (3, 6, NULL, '2023-01-01 00:00:00.000', NULL, NULL),
    (3, 6, 7, '2023-01-01 00:00:00.000', NULL, NULL),
    (3, 6, 75, '2023-01-01 00:00:00.000', NULL, NULL),
    (3, 6, 94, '2024-09-14 00:00:00.000', NULL, NULL),
    (4, 7, NULL, '2023-01-01 00:00:00.000', NULL, NULL),
    (4, 7, 18, '2023-01-01 00:00:00.000', NULL, NULL),
    (4, 7, 86, '2023-01-01 00:00:00.000', NULL, NULL),
    (4, 7, 2, '2023-06-10 00:00:00.000', NULL, NULL),
    (4, 7, 100, '2023-01-01 00:00:00.000', NULL, NULL),
    (4, 7, 68, '2024-09-11 00:00:00.000', NULL, NULL),
    (4, 7, 81, '2024-08-05 00:00:00.000', NULL, NULL),
    (4, 7, NULL, '2023-01-01 00:00:00.000', NULL, NULL),
    (4, 7, 88, '2023-01-01 00:00:00.000', NULL, NULL),
    (4, 7, 98, '2024-03-01 00:00:00.000', NULL, NULL),
    (4, 7, 64, '2023-01-01 00:00:00.000', NULL, NULL),
    (4, 7, NULL, '2023-01-01 00:00:00.000', NULL, NULL),
    (4, 8, NULL, '2023-01-01 00:00:00.000', NULL, NULL),
    (4, 8, 24, '2024-09-02 00:00:00.000', NULL, NULL),
    (4, 8, NULL, '2023-01-01 00:00:00.000', NULL, NULL),
    (4, 8, NULL, '2023-01-01 00:00:00.000', NULL, NULL),
    (4, 8, NULL, '2023-01-01 00:00:00.000', NULL, NULL),
    (4, 8, NULL, '2023-01-01 00:00:00.000', NULL, NULL),
    (4, 8, NULL, '2023-01-01 00:00:00.000', NULL, NULL),
    (4, 8, 68, '2023-01-01 00:00:00.000', NULL, NULL),
    (5, 9, 70, '2023-01-01 00:00:00.000', NULL, NULL),
    (5, 9, 99, '2024-11-08 00:00:00.000', NULL, NULL),
    (5, 9, NULL, '2023-01-01 00:00:00.000', NULL, NULL),
    (5, 9, 88, '2023-01-01 00:00:00.000', NULL, NULL),
    (5, 9, 45, '2024-01-19 00:00:00.000', NULL, NULL),
    (5, 9, 42, '2023-01-01 00:00:00.000', NULL, NULL),
    (5, 9, 13, '2023-01-01 00:00:00.000', NULL, NULL),
    (5, 9, NULL, '2023-01-01 00:00:00.000', NULL, NULL),
    (5, 9, NULL, '2023-01-01 00:00:00.000', NULL, NULL),
    (5, 9, NULL, '2023-01-01 00:00:00.000', NULL, NULL),
    (5, 9, NULL, '2023-01-01 00:00:00.000', NULL, NULL),
    (5, 10, NULL, '2023-01-01 00:00:00.000', NULL, NULL),
    (5, 10, 33, '2023-01-01 00:00:00.000', NULL, NULL),
    (5, 10, NULL, '2023-01-01 00:00:00.000', NULL, NULL),
    (5, 10, 48, '2023-01-01 00:00:00.000', NULL, NULL),
    (5, 10, NULL, '2023-01-01 00:00:00.000', NULL, NULL),
    (5, 10, NULL, '2023-01-01 00:00:00.000', NULL, NULL),
    (5, 10, 33, '2023-01-01 00:00:00.000', NULL, NULL),
    (5, 10, 11, '2023-01-01 00:00:00.000', NULL, NULL)

INSERT INTO order_details
    (order_id, isbn13, price, quantity, discount)
VALUES
    (1, '9780385333849', 199, 2, 0),
    (2, '9780747538493', 299, 1, 0),
    (2, '9780747581086', 299, 2, 0),
    (3, '9780140177398', 199, 2, 0),
    (3, '9780747546245', 299, 2, 0),
    (4, '9781451673319', 199, 1, 0),
    (4, '9780141036137', 199, 1, 0),
    (4, '9780140177398', 199, 1, 0),
    (5, '9780062024039', 349, 1, 0),
    (5, '9780140177398', 199, 1, 0),
    (5, '9780765377067', 399, 2, 0),
    (6, '9780007582235', 399, 2, 0),
    (7, '9780544003415', 299, 1, 0),
    (7, '9780141036137', 199, 3, 0),
    (8, '9780553385953', 399, 1, 0),
    (8, '9780747546245', 299, 1, 0),
    (9, '9780345535528', 399, 1, 0),
    (9, '9781250757302', 399, 1, 0),
    (9, '9780061120084', 199, 1, 0),
    (10, '9780062024039', 349, 1, 0),
    (10, '9781451673319', 199, 1, 0),
    (11, '9780747542155', 299, 1, 0),
    (11, '9780756404741', 349, 1, 0),
    (12, '9780743477123', 199, 1, 0),
    (12, '9780553381689', 399, 1, 0),
    (12, '9780358380252', 299, 1, 0),
    (13, '9780358380252', 299, 1, 0),
    (13, '9780747542155', 299, 1, 0),
    (13, '9781451673319', 199, 1, 0),
    (14, '9780062024039', 349, 1, 0),
    (14, '9780765326355', 399, 1, 0),
    (14, '9780553381702', 399, 1, 0),
    (15, '9780345339713', 299, 1, 0),
    (15, '9780747591054', 299, 1, 0),
    (16, '9780747538493', 299, 1, 0),
    (16, '9780747532743', 299, 1, 0),
    (16, '9780544003415', 299, 1, 0),
    (17, '9781250757302', 399, 1, 0),
    (17, '9780747591054', 299, 1, 0),
    (18, '9780345535528', 399, 1, 0),
    (18, '9780747538493', 299, 1, 0),
    (19, '9780547928227', 299, 1, 0),
    (19, '9780358380252', 299, 1, 0),
    (19, '9780747538493', 299, 1, 0),
    (20, '9780553381702', 399, 1, 0),
    (20, '9780747581086', 299, 1, 0),
    (20, '9781250757302', 399, 1, 0),
    (21, '9780062024039', 349, 1, 0),
    (21, '9780140177398', 199, 1, 0),
    (22, '9780062024039', 349, 1, 0),
    (23, '9780358380252', 299, 1, 0),
    (23, '9780756404741', 349, 1, 0),
    (24, '9780061120084', 199, 1, 0),
    (24, '9780316769488', 199, 1, 0),
    (24, '9780446310789', 249, 1, 0),
    (25, '9780747591054', 299, 1, 0),
    (26, '9780747542155', 299, 1, 0),
    (26, '9780062024039', 349, 1, 0),
    (26, '9780747591054', 299, 1, 0),
    (27, '9780358380252', 299, 1, 0),
    (27, '9780747546245', 299, 1, 0),
    (27, '9780345535528', 399, 1, 0),
    (28, '9780743477123', 199, 1, 0),
    (29, '9780747532743', 299, 1, 0),
    (30, '9780345535528', 399, 1, 0),
    (30, '9780747546245', 299, 1, 0),
    (31, '9780143039433', 199, 1, 0),
    (31, '9780747546245', 299, 1, 0),
    (32, '9780544003415', 299, 1, 0),
    (33, '9780747591054', 299, 1, 0),
    (34, '9780062024039', 349, 1, 0),
    (34, '9780553381689', 399, 1, 0),
    (35, '9781250757302', 399, 1, 0),
    (35, '9780544003415', 299, 1, 0),
    (35, '9780553385953', 399, 1, 0),
    (36, '9780143039433', 199, 1, 0),
    (37, '9780747538493', 299, 1, 0),
    (37, '9780553381689', 399, 1, 0),
    (37, '9780747532743', 299, 1, 0),
    (38, '9780747542155', 299, 1, 0),
    (38, '9781451673319', 199, 1, 0),
    (38, '9780747538493', 299, 1, 0),
    (39, '9780747546245', 299, 1, 0),
    (40, '9780747538493', 299, 1, 0),
    (40, '9780765326379', 399, 1, 0),
    (41, '9780747551003', 299, 1, 0),
    (41, '9781451673319', 199, 1, 0),
    (41, '9780747538493', 299, 1, 0),
    (42, '9781250757302', 399, 1, 0),
    (43, '9780747538493', 299, 1, 0),
    (43, '9780747591054', 299, 1, 0),
    (44, '9780747546245', 299, 1, 0),
    (44, '9780756404741', 349, 1, 0),
    (44, '9780553381689', 399, 1, 0),
    (45, '9780747532743', 299, 1, 0),
    (45, '9780747581086', 299, 1, 0),
    (46, '9780345339713', 299, 1, 0),
    (46, '9781451673319', 199, 1, 0),
    (47, '9780553381702', 399, 1, 0),
    (47, '9780544003415', 299, 1, 0),
    (47, '9780060850524', 199, 1, 0),
    (48, '9780553381702', 399, 1, 0),
    (48, '9780747581086', 299, 1, 0),
    (49, '9781451673319', 199, 1, 0),
    (50, '9780007465828', 399, 1, 0),
    (50, '9780446310789', 249, 1, 0),
    (51, '9781250757302', 399, 1, 0),
    (51, '9780747538493', 299, 1, 0),
    (52, '9781250757302', 399, 1, 0),
    (52, '9780446310789', 249, 1, 0),
    (52, '9780140177398', 199, 1, 0),
    (53, '9780446310789', 249, 1, 0),
    (53, '9781451673319', 199, 1, 0),
    (53, '9780756404741', 349, 1, 0),
    (54, '9780553381702', 399, 1, 0),
    (55, '9780765326379', 399, 1, 0),
    (56, '9780747542155', 299, 1, 0),
    (56, '9780358380252', 299, 1, 0),
    (57, '9780007465828', 399, 1, 0),
    (57, '9780446310789', 249, 1, 0),
    (57, '9780547928227', 299, 1, 0),
    (58, '9780316769488', 199, 1, 0),
    (58, '9780553385953', 399, 1, 0),
    (59, '9780747591054', 299, 1, 0),
    (59, '9780062024039', 349, 1, 0),
    (60, '9780765326379', 399, 1, 0),
    (60, '9780747538493', 299, 1, 0),
    (61, '9780756404741', 349, 1, 0),
    (61, '9780062024039', 349, 1, 0),
    (62, '9780316769488', 199, 1, 0),
    (63, '9780446310789', 249, 1, 0),
    (64, '9780765326379', 399, 1, 0),
    (65, '9780060850524', 199, 1, 0),
    (65, '9780345339713', 299, 1, 0),
    (66, '9780141036137', 199, 1, 0),
    (66, '9780765377067', 399, 1, 0),
    (67, '9780553385953', 399, 1, 0),
    (68, '9780544003415', 299, 1, 0),
    (68, '9780385533225', 299, 1, 0),
    (68, '9780061120084', 199, 1, 0),
    (69, '9780747538493', 299, 1, 0),
    (70, '9780747538493', 299, 1, 0),
    (71, '9781451673319', 199, 1, 0),
    (72, '9780553381702', 399, 1, 0),
    (72, '9780747538493', 299, 1, 0),
    (72, '9780007582235', 399, 1, 0),
    (73, '9780747532743', 299, 1, 0),
    (73, '9780446310789', 249, 1, 0),
    (74, '9780747538493', 299, 1, 0),
    (74, '9780747532743', 299, 1, 0),
    (74, '9780747542155', 299, 1, 0),
    (75, '9780544003415', 299, 1, 0),
    (75, '9780141036137', 199, 1, 0),
    (76, '9780143039433', 199, 1, 0),
    (77, '9780743477123', 199, 1, 0),
    (78, '9780345339713', 299, 1, 0),
    (79, '9780345535528', 399, 1, 0),
    (79, '9780765377067', 399, 1, 0),
    (79, '9780747532743', 299, 1, 0),
    (80, '9780007582235', 399, 1, 0),
    (80, '9780743477123', 199, 1, 0),
    (81, '9780553381702', 399, 1, 0),
    (81, '9780747542155', 299, 1, 0),
    (82, '9780141036137', 199, 1, 0),
    (83, '9780345535528', 399, 1, 0),
    (83, '9780756404741', 349, 1, 0),
    (83, '9780547928227', 299, 1, 0),
    (84, '9780747546245', 299, 1, 0),
    (84, '9781250757302', 399, 1, 0),
    (84, '9780765377067', 399, 1, 0),
    (85, '9780747551003', 299, 1, 0),
    (86, '9780747591054', 299, 1, 0),
    (86, '9781451673319', 199, 1, 0),
    (87, '9780743477123', 199, 1, 0),
    (87, '9780747546245', 299, 1, 0),
    (88, '9780747538493', 299, 1, 0),
    (88, '9780747532743', 299, 1, 0),
    (88, '9780007582235', 399, 1, 0),
    (89, '9781250757302', 399, 1, 0),
    (89, '9780747538493', 299, 1, 0),
    (89, '9780747591054', 299, 1, 0),
    (90, '9780747591054', 299, 1, 0),
    (90, '9780756404741', 349, 1, 0),
    (90, '9780553381689', 399, 1, 0),
    (91, '9780007582235', 399, 1, 0),
    (92, '9780765377067', 399, 1, 0),
    (92, '9780765326355', 399, 1, 0),
    (93, '9780358380252', 299, 1, 0),
    (93, '9780345535528', 399, 1, 0),
    (94, '9780141036137', 199, 1, 0),
    (94, '9780756404741', 349, 1, 0),
    (94, '9780553385953', 399, 1, 0),
    (95, '9780743477123', 199, 1, 0),
    (95, '9780747538493', 299, 1, 0),
    (95, '9780141036137', 199, 1, 0),
    (96, '9780446310789', 249, 1, 0),
    (96, '9780553381702', 399, 1, 0),
    (96, '9780765326355', 399, 1, 0),
    (97, '9780358380252', 299, 1, 0),
    (97, '9780765326355', 399, 1, 0),
    (98, '9780385333849', 199, 1, 0),
    (99, '9780007582235', 399, 1, 0),
    (99, '9780747546245', 299, 1, 0),
    (99, '9780743477123', 199, 1, 0),
    (100, '9780747591054', 299, 1, 0),
    (100, '9780547928227', 299, 1, 0),
    (100, '9780446310789', 249, 1, 0)

UPDATE order_details
    SET discount = 0.15,
        price = price * 0.85
FROM order_details od
    JOIN orders o
    ON o.id = od.order_id
    JOIN customer c
    ON c.id = o.customer_id
WHERE c.premium_member = 1