
--First Practical
SELECT * FROM Customers


SELECT * FROM Orders
WHERE OrderDate BETWEEN '1996-07-01' AND '1996-07-31';


SELECT * FROM Orders
WHERE OrderDate >= '1996-07-01' AND OrderDate <= '1996-07-31';



SELECT * FROM [Employees]
ORDER BY BirthDate DESC


--Joins Practical
SELECT 
	 o.OrderDate
    ,c.CustomerName
FROM 
	[Orders] as o
INNER JOIN 
	Customers as c
ON c.CustomerID = o.CustomerID
ORDER BY c.CustomerName


SELECT 
	 c.CustomerName
    ,COUNT(o.OrderID) as TotalOrders
FROM 
	[Orders] as o
INNER JOIN 
	Customers as c
ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerName
ORDER BY TotalOrders DESC


CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (ID)
);


INSERT INTO Persons
VALUES (2, 'Jones', 'Peter', 42)



UPDATE Persons
SET LastName = 'Smith'
WHERE ID = 2



DELETE FROM Persons
WHERE ID = 1

DROP TABLE Persons

DELETE FROM <Table>
WHERE <condition>