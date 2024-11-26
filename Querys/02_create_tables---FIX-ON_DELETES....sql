USE bookstore_manager

DROP TABLE IF EXISTS author_book
DROP TABLE IF EXISTS employee_store
DROP TABLE IF EXISTS order_details
DROP TABLE IF EXISTS inventory
DROP TABLE IF EXISTS authors
DROP TABLE IF EXISTS books
DROP TABLE IF EXISTS orders
DROP TABLE IF EXISTS stores
DROP TABLE IF EXISTS employees
DROP TABLE IF EXISTS customers

CREATE TABLE authors (
    id INT PRIMARY KEY IDENTITY(1, 1),
    firstname NVARCHAR(100) NOT NULL,
    lastname NVARCHAR(100) NOT NULL,
    birthdate DATE,
    deathdate DATE DEFAULT NULL
)

CREATE TABLE books (
    isbn13 VARCHAR(17) PRIMARY KEY 
    CHECK (dbo.fn_verify_isbn13(isbn13) = 1),
    title NVARCHAR(100),
    language NVARCHAR(100),
    price MONEY
)

CREATE TABLE author_book (
    author_id INT,
    isbn13 VARCHAR(17),
    PRIMARY KEY (author_id, isbn13),
    FOREIGN KEY (author_id) REFERENCES authors(id)
    ON DELETE CASCADE,
    FOREIGN KEY (isbn13) REFERENCES books(isbn13)
    ON DELETE CASCADE
)

CREATE TABLE stores (
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
    isbn13 VARCHAR(17),
    stock INT DEFAULT 1,
    PRIMARY KEY (store_id, isbn13),
    FOREIGN KEY (store_id) REFERENCES stores(id)
    ON DELETE CASCADE,
    FOREIGN KEY (isbn13) REFERENCES books(isbn13)
    ON DELETE CASCADE
)

CREATE TABLE employees (
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
    FOREIGN KEY (store_id) REFERENCES stores(id)
    ON DELETE CASCADE,
    FOREIGN KEY (employee_id) REFERENCES employees(id)
    ON DELETE CASCADE
)

CREATE TABLE customers (
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
    FOREIGN KEY (store_id) REFERENCES stores(id)
    ON DELETE CASCADE,
    FOREIGN KEY (employee_id) REFERENCES employees(id)
    ON DELETE CASCADE,
    FOREIGN KEY (customer_id) REFERENCES customers(id)
    ON DELETE CASCADE
)

CREATE TABLE order_details (
    id INT PRIMARY KEY IDENTITY(1, 1),
    order_id INT,
    isbn13 VARCHAR(17),
    price MONEY,
    quantity INT,
    discount FLOAT,
    FOREIGN KEY (order_id) REFERENCES orders(id)
    ON DELETE CASCADE,
    FOREIGN KEY (isbn13) REFERENCES books(isbn13)
    ON DELETE CASCADE
)
