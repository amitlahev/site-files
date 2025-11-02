-- Primary Key
/*
1. UNIQUE
2. NOT NULL
3. Can only be 1

*/

CREATE TABLE my_friends_2
	(
	Friend_ID INT PRIMARY KEY,
	Friend_First_Name NVARCHAR(255) NOT NULL,
	Friend_Last_Name NVARCHAR(255) 
	) ;

SELECT *
FROM my_friends_2 ;

INSERT INTO my_friends_2
VALUES (2, 'einat', 'marom') ;

-- Foreign Key
CREATE TABLE customer_2 
	(
	CustomerID INT PRIMARY KEY,
	EmployeeID INT FOREIGN KEY REFERENCES employees(EmployeeID) --(where the PK is at)
	) ;

CREATE TABLE products_2 
	(
	ProductID INT PRIMARY KEY,
	SupplierID INT FOREIGN KEY REFERENCES suppliers(SupplierID) NULL
	) ;

SELECT *
FROM [Order Details]

--Multiple PK's

CREATE TABLE order_Details_2 (
	Orderid INT PRIMARY KEY (Orderid, Productid) FOREIGN KEY REFERENCES Orders(orderid) NOT NULL,
	Productid INT FOREIGN KEY REFERENCES Products(Productid) NOT NULL,
	unitprice MONEY NOT NULL,
	Quantity SMALLINT NOT NULL,
	Discount REAL NOT NULL
) ;
