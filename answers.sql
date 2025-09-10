
-- ----------------QUestion 1----------------


--Create Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

--Create OrderProducts table
CREATE TABLE OrderProducts (
    OrderProductID INT PRIMARY KEY AUTO_INCREMENT, 
    OrderID INT,
    Product VARCHAR(100),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- Insert into Orders
INSERT INTO Orders (OrderID, CustomerName) VALUES
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');

-- Insert into OrderProducts
INSERT INTO OrderProducts (OrderID, Product) VALUES
(101, 'Laptop'),
(101, 'Mouse'),
(102, 'Tablet'),
(102, 'Keyboard'),
(102, 'Mouse'),
(103, 'Phone');

-- Join the tables
SELECT 
    o.OrderID,
    o.CustomerName,
    op.Product
FROM Orders o
JOIN OrderProducts op ON o.OrderID = op.OrderID
ORDER BY o.OrderID;

---------------- QUestion 2-----------------



-- Create Orders table 
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

-- Create OrderDetails table 
CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY AUTO_INCREMENT, -- or IDENTITY in SQL Server
    OrderID INT,
    Product VARCHAR(100),
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

--  Add into Orders
INSERT INTO Orders (OrderID, CustomerName) VALUES
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');

-- Insert into OrderDetails
INSERT INTO OrderDetails (OrderID, Product, Quantity) VALUES
(101, 'Laptop', 2),
(101, 'Mouse', 1),
(102, 'Tablet', 3),
(102, 'Keyboard', 1),
(102, 'Mouse', 2),
(103, 'Phone', 1);

-- Query with JOIN
SELECT 
    o.OrderID,
    o.CustomerName,
    d.Product,
    d.Quantity
FROM Orders o
JOIN OrderDetails d ON o.OrderID = d.OrderID
ORDER BY o.OrderID;

