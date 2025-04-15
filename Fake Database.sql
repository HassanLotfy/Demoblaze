-- Create a fake database
CREATE DATABASE Store;
USE Store;

-- Create Users table
CREATE TABLE Users (
    UserID INT IDENTITY(1,1) PRIMARY KEY,
    Username VARCHAR(50),
    Email VARCHAR(100),
	);
GO

-- Create Products table
CREATE TABLE Products (
    ProductID INT IDENTITY(1,1) PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2),
);
GO

-- Insert fake users
INSERT INTO Users (UserID,Username, Email) VALUES
(1,'ghost_user', 'ghost@example.com'),
(2,'demo_admin', 'admin@fakestore.com'),
(3,'test_user123', 'test123@mockmail.com');
GO

-- Insert fake products
INSERT INTO Products (ProductID,ProductName, Price) VALUES
(1,'Invisible Cloak', 999.99),
(2,'Time Machine Mini', 4999.00),
(3,'Telepathy Cap', 299.99),
(4,'Quantum Socks', 19.99);
GO

-- View data
SELECT * FROM Users;
SELECT * FROM Products;
-- Update records
-- Update the price of a product
UPDATE Products
SET Price = 4500.00
WHERE ProductName = 'Time Machine Mini';
GO

-- Update a user's email
UPDATE Users
SET Email = 'newemail@fakestore.com'
WHERE Username = 'demo_admin';
GO

-- Delete records
-- Delete a product by name
DELETE FROM Products
WHERE ProductName = 'Quantum Socks';
GO

-- Delete a user by username
DELETE FROM Users
WHERE Username = 'ghost_user';
GO

-- Final view after update/delete
SELECT * FROM Users;
SELECT * FROM Products;
