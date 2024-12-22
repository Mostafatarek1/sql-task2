CREATE DATABASE TASK
USE TASK
--Create a table named "Employees" with columns for ID (integer), Name (varchar), and Salary (decimal).

CREATE TABLE Employees(
	ID INT PRIMARY KEY,
	NAME VARCHAR(50),
	Salary decimal,


)
--Add a new column named "Department" to the "Employees" table with data type varchar(50).

ALTER TABLE Employees
add department varchar(45)

--Remove the "Salary" column from the "Employees" table.

ALTER TABLE Employees
DROP column Salary

--Rename the "Department" column in the "Employees" table to "DeptName".

EXEC sp_rename 'Employees.Department', 'DeptName'

--Create a new table called "Projects" with columns for ProjectID (integer) and ProjectName (varchar).

CREATE TABLE Projects(
	projectid INT,
	projectname varchar(25)
	

)
--Add a unique constraint to the "Name" column in the "Employees" table.

ALTER TABLE Employees
ADD CONSTRAINT UQ_Employees_Name UNIQUE (Name);

CREATE TABLE Customers(
	 CustomerID INT,
	 FirstName VARCHAR(20),
	 LastName VARCHAR(30),
	 Email VARCHAR(100),
	 Status VARCHAR(100)





)
--Add a unique constraint to the combination of "FirstName" and "LastName" columns in the "Customers" table.


ALTER TABLE Customers
ADD CONSTRAINT UQ_Customers_Name UNIQUE (FirstName, LastName )

--Create a table named "Orders" with columns for OrderID (integer), CustomerID (integer), OrderDate (datetime), and TotalAmount (decimal).

CREATE TABLE Orders(
	OrderID INT,
	CustomerID INT,
	OrderDate DATETIME,
	TotalAmount DECIMAL,
	PRIMARY KEY(OrderID,CustomerID)

)
--Add a check constraint to the "TotalAmount" column in the "Orders" table to ensure that it is greater than zero.

ALTER TABLE Orders
add constraint check_TotalAmount check (TotalAmount > 0)

--Create a schema named "Sales" and move the "Orders" table into this schema.  (wrong answer)

create schema sales 

--Rename the "Orders" table to "SalesOrders."

exec sp_rename 'orders' ,'sales.orders'