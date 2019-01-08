USE HurtowniaDanych
GO
DECLARE @sql nvarchar(2000) = 'x'
-- PRINT @SQL -- najpierw test PRINT
SET @sql =
	'SELECT OrderID, CustomerID, CONVERT(date, OrderDate) AS OrderDate, Freight
		INTO Zamówienia' + CONVERT(char(4), YEAR(GETDATE())) + char(10) +
	' FROM Northwind.dbo.Orders
		WHERE YEAR(OrderDate) = YEAR(GETDATE())'
-- PRINT @SQL
IF EXISTS(SELECT * FROM sys.tables WHERE Name = 'Zamówienia2018')
	DROP TABLE Zamówienia2018
EXEC (@sql)
