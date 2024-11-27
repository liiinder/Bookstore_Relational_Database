DROP TABLE IF EXISTS inventory      -- Must be dropped before book and store
DROP TABLE IF EXISTS order_details  -- Must be dropped before orders
DROP TABLE IF EXISTS orders         -- Can be dropped after order_details and before employee_store  and customers
DROP TABLE IF EXISTS employee_store -- Can be dropped after orders
DROP TABLE IF EXISTS employee       -- Can be dropped after employee_store
DROP TABLE IF EXISTS store          -- Can be dropped after employee_store
DROP TABLE IF EXISTS customer       -- Can be dropped after orders
DROP TABLE IF EXISTS author_book    -- Must be dropped before author and book
DROP TABLE IF EXISTS author         -- Can be dropped after author_book
DROP TABLE IF EXISTS book           -- Can be dropped after author_book

CREATE TABLE author (
    id INT PRIMARY KEY IDENTITY(1, 1),
    firstname NVARCHAR(100) NOT NULL,
    lastname NVARCHAR(100) NOT NULL,
    birthdate DATE,
    deathdate DATE DEFAULT NULL
)

CREATE TABLE book (
    isbn13 VARCHAR(20) PRIMARY KEY
    CHECK (dbo.verify_isbn13(isbn13) NOT LIKE 'invalid%'),
    title NVARCHAR(100),
    language NVARCHAR(100),
    price MONEY
)

CREATE TABLE author_book (
    author_id INT,
    isbn13 VARCHAR(20),
    PRIMARY KEY (author_id, isbn13),
    FOREIGN KEY (author_id) REFERENCES author(id)
    ON DELETE CASCADE,
    FOREIGN KEY (isbn13) REFERENCES book(isbn13)
    ON DELETE CASCADE
)

CREATE TABLE store (
    id INT PRIMARY KEY IDENTITY(1, 1),
    name NVARCHAR(100),
    country NVARCHAR(100),
    city NVARCHAR(100),
    postal_code VARCHAR(10),
    address NVARCHAR(100),
    phonenumber VARCHAR(20),
    email VARCHAR(100)
)

CREATE TABLE inventory (
    store_id INT,
    isbn13 VARCHAR(20),
    stock INT DEFAULT 1,
    PRIMARY KEY (store_id, isbn13),
    FOREIGN KEY (store_id) REFERENCES store(id)
    ON DELETE CASCADE,
    FOREIGN KEY (isbn13) REFERENCES book(isbn13)
    ON DELETE CASCADE
)

CREATE TABLE employee (
    id INT PRIMARY KEY IDENTITY(1, 1),
    firstname NVARCHAR(100),
    lastname NVARCHAR(100),
    birthdate DATE,
    phonenumber VARCHAR(20),
    email VARCHAR(100)
)

CREATE TABLE employee_store (
    employee_id INT,
    store_id INT,
    hiredate DATE,
    PRIMARY KEY (employee_id, store_id),
    FOREIGN KEY (store_id) REFERENCES store(id)
    ON DELETE CASCADE,
    FOREIGN KEY (employee_id) REFERENCES employee(id)
    ON DELETE CASCADE
)

CREATE TABLE customer (
    id INT PRIMARY KEY IDENTITY(1, 1),
    firstname NVARCHAR(100),
    lastname NVARCHAR(100),
    birthdate DATE,
    joined DATE,
    premium_member BIT DEFAULT 0,
    phonenumber VARCHAR(20),
    email VARCHAR(100)
)

CREATE TABLE orders (
    id INT PRIMARY KEY IDENTITY(1, 1),
    store_id INT NOT NULL,
    employee_id INT NOT NULL,
    customer_id INT,
    created_at DATETIME2(3) NOT NULL,
    updated_at DATETIME2(3),
    deleted_at DATETIME2(3),
    FOREIGN KEY (employee_id, store_id) REFERENCES employee_store(employee_id, store_id)
    ON DELETE CASCADE,
    FOREIGN KEY (customer_id) REFERENCES customer(id)
    ON DELETE CASCADE
)

CREATE TABLE order_details (
    id INT PRIMARY KEY IDENTITY(1, 1),
    order_id INT,
    isbn13 VARCHAR(20),
    price MONEY,
    quantity INT,
    discount FLOAT,
    FOREIGN KEY (order_id) REFERENCES orders(id)
    ON DELETE CASCADE,
    FOREIGN KEY (isbn13) REFERENCES book(isbn13)
    ON DELETE CASCADE
)